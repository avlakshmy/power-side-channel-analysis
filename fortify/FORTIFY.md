
# FORTIFY

**Publication:** A V Lakshmy, Chester Rebeiro, and Swarup Bhunia:
_FORTIFY: Analytical Pre-Silicon Side-Channel Leakage Characterization of Digital Designs._ ASP-DAC 2022

**Description:** FORTIFY is an analytical framework that estimates the power side-channel vulnerability of digital circuit designs at signal-level granularity, given the RTL or gate-level netlist of the design.

**Inputs:**

- A Verilog file of the digital circuit design to be analyzed, at the RTL or gate-level netlist stage
- A reference signal in this design, with respect to which the leakage scores are to be computed

**Outputs:**

- A file (`leaks.txt`) containing the power side-channel leakage scores of each signal in the design (computed with respect to the oracle signal)
- A file (`time.txt`) containing the total number of signals in the design and the total time taken by FORTIFY for the analysis

**Code:**

The main script for FORTIFY is `run_fortify.py`. It performs the following steps:

- **Directed graph representation:**  The Verilog input circuit design is parsed and converted into its directed graph representation, where the nodes represent the gates in the circuit and the edges represent the connections between the gates. (`graph.py`, `generate_z3.py`)
- **Sub-circuit extraction:** Static information flow analysis is carried out on the directed graph representation, to extract the sub-circuit of the design which is influenced by the reference signal. (`module_maps.py`)
- **Signal probability calculation:** This step recursively calculates the approximate signal probabilities as well as conditional signal probabilities (w.r.t the reference signal) of the output signal of each gate in the design. (`sig_prob.py`)
- **Leakage score evaluation:** Finally, the leakage score for each signal in the design is calculated based on a mathematical model involving the signal probability and conditional signal probability values.

The scripts `graph.py`, `generate_z3.py`, `module_maps.py` have been reused (with modifications) from the [SOLOMON project](https://ieeexplore.ieee.org/abstract/document/9116380/).

**Steps to run FORTIFY:**

The `run_fortify.py` script takes the following input parameters:

- `<input_file_path>` : path to the input Verilog file to be analyzed
- `<top_module_name>` : name of the top module in the input Verilog file
- `<ref_module_name>` : name of the module in the input Verilog file containing the reference signal
- `<ref_instance_name>` : name of the instance in the input Verilog file containing the reference signal (same as the module name, if top module)
- `<ref_sig_name>` : name of the reference signal
- `<ref_sig_width>` : width of the reference signal
- `<design>` : name of the design being evaluated (could be any name of user's choice)
- [optional] `-r <results_path>` : name of the directory in the `results/` directory to store the corresponding results (default value: the current timestamp)

For example, let's take the case of a 2-bit Full Adder design (`../verilog_files/fa2.v`). The design has the top module `FullAdder`. Consider that the encrypted input `FullAdder.enca` (with a width of 2 bits) is the reference signal, which is in the `FullAdder` module. Then, the reference module name is `FullAdder`, and the reference instance name is also `FullAdder` (since this is the top module itself). Let us say the name of the design is `fa2`. Then, the corresponding command to run FORTIFY would be:

`python3 run_fortify.py ../verilog_files/fa2.v FullAdder FullAdder FullAdder FullAdder.enca 2 fa2 -r trial`

(In case the script generates warnings about shift-reduce conflicts, please ignore.)

**Input parameter values for different sample Verilog files**

| Input File | Top Module | Ref Module | Ref Instance | Ref Signal | Ref Signal Width |
| :- | :- | :- | :- | :- | :- |
| `c17.v` | `c17` | `c17` | `c17` | `c17.N2` | 1 |
| `c432.v` | `c432` | `c432` | `c432` | `c432.N1` | 1 |
| `fa2.v` | `FullAdder` | `FullAdder` | `FullAdder` | `FullAdder.enca` | 2 |
| `fa4.v` | `FullAdder` | `FullAdder` | `FullAdder` | `FullAdder.enca` | 4 |
| `fa8.v` | `FullAdder` | `FullAdder` | `FullAdder` | `FullAdder.enca` | 8 |
| `present-enc-1.v` | `Present` | `Encrypt` | `Present.enc` | `Present.enc.dat1_1` | 64 |
| `present-dec-1.v` | `Present` | `Decrypt` | `Present.dec` | `Present.dec.dat1_1` | 64 |
| `present-enc-2.v` | `Present` | `Encrypt` | `Present.enc` | `Present.enc.dat1_1` | 64 |
| `present-dec-1.v` | `Present` | `Decrypt` | `Present.dec` | `Present.dec.dat1_1` | 64 |


**Steps to compare results of FORTIFY and PLAN**

We also have a script, `compare_fortify_with_plan.py` which compares the leakage score results of FORTIFY with those of PLAN. It takes the following arguments as input:

- `<design>` : name of the design being evaluated
- `<plan_leaks_path>`: path to the file containing the PLAN leakage scores for the given design
- `<fortify_leaks_path>`: path to the file containing the FORTIFY results for the given design
- [optional] `-r <results_path>`: name of the directory in the `results/` directory (will be automatically created when the script is run) to store the corresponding results (default value: the current timestamp)

The results include:

- `stats.txt` : A text file containing the number of common signals between PLAN and FORTIFY (due to the slight difference in the way both tools parse the Verilog files), and the following statistical metrics for the common signals:
  - Pearson's correlation
  - Spearman's correlation
- `compare.png` : A visual comparison of the leakage scores of PLAN and FORTIFY (for the common signals)
- `err.png` : A graph of the error/difference between the leakage scores of PLAN and FORTIFY (for the common signals)

For example, for the above case of the 2-bit Full Adder (`../verilog_files/fa2.v`), suppose we have the FORTIFY leakage scores (`results/trial/fa2/leaks.txt`) as well as the PLAN leakage scores (`../plan/results/trial/fa2/leaks.txt`). Let us say we want to store the PLAN v/s FORTIFY comparison results in a directory called `trial/` within the `results/` directory. Then, the corresponding command would be:

`python3 compare_fortify_with_plan.py fa2 ../plan/results/trial/fa2/leaks.txt results/trial/fa2/leaks.txt -r trial`
