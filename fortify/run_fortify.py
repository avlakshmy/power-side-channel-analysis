# Main script to run the FORTIFY tool

import argparse
import math
import module_maps
import os
import sig_prob
import sys
import time

from datetime import datetime
from tqdm import tqdm

def main(input_file_path, top_module_name, ref_module_name, ref_instance_name, ref_sig_name, ref_sig_width, design, leaks_file_path, time_file_path):
    startTime = time.time()

    print()
    print("******************************************************************")

    print("Design:", design)
    print()

    # reference signal bit names
    refSigBitNames = ['{}[{}:{}]'.format(ref_sig_name, j, j) for j in range(ref_sig_width)]

    # performing static analysis to convert into directed graph representation and extracting subcircuit
    inputNames, inputWidths, signalNames, sigWidths, truthTableMap = module_maps.subCircuitExtract(input_file_path, top_module_name, ref_module_name, ref_instance_name, refSigBitNames)

    # input signal bits names
    inputSigBitNames = []
    for inp, wid in zip(inputNames, inputWidths):
        inputSigBitNames.extend(['{}[{}:{}]'.format(inp, i, i) for i in range(wid)])

    # maps to store signal probability and conditional signal probability values
    s_hat = {}
    s_hat_0 = {}
    s_hat_1 = {}

    # leakage of each bit of the reference signal
    baseLeak = 1.0/math.sqrt(ref_sig_width)

    # initialise leakage scores of input bits
    for sig in inputSigBitNames:
        s_hat[sig] = 0.5
        s_hat_0[sig] = {}
        s_hat_1[sig] = {}
        for ref in refSigBitNames:
            s_hat_0[sig][ref] = 0.5
            s_hat_1[sig][ref] = 0.5

    # initialise leakage scores of reference signal bits
    for sig in signalNames:
        if sig in refSigBitNames:
            s_hat[sig] = 0.5
            s_hat_0[sig] = {}
            s_hat_1[sig] = {}
            for ref in refSigBitNames:
                s_hat_0[sig][ref] = 0.5
                s_hat_1[sig][ref] = 0.5
                if ref == sig:
                    s_hat_0[sig][ref] = 0
                    s_hat_1[sig][ref] = 1

    # signal probability and consitional signal probability calculation
    for sig in tqdm(signalNames, "Signal Probability Calculation"):
        if not sig in s_hat:
            sig_prob.populateSigProbs(sig, set(), s_hat, s_hat_0, s_hat_1, truthTableMap, refSigBitNames, inputSigBitNames)

    sigLeaks = {}

    print()

    # leakage score calculation
    for sig in tqdm(sigWidths, desc="Leakage calculation"):
        width = sigWidths[sig]
        leakages = []
        flag = 1
        for j in range(width):
            sigName = '{}[{}:{}]'.format(sig, j, j)
            if sigName in signalNames:
                leakVal = 0
                for ref in refSigBitNames:
                    leak = (s_hat_0[sigName][ref] - s_hat_1[sigName][ref])**2
                    if leak > 0:
                        y_bar = 2 * s_hat[sigName] * (1 - s_hat[sigName])
                        denom = 4 * y_bar * (1 - y_bar)
                        if denom != 0:
                            leak = leak / math.sqrt(denom)
                    leakVal += leak
                leakages.append(leakVal**2)
            else:
                flag = 0
                break
        if flag:
            sigLeaks[sig] = math.sqrt(sum(leakages)) * baseLeak
            # leakage score may exceed 1 due to approximation of above leakage formula
            if sigLeaks[sig] > 1:
                sigLeaks[sig] = 1

    endTime = time.time()

    print()
    print("Number of signals: {}".format(len(sigLeaks)))
    print("Total time taken: {:.4f}s".format(endTime - startTime))

    with open(time_file_path, "w") as tf:
        tf.write("Number of signals: {}\n".format(len(sigLeaks)))
        tf.write("Total time taken: {:.4f}s\n".format(endTime - startTime))

    with open(leaks_file_path, "w") as lf:
        lf.write("%s,%s\n" %("Signal", "Leakage"))
        for sig in sorted(sigLeaks, key=sigLeaks.get, reverse=True):
            leak = sigLeaks[sig]
            lf.write("%s,%.4f\n" %(sig, leak))

    print()
    print("Completed!")
    print("******************************************************************")
    print()

if __name__ == '__main__':
    # creating the argument parser
    my_parser = argparse.ArgumentParser(description='Pre-silicon power side-channel analysis using FORTIFY')

    # adding the arguments
    my_parser.add_argument('InputFilePath',
                           metavar='input_file_path',
                           type=str,
                           help='path to the input Verilog file to be analyzed')
    my_parser.add_argument('TopModuleName',
                           metavar='top_module_name',
                           type=str,
                           help='name of the top module in the input Verilog file')
    my_parser.add_argument('RefModuleName',
                           metavar='ref_module_name',
                           type=str,
                           help='name of the module in the input Verilog file containing the reference signal')
    my_parser.add_argument('RefInstanceName',
                           metavar='ref_instance_name',
                           type=str,
                           help='name of the instance in the input Verilog file containing the reference signal')
    my_parser.add_argument('RefSigName',
                           metavar='ref_sig_name',
                           type=str,
                           help='name of the reference signal')
    my_parser.add_argument('RefSigWidth',
                           metavar='ref_sig_width',
                           type=int,
                           help='width of the reference signal')
    my_parser.add_argument('Design',
                           metavar='design',
                           type=str,
                           help='name of the design being analysed')
    my_parser.add_argument('-r',
                           '--results-path',
                           type=str,
                           action='store',
                           help='name of folder within results/ directory to store results, default value = current timestamp')

    # parsing the arguments
    args = my_parser.parse_args()

    input_file_path = args.InputFilePath
    top_module_name = args.TopModuleName
    ref_module_name = args.RefModuleName
    ref_instance_name = args.RefInstanceName
    ref_sig_name = args.RefSigName
    ref_sig_width = args.RefSigWidth
    design = args.Design

    results_path = args.results_path
    if results_path:
        results_path = 'results/' + results_path + '/' + design + '/'
    else:
        results_path = 'results/' + datetime.today().strftime('%Y-%m-%d-%H:%M:%S') + '/' + design + '/'

    if not os.path.isdir(results_path):
        os.makedirs(results_path)

    leaks_file_path = '{}/leaks.txt'.format(results_path)
    time_file_path = '{}/time.txt'.format(results_path)

    main(input_file_path, top_module_name, ref_module_name, ref_instance_name, ref_sig_name, ref_sig_width, design, leaks_file_path, time_file_path)
