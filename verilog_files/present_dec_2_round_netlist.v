/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP5-4
// Date      : Tue May 18 10:56:28 2021
/////////////////////////////////////////////////////////////


module Sbox4K_0 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_0 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_0 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Pbox_0 ( idat, odat );
  input [63:0] idat;
  output [63:0] odat;

  assign odat[63] = idat[63];
  assign odat[62] = idat[47];
  assign odat[61] = idat[31];
  assign odat[60] = idat[15];
  assign odat[59] = idat[62];
  assign odat[58] = idat[46];
  assign odat[57] = idat[30];
  assign odat[56] = idat[14];
  assign odat[55] = idat[61];
  assign odat[54] = idat[45];
  assign odat[53] = idat[29];
  assign odat[52] = idat[13];
  assign odat[51] = idat[60];
  assign odat[50] = idat[44];
  assign odat[49] = idat[28];
  assign odat[48] = idat[12];
  assign odat[47] = idat[59];
  assign odat[46] = idat[43];
  assign odat[45] = idat[27];
  assign odat[44] = idat[11];
  assign odat[43] = idat[58];
  assign odat[42] = idat[42];
  assign odat[41] = idat[26];
  assign odat[40] = idat[10];
  assign odat[39] = idat[57];
  assign odat[38] = idat[41];
  assign odat[37] = idat[25];
  assign odat[36] = idat[9];
  assign odat[35] = idat[56];
  assign odat[34] = idat[40];
  assign odat[33] = idat[24];
  assign odat[32] = idat[8];
  assign odat[31] = idat[55];
  assign odat[30] = idat[39];
  assign odat[29] = idat[23];
  assign odat[28] = idat[7];
  assign odat[27] = idat[54];
  assign odat[26] = idat[38];
  assign odat[25] = idat[22];
  assign odat[24] = idat[6];
  assign odat[23] = idat[53];
  assign odat[22] = idat[37];
  assign odat[21] = idat[21];
  assign odat[20] = idat[5];
  assign odat[19] = idat[52];
  assign odat[18] = idat[36];
  assign odat[17] = idat[20];
  assign odat[16] = idat[4];
  assign odat[15] = idat[51];
  assign odat[14] = idat[35];
  assign odat[13] = idat[19];
  assign odat[12] = idat[3];
  assign odat[11] = idat[50];
  assign odat[10] = idat[34];
  assign odat[9] = idat[18];
  assign odat[8] = idat[2];
  assign odat[7] = idat[49];
  assign odat[6] = idat[33];
  assign odat[5] = idat[17];
  assign odat[4] = idat[1];
  assign odat[3] = idat[48];
  assign odat[2] = idat[32];
  assign odat[1] = idat[16];
  assign odat[0] = idat[0];

endmodule


module Sbox4_0 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_17 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_18 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_19 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_20 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_21 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_22 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_23 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_24 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_25 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_26 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_27 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_28 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_29 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_30 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_31 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox_0 ( idat, odat );
  input [63:0] idat;
  output [63:0] odat;


  Sbox4_0 sb1 ( .idat(idat[63:60]), .odat(odat[63:60]) );
  Sbox4_31 sb2 ( .idat(idat[59:56]), .odat(odat[59:56]) );
  Sbox4_30 sb3 ( .idat(idat[55:52]), .odat(odat[55:52]) );
  Sbox4_29 sb4 ( .idat(idat[51:48]), .odat(odat[51:48]) );
  Sbox4_28 sb5 ( .idat(idat[47:44]), .odat(odat[47:44]) );
  Sbox4_27 sb6 ( .idat(idat[43:40]), .odat(odat[43:40]) );
  Sbox4_26 sb7 ( .idat(idat[39:36]), .odat(odat[39:36]) );
  Sbox4_25 sb8 ( .idat(idat[35:32]), .odat(odat[35:32]) );
  Sbox4_24 sb9 ( .idat(idat[31:28]), .odat(odat[31:28]) );
  Sbox4_23 sb10 ( .idat(idat[27:24]), .odat(odat[27:24]) );
  Sbox4_22 sb11 ( .idat(idat[23:20]), .odat(odat[23:20]) );
  Sbox4_21 sb12 ( .idat(idat[19:16]), .odat(odat[19:16]) );
  Sbox4_20 sb13 ( .idat(idat[15:12]), .odat(odat[15:12]) );
  Sbox4_19 sb14 ( .idat(idat[11:8]), .odat(odat[11:8]) );
  Sbox4_18 sb15 ( .idat(idat[7:4]), .odat(odat[7:4]) );
  Sbox4_17 sb16 ( .idat(idat[3:0]), .odat(odat[3:0]) );
endmodule


module Sbox4K_1 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_1 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_1 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_2 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_2 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_2 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_3 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_3 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_3 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_4 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_4 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_4 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_5 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_5 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_5 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_6 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_6 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_6 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_7 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_7 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_7 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_8 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_8 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_8 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_9 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_9 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_9 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_10 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_10 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_10 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_11 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_11 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_11 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_12 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_12 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_12 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_13 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_13 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_13 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_14 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_14 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_14 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_15 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_15 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_15 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_16 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_16 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_16 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_17 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_17 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_17 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_18 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_18 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_18 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_19 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_19 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_19 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_20 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_20 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_20 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_21 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_21 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_21 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_22 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_22 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_22 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_23 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_23 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_23 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_24 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_24 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_24 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_25 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_25 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_25 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_26 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_26 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_26 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_27 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_27 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_27 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_28 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_28 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_28 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_29 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_29 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_29 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Sbox4K_30 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  ND4B1LEHMX1 U3 ( .B1(n1), .I1(n2), .I2(n3), .I3(n4), .O(odat[3]) );
  AOI13LEHMX1 U4 ( .B1(idat[2]), .B2(n5), .B3(n6), .A1(n7), .O(n4) );
  OAI112LEHMX1 U5 ( .C1(idat[1]), .C2(n3), .A1(n8), .B1(n9), .O(odat[2]) );
  MUXB2LEHMX1 U6 ( .EB(n7), .A(n10), .B(n2), .S(idat[2]), .O(n9) );
  AOI12LEHMX1 U7 ( .B1(n11), .B2(n12), .A1(n6), .O(n10) );
  INVCKLEHMX1 U8 ( .I(n13), .O(n6) );
  MUX2LEHMX1 U9 ( .A(n14), .B(n15), .S(n13), .O(n7) );
  AN3B2LEHMX1 U10 ( .I1(n3), .B1(odat[1]), .B2(n16), .O(n15) );
  OR3LEHMX1 U11 ( .I1(n17), .I2(n11), .I3(n1), .O(n16) );
  NR3LEHMX1 U12 ( .I1(idat[0]), .I2(idat[3]), .I3(n18), .O(n1) );
  INVCKLEHMX1 U13 ( .I(n17), .O(n8) );
  NR2BPNLEHMX1 U14 ( .I1(n18), .I2(n5), .O(n17) );
  ND2BPNLEHMX1 U15 ( .I1(n14), .I2(idat[0]), .O(n3) );
  OAI112LEHMX1 U16 ( .C1(idat[3]), .C2(n13), .A1(n19), .B1(n20), .O(odat[1])
         );
  MUX2LEHMX1 U17 ( .A(n2), .B(n21), .S(idat[2]), .O(n20) );
  ND2BPNLEHMX1 U18 ( .I1(idat[3]), .I2(idat[0]), .O(n21) );
  ND2BPNLEHMX1 U19 ( .I1(idat[1]), .I2(n11), .O(n2) );
  OAI12LEHMX1 U20 ( .B1(n22), .B2(n12), .A1(n14), .O(n19) );
  NR2BPNLEHMX1 U21 ( .I1(n5), .I2(idat[2]), .O(n14) );
  INVCKLEHMX1 U22 ( .I(idat[3]), .O(n5) );
  ND2BPNLEHMX1 U23 ( .I1(idat[1]), .I2(n22), .O(n13) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n23), .O(odat[0]) );
  AOI12LEHMX1 U25 ( .B1(idat[3]), .B2(n22), .A1(n11), .O(n23) );
  NR2BPNLEHMX1 U26 ( .I1(n22), .I2(idat[3]), .O(n11) );
  INVCKLEHMX1 U27 ( .I(idat[0]), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[2]), .I2(n12), .O(n18) );
  INVCKLEHMX1 U29 ( .I(idat[1]), .O(n12) );
endmodule


module KeyUpdate_30 ( old_key, round, new_key );
  input [79:0] old_key;
  input [4:0] round;
  output [79:0] new_key;
  wire   old_key_18, old_key_17, old_key_16, old_key_15, \old_key[14] ,
         \old_key[13] , \old_key[12] , \old_key[11] , \old_key[10] ,
         \old_key[9] , \old_key[8] , \old_key[7] , \old_key[6] , \old_key[5] ,
         \old_key[4] , \old_key[3] , \old_key[2] , \old_key[1] , \old_key[0] ,
         \old_key[79] , \old_key[78] , \old_key[77] , \old_key[76] ,
         \old_key[75] , \old_key[74] , \old_key[73] , \old_key[72] ,
         \old_key[71] , \old_key[70] , \old_key[69] , \old_key[68] ,
         \old_key[67] , \old_key[66] , \old_key[65] , \old_key[64] ,
         \old_key[63] , \old_key[62] , \old_key[61] , \old_key[60] ,
         \old_key[59] , \old_key[58] , \old_key[57] , \old_key[56] ,
         \old_key[55] , \old_key[54] , \old_key[53] , \old_key[52] ,
         \old_key[51] , \old_key[50] , \old_key[49] , \old_key[48] ,
         \old_key[47] , \old_key[46] , \old_key[45] , \old_key[44] ,
         \old_key[43] , \old_key[42] , \old_key[41] , \old_key[40] ,
         \old_key[39] , \old_key[33] , \old_key[32] , \old_key[31] ,
         \old_key[30] , \old_key[29] , \old_key[28] , \old_key[27] ,
         \old_key[26] , \old_key[25] , \old_key[24] , \old_key[23] ,
         \old_key[22] , \old_key[21] , \old_key[20] , \old_key[19] ;
  assign old_key_18 = old_key[18];
  assign old_key_17 = old_key[17];
  assign old_key_16 = old_key[16];
  assign old_key_15 = old_key[15];
  assign new_key[75] = \old_key[14] ;
  assign \old_key[14]  = old_key[14];
  assign new_key[74] = \old_key[13] ;
  assign \old_key[13]  = old_key[13];
  assign new_key[73] = \old_key[12] ;
  assign \old_key[12]  = old_key[12];
  assign new_key[72] = \old_key[11] ;
  assign \old_key[11]  = old_key[11];
  assign new_key[71] = \old_key[10] ;
  assign \old_key[10]  = old_key[10];
  assign new_key[70] = \old_key[9] ;
  assign \old_key[9]  = old_key[9];
  assign new_key[69] = \old_key[8] ;
  assign \old_key[8]  = old_key[8];
  assign new_key[68] = \old_key[7] ;
  assign \old_key[7]  = old_key[7];
  assign new_key[67] = \old_key[6] ;
  assign \old_key[6]  = old_key[6];
  assign new_key[66] = \old_key[5] ;
  assign \old_key[5]  = old_key[5];
  assign new_key[65] = \old_key[4] ;
  assign \old_key[4]  = old_key[4];
  assign new_key[64] = \old_key[3] ;
  assign \old_key[3]  = old_key[3];
  assign new_key[63] = \old_key[2] ;
  assign \old_key[2]  = old_key[2];
  assign new_key[62] = \old_key[1] ;
  assign \old_key[1]  = old_key[1];
  assign new_key[61] = \old_key[0] ;
  assign \old_key[0]  = old_key[0];
  assign new_key[60] = \old_key[79] ;
  assign \old_key[79]  = old_key[79];
  assign new_key[59] = \old_key[78] ;
  assign \old_key[78]  = old_key[78];
  assign new_key[58] = \old_key[77] ;
  assign \old_key[77]  = old_key[77];
  assign new_key[57] = \old_key[76] ;
  assign \old_key[76]  = old_key[76];
  assign new_key[56] = \old_key[75] ;
  assign \old_key[75]  = old_key[75];
  assign new_key[55] = \old_key[74] ;
  assign \old_key[74]  = old_key[74];
  assign new_key[54] = \old_key[73] ;
  assign \old_key[73]  = old_key[73];
  assign new_key[53] = \old_key[72] ;
  assign \old_key[72]  = old_key[72];
  assign new_key[52] = \old_key[71] ;
  assign \old_key[71]  = old_key[71];
  assign new_key[51] = \old_key[70] ;
  assign \old_key[70]  = old_key[70];
  assign new_key[50] = \old_key[69] ;
  assign \old_key[69]  = old_key[69];
  assign new_key[49] = \old_key[68] ;
  assign \old_key[68]  = old_key[68];
  assign new_key[48] = \old_key[67] ;
  assign \old_key[67]  = old_key[67];
  assign new_key[47] = \old_key[66] ;
  assign \old_key[66]  = old_key[66];
  assign new_key[46] = \old_key[65] ;
  assign \old_key[65]  = old_key[65];
  assign new_key[45] = \old_key[64] ;
  assign \old_key[64]  = old_key[64];
  assign new_key[44] = \old_key[63] ;
  assign \old_key[63]  = old_key[63];
  assign new_key[43] = \old_key[62] ;
  assign \old_key[62]  = old_key[62];
  assign new_key[42] = \old_key[61] ;
  assign \old_key[61]  = old_key[61];
  assign new_key[41] = \old_key[60] ;
  assign \old_key[60]  = old_key[60];
  assign new_key[40] = \old_key[59] ;
  assign \old_key[59]  = old_key[59];
  assign new_key[39] = \old_key[58] ;
  assign \old_key[58]  = old_key[58];
  assign new_key[38] = \old_key[57] ;
  assign \old_key[57]  = old_key[57];
  assign new_key[37] = \old_key[56] ;
  assign \old_key[56]  = old_key[56];
  assign new_key[36] = \old_key[55] ;
  assign \old_key[55]  = old_key[55];
  assign new_key[35] = \old_key[54] ;
  assign \old_key[54]  = old_key[54];
  assign new_key[34] = \old_key[53] ;
  assign \old_key[53]  = old_key[53];
  assign new_key[33] = \old_key[52] ;
  assign \old_key[52]  = old_key[52];
  assign new_key[32] = \old_key[51] ;
  assign \old_key[51]  = old_key[51];
  assign new_key[31] = \old_key[50] ;
  assign \old_key[50]  = old_key[50];
  assign new_key[30] = \old_key[49] ;
  assign \old_key[49]  = old_key[49];
  assign new_key[29] = \old_key[48] ;
  assign \old_key[48]  = old_key[48];
  assign new_key[28] = \old_key[47] ;
  assign \old_key[47]  = old_key[47];
  assign new_key[27] = \old_key[46] ;
  assign \old_key[46]  = old_key[46];
  assign new_key[26] = \old_key[45] ;
  assign \old_key[45]  = old_key[45];
  assign new_key[25] = \old_key[44] ;
  assign \old_key[44]  = old_key[44];
  assign new_key[24] = \old_key[43] ;
  assign \old_key[43]  = old_key[43];
  assign new_key[23] = \old_key[42] ;
  assign \old_key[42]  = old_key[42];
  assign new_key[22] = \old_key[41] ;
  assign \old_key[41]  = old_key[41];
  assign new_key[21] = \old_key[40] ;
  assign \old_key[40]  = old_key[40];
  assign new_key[20] = \old_key[39] ;
  assign \old_key[39]  = old_key[39];
  assign new_key[14] = \old_key[33] ;
  assign \old_key[33]  = old_key[33];
  assign new_key[13] = \old_key[32] ;
  assign \old_key[32]  = old_key[32];
  assign new_key[12] = \old_key[31] ;
  assign \old_key[31]  = old_key[31];
  assign new_key[11] = \old_key[30] ;
  assign \old_key[30]  = old_key[30];
  assign new_key[10] = \old_key[29] ;
  assign \old_key[29]  = old_key[29];
  assign new_key[9] = \old_key[28] ;
  assign \old_key[28]  = old_key[28];
  assign new_key[8] = \old_key[27] ;
  assign \old_key[27]  = old_key[27];
  assign new_key[7] = \old_key[26] ;
  assign \old_key[26]  = old_key[26];
  assign new_key[6] = \old_key[25] ;
  assign \old_key[25]  = old_key[25];
  assign new_key[5] = \old_key[24] ;
  assign \old_key[24]  = old_key[24];
  assign new_key[4] = \old_key[23] ;
  assign \old_key[23]  = old_key[23];
  assign new_key[3] = \old_key[22] ;
  assign \old_key[22]  = old_key[22];
  assign new_key[2] = \old_key[21] ;
  assign \old_key[21]  = old_key[21];
  assign new_key[1] = \old_key[20] ;
  assign \old_key[20]  = old_key[20];
  assign new_key[0] = \old_key[19] ;
  assign \old_key[19]  = old_key[19];

  Sbox4K_30 sb4_key ( .idat({old_key_18, old_key_17, old_key_16, old_key_15}),
        .odat(new_key[79:76]) );
  XOR2LEHMX1 U1 ( .I1(round[4]), .I2(old_key[38]), .O(new_key[19]) );
  XOR2LEHMX1 U2 ( .I1(round[3]), .I2(old_key[37]), .O(new_key[18]) );
  XOR2LEHMX1 U3 ( .I1(round[2]), .I2(old_key[36]), .O(new_key[17]) );
  XOR2LEHMX1 U4 ( .I1(round[1]), .I2(old_key[35]), .O(new_key[16]) );
  XOR2LEHMX1 U5 ( .I1(round[0]), .I2(old_key[34]), .O(new_key[15]) );
endmodule


module Pbox_1 ( idat, odat );
  input [63:0] idat;
  output [63:0] odat;

  assign odat[63] = idat[63];
  assign odat[62] = idat[47];
  assign odat[61] = idat[31];
  assign odat[60] = idat[15];
  assign odat[59] = idat[62];
  assign odat[58] = idat[46];
  assign odat[57] = idat[30];
  assign odat[56] = idat[14];
  assign odat[55] = idat[61];
  assign odat[54] = idat[45];
  assign odat[53] = idat[29];
  assign odat[52] = idat[13];
  assign odat[51] = idat[60];
  assign odat[50] = idat[44];
  assign odat[49] = idat[28];
  assign odat[48] = idat[12];
  assign odat[47] = idat[59];
  assign odat[46] = idat[43];
  assign odat[45] = idat[27];
  assign odat[44] = idat[11];
  assign odat[43] = idat[58];
  assign odat[42] = idat[42];
  assign odat[41] = idat[26];
  assign odat[40] = idat[10];
  assign odat[39] = idat[57];
  assign odat[38] = idat[41];
  assign odat[37] = idat[25];
  assign odat[36] = idat[9];
  assign odat[35] = idat[56];
  assign odat[34] = idat[40];
  assign odat[33] = idat[24];
  assign odat[32] = idat[8];
  assign odat[31] = idat[55];
  assign odat[30] = idat[39];
  assign odat[29] = idat[23];
  assign odat[28] = idat[7];
  assign odat[27] = idat[54];
  assign odat[26] = idat[38];
  assign odat[25] = idat[22];
  assign odat[24] = idat[6];
  assign odat[23] = idat[53];
  assign odat[22] = idat[37];
  assign odat[21] = idat[21];
  assign odat[20] = idat[5];
  assign odat[19] = idat[52];
  assign odat[18] = idat[36];
  assign odat[17] = idat[20];
  assign odat[16] = idat[4];
  assign odat[15] = idat[51];
  assign odat[14] = idat[35];
  assign odat[13] = idat[19];
  assign odat[12] = idat[3];
  assign odat[11] = idat[50];
  assign odat[10] = idat[34];
  assign odat[9] = idat[18];
  assign odat[8] = idat[2];
  assign odat[7] = idat[49];
  assign odat[6] = idat[33];
  assign odat[5] = idat[17];
  assign odat[4] = idat[1];
  assign odat[3] = idat[48];
  assign odat[2] = idat[32];
  assign odat[1] = idat[16];
  assign odat[0] = idat[0];

endmodule


module Sbox4_1 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_2 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_3 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_4 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_5 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_6 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_7 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_8 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_9 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_10 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_11 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_12 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_13 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_14 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_15 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox4_16 ( idat, odat );
  input [3:0] idat;
  output [3:0] odat;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;

  INVCKLEHMX1 U3 ( .I(n1), .O(odat[3]) );
  AOI122LEHMX1 U4 ( .B1(n2), .B2(n3), .C1(n4), .C2(n5), .A1(n6), .O(n1) );
  INVCKLEHMX1 U5 ( .I(n7), .O(n2) );
  AN3B2LEHMX1 U6 ( .I1(n8), .B1(n6), .B2(n9), .O(odat[2]) );
  INVCKLEHMX1 U7 ( .I(n10), .O(n9) );
  OAI122LEHMX1 U8 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A1(n15), .O(n6)
         );
  OAI12LEHMX1 U9 ( .B1(n16), .B2(n17), .A1(n18), .O(n15) );
  AOI22LEHMX1 U10 ( .A1(n16), .A2(n3), .B1(n17), .B2(n19), .O(n8) );
  INVCKLEHMX1 U11 ( .I(n14), .O(n19) );
  OAI112LEHMX1 U12 ( .C1(n11), .C2(n13), .A1(n10), .B1(n20), .O(odat[1]) );
  AOI22LEHMX1 U13 ( .A1(n21), .A2(n4), .B1(n3), .B2(n22), .O(n20) );
  NR2BPNLEHMX1 U14 ( .I1(idat[1]), .I2(idat[3]), .O(n3) );
  OR2B1LEHMX1 U15 ( .I1(n16), .B1(n13), .O(n4) );
  NR2BPNLEHMX1 U16 ( .I1(n23), .I2(n24), .O(n16) );
  ND2BPNLEHMX1 U17 ( .I1(n25), .I2(n14), .O(n21) );
  OR2B1LEHMX1 U18 ( .I1(idat[1]), .B1(idat[3]), .O(n14) );
  AOI22LEHMX1 U19 ( .A1(n18), .A2(n22), .B1(n5), .B2(n17), .O(n10) );
  ND2BPNLEHMX1 U20 ( .I1(n24), .I2(n23), .O(n13) );
  INVCKLEHMX1 U21 ( .I(idat[0]), .O(n24) );
  INVCKLEHMX1 U22 ( .I(n5), .O(n11) );
  AN2B1LEHMX1 U23 ( .I1(idat[1]), .B1(idat[3]), .O(n5) );
  XOR2LEHMX1 U24 ( .I1(n18), .I2(n7), .O(odat[0]) );
  NR2BPNLEHMX1 U25 ( .I1(n22), .I2(n17), .O(n7) );
  NR2BPNLEHMX1 U26 ( .I1(n23), .I2(idat[0]), .O(n17) );
  INVCKLEHMX1 U27 ( .I(n12), .O(n22) );
  ND2BPNLEHMX1 U28 ( .I1(idat[0]), .I2(n23), .O(n12) );
  INVCKLEHMX1 U29 ( .I(idat[2]), .O(n23) );
  INVCKLEHMX1 U30 ( .I(n25), .O(n18) );
  ND2BPNLEHMX1 U31 ( .I1(idat[3]), .I2(idat[1]), .O(n25) );
endmodule


module Sbox_1 ( idat, odat );
  input [63:0] idat;
  output [63:0] odat;


  Sbox4_16 sb1 ( .idat(idat[63:60]), .odat(odat[63:60]) );
  Sbox4_15 sb2 ( .idat(idat[59:56]), .odat(odat[59:56]) );
  Sbox4_14 sb3 ( .idat(idat[55:52]), .odat(odat[55:52]) );
  Sbox4_13 sb4 ( .idat(idat[51:48]), .odat(odat[51:48]) );
  Sbox4_12 sb5 ( .idat(idat[47:44]), .odat(odat[47:44]) );
  Sbox4_11 sb6 ( .idat(idat[43:40]), .odat(odat[43:40]) );
  Sbox4_10 sb7 ( .idat(idat[39:36]), .odat(odat[39:36]) );
  Sbox4_9 sb8 ( .idat(idat[35:32]), .odat(odat[35:32]) );
  Sbox4_8 sb9 ( .idat(idat[31:28]), .odat(odat[31:28]) );
  Sbox4_7 sb10 ( .idat(idat[27:24]), .odat(odat[27:24]) );
  Sbox4_6 sb11 ( .idat(idat[23:20]), .odat(odat[23:20]) );
  Sbox4_5 sb12 ( .idat(idat[19:16]), .odat(odat[19:16]) );
  Sbox4_4 sb13 ( .idat(idat[15:12]), .odat(odat[15:12]) );
  Sbox4_3 sb14 ( .idat(idat[11:8]), .odat(odat[11:8]) );
  Sbox4_2 sb15 ( .idat(idat[7:4]), .odat(odat[7:4]) );
  Sbox4_1 sb16 ( .idat(idat[3:0]), .odat(odat[3:0]) );
endmodule


module Decrypt ( odat, idat, key );
  output [63:0] odat;
  input [63:0] idat;
  input [79:0] key;
  wire   \*Logic1* , \*Logic0* ;
  wire   [79:0] key2;
  wire   [79:0] key3;
  wire   [79:0] key4;
  wire   [79:0] key5;
  wire   [79:0] key6;
  wire   [79:0] key7;
  wire   [79:0] key8;
  wire   [79:0] key9;
  wire   [79:0] key10;
  wire   [79:0] key11;
  wire   [79:0] key12;
  wire   [79:0] key13;
  wire   [79:0] key14;
  wire   [79:0] key15;
  wire   [79:0] key16;
  wire   [79:0] key17;
  wire   [79:0] key18;
  wire   [79:0] key19;
  wire   [79:0] key20;
  wire   [79:0] key21;
  wire   [79:0] key22;
  wire   [79:0] key23;
  wire   [79:0] key24;
  wire   [79:0] key25;
  wire   [79:0] key26;
  wire   [79:0] key27;
  wire   [79:0] key28;
  wire   [79:0] key29;
  wire   [79:0] key30;
  wire   [79:0] key31;
  wire   [79:0] key32;
  wire   [63:0] dat1_1;
  wire   [63:0] dat1_2;
  wire   [63:0] dat1_3;
  wire   [63:0] dat2_1;
  wire   [63:0] dat2_2;
  wire   [63:0] dat2_3;
/*  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1,
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3,
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5,
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7,
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9,
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11,
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13,
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;*/

  KeyUpdate_0 ku1 ( .old_key(key), .round({\*Logic0* , \*Logic0* , \*Logic0* ,
        \*Logic0* , \*Logic1* }), .new_key(key2) );
  KeyUpdate_30 ku2 ( .old_key(key2), .round({\*Logic0* , \*Logic0* ,
        \*Logic0* , \*Logic1* , \*Logic0* }), .new_key(key3) );
  KeyUpdate_29 ku3 ( .old_key(key3), .round({\*Logic0* , \*Logic0* ,
        \*Logic0* , \*Logic1* , \*Logic1* }), .new_key(key4) );
  KeyUpdate_28 ku4 ( .old_key(key4), .round({\*Logic0* , \*Logic0* ,
        \*Logic1* , \*Logic0* , \*Logic0* }), .new_key(key5) );
  KeyUpdate_27 ku5 ( .old_key(key5), .round({\*Logic0* , \*Logic0* ,
        \*Logic1* , \*Logic0* , \*Logic1* }), .new_key(key6) );
  KeyUpdate_26 ku6 ( .old_key(key6), .round({\*Logic0* , \*Logic0* ,
        \*Logic1* , \*Logic1* , \*Logic0* }), .new_key(key7) );
  KeyUpdate_25 ku7 ( .old_key(key7), .round({\*Logic0* , \*Logic0* ,
        \*Logic1* , \*Logic1* , \*Logic1* }), .new_key(key8) );
  KeyUpdate_24 ku8 ( .old_key(key8), .round({\*Logic0* , \*Logic1* ,
        \*Logic0* , \*Logic0* , \*Logic0* }), .new_key(key9) );
  KeyUpdate_23 ku9 ( .old_key(key9), .round({\*Logic0* , \*Logic1* ,
        \*Logic0* , \*Logic0* , \*Logic1* }), .new_key(key10) );
  KeyUpdate_22 ku10 ( .old_key(key10), .round({\*Logic0* , \*Logic1* ,
        \*Logic0* , \*Logic1* , \*Logic0* }), .new_key(key11) );
  KeyUpdate_21 ku11 ( .old_key(key11), .round({\*Logic0* , \*Logic1* ,
        \*Logic0* , \*Logic1* , \*Logic1* }), .new_key(key12) );
  KeyUpdate_20 ku12 ( .old_key(key12), .round({\*Logic0* , \*Logic1* ,
        \*Logic1* , \*Logic0* , \*Logic0* }), .new_key(key13) );
  KeyUpdate_19 ku13 ( .old_key(key13), .round({\*Logic0* , \*Logic1* ,
        \*Logic1* , \*Logic0* , \*Logic1* }), .new_key(key14) );
  KeyUpdate_18 ku14 ( .old_key(key14), .round({\*Logic0* , \*Logic1* ,
        \*Logic1* , \*Logic1* , \*Logic0* }), .new_key(key15) );
  KeyUpdate_17 ku15 ( .old_key(key15), .round({\*Logic0* , \*Logic1* ,
        \*Logic1* , \*Logic1* , \*Logic1* }), .new_key(key16) );
  KeyUpdate_16 ku16 ( .old_key(key16), .round({\*Logic1* , \*Logic0* ,
        \*Logic0* , \*Logic0* , \*Logic0* }), .new_key(key17) );
  KeyUpdate_15 ku17 ( .old_key(key17), .round({\*Logic1* , \*Logic0* ,
        \*Logic0* , \*Logic0* , \*Logic1* }), .new_key(key18) );
  KeyUpdate_14 ku18 ( .old_key(key18), .round({\*Logic1* , \*Logic0* ,
        \*Logic0* , \*Logic1* , \*Logic0* }), .new_key(key19) );
  KeyUpdate_13 ku19 ( .old_key(key19), .round({\*Logic1* , \*Logic0* ,
        \*Logic0* , \*Logic1* , \*Logic1* }), .new_key(key20) );
  KeyUpdate_12 ku20 ( .old_key(key20), .round({\*Logic1* , \*Logic0* ,
        \*Logic1* , \*Logic0* , \*Logic0* }), .new_key(key21) );
  KeyUpdate_11 ku21 ( .old_key(key21), .round({\*Logic1* , \*Logic0* ,
        \*Logic1* , \*Logic0* , \*Logic1* }), .new_key(key22) );
  KeyUpdate_10 ku22 ( .old_key(key22), .round({\*Logic1* , \*Logic0* ,
        \*Logic1* , \*Logic1* , \*Logic0* }), .new_key(key23) );
  KeyUpdate_9 ku23 ( .old_key(key23), .round({\*Logic1* , \*Logic0* ,
        \*Logic1* , \*Logic1* , \*Logic1* }), .new_key(key24) );
  KeyUpdate_8 ku24 ( .old_key(key24), .round({\*Logic1* , \*Logic1* ,
        \*Logic0* , \*Logic0* , \*Logic0* }), .new_key(key25) );
  KeyUpdate_7 ku25 ( .old_key(key25), .round({\*Logic1* , \*Logic1* ,
        \*Logic0* , \*Logic0* , \*Logic1* }), .new_key(key26) );
  KeyUpdate_6 ku26 ( .old_key(key26), .round({\*Logic1* , \*Logic1* ,
        \*Logic0* , \*Logic1* , \*Logic0* }), .new_key(key27) );
  KeyUpdate_5 ku27 ( .old_key(key27), .round({\*Logic1* , \*Logic1* ,
        \*Logic0* , \*Logic1* , \*Logic1* }), .new_key(key28) );
  KeyUpdate_4 ku28 ( .old_key(key28), .round({\*Logic1* , \*Logic1* ,
        \*Logic1* , \*Logic0* , \*Logic0* }), .new_key(key29) );
  KeyUpdate_3 ku29 ( .old_key(key29), .round({\*Logic1* , \*Logic1* ,
        \*Logic1* , \*Logic0* , \*Logic1* }), .new_key(key30) );
  KeyUpdate_2 ku30 ( .old_key(key30), .round({\*Logic1* , \*Logic1* ,
        \*Logic1* , \*Logic1* , \*Logic0* }), .new_key(key31) );
  KeyUpdate_1 ku31 ( .old_key(key31), .round({\*Logic1* , \*Logic1* ,
        \*Logic1* , \*Logic1* , \*Logic1* }), .new_key(key32) ); //.new_key({key32[79:16],
        /*SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1,
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3,
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5,
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7,
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9,
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11,
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13,
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15}) );*/
  Pbox_0 pb1 ( .idat(dat1_1), .odat(dat1_2) );
  Sbox_0 sb1 ( .idat(dat1_2), .odat(dat1_3) );
  Pbox_1 pb2 ( .idat(dat2_1), .odat(dat2_2) );
  Sbox_1 sb2 ( .idat(dat2_2), .odat(dat2_3) );
  TIE1LEHMX1 U3 ( .O(\*Logic1* ) );
  TIE0LEHMX1 U4 ( .O(\*Logic0* ) );
  XOR2LEHMX1 U5 ( .I1(key30[25]), .I2(dat2_3[9]), .O(odat[9]) );
  XOR2LEHMX1 U6 ( .I1(key30[24]), .I2(dat2_3[8]), .O(odat[8]) );
  XOR2LEHMX1 U7 ( .I1(key30[23]), .I2(dat2_3[7]), .O(odat[7]) );
  XOR2LEHMX1 U8 ( .I1(key30[22]), .I2(dat2_3[6]), .O(odat[6]) );
  XOR2LEHMX1 U9 ( .I1(key30[79]), .I2(dat2_3[63]), .O(odat[63]) );
  XOR2LEHMX1 U10 ( .I1(key30[78]), .I2(dat2_3[62]), .O(odat[62]) );
  XOR2LEHMX1 U11 ( .I1(key30[77]), .I2(dat2_3[61]), .O(odat[61]) );
  XOR2LEHMX1 U12 ( .I1(key30[76]), .I2(dat2_3[60]), .O(odat[60]) );
  XOR2LEHMX1 U13 ( .I1(key30[21]), .I2(dat2_3[5]), .O(odat[5]) );
  XOR2LEHMX1 U14 ( .I1(key30[75]), .I2(dat2_3[59]), .O(odat[59]) );
  XOR2LEHMX1 U15 ( .I1(key30[74]), .I2(dat2_3[58]), .O(odat[58]) );
  XOR2LEHMX1 U16 ( .I1(key30[73]), .I2(dat2_3[57]), .O(odat[57]) );
  XOR2LEHMX1 U17 ( .I1(key30[72]), .I2(dat2_3[56]), .O(odat[56]) );
  XOR2LEHMX1 U18 ( .I1(key30[71]), .I2(dat2_3[55]), .O(odat[55]) );
  XOR2LEHMX1 U19 ( .I1(key30[70]), .I2(dat2_3[54]), .O(odat[54]) );
  XOR2LEHMX1 U20 ( .I1(key30[69]), .I2(dat2_3[53]), .O(odat[53]) );
  XOR2LEHMX1 U21 ( .I1(key30[68]), .I2(dat2_3[52]), .O(odat[52]) );
  XOR2LEHMX1 U22 ( .I1(key30[67]), .I2(dat2_3[51]), .O(odat[51]) );
  XOR2LEHMX1 U23 ( .I1(key30[66]), .I2(dat2_3[50]), .O(odat[50]) );
  XOR2LEHMX1 U24 ( .I1(key30[20]), .I2(dat2_3[4]), .O(odat[4]) );
  XOR2LEHMX1 U25 ( .I1(key30[65]), .I2(dat2_3[49]), .O(odat[49]) );
  XOR2LEHMX1 U26 ( .I1(key30[64]), .I2(dat2_3[48]), .O(odat[48]) );
  XOR2LEHMX1 U27 ( .I1(key30[63]), .I2(dat2_3[47]), .O(odat[47]) );
  XOR2LEHMX1 U28 ( .I1(key30[62]), .I2(dat2_3[46]), .O(odat[46]) );
  XOR2LEHMX1 U29 ( .I1(key30[61]), .I2(dat2_3[45]), .O(odat[45]) );
  XOR2LEHMX1 U30 ( .I1(key30[60]), .I2(dat2_3[44]), .O(odat[44]) );
  XOR2LEHMX1 U31 ( .I1(key30[59]), .I2(dat2_3[43]), .O(odat[43]) );
  XOR2LEHMX1 U32 ( .I1(key30[58]), .I2(dat2_3[42]), .O(odat[42]) );
  XOR2LEHMX1 U33 ( .I1(key30[57]), .I2(dat2_3[41]), .O(odat[41]) );
  XOR2LEHMX1 U34 ( .I1(key30[56]), .I2(dat2_3[40]), .O(odat[40]) );
  XOR2LEHMX1 U35 ( .I1(key30[19]), .I2(dat2_3[3]), .O(odat[3]) );
  XOR2LEHMX1 U36 ( .I1(key30[55]), .I2(dat2_3[39]), .O(odat[39]) );
  XOR2LEHMX1 U37 ( .I1(key30[54]), .I2(dat2_3[38]), .O(odat[38]) );
  XOR2LEHMX1 U38 ( .I1(key30[53]), .I2(dat2_3[37]), .O(odat[37]) );
  XOR2LEHMX1 U39 ( .I1(key30[52]), .I2(dat2_3[36]), .O(odat[36]) );
  XOR2LEHMX1 U40 ( .I1(key30[51]), .I2(dat2_3[35]), .O(odat[35]) );
  XOR2LEHMX1 U41 ( .I1(key30[50]), .I2(dat2_3[34]), .O(odat[34]) );
  XOR2LEHMX1 U42 ( .I1(key30[49]), .I2(dat2_3[33]), .O(odat[33]) );
  XOR2LEHMX1 U43 ( .I1(key30[48]), .I2(dat2_3[32]), .O(odat[32]) );
  XOR2LEHMX1 U44 ( .I1(key30[47]), .I2(dat2_3[31]), .O(odat[31]) );
  XOR2LEHMX1 U45 ( .I1(key30[46]), .I2(dat2_3[30]), .O(odat[30]) );
  XOR2LEHMX1 U46 ( .I1(key30[18]), .I2(dat2_3[2]), .O(odat[2]) );
  XOR2LEHMX1 U47 ( .I1(key30[45]), .I2(dat2_3[29]), .O(odat[29]) );
  XOR2LEHMX1 U48 ( .I1(key30[44]), .I2(dat2_3[28]), .O(odat[28]) );
  XOR2LEHMX1 U49 ( .I1(key30[43]), .I2(dat2_3[27]), .O(odat[27]) );
  XOR2LEHMX1 U50 ( .I1(key30[42]), .I2(dat2_3[26]), .O(odat[26]) );
  XOR2LEHMX1 U51 ( .I1(key30[41]), .I2(dat2_3[25]), .O(odat[25]) );
  XOR2LEHMX1 U52 ( .I1(key30[40]), .I2(dat2_3[24]), .O(odat[24]) );
  XOR2LEHMX1 U53 ( .I1(key30[39]), .I2(dat2_3[23]), .O(odat[23]) );
  XOR2LEHMX1 U54 ( .I1(key30[38]), .I2(dat2_3[22]), .O(odat[22]) );
  XOR2LEHMX1 U55 ( .I1(key30[37]), .I2(dat2_3[21]), .O(odat[21]) );
  XOR2LEHMX1 U56 ( .I1(key30[36]), .I2(dat2_3[20]), .O(odat[20]) );
  XOR2LEHMX1 U57 ( .I1(key30[17]), .I2(dat2_3[1]), .O(odat[1]) );
  XOR2LEHMX1 U58 ( .I1(key30[35]), .I2(dat2_3[19]), .O(odat[19]) );
  XOR2LEHMX1 U59 ( .I1(key30[34]), .I2(dat2_3[18]), .O(odat[18]) );
  XOR2LEHMX1 U60 ( .I1(key30[33]), .I2(dat2_3[17]), .O(odat[17]) );
  XOR2LEHMX1 U61 ( .I1(key30[32]), .I2(dat2_3[16]), .O(odat[16]) );
  XOR2LEHMX1 U62 ( .I1(key30[31]), .I2(dat2_3[15]), .O(odat[15]) );
  XOR2LEHMX1 U63 ( .I1(key30[30]), .I2(dat2_3[14]), .O(odat[14]) );
  XOR2LEHMX1 U64 ( .I1(key30[29]), .I2(dat2_3[13]), .O(odat[13]) );
  XOR2LEHMX1 U65 ( .I1(key30[28]), .I2(dat2_3[12]), .O(odat[12]) );
  XOR2LEHMX1 U66 ( .I1(key30[27]), .I2(dat2_3[11]), .O(odat[11]) );
  XOR2LEHMX1 U67 ( .I1(key30[26]), .I2(dat2_3[10]), .O(odat[10]) );
  XOR2LEHMX1 U68 ( .I1(key30[16]), .I2(dat2_3[0]), .O(odat[0]) );
  XOR2LEHMX1 U69 ( .I1(key31[25]), .I2(dat1_3[9]), .O(dat2_1[9]) );
  XOR2LEHMX1 U70 ( .I1(key31[24]), .I2(dat1_3[8]), .O(dat2_1[8]) );
  XOR2LEHMX1 U71 ( .I1(key31[23]), .I2(dat1_3[7]), .O(dat2_1[7]) );
  XOR2LEHMX1 U72 ( .I1(key31[22]), .I2(dat1_3[6]), .O(dat2_1[6]) );
  XOR2LEHMX1 U73 ( .I1(key31[79]), .I2(dat1_3[63]), .O(dat2_1[63]) );
  XOR2LEHMX1 U74 ( .I1(key31[78]), .I2(dat1_3[62]), .O(dat2_1[62]) );
  XOR2LEHMX1 U75 ( .I1(key31[77]), .I2(dat1_3[61]), .O(dat2_1[61]) );
  XOR2LEHMX1 U76 ( .I1(key31[76]), .I2(dat1_3[60]), .O(dat2_1[60]) );
  XOR2LEHMX1 U77 ( .I1(key31[21]), .I2(dat1_3[5]), .O(dat2_1[5]) );
  XOR2LEHMX1 U78 ( .I1(key31[75]), .I2(dat1_3[59]), .O(dat2_1[59]) );
  XOR2LEHMX1 U79 ( .I1(key31[74]), .I2(dat1_3[58]), .O(dat2_1[58]) );
  XOR2LEHMX1 U80 ( .I1(key31[73]), .I2(dat1_3[57]), .O(dat2_1[57]) );
  XOR2LEHMX1 U81 ( .I1(key31[72]), .I2(dat1_3[56]), .O(dat2_1[56]) );
  XOR2LEHMX1 U82 ( .I1(key31[71]), .I2(dat1_3[55]), .O(dat2_1[55]) );
  XOR2LEHMX1 U83 ( .I1(key31[70]), .I2(dat1_3[54]), .O(dat2_1[54]) );
  XOR2LEHMX1 U84 ( .I1(key31[69]), .I2(dat1_3[53]), .O(dat2_1[53]) );
  XOR2LEHMX1 U85 ( .I1(key31[68]), .I2(dat1_3[52]), .O(dat2_1[52]) );
  XOR2LEHMX1 U86 ( .I1(key31[67]), .I2(dat1_3[51]), .O(dat2_1[51]) );
  XOR2LEHMX1 U87 ( .I1(key31[66]), .I2(dat1_3[50]), .O(dat2_1[50]) );
  XOR2LEHMX1 U88 ( .I1(key31[20]), .I2(dat1_3[4]), .O(dat2_1[4]) );
  XOR2LEHMX1 U89 ( .I1(key31[65]), .I2(dat1_3[49]), .O(dat2_1[49]) );
  XOR2LEHMX1 U90 ( .I1(key31[64]), .I2(dat1_3[48]), .O(dat2_1[48]) );
  XOR2LEHMX1 U91 ( .I1(key31[63]), .I2(dat1_3[47]), .O(dat2_1[47]) );
  XOR2LEHMX1 U92 ( .I1(key31[62]), .I2(dat1_3[46]), .O(dat2_1[46]) );
  XOR2LEHMX1 U93 ( .I1(key31[61]), .I2(dat1_3[45]), .O(dat2_1[45]) );
  XOR2LEHMX1 U94 ( .I1(key31[60]), .I2(dat1_3[44]), .O(dat2_1[44]) );
  XOR2LEHMX1 U95 ( .I1(key31[59]), .I2(dat1_3[43]), .O(dat2_1[43]) );
  XOR2LEHMX1 U96 ( .I1(key31[58]), .I2(dat1_3[42]), .O(dat2_1[42]) );
  XOR2LEHMX1 U97 ( .I1(key31[57]), .I2(dat1_3[41]), .O(dat2_1[41]) );
  XOR2LEHMX1 U98 ( .I1(key31[56]), .I2(dat1_3[40]), .O(dat2_1[40]) );
  XOR2LEHMX1 U99 ( .I1(key31[19]), .I2(dat1_3[3]), .O(dat2_1[3]) );
  XOR2LEHMX1 U100 ( .I1(key31[55]), .I2(dat1_3[39]), .O(dat2_1[39]) );
  XOR2LEHMX1 U101 ( .I1(key31[54]), .I2(dat1_3[38]), .O(dat2_1[38]) );
  XOR2LEHMX1 U102 ( .I1(key31[53]), .I2(dat1_3[37]), .O(dat2_1[37]) );
  XOR2LEHMX1 U103 ( .I1(key31[52]), .I2(dat1_3[36]), .O(dat2_1[36]) );
  XOR2LEHMX1 U104 ( .I1(key31[51]), .I2(dat1_3[35]), .O(dat2_1[35]) );
  XOR2LEHMX1 U105 ( .I1(key31[50]), .I2(dat1_3[34]), .O(dat2_1[34]) );
  XOR2LEHMX1 U106 ( .I1(key31[49]), .I2(dat1_3[33]), .O(dat2_1[33]) );
  XOR2LEHMX1 U107 ( .I1(key31[48]), .I2(dat1_3[32]), .O(dat2_1[32]) );
  XOR2LEHMX1 U108 ( .I1(key31[47]), .I2(dat1_3[31]), .O(dat2_1[31]) );
  XOR2LEHMX1 U109 ( .I1(key31[46]), .I2(dat1_3[30]), .O(dat2_1[30]) );
  XOR2LEHMX1 U110 ( .I1(key31[18]), .I2(dat1_3[2]), .O(dat2_1[2]) );
  XOR2LEHMX1 U111 ( .I1(key31[45]), .I2(dat1_3[29]), .O(dat2_1[29]) );
  XOR2LEHMX1 U112 ( .I1(key31[44]), .I2(dat1_3[28]), .O(dat2_1[28]) );
  XOR2LEHMX1 U113 ( .I1(key31[43]), .I2(dat1_3[27]), .O(dat2_1[27]) );
  XOR2LEHMX1 U114 ( .I1(key31[42]), .I2(dat1_3[26]), .O(dat2_1[26]) );
  XOR2LEHMX1 U115 ( .I1(key31[41]), .I2(dat1_3[25]), .O(dat2_1[25]) );
  XOR2LEHMX1 U116 ( .I1(key31[40]), .I2(dat1_3[24]), .O(dat2_1[24]) );
  XOR2LEHMX1 U117 ( .I1(key31[39]), .I2(dat1_3[23]), .O(dat2_1[23]) );
  XOR2LEHMX1 U118 ( .I1(key31[38]), .I2(dat1_3[22]), .O(dat2_1[22]) );
  XOR2LEHMX1 U119 ( .I1(key31[37]), .I2(dat1_3[21]), .O(dat2_1[21]) );
  XOR2LEHMX1 U120 ( .I1(key31[36]), .I2(dat1_3[20]), .O(dat2_1[20]) );
  XOR2LEHMX1 U121 ( .I1(key31[17]), .I2(dat1_3[1]), .O(dat2_1[1]) );
  XOR2LEHMX1 U122 ( .I1(key31[35]), .I2(dat1_3[19]), .O(dat2_1[19]) );
  XOR2LEHMX1 U123 ( .I1(key31[34]), .I2(dat1_3[18]), .O(dat2_1[18]) );
  XOR2LEHMX1 U124 ( .I1(key31[33]), .I2(dat1_3[17]), .O(dat2_1[17]) );
  XOR2LEHMX1 U125 ( .I1(key31[32]), .I2(dat1_3[16]), .O(dat2_1[16]) );
  XOR2LEHMX1 U126 ( .I1(key31[31]), .I2(dat1_3[15]), .O(dat2_1[15]) );
  XOR2LEHMX1 U127 ( .I1(key31[30]), .I2(dat1_3[14]), .O(dat2_1[14]) );
  XOR2LEHMX1 U128 ( .I1(key31[29]), .I2(dat1_3[13]), .O(dat2_1[13]) );
  XOR2LEHMX1 U129 ( .I1(key31[28]), .I2(dat1_3[12]), .O(dat2_1[12]) );
  XOR2LEHMX1 U130 ( .I1(key31[27]), .I2(dat1_3[11]), .O(dat2_1[11]) );
  XOR2LEHMX1 U131 ( .I1(key31[26]), .I2(dat1_3[10]), .O(dat2_1[10]) );
  XOR2LEHMX1 U132 ( .I1(key31[16]), .I2(dat1_3[0]), .O(dat2_1[0]) );
  XOR2LEHMX1 U133 ( .I1(key32[25]), .I2(idat[9]), .O(dat1_1[9]) );
  XOR2LEHMX1 U134 ( .I1(key32[24]), .I2(idat[8]), .O(dat1_1[8]) );
  XOR2LEHMX1 U135 ( .I1(key32[23]), .I2(idat[7]), .O(dat1_1[7]) );
  XOR2LEHMX1 U136 ( .I1(key32[22]), .I2(idat[6]), .O(dat1_1[6]) );
  XOR2LEHMX1 U137 ( .I1(key32[79]), .I2(idat[63]), .O(dat1_1[63]) );
  XOR2LEHMX1 U138 ( .I1(key32[78]), .I2(idat[62]), .O(dat1_1[62]) );
  XOR2LEHMX1 U139 ( .I1(key32[77]), .I2(idat[61]), .O(dat1_1[61]) );
  XOR2LEHMX1 U140 ( .I1(key32[76]), .I2(idat[60]), .O(dat1_1[60]) );
  XOR2LEHMX1 U141 ( .I1(key32[21]), .I2(idat[5]), .O(dat1_1[5]) );
  XOR2LEHMX1 U142 ( .I1(key32[75]), .I2(idat[59]), .O(dat1_1[59]) );
  XOR2LEHMX1 U143 ( .I1(key32[74]), .I2(idat[58]), .O(dat1_1[58]) );
  XOR2LEHMX1 U144 ( .I1(key32[73]), .I2(idat[57]), .O(dat1_1[57]) );
  XOR2LEHMX1 U145 ( .I1(key32[72]), .I2(idat[56]), .O(dat1_1[56]) );
  XOR2LEHMX1 U146 ( .I1(key32[71]), .I2(idat[55]), .O(dat1_1[55]) );
  XOR2LEHMX1 U147 ( .I1(key32[70]), .I2(idat[54]), .O(dat1_1[54]) );
  XOR2LEHMX1 U148 ( .I1(key32[69]), .I2(idat[53]), .O(dat1_1[53]) );
  XOR2LEHMX1 U149 ( .I1(key32[68]), .I2(idat[52]), .O(dat1_1[52]) );
  XOR2LEHMX1 U150 ( .I1(key32[67]), .I2(idat[51]), .O(dat1_1[51]) );
  XOR2LEHMX1 U151 ( .I1(key32[66]), .I2(idat[50]), .O(dat1_1[50]) );
  XOR2LEHMX1 U152 ( .I1(key32[20]), .I2(idat[4]), .O(dat1_1[4]) );
  XOR2LEHMX1 U153 ( .I1(key32[65]), .I2(idat[49]), .O(dat1_1[49]) );
  XOR2LEHMX1 U154 ( .I1(key32[64]), .I2(idat[48]), .O(dat1_1[48]) );
  XOR2LEHMX1 U155 ( .I1(key32[63]), .I2(idat[47]), .O(dat1_1[47]) );
  XOR2LEHMX1 U156 ( .I1(key32[62]), .I2(idat[46]), .O(dat1_1[46]) );
  XOR2LEHMX1 U157 ( .I1(key32[61]), .I2(idat[45]), .O(dat1_1[45]) );
  XOR2LEHMX1 U158 ( .I1(key32[60]), .I2(idat[44]), .O(dat1_1[44]) );
  XOR2LEHMX1 U159 ( .I1(key32[59]), .I2(idat[43]), .O(dat1_1[43]) );
  XOR2LEHMX1 U160 ( .I1(key32[58]), .I2(idat[42]), .O(dat1_1[42]) );
  XOR2LEHMX1 U161 ( .I1(key32[57]), .I2(idat[41]), .O(dat1_1[41]) );
  XOR2LEHMX1 U162 ( .I1(key32[56]), .I2(idat[40]), .O(dat1_1[40]) );
  XOR2LEHMX1 U163 ( .I1(key32[19]), .I2(idat[3]), .O(dat1_1[3]) );
  XOR2LEHMX1 U164 ( .I1(key32[55]), .I2(idat[39]), .O(dat1_1[39]) );
  XOR2LEHMX1 U165 ( .I1(key32[54]), .I2(idat[38]), .O(dat1_1[38]) );
  XOR2LEHMX1 U166 ( .I1(key32[53]), .I2(idat[37]), .O(dat1_1[37]) );
  XOR2LEHMX1 U167 ( .I1(key32[52]), .I2(idat[36]), .O(dat1_1[36]) );
  XOR2LEHMX1 U168 ( .I1(key32[51]), .I2(idat[35]), .O(dat1_1[35]) );
  XOR2LEHMX1 U169 ( .I1(key32[50]), .I2(idat[34]), .O(dat1_1[34]) );
  XOR2LEHMX1 U170 ( .I1(key32[49]), .I2(idat[33]), .O(dat1_1[33]) );
  XOR2LEHMX1 U171 ( .I1(key32[48]), .I2(idat[32]), .O(dat1_1[32]) );
  XOR2LEHMX1 U172 ( .I1(key32[47]), .I2(idat[31]), .O(dat1_1[31]) );
  XOR2LEHMX1 U173 ( .I1(key32[46]), .I2(idat[30]), .O(dat1_1[30]) );
  XOR2LEHMX1 U174 ( .I1(key32[18]), .I2(idat[2]), .O(dat1_1[2]) );
  XOR2LEHMX1 U175 ( .I1(key32[45]), .I2(idat[29]), .O(dat1_1[29]) );
  XOR2LEHMX1 U176 ( .I1(key32[44]), .I2(idat[28]), .O(dat1_1[28]) );
  XOR2LEHMX1 U177 ( .I1(key32[43]), .I2(idat[27]), .O(dat1_1[27]) );
  XOR2LEHMX1 U178 ( .I1(key32[42]), .I2(idat[26]), .O(dat1_1[26]) );
  XOR2LEHMX1 U179 ( .I1(key32[41]), .I2(idat[25]), .O(dat1_1[25]) );
  XOR2LEHMX1 U180 ( .I1(key32[40]), .I2(idat[24]), .O(dat1_1[24]) );
  XOR2LEHMX1 U181 ( .I1(key32[39]), .I2(idat[23]), .O(dat1_1[23]) );
  XOR2LEHMX1 U182 ( .I1(key32[38]), .I2(idat[22]), .O(dat1_1[22]) );
  XOR2LEHMX1 U183 ( .I1(key32[37]), .I2(idat[21]), .O(dat1_1[21]) );
  XOR2LEHMX1 U184 ( .I1(key32[36]), .I2(idat[20]), .O(dat1_1[20]) );
  XOR2LEHMX1 U185 ( .I1(key32[17]), .I2(idat[1]), .O(dat1_1[1]) );
  XOR2LEHMX1 U186 ( .I1(key32[35]), .I2(idat[19]), .O(dat1_1[19]) );
  XOR2LEHMX1 U187 ( .I1(key32[34]), .I2(idat[18]), .O(dat1_1[18]) );
  XOR2LEHMX1 U188 ( .I1(key32[33]), .I2(idat[17]), .O(dat1_1[17]) );
  XOR2LEHMX1 U189 ( .I1(key32[32]), .I2(idat[16]), .O(dat1_1[16]) );
  XOR2LEHMX1 U190 ( .I1(key32[31]), .I2(idat[15]), .O(dat1_1[15]) );
  XOR2LEHMX1 U191 ( .I1(key32[30]), .I2(idat[14]), .O(dat1_1[14]) );
  XOR2LEHMX1 U192 ( .I1(key32[29]), .I2(idat[13]), .O(dat1_1[13]) );
  XOR2LEHMX1 U193 ( .I1(key32[28]), .I2(idat[12]), .O(dat1_1[12]) );
  XOR2LEHMX1 U194 ( .I1(key32[27]), .I2(idat[11]), .O(dat1_1[11]) );
  XOR2LEHMX1 U195 ( .I1(key32[26]), .I2(idat[10]), .O(dat1_1[10]) );
  XOR2LEHMX1 U196 ( .I1(key32[16]), .I2(idat[0]), .O(dat1_1[0]) );
endmodule

module Present;
  wire [63:0] odat;
  reg [63:0] idat;
  reg [79:0] key;

  Decrypt dec (.idat(idat), .key(key), .odat(odat));

  initial begin
    key= 'b101001100001110110; // 170102;
  	idat[7:0]=73;
  	idat[15:8]=183;
  	idat[23:16]=144;
    idat[31:24]=125;
    idat[39:32]=191;
    idat[47:40]=208;
    idat[55:48]=140;
    idat[63:56]=20;
  	$dumpfile(" 10.vcd");
    $dumpvars;
  end
endmodule


/*module Present (  );
  wire   n1;

  Decrypt dec ( .idat({n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
        n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
        n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
        n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1}), .key({n1, n1,
        n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
        n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
        n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
        n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
        n1, n1, n1, n1, n1, n1}) );
  TIE0LEHMX4 U1 ( .O(n1) );
endmodule*/

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

module  AN3B2LEHMX1(O, I1, B1, B2);
   output O;
   input I1, B1, B2;


   wire i2;
   wire i3;
   not g0 (i3, B2);
   and g1 (O, I1, i2, i3);
   not g2 (i2, B1);
endmodule

module  AOI12LEHMX1(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o1;
   and g1 (o1, B1, B2);
   nor g2 (O, A1, o1);
endmodule

module  AOI13LEHMX1(O, A1, B1, B2, B3);
   output O;
   input A1, B1, B2, B3;


   wire o1;
   and g1 (o1, B1, B2, B3);
   nor g2 (O, A1, o1);
endmodule

module  INVCKLEHMX1(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule

module  MUX2LEHMX1(O, S, A, B);
   input A, B, S;
   output O;


   mux2_udp3 g1 (O, A, B, S);
endmodule

module  MUXB2LEHMX1(O, S, A, B, EB);
   input A, B, S, EB;
   output O;
   wire o1;
   wire eb1;
   mux2_udp3 g1 (o1, A, B, S);
   not g2 (eb1, EB);
   and g3 (O, o1, eb1);
endmodule

module  ND2BPNLEHMX1(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule

module  ND4B1LEHMX1(O, I1, I2, I3, B1);
   output O;
   input I1, I2, I3, B1;


   wire o2;
   wire o1;
   wire n1;
   and g1 (o1, I1, I2);
   not g2 (n1, B1);
   and g3 (o2, n1, I3);
   nand g4 (O, o1, o2);
endmodule

module  NR2BPNLEHMX1(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule

module  NR3LEHMX1(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   nor g1 (O, I1, I2, I3);
endmodule

module  OAI112LEHMX1(O, A1, B1, C1, C2);
   output O;
   input A1, B1, C1, C2;


   wire o1;
   or g1 (o1, C1, C2);
   nand g2 (O, A1, B1, o1);
endmodule

module  OAI12LEHMX1(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o1;
   or g1 (o1, B1, B2);
   nand g2 (O, A1, o1);
endmodule

module  OR3LEHMX1(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   or g1 (O, I1, I2, I3);
endmodule

module  TIE0LEHMX1(O);
  output O;
  wire gnd;
  assign gnd = 0;


   buf g1 (O, gnd);
endmodule

module  TIE1LEHMX1(O);
  output O;

  wire vcc;
  assign vcc = 1;


   buf g1 (O, vcc);
endmodule

module  XOR2LEHMX1(O, I1, I2);
   output O;
   input I1, I2;


   xor g1 (O, I1, I2);
endmodule

module  AN2B1LEHMX1(O, I1, B1);
   output O;
   input I1, B1;


   wire i2;
   not g0 (i2, B1);
   and g1 (O, I1, i2);
endmodule

module  AOI122LEHMX1(O, A1, B1, B2, C1, C2);
   output O;
   input A1, B1, B2, C1, C2;


   wire o2;
   wire o1;
   and g1 (o1, B1, B2);
   and g2 (o2, C1, C2);
   nor g3 (O, A1, o1, o2);
endmodule

module  AOI22LEHMX1(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   and g1 (o1, B1, B2);
   and g3 (o2, A1, A2);
   nor g2 (O, o1, o2);
endmodule

module  OAI122LEHMX1(O, A1, B1, B2, C1, C2);
   output O;
   input A1, B1, B2, C1, C2;


   wire o2;
   wire o1;
   or g1 (o1, B1, B2);
   or g2 (o2, C1, C2);
   nand g3 (O, A1, o1, o2);
endmodule

module  OR2B1LEHMX1(O, I1, B1);
   output O;
   input I1, B1;


   wire i2;
   or g1 (O, I1, i2);
   not g2 (i2, B1);
endmodule
