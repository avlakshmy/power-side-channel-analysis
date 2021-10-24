
# PLAN

**Publication:** Muhammad Arsath K. F, Vinod Ganesan, Rahul Bodduna, Chester Rebeiro:
_PARAM: A Microprocessor Hardened for Power Side-Channel Attack Resistance._ [HOST 2020: 23-34](https://doi.org/10.1109/HOST45689.2020.9300263)

**Description:** PLAN performs power side-channel analysis of digital circuit designs at the RTL or gate-level netlist stage by performing behavioral simulations and applying statistical metrics on the collected traces.

**Inputs:**

- A Verilog file of the digital circuit design to be analyzed, at the RTL or gate-level netlist stage
- An oracle signal in this design, with respect to which the leakage scores are to be computed

**Output:** A file containing the power side-channel leakage scores of each signal in the design (computed with respect to the oracle signal)

**Code:**

The `plan/` directory contains the code and results for the PLAN framework. The main script which performs the entire simulation and analysis of PLAN is `run_plan.py`:

- The script first performs behavioral simulations on the input Verilog file, by invoking a Bash script, which in turn carries out the following steps for a large enough no. of iterations (typically 1000):
  - generates random values for each of the inputs (except the secret key - which remains constant) in the input design
  - performs the Verilog behavioral simulation
  - produces the corresponding VCD (Value Change Dump) file
- The script then analyzes all the VCD files generated above:
  - First, the VCD files are read and the signal-wise data for each simulation run is stored in the form of pkl files.
  - Then, the signal-wise information is further analyzed by computing the toggling values.
  - Further, each signal in the design is processed by computing the pairwise Hamming distances between the values of that signal across the simulation runs.
  - Finally, the signal-wise leakage scores are computed with respect to the oracle signal, based on the Pearson's correlation score, and written to an output file.
- **Please note:** Depending on the input Verilog design being analyzed,
  - we must create a Bash script for performing behavioral simulations (the script would be different for each input design, because the number of inputs, their names and range of values taken by them would be different in each case; please refer to [`fa2_simulate.sh`](fa2_simulate.sh) corresponding to the 20bit Full Adder design [`../verilog_files/fa2.v`](../verilog_files/fa2.v) for reference)
  - the first few lines of the `run_plan.py` script, containing the functions to load input data and compute the oracle, must be modified

**Steps to run PLAN:**

The first step is to choose the input Verilog design to be analyzed, as well as the signal to be used as the oracle in the chosen design. Correspondingly, we need to create a Bash script for performing the behavioral simulation, where we must specify the correct input Verilog file name, and also ensure that it has the correct line numbers, variable names, max range (depending on the number of bits in each input) to generate random values. We must also modify the first few lines of the `run_plan.py` script containing functions for loading the input values and computing the oracle. Then, we can run this script.

The `run_plan.py` script takes the following input parameters:

- `<key_value>` : the value of the secret key used in the input Verilog file
- `<simulation_script>` : path to the script used to perform behavioral simulation
- `<design>` : name of the design being evaluated (could be any name of user's choice)
- [optional] `-n <num_iterations>` : number of iterations to perform during behavioral simulation (default value: 1000)
- [optional] `-r <results_path>` : name of the folder in the `results/` directory to store the corresponding results (default value: a folder named with the current timestamp)

For example, let's take the case of a 2-bit Full Adder design [(RTL Verilog file)](../verilog_files/fa2.v). Let us say the name of the design is `fa2`. Then, the corresponding command to run PLAN would be:

`python3 run_plan.py 2 fa2_simulate.sh fa2 -n 1000 -r trial`
