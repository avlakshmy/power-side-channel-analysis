#!/bin/bash

# path to input Verilog file to be analysed
inpfile=$1

# number of simulations to be performed
runs=$2

# line numbers corresponding to initialisation of the input variables
line1=52 #a
line2=53 #b
line3=54 #c

# line number corresponding to the dumpfile command
lineD=55 #dumpfile

# script to clean up temporary files created from previous simulation
./clean.sh

for ((i=1;i<=$runs;i++));
do
	# generating random values for each of the input variables
	# the maximum value possible for each variable must be updated below
	r1=$((RANDOM%256))
	r2=$((RANDOM%256))
	r3=$((RANDOM%2))

	# plugging in the above random values in the Verilog file
	sed -i "$line1 s/.*/  	a=$r1;/" $inpfile
	sed -i "$line2 s/.*/  	b=$r2;/" $inpfile
	sed -i "$line3 s/.*/  	c=$r3;/" $inpfile
	sed -i "$lineD s/.*/  	\$\dumpfile\(\\\"\ $i.vcd\")\;/" $inpfile

	# running the behavioral simulation
	iverilog $inpfile -o dumpfile
	vvp dumpfile
	mv " "$i.vcd ./vcd

	# storing the value of the variables required for oracle computation
	echo "$r1" >> txtfile
done
