#!/bin/bash

# path to input Verilog file to be analysed
inpfile=$1

# number of simulations to be performed
runs=$2

# line numbers corresponding to initialisation of the input variables
line1=188 #N1
line2=189 #N4
line3=190 #N8
line4=191 #N11
line5=192 #N14
line6=193 #N17
line7=194 #N21
line8=195 #N24
line9=196 #N27
line10=197 #N30
line11=198 #N34
line12=199 #N37
line13=200 #N40
line14=201 #N43
line15=202 #N47
line16=203 #N50
line17=204 #N53
line18=205 #N56
line19=206 #N60
line20=207 #N63
line21=208 #N66
line22=209 #N69
line23=210 #N73
line24=211 #N76
line25=212 #N79
line26=213 #N82
line27=214 #N86
line28=215 #N89
line29=216 #N92
line30=217 #N95
line31=218 #N99
line32=219 #N102
line33=220 #N105
line34=221 #N108
line35=222 #N112

# line number corresponding to the dumpfile command
lineD=223 #dumpfile

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
	r5=$((RANDOM%2))
	r6=$((RANDOM%2))
	r7=$((RANDOM%2))
	r8=$((RANDOM%2))
	r9=$((RANDOM%2))
	r10=$((RANDOM%2))
	r11=$((RANDOM%2))
	r12=$((RANDOM%2))
	r13=$((RANDOM%2))
	r14=$((RANDOM%2))
	r15=$((RANDOM%2))
	r16=$((RANDOM%2))
	r17=$((RANDOM%2))
	r18=$((RANDOM%2))
	r19=$((RANDOM%2))
	r20=$((RANDOM%2))
	r21=$((RANDOM%2))
	r22=$((RANDOM%2))
	r23=$((RANDOM%2))
	r24=$((RANDOM%2))
	r25=$((RANDOM%2))
	r26=$((RANDOM%2))
	r27=$((RANDOM%2))
	r28=$((RANDOM%2))
	r29=$((RANDOM%2))
	r30=$((RANDOM%2))
	r31=$((RANDOM%2))
	r32=$((RANDOM%2))
	r33=$((RANDOM%2))
	r34=$((RANDOM%2))
	r35=$((RANDOM%2))

	# plugging in the above random values in the Verilog file
	sed -i "$line1 s/.*/  	N1=$r1;/" $inpfile
	sed -i "$line2 s/.*/  	N4=$r2;/" $inpfile
	sed -i "$line3 s/.*/  	N8=$r3;/" $inpfile
	sed -i "$line4 s/.*/  	N11=$r4;/" $inpfile
	sed -i "$line5 s/.*/  	N14=$r5;/" $inpfile
	sed -i "$line6 s/.*/  	N17=$r6;/" $inpfile
	sed -i "$line7 s/.*/  	N21=$r7;/" $inpfile
	sed -i "$line8 s/.*/  	N24=$r8;/" $inpfile
	sed -i "$line9 s/.*/  	N27=$r9;/" $inpfile
	sed -i "$line10 s/.*/  	N30=$r10;/" $inpfile
	sed -i "$line11 s/.*/  	N34=$r11;/" $inpfile
	sed -i "$line12 s/.*/  	N37=$r12;/" $inpfile
	sed -i "$line13 s/.*/  	N40=$r13;/" $inpfile
	sed -i "$line14 s/.*/  	N43=$r14;/" $inpfile
	sed -i "$line15 s/.*/  	N47=$r15;/" $inpfile
	sed -i "$line16 s/.*/  	N50=$r16;/" $inpfile
	sed -i "$line17 s/.*/  	N53=$r17;/" $inpfile
	sed -i "$line18 s/.*/  	N56=$r18;/" $inpfile
	sed -i "$line19 s/.*/  	N60=$r19;/" $inpfile
	sed -i "$line20 s/.*/  	N63=$r20;/" $inpfile
	sed -i "$line21 s/.*/  	N66=$r21;/" $inpfile
	sed -i "$line22 s/.*/  	N69=$r22;/" $inpfile
	sed -i "$line23 s/.*/  	N73=$r23;/" $inpfile
	sed -i "$line24 s/.*/  	N76=$r24;/" $inpfile
	sed -i "$line25 s/.*/  	N79=$r25;/" $inpfile
	sed -i "$line26 s/.*/  	N82=$r26;/" $inpfile
	sed -i "$line27 s/.*/  	N86=$r27;/" $inpfile
	sed -i "$line28 s/.*/  	N89=$r28;/" $inpfile
	sed -i "$line29 s/.*/  	N92=$r29;/" $inpfile
	sed -i "$line30 s/.*/  	N95=$r30;/" $inpfile
	sed -i "$line31 s/.*/  	N99=$r31;/" $inpfile
	sed -i "$line32 s/.*/  	N102=$r32;/" $inpfile
	sed -i "$line33 s/.*/  	N105=$r33;/" $inpfile
	sed -i "$line34 s/.*/  	N108=$r34;/" $inpfile
	sed -i "$line35 s/.*/  	N112=$r35;/" $inpfile
	sed -i "$lineD s/.*/  	\$\dumpfile\(\\\"\ $i.vcd\")\;/" $inpfile

	# running the behavioral simulation
	iverilog $inpfile -o dumpfile
	vvp dumpfile
	mv " "$i.vcd ./vcd

	# storing the value of the variables required for oracle computation
	echo "$r1" >> txtfile
done
