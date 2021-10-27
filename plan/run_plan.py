# Main script to run the PLAN tool

import argparse
import math
import numpy as np
import operator
import os
import pickle as pk
import re
import subprocess
import sys
import time

from datetime import datetime
from itertools import combinations
from scipy.stats.stats import pearsonr
from tqdm import tqdm
from Verilog_VCD import Verilog_VCD as v

################################################################################
# Functions to be modified by user as per the design being analysed.
# Please refer to examples.py for the corresponding functions for other designs.
################################################################################

# To read the input values generated during simulation
def loadData():
   a = []
   with open('txtfile', 'r') as f:
       buff = f.read().split('\n')
   for d in buff[:-1]:
       a.append(d)
   return np.array(a,dtype='int')

# To compute the oracle trace from the the input trace generated and the secret key used during simulation
def computeOracle(k):
    ip1 = loadData()
    y = np.bitwise_xor(ip1, k)
    return y

################################################################################
################################################################################

# global variables
vcdpath = 'vcd/'
filepath = 'pkl/'
pairs = []
sigArray1 = {} # stores the value carried by each signal for each run
sigGroup = {}
sigMatrix = {}
cipher = {}
O = {}
togglingSigs = set()

def createClkList(clkList, sname, tv):
    for x in tv:
        if x[0] not in clkList: # if clock is not there in the dict
            clkList[x[0]]=[[],[]]
            clkList[x[0]][0].append(sname)
            clkList[x[0]][1].append(x[1])
        else:
            # clkList[x[0]].append((sname,x[1]))
            clkList[x[0]][0].append(sname)
            clkList[x[0]][1].append(x[1])
    return clkList

def readVCD(num_iterations):
    rng = range(1, num_iterations+1)
    for name, i in zip([' '+str(x)+'.vcd' for x in rng], rng):
        data = {}
        clockList = {}
        data = v.parse_vcd(vcdpath + name, use_stdout=0)
        for x in data:
            signame = data[x]['nets'][0].get('hier') + '.' + data[x]['nets'][0].get('name')
            clockList = createClkList(clockList, signame, list(data[x]['tv']))
        with open(filepath + str(i) + '.pkl', 'wb') as f:
            for x in sorted(clockList):
                pk.dump([x, clockList[x]], f)
    print('Pickle files have been created successfully...')

def alphaNumOrder(string):
   return ''.join([format(int(x), '05d') if x.isdigit()
                   else x for x in re.split(r'(\d+)', string)])

def initSigArray(rfiles):
    vcdname = ' 1.vcd'
    data = v.parse_vcd(vcdpath + vcdname, use_stdout=0)
    for f, n in zip(rfiles, range(1, len(rfiles) + 1)):
        fname = str(n)
        sigArray1[fname] = {}
        for s in data:
            sigArray1[fname][data[s]['nets'][0].get('hier') + '.' + data[s]['nets'][0].get('name')] = '0'
    with open('sigArray.pkl', 'wb') as f:
        for x in sigArray1:
            pk.dump([x, sigArray1[x]], f)
    print("SigArray has been created successfully")

def initpairs(num_iterations):
    return list(combinations(np.linspace(1, num_iterations, num_iterations).astype(int), 2));

def loadSigArray():
    with open('sigArray.pkl', 'rb') as f:
        try:
            while True:
                temp = []
                temp = pk.load(f)
                sigArray1.update({temp[0]:temp[1]})
        except EOFError:
            pass

def init(num_iterations):
    global pairs, sigs;
    loadSigArray()
    pairs = initpairs(num_iterations)
    sigs = [x for x in sigArray1['1']] # All signal names

def updateSigArray(k1, k2, v):
    tempdict = {};
    for k, v in zip(k2, v):
        sigArray1[k1][k] = v
        tempdict[k] = v
    return tempdict

# compute Hamming distance between every pair of values for each signal
def HammingDistanceSignalWise(sig):
    tempfile = {}
    for p in pairs:
        temp = []
        p1 = str(p[0])
        p2 = str(p[1])
        s1 = sigArray1[p1]
        s2 = sigArray1[p2]
        temp.append(bin(int(s1[sig], 2) ^ int(s2[sig], 2)).count('1'))
        tempfile[p] = int(np.sum(temp))
    return tempfile

def processSignals(sigs):
    for sig in tqdm(sigs, "Processing signals"):
        try:
            ham = (sig, HammingDistanceSignalWise(sig))
            temp = []
            for pair in pairs:
                temp.append(ham[1][pair])
            with open('modules/' + ham[0] + '.pkl', 'ab') as f:
                pk.dump(temp, f)
        except Exception as e:
            print("{}:{}".format(sig, e))
            print()

def transformData(signal):
    data = []
    with open('modules/' + signal + '.pkl', 'rb') as f:
        try:
            while True:
                data.append(pk.load(f))
        except EOFError:
            pass
    return np.transpose(data)

def computeAndSaveLeakageScores(leaks_file_path, num_iterations, key_value):
    leaks = {}
    O = {}
    mx = {}
    O[1] = []
    init(num_iterations)
    y = computeOracle(key_value)
    for p in pairs:
        O[1].append(bin(y[p[0]-1] ^ y[p[1]-1]).count('1')) # HD b/w two temp values

    counter = 0
    for sig in togglingSigs:
        data = transformData(sig)
        temp = []
        for sc in data.transpose():
            score = pearsonr(O[1], sc)[0]
            if (math.isnan(score)):
                temp.append(0)
            else:
                temp.append(np.abs(score))
        leaks[sig] = temp
        counter += 1

    for m in leaks: # calc max leak in each signal
        mx[m] = max(leaks[m])

    leaks_x = []
    leaks_y = []
    sorted_sigwise = dict(sorted(mx.items(), key=operator.itemgetter(1), reverse=True))

    for x in sorted(mx):
        leaks_x.append(x)
        leaks_y.append(mx[x])

    with open(leaks_file_path, "w") as f:
        f.write("Signal,Leakage\n")
        for x in sorted_sigwise:
            f.write("%s,%.4f\n" %(x, sorted_sigwise[x]))
        f.write("\n")

    return len(sorted_sigwise)

def main(input_file_path, simulation_script, num_iterations, key_value, leaks_file_path, time_file_path):
    start_time = time.time()

    # simulation
    subprocess.run(['./' + simulation_script, input_file_path, str(num_iterations)])

    # analysis
    nc2 = ((num_iterations * (num_iterations - 1)) / 2)
    readVCD(num_iterations)
    rfiles = os.listdir(filepath)
    rfiles.sort(key = alphaNumOrder)
    initSigArray(rfiles)
    debug = 0  # flag for debugging
    init(num_iterations) # Mandatory intialisations
    signals = [x for x in sigGroup] # signals present
    for x in signals:
        sigMatrix[x] = []
        for y in range(len(sigGroup[x])):
            temp = []
            sigMatrix[x].append(temp)

    result = []
    for fn in range(1, num_iterations + 1):
        fname = str(fn)
        with open(filepath + rfiles[fn - 1], 'rb') as file:
            temp = pk.load(file)
            tempsigs = temp[1][0]
            tempvals = temp[1][1]
            togglingSigs.update(tempsigs)
            tempdict = updateSigArray(fname, tempsigs, tempvals)

    processSignals(togglingSigs)
    numSigs = computeAndSaveLeakageScores(leaks_file_path, num_iterations, key_value)

    end_time = time.time()

    print("Completed!")

    with open(time_file_path, "w") as sf:
        sf.write("Number of signals: {}\n".format(numSigs))
        sf.write("Total time taken: {:.4f}s\n".format(end_time - start_time))

if __name__ == '__main__':
    # creating the argument parser
    my_parser = argparse.ArgumentParser(description='Pre-silicon power side-channel analysis using PLAN')

    # adding the arguments
    my_parser.add_argument('InputFilePath',
                           metavar='input_file_path',
                           type=str,
                           help='path to the input Verilog file to be analyzed')
    my_parser.add_argument('KeyValue',
                           metavar='key_value',
                           type=int,
                           help='secret value in input Verilog file')
    my_parser.add_argument('SimulationScript',
                           metavar='simulation_script',
                           type=str,
                           help='path to script used for behavioral simulation')
    my_parser.add_argument('Design',
                           metavar='design',
                           type=str,
                           help='name of the design being analysed')
    my_parser.add_argument('-n',
                           '--num-iterations',
                           type=int,
                           action='store',
                           help='number of iterations in behavioral simulation, default value = 1000')
    my_parser.add_argument('-r',
                           '--results-path',
                           type=str,
                           action='store',
                           help='name of directory within results/ directory to store results, default value = current timestamp')

    # parsing the arguments
    args = my_parser.parse_args()

    input_file_path = args.InputFilePath
    key_value = args.KeyValue
    simulation_script = args.SimulationScript
    design = args.Design

    num_iterations = args.num_iterations
    if not num_iterations:
        num_iterations = 1000

    results_path = args.results_path
    if results_path:
        results_path = 'results/' + results_path + '/' + design + '/'
    else:
        results_path = 'results/' + datetime.today().strftime('%Y-%m-%d-%H:%M:%S') + '/' + design + '/'

    if not os.path.isdir(results_path):
        os.makedirs(results_path)

    leaks_file_path = results_path + "leaks.txt"
    time_file_path = results_path + "time.txt"

    if not os.path.isdir('vcd/'):
        os.makedirs('vcd/')

    if not os.path.isdir('pkl/'):
        os.makedirs('pkl/')

    if not os.path.isdir('modules/'):
        os.makedirs('modules/')

    print("Note: Please check that:")
    print("1. the simulation script ({}) given as argument has the correct line numbers, variable names, max range to generate random values".format(simulation_script))
    print("2. the secret key ({}) given as argument is same as that in the input Verilog file ({}) - refer to examples.py for guidance".format(key_value, input_file_path))
    print("3. this script (run_plan.py) has the correct functions to load data and compute oracle (in the first few lines) - refer to examples.py for guidance")
    print()
    print("If you are sure that the above details are correct, and wish to continue, press Y/y (and enter)")
    print("To stop, press any other key (and enter)")
    user_input = input()
    if user_input == 'y' or user_input == 'Y':
        main(input_file_path, simulation_script, num_iterations, key_value, leaks_file_path, time_file_path)
