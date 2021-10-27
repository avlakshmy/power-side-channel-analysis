#!/bin/bash

# path to input Verilog file to be analysed
inpfile=$1

# number of simulations to be performed
runs=$2

# line numbers corresponding to initialisation of the input variables
line1=18 #N2
line2=19 #N1
line3=20 #N3
line4=21 #N6

# line number corresponding to the dumpfile command
lineD=22 #dumpfile

# script to clean up temporary files created from previous simulation
./clean.sh

for ((i=1;i<=$runs;i++));
do
	# generating random values for each of the input variables
	# the maximum value possible for each variable must be updated below
	r1=$((RANDOM%2))
	r2=$((RANDOM%2))
	r3=$((RANDOM%2))
	r4=$((RANDOM%2))

	# plugging in the above random values in the Verilog file
	sed -i "$line1 s/.*/  	N2=$r1;/" $inpfile
	sed -i "$line2 s/.*/  	N1=$r2;/" $inpfile
	sed -i "$line3 s/.*/  	N3=$r3;/" $inpfile
	sed -i "$line4 s/.*/  	N6=$r4;/" $inpfile
	sed -i "$lineD s/.*/  	\$\dumpfile\(\\\"\ $i.vcd\")\;/" $inpfile

	# running the behavioral simulation
	iverilog $inpfile -o dumpfile
	vvp dumpfile
	mv " "$i.vcd ./vcd

	# storing the value of the variables required for oracle computation
	echo "$r1" >> txtfile
done
