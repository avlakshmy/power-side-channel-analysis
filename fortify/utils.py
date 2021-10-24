# This file has been taken from the earlier SOLOMON project, and modified for this project.
# This file contains utility functions used while parsing the Verilog input files.

import pyverilog.vparser.ast as vast
import inspect

# returns the line number of the caller frame, to print diagnostic details for cases which are not handled by the parser
def getLineNumber():
	cf = inspect.currentframe()
	return cf.f_back.f_lineno

# to obtain the the numerical value of a Verilog ast node, depending on its type
def verilogIntConstToInt(x):
	val = x.value
	if isinstance(val, int):
		return val
	elif isinstance(val, str):
		if val.isdigit():
			return int(val)
		else:
			parts = val.split("'")
			assert(len(parts) == 2)

			base = parts[1][0]
			value = parts[1][1:]

			if base == 'd':
				return int(value)
			elif base == 'b':
				return int(value, 2)
			elif base == 'h':
				return int(value, 16)
			else:
				assert(False)
	else:
		print('Warning: Not handling', type(val), 'file: utils.py', 'line no.:', getLineNumber())

# returns the width of an ast node, depending on its type
def getWidth(ast, nameWidthMap):
	if isinstance(ast, vast.Concat):
		s = 0
		for item in ast.list:
			s += getWidth(item, nameWidthMap)
		return s

	elif isinstance(ast, vast.IntConst):
		if ast.value == "1\'b0":
			return 1
		else:
			print('Warning: Not handling', ast.value, 'file: utils.py', 'line no.:', getLineNumber())

	elif isinstance(ast, vast.Xor) or isinstance(ast, vast.And) or isinstance(ast, vast.Or):
		return getWidth(ast.left, nameWidthMap)

	elif isinstance(ast, vast.Identifier):
		assert(ast.name in nameWidthMap)
		return nameWidthMap[ast.name]

	elif isinstance(ast, vast.Partselect):
		assert(isinstance(ast.msb, vast.IntConst))
		assert(isinstance(ast.lsb, vast.IntConst))
		return verilogIntConstToInt(ast.msb.value) - verilogIntConstToInt(ast.lsb.value) + 1

	elif isinstance(ast, vast.Pointer):
		return 1

	else:
		print(ast)
		print('Warning: Not handling', type(ast), 'file: utils.py', 'line no.:', getLineNumber())
