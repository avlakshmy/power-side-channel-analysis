#!/bin/bash

# path to input Verilog file to be analysed
inpfile=$1

# number of simulations to be performed
runs=$2

# line numbers corresponding to initialisation of the input variables
line1=7686 #idat 7 0
line2=7687 #idat 15 8
line3=7688 #idat 23 16
line4=7689 #idat 31 24
line5=7690 #idat 39 32
line6=7691 #idat 47 40
line7=7692 #idat 55 48
line8=7693 #idat 63 56

# line number corresponding to the dumpfile command
lineD=7694 #dumpfile

# script to clean up temporary files created from previous simulation
./clean.sh

for ((i=1;i<=$runs;i++));
do
	# generating random values for each of the input variables
	# the maximum value possible for each variable must be updated below
	r1=$((RANDOM%256))
	r2=$((RANDOM%256))
	r3=$((RANDOM%256))
	r4=$((RANDOM%256))
	r5=$((RANDOM%256))
	r6=$((RANDOM%256))
	r7=$((RANDOM%256))
	r8=$((RANDOM%256))

	# plugging in the above random values in the Verilog file
	sed -i "$line1 s/.*/  	idat[7:0]=$r1;/" $inpfile
	sed -i "$line2 s/.*/  	idat[15:8]=$r2;/" $inpfile
	sed -i "$line3 s/.*/  	idat[23:16]=$r3;/" $inpfile
	sed -i "$line4 s/.*/    idat[31:24]=$r4;/" $inpfile
	sed -i "$line5 s/.*/    idat[39:32]=$r5;/" $inpfile
	sed -i "$line6 s/.*/    idat[47:40]=$r6;/" $inpfile
	sed -i "$line7 s/.*/    idat[55:48]=$r7;/" $inpfile
	sed -i "$line8 s/.*/    idat[63:56]=$r8;/" $inpfile

	# plugging in the dumpfile name in the Verilog file
	sed -i "$lineD s/.*/  	\$\dumpfile\(\\\"\ $i.vcd\")\;/" $inpfile

	# running the behavioral simulation
	iverilog $inpfile -o dumpfile
	vvp dumpfile
	mv " "$i.vcd ./vcd

	# storing the value of the variables required for oracle computation
	echo "$r1 $r2 $r3 $r4 $r5 $r6 $r7 $r8" >> txtfile
done
