################################################################################
# Secret key values in sample Verilog files

# fa2.v -> 2
# fa4.v -> 10
# fa8.v -> 170
# c17.v -> 1
# c432.v -> 1

################################################################################

################################################################################
# Functions to be modified by user as per the design being analysed
################################################################################

################ Designs: fa2.v, fa4.v, fa8.v, c14.v, c432.v ###################

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
