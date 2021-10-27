module CLA(a,b,c,s,co);
	input [3:0] a,b;
	input [0:0] c;
	output [4:0] s;
	output [0:0] co;
	wire [0:0] cx0, cx1, cx2;
	Carry c1(.a(a[0:0]), .b(b[0:0]), .c(c[0:0]), .s(s[0:0]), .co(cx0[0:0]));
	Carry c2(.a(a[1:1]), .b(b[1:1]), .c(cx0[0:0]), .s(s[1:1]), .co(cx1[0:0]));
	Carry c3(.a(a[2:2]), .b(b[2:2]), .c(cx1[0:0]), .s(s[2:2]), .co(cx2[0:0]));
	Carry c4(.a(a[3:3]), .b(b[3:3]), .c(cx2[0:0]), .s(s[3:3]), .co(s[4:4]));
	assign co[0:0] = s[4:4];
endmodule

module Oracle(a,k,enca);
	input [3:0] a;
	input [3:0] k;
	output [3:0] enca;
	assign enca[3:0] = a[3:0] ^ k[3:0];
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
	reg [3:0] a;
	reg [3:0] b;
	reg [0:0] c;
	reg [3:0] k;
	wire [3:0] enca;
	wire [4:0] s;
	wire [0:0] co;
	Oracle ora (.a(a), .k(k), .enca(enca));
	CLA cla (.a(enca), .b(b), .c(c), .s(s), .co(co));
	initial begin
	k='b1010;
  	a=9;
  	b=1;
  	c=1;
  	$dumpfile(" 10.vcd");
	$dumpvars;
	end
endmodule
