import sys
sys.setrecursionlimit(100000)

# incremental signal probability formulae for the standard logic gates
def incSigProb(a, b, op):
    if op == "And":
        return a*b
    elif op == "Or":
        return a + b - a*b
    else: # op == "Xor"
        return a + b - 2*a*b

# recursive signal probability and conditional signal probability calculation
def populateSigProbs(sig, encounteredSigs, s_hat, s_hat_0, s_hat_1, truthTableMap, refSigBitNames, inputSigBitNames):
    # to avoid recomputation of already calculated signal probability values
    if sig in s_hat:
        return

    # to avoid infinite recursion caused by circular dependencies, assigning zero signal probabilities
    if sig in encounteredSigs:
        print("Circular dependency:", sig)
        s_hat[sig] = 0
        s_hat_0[sig] = {}
        s_hat_1[sig] = {}
        for ref in refSigBitNames:
            s_hat_0[sig][ref] = 0
            s_hat_1[sig][ref] = 0
        return

    encounteredSigs.add(sig)

    if sig in truthTableMap:
        # logical expression corresponding to this signal
        exp = truthTableMap[sig]

        if isinstance(exp, int):
            s_hat[sig] = exp
            s_hat_0[sig] = {}
            s_hat_1[sig] = {}
            for ref in refSigBitNames:
                s_hat_0[sig][ref] = exp
                s_hat_1[sig][ref] = exp

        elif isinstance(exp, str):
            populateSigProbs(exp, encounteredSigs, s_hat, s_hat_0, s_hat_1, truthTableMap, refSigBitNames, inputSigBitNames)
            s_hat[sig] = s_hat[exp]
            s_hat_0[sig] = {}
            s_hat_1[sig] = {}
            for ref in refSigBitNames:
                s_hat_0[sig][ref] = s_hat_0[exp][ref]
                s_hat_1[sig][ref] = s_hat_1[exp][ref]

        elif isinstance(exp, list):
            op = exp[0]
            if op == "Not":
                populateSigProbs(exp[1], encounteredSigs, s_hat, s_hat_0, s_hat_1, truthTableMap, refSigBitNames, inputSigBitNames)
                s_hat[sig] = 1 - s_hat[exp[1]]
                s_hat_0[sig] = {}
                s_hat_1[sig] = {}
                for ref in refSigBitNames:
                    s_hat_0[sig][ref] = 1 - s_hat_0[exp[1]][ref]
                    s_hat_1[sig][ref] = 1 - s_hat_1[exp[1]][ref]
            else: # And, Or, Xor
                populateSigProbs(exp[1], encounteredSigs, s_hat, s_hat_0, s_hat_1, truthTableMap, refSigBitNames, inputSigBitNames)
                populateSigProbs(exp[2], encounteredSigs, s_hat, s_hat_0, s_hat_1, truthTableMap, refSigBitNames, inputSigBitNames)
                s_hat[sig] = incSigProb(s_hat[exp[1]], s_hat[exp[2]], op)
                s_hat_0[sig] = {}
                s_hat_1[sig] = {}
                for ref in refSigBitNames:
                    s_hat_0[sig][ref] = incSigProb(s_hat_0[exp[1]][ref], s_hat_0[exp[2]][ref], op)
                    s_hat_1[sig][ref] = incSigProb(s_hat_1[exp[1]][ref], s_hat_1[exp[2]][ref], op)

    else:
        # should never reach here; assigning zero signal probabilities as a corner case
        print("Should not reach this; check:", sig)
        s_hat[sig] = 0
        s_hat_0[sig] = {}
        s_hat_1[sig] = {}
        for ref in refSigBitNames:
            s_hat_0[sig][ref] = 0
            s_hat_1[sig][ref] = 0
