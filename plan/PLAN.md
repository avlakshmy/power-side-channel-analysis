
# PLAN

**Publication:** Muhammad Arsath K. F, Vinod Ganesan, Rahul Bodduna, Chester Rebeiro:
_PARAM: A Microprocessor Hardened for Power Side-Channel Attack Resistance._ [HOST 2020: 23-34](https://doi.org/10.1109/HOST45689.2020.9300263)

**Description:** PLAN performs power side-channel analysis of digital circuit designs at the RTL or gate-level netlist stage by performing behavioral simulations and applying statistical metrics on the collected traces.

**Inputs:**

- A Verilog file of the digital circuit design to be analyzed, at the RTL or gate-level netlist stage
- An oracle signal in this design, with respect to which the leakage scores are to be computed

**Outputs:**

- A file (`leaks.txt`) containing the power side-channel leakage scores of each signal in the design (computed with respect to the oracle signal)
- A file (`time.txt`) containing the total number of signals in the design and the total time taken by PLAN for the analysis

**Code:**

The main script for PLAN is `run_plan.py`:

- The script first performs a large number of (typically 1000) behavioral simulations on the input Verilog file, by invoking a Bash script, which in turn carries out the following steps:
  - generates random values for each of the inputs (except the secret key - which remains constant) in the input design
  - performs the Verilog behavioral simulation
  - produces the corresponding VCD (Value Change Dump) file
- The script then analyzes all the VCD files generated above:
  - First, the VCD files are read and the signal-wise data for each simulation run is stored in the form of pkl files.
  - Then, the signal-wise information is further analyzed by computing the toggling values.
  - Further, each signal in the design is processed by computing the pairwise Hamming distances between the values of that signal across the simulation runs.
  - Finally, the signal-wise leakage scores are computed with respect to the oracle signal, based on the Pearson's correlation score, and written to an output file.
- **Please note:** Depending on the input Verilog design being analyzed,
  - we must create a Bash script for performing behavioral simulations (the script would be different for each input design, because the number of inputs, their names and range of values taken by them would be different in each case; please refer to `fa2_simulate.sh` corresponding to the 2-bit Full Adder design (`../verilog_files/fa2.v`) for reference)
  - the first few lines of the `run_plan.py` script, containing the functions to load input data and compute the oracle, must be modified

The script `run_plan.py` as well as the simulation scripts have been reused (with modifications) from the [PLAN/PARAM project](https://doi.org/10.1109/HOST45689.2020.9300263).

**Steps to run PLAN:**

The first step is to choose the input Verilog design to be analyzed, as well as the signal to be used as the oracle in the chosen design. Correspondingly, we need to create a Bash script for performing the behavioral simulation, where we must specify the correct input Verilog file name, and also ensure that it has the correct line numbers, variable names, max range (depending on the number of bits in each input) to generate random values. We must also modify the first few lines of the `run_plan.py` script containing functions for loading the input values and computing the oracle. The corresponding functions for the different sample Verilog files have been provided in a later section below. Then, we can run this script.

The `run_plan.py` script takes the following input parameters:

- `<input_file_path>` : path to the input Verilog file to be analyzed
- `<key_value>` : the value of the secret key used in the input Verilog file
- `<simulation_script>` : path to the script used to perform behavioral simulation
- `<design>` : name of the design being evaluated (could be any name of user's choice)
- [optional] `-n <num_iterations>` : number of iterations to perform during behavioral simulation (default value: 1000)
- [optional] `-r <results_path>` : name of the directory in the `results/` directory (will be automatically created when the script is run) to store the corresponding results (default value: the current timestamp)

For example, let's take the case of a 2-bit Full Adder design (`../verilog_files/fa2.v`), which uses a secret key `FullAdder.k` of value 2. Suppose we use the `FullAdder.enca` signal in this design to be our oracle signal. Let us say the name of the design is `fa2`. We have the script `fa2_simulate.sh` to perform the behavioral simulations on this design. Also, we have added the required functions at the beginning of the `run_plan.py` script to load the input values and compute the oracle. Suppose we want to store the results in a directory called `trial/` within the `results/` directory. Then, the corresponding command to run PLAN would be:

`python3 run_plan.py ../verilog_files/fa2.v 2 fa2_simulate.sh fa2 -n 1000 -r trial`

**Input parameter values for different sample Verilog files**

| Input File | Key Value | Simulation Script |
| :----- | :- | :---- |
| `c17.v` | 1 | `c17_simulate.sh` |
| `c432.v` | 1 | `c432_simulate.sh` |
| `fa2.v` | 2 | `fa2_simulate.sh` |
| `fa4.v` | 10 | `fa4_simulate.sh` |
| `fa8.v` | 170 | `fa8_simulate.sh` |
| `present*.v` | 170102 | `present*_simulate.sh` |

**Functions to be modified in `run_plan.py` as per the design being analyzed**

**Designs:** `fa2.v`, `fa4.v`, `fa8.v`, `c14.v`, `c432.v`

```python
# To read the input values generated during simulation
def loadData():
   a = []
   with open('txtfile', 'r') as f:
       buff = f.read().split('\n')
   for d in buff[:-1]:
       a.append(d)
   return np.array(a,dtype='int')

# To compute the oracle trace from the input trace generated and the secret key used during simulation
def computeOracle(k):
    ip1 = loadData()
    y = np.bitwise_xor(ip1, k)
    return y
```

**Designs:** `present*.v`

```python
# To read the input values generated during simulation
def loadData():
    a = []
    with open('txtfile', 'r') as f:
        buff = f.read().split('\n')
    for d in buff[:-1]:
        # Since the simulation stores each byte of the 64-bit input separately,
        # we need to first combine them into a complete 64-bit value
        byteVals = [bin(int(val))[2:].zfill(8) for val in d.split(' ')][::-1]
        x = "".join(byteVals)
        a.append(x)
    return np.array(a)

# To compute the oracle trace from the input trace generated and the secret key used during simulation
def myXor(x, w, n):
    ans = ''.join([str(int(x[i] != w[i])) for i in range(n)])
    return ans

def computeOracle(k):
    ip1 = loadData()
    n = 64 # input size is 64 bits

    # converting the 80-bit secret key to binary representation
    # and extracting its first 64 bits for the PRESENT keyxor operation
    keyVal = bin(k)[2:].zfill(80)[:-16]

    y = [int(myXor(keyVal, inp.zfill(n), n),2) for inp in ip1]
    return y
```
