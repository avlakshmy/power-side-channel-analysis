
# Power Side-Channel Analysis Frameworks

This repository describes two frameworks which can be used for pre-Silicon power side-channel analysis of digital circuit designs (i.e., at the RTL or gate-level netlist stage): **PLAN** (Power attack Leakage ANalyzer) and **FORTIFY**.

## Publications

- Muhammad Arsath K. F, Vinod Ganesan, Rahul Bodduna, Chester Rebeiro:
_PARAM: A Microprocessor Hardened for Power Side-Channel Attack Resistance._ [HOST 2020: 23-34](https://doi.org/10.1109/HOST45689.2020.9300263)
- A V Lakshmy, Chester Rebeiro, and Swarup Bhunia:
_FORTIFY: Analytical Pre-Silicon Side-Channel Leakage Characterization of Digital Designs._ ASP-DAC 2022

## Setup

- Download and install Anaconda. Please refer to https://docs.anaconda.com/anaconda/install/linux/ (steps 1 – 10 under the section _Installation_).
- Check that the following line has been added to `~/.bashrc` file:

  `export PATH="/home/<user_name>/anaconda3/bin:$PATH"`

  (If not added, please add it manually, save and close the file. Restart the terminal for the changes to take effect.)
- Check whether `conda` is properly installed by running:

  `conda --version`

  `conda update conda`
- Clone this repo on your local system:

  `git clone https://github.com/avlakshmy/power-side-channel-analysis.git`

- Create the environment (named `psca`) using the `environment.yml` file in the root of the repo, by running the following command:

  `conda env create -f environment.yml`

  This installs the Python modules required for the tools to run (`tqdm`, `pyverilog`, `z3-solver`, `numpy`, `scipy`, `Verilog_VCD`, `pandas`, `matplotlib`).
- Activate the environment by running the command:

  `source activate psca`

The above steps need to be performed once initially. However, the last step has to be run, i.e., the environment must be activated each time before running any of the tools.

Please refer to the `plan/PLAN.md` and `fortify/FORTIFY.md` files for a more detailed description of PLAN and FORTIFY, as well as instructions to run the scripts for both tools.

## Directory Structure of Repo

- `fortify/` : Code and results for FORTIFY
  - `std_cell_lib/` : Verilog standard gate and module definitions
    - `std_gates.v` : Verilog standard gate definitions (required for parsing by FORTIFY)
    - `std_mods.v` : Verilog standard module definitions from Synopsys Design Compiler (SDC)
  - `compare_fortify_with_plan.py` : Script that compares the results of FORTIFY with those of PLAN
  - `FORTIFY.md` : Documentation about FORTIFY
  - `generate_z3.py` : Python script containing functions for generating logical expressions corresponding to each signal in the design
  - `graph.py` : Python script defining a graph class
  - `module_maps.py` : Python script containing functions to convert the input design into a directed graph representation and extract the sub-circuit influenced by the reference signal
  - `run_fortify.py` : Main script to run FORTIFY
  - `sig_prob.py` : Python script containing functions to recursively calculate the signal probability and conditional signal probabilities of a signal in the design
  - `utils.py` : Python script containing utility functions used during Verilog parsing
- `plan/` : Code files for PLAN
  - `c17_simulate.sh` : Bash script to perform behavioral simulations of the Verilog file (`../verilog_files/c17.v`) corresponding to `c17` design
  - `c432_simulate.sh` : Bash script to perform behavioral simulations of the Verilog file (`../verilog_files/c432.v`) corresponding to `c432` design
  - `clean.sh` : Bash script to clean up temporary files generated during previous simulations
  - `examples.py` : File containing the secret key values, as well as load input and compute oracle functions for different designs
  - `fa2_simulate.sh` : Bash script to perform behavioral simulations of the Verilog file (`../verilog_files/fa2.v`) corresponding to 2-bit Full Adder (`fa2`) design
  - `fa4_simulate.sh` : Bash script to perform behavioral simulations of the Verilog file (`../verilog_files/fa4.v`) corresponding to 4-bit Full Adder (`fa4`) design
  - `fa8_simulate.sh` : Bash script to perform behavioral simulations of the Verilog file (`../verilog_files/fa8.v`) corresponding to 8-bit Full Adder (`fa8`) design
  - `PLAN.md` : Documentation about PLAN
  - `run_plan.py` : Main script to run PLAN
- `verilog_files/` : Directory to store Verilog files corresponding to designs to be analyzed using the tools
  - `c17.v` : Sample Verilog file corresponding to c17 combinational circuit design
  - `c432.v` : Sample Verilog file corresponding to c432 combinational circuit design
  - `fa2.v` : Sample Verilog file corresponding to 2-bit full adder design
  - `fa4.v` : Sample Verilog file corresponding to 4-bit full adder design
  - `fa8.v` : Sample Verilog file corresponding to 8-bit full adder design
- `environment.yml` : Conda environment file
- `LICENSE.iitm` : License for the tools
- `README.md` : High-level overview of the tools

## Contact

For any queries regarding the tools, please reach out to me (avlakshmy@gmail.com).
