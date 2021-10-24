module not(o,i1);
	input i1;
	output o;

	assign o = ~i1;
endmodule

module buf(o,i1);
	input i1;
	output o;

	assign o = i1;
endmodule

module bufif1(o,i1,e);
	input i1, e;
	output o;

	assign o = e & i1;
endmodule

module and(o,i1,i2);
	input i1, i2;
	output o;

	assign o = i1 & i2;
endmodule

module or(o,i1,i2);
	input i1, i2;
	output o;

	assign o = i1 | i2;
endmodule

module xor(o,i1,i2);
	input i1, i2;
	output o;

	assign o = i1 ^ i2;
endmodule

module nor(o,i1,i2);
	input i1, i2;
	output o;
	wire tem1;

	assign tem1 = i1 | i2;
	assign o = ~tem1;
endmodule

module nand(o,i1,i2);
	input i1, i2;
	output o;
	wire tem1;

	assign tem1 = i1 & i2;
	assign o = ~tem1;
endmodule

module xnor(o,i1,i2);
	input i1, i2;
	output o;
	wire tem1;

	assign tem1 = i1 ^ i2;
	assign o = ~tem1;
endmodule

module and3(o,i1,i2,i3);
	input i1, i2, i3;
	output o;
	wire tem1;

	assign tem1 = i1 & i2;
	assign o = tem1 & i3;
endmodule

module and4(o,i1,i2,i3,i4);
	input i1, i2, i3, i4;
	output o;
	wire tem1;
	wire tem2;

	assign tem1 = i1 & i2;
	assign tem2 = tem1 & i3;
	assign o = tem2 & i4;
endmodule

module and5(o,i1,i2,i3,i4,i5);
	input i1, i2, i3, i4, i5;
	output o;
	wire tem1;
	wire tem2;

	assign tem1 = i1 & i2;
	assign tem2 = tem1 & i3;
	assign tem3 = tem2 & i4;
	assign o = tem3 & i5;
endmodule

module and8(o,i1,i2,i3,i4,i5,i6,i7,i8);
	input i1, i2, i3, i4, i5, i6, i7, i8;
	output o;
	wire tem1, tem2, tem3, tem4, tem5, tem6;

	assign tem1 = i1 & i2;
	assign tem2 = tem1 & i3;
	assign tem3 = tem2 & i4;
	assign tem4 = tem3 & i5;
	assign tem5 = tem4 & i6;
	assign tem6 = tem5 & i7;
	assign o = tem6 & i8;
endmodule

module and9(o,i1,i2,i3,i4,i5,i6,i7,i8,i9);
	input i1, i2, i3, i4, i5, i6, i7, i8, i9;
	output o;
	wire tem1, tem2, tem3, tem4, tem5, tem6, tem7;

	assign tem1 = i1 & i2;
	assign tem2 = tem1 & i3;
	assign tem3 = tem2 & i4;
	assign tem4 = tem3 & i5;
	assign tem5 = tem4 & i6;
	assign tem6 = tem5 & i7;
	assign tem7 = tem6 & i8;
	assign o = tem7 & i9;
endmodule

module or3(o,i1,i2,i3);
	input i1, i2, i3;
	output o;
	wire tem1;

	assign tem1 = i1 | i2;
	assign o = tem1 | i3;
endmodule

module or4(o,i1,i2,i3,i4);
	input i1, i2, i3, i4;
	output o;
	wire tem1;
	wire tem2;

	assign tem1 = i1 | i2;
	assign tem2 = tem1 | i3;
	assign o = tem2 | i4;
endmodule

module xor3(o,i1,i2,i3);
	input i1, i2, i3;
	output o;
  wire tem1;

  assign tem1 = i1 ^ i2;
	assign o = tem1 ^ i3;
endmodule

module nor3(o,i1,i2,i3);
	input i1, i2, i3;
	output o;
	wire tem1;
	wire tem2;

	assign tem1 = i1 | i2;
	assign tem2 = tem1 | i3;
	assign o = ~tem2;
endmodule

module nor4(o,i1,i2,i3,i4);
	input i1, i2, i3, i4;
	output o;
	wire tem1;
	wire tem2;
	wire tem3;

	assign tem1 = i1 | i2;
	assign tem2 = tem1 | i3;
	assign tem3 = tem2 | i4;
	assign o = ~tem3;
endmodule

module nand3(o,i1,i2,i3);
	input i1, i2, i3;
	output o;
	wire tem1;
	wire tem2;

	assign tem1 = i1 & i2;
	assign tem2 = tem1 & i3;
	assign o = ~tem2;
endmodule

module nand4(o,i1,i2,i3,i4);
	input i1, i2, i3, i4;
	output o;
	wire tem1;
	wire tem2;
	wire tem3;

	assign tem1 = i1 & i2;
	assign tem2 = tem1 & i3;
	assign tem3 = tem2 & i4;
	assign o = ~tem3;
endmodule

module xnor3(o,i1,i2,i3);
	input i1, i2, i3;
	output o;
	wire tem1, tem2;

	assign tem1 = i1 ^ i2;
  assign tem2 = tem1 ^ i2;
	assign o = ~tem2;
endmodule

module mux2_udp3(o,i1,i2,i3);
	input i1, i2, i3;
  output o;
	wire tem1;
  wire tem2;
  wire tem3;

	assign tem1 = i3 & i1;
	assign tem2 = ~i3;
	assign tem3 = tem2 & i2;
	assign o = tem1 | tem3;
endmodule

module mux3_udp5(o,i1,i2,i3,i4,i5);
	input i1, i2, i3, i4, i5;
  output o;
	wire tem1;

	mux2_udp3 g1(tem1, i1, i2, i4);
	mux2_udp3 g2(o, tem1, i3, i5);
endmodule

module mux4_udp6(o,i1,i2,i3,i4,i5,i6);
	input i1, i2, i3, i4, i5, i6;
  output o;
	wire tem1;
  wire tem2;

	mux2_udp3 g1(tem1, i1, i2, i5);
	mux2_udp3 g2(tem2, i3, i4, i5);
	mux2_udp3 g3(o, tem1, tem2, i6);
endmodule

module dffrsb_udp5(o,i1,i2,i3,i4,i5);
	input i1, i2, i3, i4, i5;
	output o;

	assign o = i1;
endmodule

module dlhrb_udp4(o,i1,i2,i3,i4);
	input i1, i2, i3, i4;
	output o;

	assign o = i1;
endmodule

module dlhsb_udp4(o,i1,i2,i3,i4);
	input i1, i2, i3, i4;
	output o;

	assign o = i1;
endmodule
