module CLA(a,b,c,s,co);
    input [7:0] a,b;
    input [0:0] c;
    output [8:0] s;
    output [0:0] co;
    wire [0:0] cx0, cx1, cx2, cx3, cx4, cx5, cx6;
    Carry c1(.a(a[0:0]), .b(b[0:0]), .c(c[0:0]), .s(s[0:0]), .co(cx0[0:0]));
    Carry c2(.a(a[1:1]), .b(b[1:1]), .c(cx0[0:0]), .s(s[1:1]), .co(cx1[0:0]));
    Carry c3(.a(a[2:2]), .b(b[2:2]), .c(cx1[0:0]), .s(s[2:2]), .co(cx2[0:0]));
    Carry c4(.a(a[3:3]), .b(b[3:3]), .c(cx2[0:0]), .s(s[3:3]), .co(cx3[0:0]));
    Carry c5(.a(a[4:4]), .b(b[4:4]), .c(cx3[0:0]), .s(s[4:4]), .co(cx4[0:0]));
    Carry c6(.a(a[5:5]), .b(b[5:5]), .c(cx4[0:0]), .s(s[5:5]), .co(cx5[0:0]));
    Carry c7(.a(a[6:6]), .b(b[6:6]), .c(cx5[0:0]), .s(s[6:6]), .co(cx6[0:0]));
    Carry c8(.a(a[7:7]), .b(b[7:7]), .c(cx6[0:0]), .s(s[7:7]), .co(s[8:8]));
    assign co[0:0] = s[8:8];
endmodule

module Oracle(a,k,enca);
    input [7:0] a;
    input [7:0] k;
    output [7:0] enca;
    assign enca[7:0] = a[7:0] ^ k[7:0];
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
    reg [7:0] a;
    reg [7:0] b;
    reg [0:0] c;
    reg [7:0] k;
    wire [7:0] enca;
    wire [8:0] s;
    wire [0:0] co;
    Oracle ora (.a(a), .k(k), .enca(enca));
    CLA cla (.a(enca), .b(b), .c(c), .s(s), .co(co));
    initial begin
    k='b10101010;
  	a=241;
  	b=137;
  	c=1;
  	$dumpfile(" 10.vcd");
    $dumpvars;
    end
endmodule
