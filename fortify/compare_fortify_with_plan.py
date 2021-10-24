import argparse
import matplotlib.pyplot as plt
import os
import pandas as pd
import sys

from scipy import stats
from scipy.stats import pearsonr
from scipy.stats import spearmanr
from scipy.spatial import distance

def main(plan_leaks_path, fortify_leaks_path, results_path):
    # reading the results of both PLAN as well as FORTIFY for the given design
    plan_df = pd.read_csv(plan_leaks_path)
    fortify_df = pd.read_csv(fortify_leaks_path)

    # PLAN signal names preprocessing
    plan_df['Signal'] = [x.split('[')[0] for x in list(plan_df['Signal'])]

    plan_df = plan_df.sort_values(by=["Signal"])
    plan_df = plan_df.sort_values(by=["Leakage"], ascending=False)
    plan_df = plan_df.reset_index(drop=True)

    fortify_df = fortify_df.sort_values(by=["Signal"])
    fortify_df = fortify_df.sort_values(by=["Leakage"], ascending=False)
    fortify_df = fortify_df.reset_index(drop=True)

    # combining the dataframes for PLAN and FORTIFY
    df = fortify_df.join(plan_df.set_index("Signal"), how="left", on="Signal", rsuffix="_PLAN")
    df = df.dropna()
    df['Error'] = df['Leakage'] - df['Leakage_PLAN']

    sigs = list(range(0,len(df)))
    plan_leakage = list(df["Leakage_PLAN"])
    fortify_leakage = list(df["Leakage"])

    # visual comparison between PLAN's and FORTIFY's leakage scores
    plt.figure()
    plt.scatter(sigs, plan_leakage, c="Red", s=5, alpha=0.8)
    plt.scatter(sigs, fortify_leakage, c="Blue", s=2, alpha=0.7)
    plt.legend(["PLAN", "FORTIFY"])
    plt.xlabel("Signal Number")
    plt.ylabel("Leakages")
    plt.savefig("{}/compare.png".format(results_path))

    # plot of absolute difference error between PLAN's and FORTIFY's scores
    plt.figure()
    plt.scatter(sigs, list(df["Error"]), c="Red", s=5, alpha=0.8)
    plt.xlabel("Signal Number")
    plt.ylabel("Error")
    plt.savefig("{}/err.png".format(results_path))

    # computing different evaluation metrics between PLAN's and FORTIFY's leakage scores
    spearman_corr, _ = spearmanr(plan_leakage, fortify_leakage)
    pearson_corr, _ = pearsonr(plan_leakage, fortify_leakage)

    with open("{}/stats.txt".format(results_path), "w") as ws_stats:
        ws_stats.write('Number of common signals: {}\n'.format(len(df)))
        ws_stats.write('Pearson\'s correlation: %.3f\n' % pearson_corr)
        ws_stats.write('Spearman\'s correlation: %.3f\n' % spearman_corr)

    print('Summary of statistics')
    print('*******************************')
    print('Number of common signals: {}'.format(len(df)))
    print('Pearson\'s correlation: %.3f' % pearson_corr)
    print('Spearman\'s correlation: %.3f' % spearman_corr)
    print('*******************************')
    print()
    print('Please check the', results_path, 'folder for visual comparison and error graphs.')

if __name__ == '__main__':
    # creating the argument parser
    my_parser = argparse.ArgumentParser(description='Compare leakage scores of FORTIFY and PLAN')

    # adding the arguments
    my_parser.add_argument('Design',
                           metavar='design',
                           type=str,
                           help='name of the design being analysed')
    my_parser.add_argument('PlanLeaksPath',
                           metavar='plan_leaks_path',
                           type=str,
                           help='path to the file containing PLAN leakage scores for the design')
    my_parser.add_argument('FortifyLeaksPath',
                           metavar='fortify_leaks_path',
                           type=str,
                           help='path to the file containing FORTIFY leakage scores for the design')
    my_parser.add_argument('-r',
                           '--results-path',
                           type=str,
                           action='store',
                           help='name of folder within results/ directory to store results, default value = current timestamp')

    # parsing the arguments
    args = my_parser.parse_args()

    design = args.Design
    plan_leaks_path = args.PlanLeaksPath
    fortify_leaks_path = args.FortifyLeaksPath

    results_path = args.results_path
    if results_path:
        results_path = 'results/' + results_path + '/' + design + '/comparison/'
    else:
        results_path = 'results/' + datetime.today().strftime('%Y-%m-%d-%H:%M:%S') + '/' + design + '/comparison/'

    if not os.path.isdir(results_path):
        os.makedirs(results_path)

    main(plan_leaks_path, fortify_leaks_path, results_path)
