module CLA(a,b,c,s,co);
	input [1:0] a,b;
	input [0:0] c;
	output [2:0] s;
	output [0:0] co;
	wire [0:0] cx0;
	Carry c1(.a(a[0:0]), .b(b[0:0]), .c(c[0:0]), .s(s[0:0]), .co(cx0[0:0]));
	Carry c2(.a(a[1:1]), .b(b[1:1]), .c(cx0[0:0]), .s(s[1:1]), .co(s[2:2]));
	assign co[0:0] = s[2:2];
endmodule

module Oracle(a,k,enca);
	input [1:0] a;
	input [1:0] k;
	output [1:0] enca;
	assign enca[1:0] = a[1:0] ^ k[1:0];
endmodule

module Carry(a,b,c,s,co);
	input [0:0] a;
	input [0:0] b;
	input [0:0] c;
	output [0:0] s;
	output [0:0] co;
	wire [0:0] out1, out2, out3, out4;
	assign out1 = a & b;
	assign out2 = a ^ b;
	assign out3 = out2 & c;
	assign co = out3 | out1;
	assign out4 = a ^ b;
	assign s = out4 ^ c;
endmodule

 module FullAdder;
	reg [1:0] a;
	reg [1:0] b;
	reg [0:0] c;
	reg [1:0] k;
	wire [1:0] enca;
	wire [2:0] s;
	wire [0:0] co;
	Oracle ora (.a(a), .k(k), .enca(enca));
	CLA cla (.a(enca), .b(b), .c(c), .s(s), .co(co));
	initial begin
	k='b10;
  	a=0;
  	b=2;
  	c=1;
  	$dumpfile(" 10.vcd");
	$dumpvars;
	end
endmodule
