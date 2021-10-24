
# Power Side-Channel Analysis Frameworks

This repository describes two frameworks which can be used for pre-Silicon power side-channel analysis of digital circuit designs (i.e., at the RTL or gate-level netlist stage): **PLAN** (Power attack Leakage ANalyzer) and **FORTIFY**.

## Setup

- Download and install Anaconda. Please refer to https://docs.anaconda.com/anaconda/install/linux/ (steps 1 – 10 under the section _Installation_).
- Check that the following line has been added to `~/.bashrc` file:

  `export PATH="/home/<user_name>/anaconda3/bin:$PATH"`

  (If not added, please add it manually, save and close the file. Restart the terminal for the changes to take effect.)
- Check whether `conda` is properly installed by running:

  `conda --version`

  `conda update conda`
- Download the `environment.yml` file from this repo.
- Create the environment (named `psca`) using the above file by running the following command:

  `conda env create -f environment.yml`

  This installs the Python modules required for the tools to run (`tqdm`, `pyverilog`, `z3-solver`, `numpy`, `scipy`, `Verilog_VCD`, `pandas`, `matplotlib`).
- Activate the environment by running the command:

  `source activate psca`

## Documentation

Please refer to the `docs/` folder in this repo to understand the directory structure of the repo, as well as for a detailed description of both the tools and how to run their corresponding scripts.

## Contact

For any queries regarding the tools, please reach out to me (avlakshmy@gmail.com).
