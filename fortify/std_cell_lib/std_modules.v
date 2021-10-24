module  AN2B1LEHMX1(O, I1, B1);
   output O;
   input I1, B1;


   wire i2;
   not g0 (i2, B1);
   and g1 (O, I1, i2);
endmodule


module  AN2B1LEHMX2(O, I1, B1);
   output O;
   input I1, B1;


   wire i2;
   not g0 (i2, B1);
   and g1 (O, I1, i2);
endmodule


module  AN2B1LEHMX3(O, I1, B1);
   output O;
   input I1, B1;


   wire i2;
   not g0 (i2, B1);
   and g1 (O, I1, i2);
endmodule


module  AN2B1LEHMX4(O, I1, B1);
   output O;
   input I1, B1;


   wire i2;
   not g0 (i2, B1);
   and g1 (O, I1, i2);
endmodule


module  AN2B1LEHMX6(O, I1, B1);
   output O;
   input I1, B1;


   wire i2;
   not g0 (i2, B1);
   and g1 (O, I1, i2);
endmodule


module  AN2B1LEHMX8(O, I1, B1);
   output O;
   input I1, B1;


   wire i2;
   not g0 (i2, B1);
   and g1 (O, I1, i2);
endmodule


module  AN2CKLEHMX1(O, I1, I2);
   output O;
   input I1, I2;


   and g1 (O, I1, I2);
endmodule


module  AN2CKLEHMX2(O, I1, I2);
   output O;
   input I1, I2;


   and g1 (O, I1, I2);
endmodule


module  AN2CKLEHMX3(O, I1, I2);
   output O;
   input I1, I2;


   and g1 (O, I1, I2);
endmodule


module  AN2CKLEHMX4(O, I1, I2);
   output O;
   input I1, I2;


   and g1 (O, I1, I2);
endmodule


module  AN2CKLEHMX6(O, I1, I2);
   output O;
   input I1, I2;


   and g1 (O, I1, I2);
endmodule


module  AN2CKLEHMX8(O, I1, I2);
   output O;
   input I1, I2;


   and g1 (O, I1, I2);
endmodule


module  AN2LEHMX1(O, I1, I2);
   output O;
   input I1, I2;


   and g1 (O, I1, I2);
endmodule


module  AN2LEHMX2(O, I1, I2);
   output O;
   input I1, I2;


   and g1 (O, I1, I2);
endmodule


module  AN2LEHMX3(O, I1, I2);
   output O;
   input I1, I2;


   and g1 (O, I1, I2);
endmodule


module  AN2LEHMX4(O, I1, I2);
   output O;
   input I1, I2;


   and g1 (O, I1, I2);
endmodule


module  AN2LEHMX6(O, I1, I2);
   output O;
   input I1, I2;


   and g1 (O, I1, I2);
endmodule


module  AN2LEHMX8(O, I1, I2);
   output O;
   input I1, I2;


   and g1 (O, I1, I2);
endmodule


module  AN2QBDFFNLEHMX1(QB, D1, D2, CK);
   wire flag;
   assign flag = 0;
   output QB;
   input D1, D2, CK;
   wire vcc;
   assign vcc = 1;

   wire qt;
   wire n1;
   and g4 (n1, D1, D2);
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, n1, CK, vcc, vcc, flag);
endmodule


module  AN2QBDFFNLEHMX2(QB, D1, D2, CK);
   wire flag;
   assign flag = 0;
   output QB;
   input D1, D2, CK;
   wire vcc;
   assign vcc = 1;

   wire qt;
   wire n1;
   and g4 (n1, D1, D2);
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, n1, CK, vcc, vcc, flag);
endmodule


module  AN2QBDFFNLEHMX3(QB, D1, D2, CK);
   wire flag;
   assign flag = 0;
   output QB;
   input D1, D2, CK;
   wire vcc;
   assign vcc = 1;

   wire qt;
   wire n1;
   and g4 (n1, D1, D2);
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, n1, CK, vcc, vcc, flag);
endmodule


module  AN2QBDFZNLEHMX1(QB, D1, D2, TD, CK, SEL);
   wire flag;
   assign flag = 0;
   output QB;
   input D1, D2, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;

   wire data1;
   wire qt;
   wire n1;
   and g1 (n1, D1, D2);
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, data1, CK, vcc, vcc, flag);
   mux2_udp3 g4 (data1, n1, TD, SEL);
endmodule


module  AN2QBDFZNLEHMX2(QB, D1, D2, TD, CK, SEL);
   wire flag;
   assign flag = 0;
   output QB;
   input D1, D2, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;

   wire data1;
   wire qt;
   wire n1;
   and g1 (n1, D1, D2);
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, data1, CK, vcc, vcc, flag);
   mux2_udp3 g4 (data1, n1, TD, SEL);
endmodule


module  AN2QBDFZNLEHMX3(QB, D1, D2, TD, CK, SEL);
   wire flag;
   assign flag = 0;
   output QB;
   input D1, D2, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;

   wire data1;
   wire qt;
   wire n1;
   and g1 (n1, D1, D2);
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, data1, CK, vcc, vcc, flag);
   mux2_udp3 g4 (data1, n1, TD, SEL);
endmodule


module  AN2QDFFNLEHMX1(Q, D1, D2, CK);
   wire flag;
   assign flag = 0;
   output Q;
   input D1, D2, CK;
   wire vcc;
   assign vcc = 1;

   wire qt;
   wire n1;
   and g4 (n1, D1, D2);
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, n1, CK, vcc, vcc, flag);
endmodule


module  AN2QDFFNLEHMX2(Q, D1, D2, CK);
   wire flag;
   assign flag = 0;
   output Q;
   input D1, D2, CK;
   wire vcc;
   assign vcc = 1;

   wire qt;
   wire n1;
   and g4 (n1, D1, D2);
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, n1, CK, vcc, vcc, flag);
endmodule


module  AN2QDFFNLEHMX3(Q, D1, D2, CK);
   wire flag;
   assign flag = 0;
   output Q;
   input D1, D2, CK;
   wire vcc;
   assign vcc = 1;

   wire qt;
   wire n1;
   and g4 (n1, D1, D2);
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, n1, CK, vcc, vcc, flag);
endmodule


module  AN2QDFZNLEHMX1(Q, D1, D2, TD, CK, SEL);
   wire flag;
   assign flag = 0;
   output Q;
   input D1, D2, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;

   wire data1;
   wire qt;
   wire n1;
   and g1 (n1, D1, D2);
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, data1, CK, vcc, vcc, flag);
   mux2_udp3 g4 (data1, n1, TD, SEL);
endmodule


module  AN2QDFZNLEHMX2(Q, D1, D2, TD, CK, SEL);
   wire flag;
   assign flag = 0;
   output Q;
   input D1, D2, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;

   wire data1;
   wire qt;
   wire n1;
   and g1 (n1, D1, D2);
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, data1, CK, vcc, vcc, flag);
   mux2_udp3 g4 (data1, n1, TD, SEL);
endmodule


module  AN2QDFZNLEHMX3(Q, D1, D2, TD, CK, SEL);
   wire flag;
   assign flag = 0;
   output Q;
   input D1, D2, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;

   wire data1;
   wire qt;
   wire n1;
   and g1 (n1, D1, D2);
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, data1, CK, vcc, vcc, flag);
   mux2_udp3 g4 (data1, n1, TD, SEL);
endmodule


module  AN3B2LEHMX1(O, I1, B1, B2);
   output O;
   input I1, B1, B2;


   wire i2;
   wire i3;
   not g0 (i3, B2);
   and3 g1 (O, I1, i2, i3);
   not g2 (i2, B1);
endmodule


module  AN3B2LEHMX2(O, I1, B1, B2);
   output O;
   input I1, B1, B2;


   wire i2;
   wire i3;
   not g0 (i3, B2);
   and3 g1 (O, I1, i2, i3);
   not g2 (i2, B1);
endmodule


module  AN3B2LEHMX3(O, I1, B1, B2);
   output O;
   input I1, B1, B2;


   wire i2;
   wire i3;
   not g0 (i3, B2);
   and3 g1 (O, I1, i2, i3);
   not g2 (i2, B1);
endmodule


module  AN3B2LEHMX4(O, I1, B1, B2);
   output O;
   input I1, B1, B2;


   wire i2;
   wire i3;
   not g0 (i3, B2);
   and3 g1 (O, I1, i2, i3);
   not g2 (i2, B1);
endmodule


module  AN3LEHMX1(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   and3 g1 (O, I1, I2, I3);
endmodule


module  AN3LEHMX2(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   and3 g1 (O, I1, I2, I3);
endmodule


module  AN3LEHMX3(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   and3 g1 (O, I1, I2, I3);
endmodule


module  AN3LEHMX4(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   and3 g1 (O, I1, I2, I3);
endmodule


module  AN4LEHMX1(O, I1, I2, I3, I4);
   output O;
   input I1, I2, I3, I4;


   and4 g1 (O, I1, I2, I3, I4);
endmodule


module  AN4LEHMX2(O, I1, I2, I3, I4);
   output O;
   input I1, I2, I3, I4;


   and4 g1 (O, I1, I2, I3, I4);
endmodule


module  AN4LEHMX3(O, I1, I2, I3, I4);
   output O;
   input I1, I2, I3, I4;


   and4 g1 (O, I1, I2, I3, I4);
endmodule


module  AN4LEHMX4(O, I1, I2, I3, I4);
   output O;
   input I1, I2, I3, I4;


   and4 g1 (O, I1, I2, I3, I4);
endmodule


module  AO112LEHMX1(O, A1, B1, C1, C2);
   output O;
   input A1, B1, C1, C2;


   wire o2;
   wire o1;
   and g1 (o1, C1, C2);
   nor3 g2 (o2, A1, B1, o1);
   not g3 (O, o2);
endmodule


module  AO112LEHMX2(O, A1, B1, C1, C2);
   output O;
   input A1, B1, C1, C2;


   wire o2;
   wire o1;
   and g1 (o1, C1, C2);
   nor3 g2 (o2, A1, B1, o1);
   not g3 (O, o2);
endmodule


module  AO112LEHMX3(O, A1, B1, C1, C2);
   output O;
   input A1, B1, C1, C2;


   wire o2;
   wire o1;
   and g1 (o1, C1, C2);
   nor3 g2 (o2, A1, B1, o1);
   not g3 (O, o2);
endmodule


module  AO12LEHMX1(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o2;
   wire o1;
   and g1 (o1, B1, B2);
   nor g2 (o2, A1, o1);
   not g3 (O, o2);
endmodule


module  AO12LEHMX2(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o2;
   wire o1;
   and g1 (o1, B1, B2);
   nor g2 (o2, A1, o1);
   not g3 (O, o2);
endmodule


module  AO12LEHMX3(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o2;
   wire o1;
   and g1 (o1, B1, B2);
   nor g2 (o2, A1, o1);
   not g3 (O, o2);
endmodule


module  AO12LEHMX4(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o2;
   wire o1;
   and g1 (o1, B1, B2);
   nor g2 (o2, A1, o1);
   not g3 (O, o2);
endmodule


module  AO13LEHMX1(O, A1, B1, B2, B3);
   output O;
   input A1, B1, B2, B3;


   wire o2;
   wire o1;
   and3 g1 (o1, B1, B2, B3);
   nor g2 (o2, A1, o1);
   not g3 (O, o2);
endmodule


module  AO13LEHMX2(O, A1, B1, B2, B3);
   output O;
   input A1, B1, B2, B3;


   wire o2;
   wire o1;
   and3 g1 (o1, B1, B2, B3);
   nor g2 (o2, A1, o1);
   not g3 (O, o2);
endmodule


module  AO13LEHMX3(O, A1, B1, B2, B3);
   output O;
   input A1, B1, B2, B3;


   wire o2;
   wire o1;
   and3 g1 (o1, B1, B2, B3);
   nor g2 (o2, A1, o1);
   not g3 (O, o2);
endmodule


module  AO222LEHMX1(O, A1, A2, B1, B2, C1, C2);
   output O;
   input A1, A2, B1, B2, C1, C2;


   wire o4;
   wire o2;
   wire o1;
   wire o3;
   and g1 (o1, B1, B2);
   and g3 (o2, A1, A2);
   and g4 (o3, C1, C2);
   nor3 g2 (o4, o1, o2, o3);
   not g5 (O, o4);
endmodule


module  AO222LEHMX2(O, A1, A2, B1, B2, C1, C2);
   output O;
   input A1, A2, B1, B2, C1, C2;


   wire o4;
   wire o2;
   wire o1;
   wire o3;
   and g1 (o1, B1, B2);
   and g3 (o2, A1, A2);
   and g4 (o3, C1, C2);
   nor3 g2 (o4, o1, o2, o3);
   not g5 (O, o4);
endmodule


module  AO222LEHMX3(O, A1, A2, B1, B2, C1, C2);
   output O;
   input A1, A2, B1, B2, C1, C2;


   wire o4;
   wire o2;
   wire o1;
   wire o3;
   and g1 (o1, B1, B2);
   and g3 (o2, A1, A2);
   and g4 (o3, C1, C2);
   nor3 g2 (o4, o1, o2, o3);
   not g5 (O, o4);
endmodule


module  AO22LEHMX1(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   wire o3;
   and g1 (o1, B1, B2);
   and g3 (o2, A1, A2);
   nor g2 (o3, o1, o2);
   not g4 (O, o3);
endmodule


module  AO22LEHMX2(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   wire o3;
   and g1 (o1, B1, B2);
   and g3 (o2, A1, A2);
   nor g2 (o3, o1, o2);
   not g4 (O, o3);
endmodule


module  AO22LEHMX3(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   wire o3;
   and g1 (o1, B1, B2);
   and g3 (o2, A1, A2);
   nor g2 (o3, o1, o2);
   not g4 (O, o3);
endmodule


module  AO22LEHMX4(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   wire o3;
   and g1 (o1, B1, B2);
   and g3 (o2, A1, A2);
   nor g2 (o3, o1, o2);
   not g4 (O, o3);
endmodule


module  AO22LEHMX6(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   wire o3;
   and g1 (o1, B1, B2);
   and g3 (o2, A1, A2);
   nor g2 (o3, o1, o2);
   not g4 (O, o3);
endmodule


module  AOI112LEHMX1(O, A1, B1, C1, C2);
   output O;
   input A1, B1, C1, C2;


   wire o1;
   and g1 (o1, C1, C2);
   nor3 g2 (O, A1, B1, o1);
endmodule


module  AOI112LEHMX2(O, A1, B1, C1, C2);
   output O;
   input A1, B1, C1, C2;


   wire o1;
   and g1 (o1, C1, C2);
   nor3 g2 (O, A1, B1, o1);
endmodule


module  AOI112LEHMX3(O, A1, B1, C1, C2);
   output O;
   input A1, B1, C1, C2;


   wire o1;
   and g1 (o1, C1, C2);
   nor3 g2 (O, A1, B1, o1);
endmodule


module  AOI112LEHMX4(O, A1, B1, C1, C2);
   output O;
   input A1, B1, C1, C2;


   wire o1;
   and g1 (o1, C1, C2);
   nor3 g2 (O, A1, B1, o1);
endmodule


module  AOI122LEHMX1(O, A1, B1, B2, C1, C2);
   output O;
   input A1, B1, B2, C1, C2;


   wire o2;
   wire o1;
   and g1 (o1, B1, B2);
   and g2 (o2, C1, C2);
   nor3 g3 (O, A1, o1, o2);
endmodule


module  AOI122LEHMX2(O, A1, B1, B2, C1, C2);
   output O;
   input A1, B1, B2, C1, C2;


   wire o2;
   wire o1;
   and g1 (o1, B1, B2);
   and g2 (o2, C1, C2);
   nor3 g3 (O, A1, o1, o2);
endmodule


module  AOI122LEHMX3(O, A1, B1, B2, C1, C2);
   output O;
   input A1, B1, B2, C1, C2;


   wire o2;
   wire o1;
   and g1 (o1, B1, B2);
   and g2 (o2, C1, C2);
   nor3 g3 (O, A1, o1, o2);
endmodule


module  AOI122LEHMX4(O, A1, B1, B2, C1, C2);
   output O;
   input A1, B1, B2, C1, C2;


   wire o2;
   wire o1;
   and g1 (o1, B1, B2);
   and g2 (o2, C1, C2);
   nor3 g3 (O, A1, o1, o2);
endmodule


module  AOI12B2LEHMX1(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire i1;
   wire i2;
   wire i3;
   not g1 (i1, B1);
   not g2 (i2, B2);
   and g3 (i3, i2, i1);
   nor g4 (O, i3, A1);
endmodule


module  AOI12B2LEHMX2(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire i1;
   wire i2;
   wire i3;
   not g1 (i1, B1);
   not g2 (i2, B2);
   and g3 (i3, i2, i1);
   nor g4 (O, i3, A1);
endmodule


module  AOI12B2LEHMX3(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire i1;
   wire i2;
   wire i3;
   not g1 (i1, B1);
   not g2 (i2, B2);
   and g3 (i3, i2, i1);
   nor g4 (O, i3, A1);
endmodule


module  AOI12LEHMX1(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o1;
   and g1 (o1, B1, B2);
   nor g2 (O, A1, o1);
endmodule


module  AOI12LEHMX2(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o1;
   and g1 (o1, B1, B2);
   nor g2 (O, A1, o1);
endmodule


module  AOI12LEHMX3(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o1;
   and g1 (o1, B1, B2);
   nor g2 (O, A1, o1);
endmodule


module  AOI12LEHMX4(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o1;
   and g1 (o1, B1, B2);
   nor g2 (O, A1, o1);
endmodule


module  AOI12LEHMX6(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o1;
   and g1 (o1, B1, B2);
   nor g2 (O, A1, o1);
endmodule


module  AOI12M2HLEHMX4(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o1;
   and g1 (o1, B1, B2);
   nor g2 (O, A1, o1);
endmodule


module  AOI12M2HLEHMX6(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o1;
   and g1 (o1, B1, B2);
   nor g2 (O, A1, o1);
endmodule


module  AOI12M2HLEHMX8(O, A1, B1, B2);
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
   and3 g1 (o1, B1, B2, B3);
   nor g2 (O, A1, o1);
endmodule


module  AOI13LEHMX2(O, A1, B1, B2, B3);
   output O;
   input A1, B1, B2, B3;


   wire o1;
   and3 g1 (o1, B1, B2, B3);
   nor g2 (O, A1, o1);
endmodule


module  AOI13LEHMX3(O, A1, B1, B2, B3);
   output O;
   input A1, B1, B2, B3;


   wire o1;
   and3 g1 (o1, B1, B2, B3);
   nor g2 (O, A1, o1);
endmodule


module  AOI13LEHMX4(O, A1, B1, B2, B3);
   output O;
   input A1, B1, B2, B3;


   wire o1;
   and3 g1 (o1, B1, B2, B3);
   nor g2 (O, A1, o1);
endmodule


module  AOI21B1ISLEHMX1(O, A1, A2, B1B);
   output O;
   input A1, A2, B1B;


   wire A1A2;
   wire b1b_bar;
   and g1 (A1A2, A1, A2);
   not g2 (b1b_bar, B1B);
   nor g3 (O, A1A2, b1b_bar);
endmodule


module  AOI21B1ISLEHMX2(O, A1, A2, B1B);
   output O;
   input A1, A2, B1B;


   wire A1A2;
   wire b1b_bar;
   and g1 (A1A2, A1, A2);
   not g2 (b1b_bar, B1B);
   nor g3 (O, A1A2, b1b_bar);
endmodule


module  AOI21B1ISLEHMX3(O, A1, A2, B1B);
   output O;
   input A1, A2, B1B;


   wire A1A2;
   wire b1b_bar;
   and g1 (A1A2, A1, A2);
   not g2 (b1b_bar, B1B);
   nor g3 (O, A1A2, b1b_bar);
endmodule


module  AOI21B1LEHMX1(O, A1, A2, B1B);
   output O;
   input A1, A2, B1B;


   wire A1A2;
   wire b1b_bar;
   and g1 (A1A2, A1, A2);
   not g2 (b1b_bar, B1B);
   nor g3 (O, A1A2, b1b_bar);
endmodule


module  AOI21B1LEHMX2(O, A1, A2, B1B);
   output O;
   input A1, A2, B1B;


   wire A1A2;
   wire b1b_bar;
   and g1 (A1A2, A1, A2);
   not g2 (b1b_bar, B1B);
   nor g3 (O, A1A2, b1b_bar);
endmodule


module  AOI21B1LEHMX3(O, A1, A2, B1B);
   output O;
   input A1, A2, B1B;


   wire A1A2;
   wire b1b_bar;
   and g1 (A1A2, A1, A2);
   not g2 (b1b_bar, B1B);
   nor g3 (O, A1A2, b1b_bar);
endmodule


module  AOI222LEHMX1(O, A1, A2, B1, B2, C1, C2);
   output O;
   input A1, A2, B1, B2, C1, C2;


   wire o2;
   wire o1;
   wire o3;
   and g1 (o1, B1, B2);
   and g3 (o2, A1, A2);
   and g4 (o3, C1, C2);
   nor3 g2 (O, o1, o2, o3);
endmodule


module  AOI222LEHMX2(O, A1, A2, B1, B2, C1, C2);
   output O;
   input A1, A2, B1, B2, C1, C2;


   wire o2;
   wire o1;
   wire o3;
   and g1 (o1, B1, B2);
   and g3 (o2, A1, A2);
   and g4 (o3, C1, C2);
   nor3 g2 (O, o1, o2, o3);
endmodule


module  AOI222LEHMX3(O, A1, A2, B1, B2, C1, C2);
   output O;
   input A1, A2, B1, B2, C1, C2;


   wire o2;
   wire o1;
   wire o3;
   and g1 (o1, B1, B2);
   and g3 (o2, A1, A2);
   and g4 (o3, C1, C2);
   nor3 g2 (O, o1, o2, o3);
endmodule


module  AOI22B2LEHMX1(O, A1, A2, B1B, B2B);
   output O;
   input A1, A2, B1B, B2B;


   wire o2;
   wire o1;
   and g1 (o1, A1, A2);
   nor g2 (o2, B1B, B2B);
   nor g3(O, o1, o2);
endmodule


module  AOI22B2LEHMX2(O, A1, A2, B1B, B2B);
   output O;
   input A1, A2, B1B, B2B;


   wire o2;
   wire o1;
   and g1 (o1, A1, A2);
   nor g2 (o2, B1B, B2B);
   nor g3(O, o1, o2);
endmodule


module  AOI22B2LEHMX3(O, A1, A2, B1B, B2B);
   output O;
   input A1, A2, B1B, B2B;


   wire o2;
   wire o1;
   and g1 (o1, A1, A2);
   nor g2 (o2, B1B, B2B);
   nor g3(O, o1, o2);
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


module  AOI22LEHMX2(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   and g1 (o1, B1, B2);
   and g3 (o2, A1, A2);
   nor g2 (O, o1, o2);
endmodule


module  AOI22LEHMX3(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   and g1 (o1, B1, B2);
   and g3 (o2, A1, A2);
   nor g2 (O, o1, o2);
endmodule


module  AOI22LEHMX4(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   and g1 (o1, B1, B2);
   and g3 (o2, A1, A2);
   nor g2 (O, o1, o2);
endmodule


module  AOI22M2HLEHMX3(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   and g1 (o1, B1, B2);
   and g3 (o2, A1, A2);
   nor g2 (O, o1, o2);
endmodule


module  AOI22M2HLEHMX4(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   and g1 (o1, B1, B2);
   and g3 (o2, A1, A2);
   nor g2 (O, o1, o2);
endmodule


module  AOI22M2HLEHMX6(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   and g1 (o1, B1, B2);
   and g3 (o2, A1, A2);
   nor g2 (O, o1, o2);
endmodule


module  AOI22M2HLEHMX8(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   and g1 (o1, B1, B2);
   and g3 (o2, A1, A2);
   nor g2 (O, o1, o2);
endmodule


module  BUFCKLEHMX1(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFCKLEHMX12(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFCKLEHMX16(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFCKLEHMX2(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFCKLEHMX20(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFCKLEHMX24(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFCKLEHMX3(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFCKLEHMX4(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFCKLEHMX6(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFCKLEHMX8(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFCKM2HLEHMX12(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFCKM2HLEHMX16(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFCKM2HLEHMX20(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFCKM2HLEHMX24(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFCKM2HLEHMX32(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFLEHMX1(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFLEHMX12(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFLEHMX16(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFLEHMX2(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFLEHMX20(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFLEHMX24(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFLEHMX3(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFLEHMX4(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFLEHMX6(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFLEHMX8(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFM2HLEHMX12(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFM2HLEHMX16(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFM2HLEHMX20(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFM2HLEHMX24(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFM2HLEHMX32(O, I);
   output O;
   input I;


   buf g1 (O, I);
endmodule


module  BUFTLEHMX1(O, I, E);
   output O;
   input I, E;


   bufif1 g1 (O, I, E);
endmodule


module  BUFTLEHMX2(O, I, E);
   output O;
   input I, E;


   bufif1 g1 (O, I, E);
endmodule


module  BUFTLEHMX3(O, I, E);
   output O;
   input I, E;


   bufif1 g1 (O, I, E);
endmodule


module  BUFTLEHMX4(O, I, E);
   output O;
   input I, E;


   bufif1 g1 (O, I, E);
endmodule


module  BUFTLEHMX6(O, I, E);
   output O;
   input I, E;


   bufif1 g1 (O, I, E);
endmodule


module  BUFTLEHMX8(O, I, E);
   output O;
   input I, E;


   bufif1 g1 (O, I, E);
endmodule


module  DBAHRBLEHMX1(Q, QB, D, GB, RB);
   wire flag;
   assign flag = 0;
   output Q, QB;
   input D, GB, RB;

   wire ck;
   wire qt;
   buf g3 (Q, qt);
   not g1 (QB, qt);
   dlhrb_udp4 g2 (qt, D, ck, RB, flag);
   not g4 (ck, GB);
endmodule


module  DBAHRBLEHMX2(Q, QB, D, GB, RB);
   wire flag;
   assign flag = 0;
   output Q, QB;
   input D, GB, RB;

   wire ck;
   wire qt;
   buf g3 (Q, qt);
   not g1 (QB, qt);
   dlhrb_udp4 g2 (qt, D, ck, RB, flag);
   not g4 (ck, GB);
endmodule


module  DBAHRBLEHMX3(Q, QB, D, GB, RB);
   wire flag;
   assign flag = 0;
   output Q, QB;
   input D, GB, RB;

   wire ck;
   wire qt;
   buf g3 (Q, qt);
   not g1 (QB, qt);
   dlhrb_udp4 g2 (qt, D, ck, RB, flag);
   not g4 (ck, GB);
endmodule


module  DLAHLEHMX1(Q, QB, D, G);
   wire flag;
   assign flag = 0;
   output Q, QB;
   input D, G;
   wire vcc;
   assign vcc = 1;

   wire qt;
   buf g3 (Q, qt);
   not g1 (QB, qt);
   dlhrb_udp4 g2 (qt, D, G, vcc, flag);
endmodule


module  DLAHLEHMX2(Q, QB, D, G);
   wire flag;
   assign flag = 0;
   output Q, QB;
   input D, G;
   wire vcc;
   assign vcc = 1;

   wire qt;
   buf g3 (Q, qt);
   not g1 (QB, qt);
   dlhrb_udp4 g2 (qt, D, G, vcc, flag);
endmodule


module  DLAHLEHMX3(Q, QB, D, G);
   wire flag;
   assign flag = 0;
   output Q, QB;
   input D, G;
   wire vcc;
   assign vcc = 1;

   wire qt;
   buf g3 (Q, qt);
   not g1 (QB, qt);
   dlhrb_udp4 g2 (qt, D, G, vcc, flag);
endmodule


module  DLAHRBLEHMX1(Q, QB, D, G, RB);
   wire flag;
   assign flag = 0;
   output Q, QB;
   input D, G, RB;

   wire qt;
   buf g3 (Q, qt);
   not g1 (QB, qt);
   dlhrb_udp4 g2 (qt, D, G, RB, flag);
endmodule


module  DLAHRBLEHMX2(Q, QB, D, G, RB);
   wire flag;
   assign flag = 0;
   output Q, QB;
   input D, G, RB;

   wire qt;
   buf g3 (Q, qt);
   not g1 (QB, qt);
   dlhrb_udp4 g2 (qt, D, G, RB, flag);
endmodule


module  DLAHRBLEHMX3(Q, QB, D, G, RB);
   wire flag;
   assign flag = 0;
   output Q, QB;
   input D, G, RB;

   wire qt;
   buf g3 (Q, qt);
   not g1 (QB, qt);
   dlhrb_udp4 g2 (qt, D, G, RB, flag);
endmodule


module  FA1LEHMX1(S, CO, A, B, CI);
   output S, CO;
   input A, B, CI;


   wire a2;
   wire a1;
   wire a3;
   and g1 (a1, A, B);
   and g2 (a2, B, CI);
   and g3 (a3, A, CI);
   or3  g4 (CO,a1,a2,a3);
   xor3 g5 (S, A, B, CI);
endmodule


module  FA1LEHMX2(S, CO, A, B, CI);
   output S, CO;
   input A, B, CI;


   wire a2;
   wire a1;
   wire a3;
   and g1 (a1, A, B);
   and g2 (a2, B, CI);
   and g3 (a3, A, CI);
   or3  g4 (CO,a1,a2,a3);
   xor3 g5 (S, A, B, CI);
endmodule


module  FA1LEHMX3(S, CO, A, B, CI);
   output S, CO;
   input A, B, CI;


   wire a2;
   wire a1;
   wire a3;
   and g1 (a1, A, B);
   and g2 (a2, B, CI);
   and g3 (a3, A, CI);
   or3  g4 (CO,a1,a2,a3);
   xor3 g5 (S, A, B, CI);
endmodule


module  FA1M2HLEHMX3(S, CO, A, B, CI);
   output S, CO;
   input A, B, CI;


   wire a2;
   wire a1;
   wire a3;
   and g1 (a1, A, B);
   and g2 (a2, B, CI);
   and g3 (a3, A, CI);
   or3  g4 (CO,a1,a2,a3);
   xor3 g5 (S, A, B, CI);
endmodule


module  FA1M2HLEHMX4(S, CO, A, B, CI);
   output S, CO;
   input A, B, CI;


   wire a2;
   wire a1;
   wire a3;
   and g1 (a1, A, B);
   and g2 (a2, B, CI);
   and g3 (a3, A, CI);
   or3  g4 (CO,a1,a2,a3);
   xor3 g5 (S, A, B, CI);
endmodule


module FA1M2HLEHMX6(S, CO, A, B, CI);
   output S, CO;
   input A, B, CI;


   wire a2;
   wire a1;
   wire a3;
   and g1 (a1,A,B);
   and g2 (a2,B,CI);
   and g3 (a3,A,CI);
   or3  g4 (CO,a1,a2,a3);
   xor g5 (S,A,B,CI);
endmodule


module  GCBESLEHMX1(Q, E, TE, CKB);
   wire flag;
   assign flag = 0;
   output Q;
   input E, TE, CKB;
   wire vcc;
   assign vcc = 1;

   wire or_o;
   wire qt_bar;
   wire qt;
   or g1 (or_o, TE, E);
   dlhrb_udp4 g2 (qt, or_o, CKB, vcc, flag);
   not g3 (qt_bar, qt);
   or g4 (Q, CKB, qt_bar);
endmodule


module  GCBESLEHMX12(Q, E, TE, CKB);
   wire flag;
   assign flag = 0;
   output Q;
   input E, TE, CKB;
   wire vcc;
   assign vcc = 1;

   wire or_o;
   wire qt_bar;
   wire qt;
   or g1 (or_o, TE, E);
   dlhrb_udp4 g2 (qt, or_o, CKB, vcc, flag);
   not g3 (qt_bar, qt);
   or g4 (Q, CKB, qt_bar);
endmodule


module  GCBESLEHMX2(Q, E, TE, CKB);
   wire flag;
   assign flag = 0;
   output Q;
   input E, TE, CKB;
   wire vcc;
   assign vcc = 1;

   wire or_o;
   wire qt_bar;
   wire qt;
   or g1 (or_o, TE, E);
   dlhrb_udp4 g2 (qt, or_o, CKB, vcc, flag);
   not g3 (qt_bar, qt);
   or g4 (Q, CKB, qt_bar);
endmodule


module  GCBESLEHMX3(Q, E, TE, CKB);
   wire flag;
   assign flag = 0;
   output Q;
   input E, TE, CKB;
   wire vcc;
   assign vcc = 1;

   wire or_o;
   wire qt_bar;
   wire qt;
   or g1 (or_o, TE, E);
   dlhrb_udp4 g2 (qt, or_o, CKB, vcc, flag);
   not g3 (qt_bar, qt);
   or g4 (Q, CKB, qt_bar);
endmodule


module  GCBESLEHMX4(Q, E, TE, CKB);
   wire flag;
   assign flag = 0;
   output Q;
   input E, TE, CKB;
   wire vcc;
   assign vcc = 1;

   wire or_o;
   wire qt_bar;
   wire qt;
   or g1 (or_o, TE, E);
   dlhrb_udp4 g2 (qt, or_o, CKB, vcc, flag);
   not g3 (qt_bar, qt);
   or g4 (Q, CKB, qt_bar);
endmodule


module  GCBESLEHMX6(Q, E, TE, CKB);
   wire flag;
   assign flag = 0;
   output Q;
   input E, TE, CKB;
   wire vcc;
   assign vcc = 1;

   wire or_o;
   wire qt_bar;
   wire qt;
   or g1 (or_o, TE, E);
   dlhrb_udp4 g2 (qt, or_o, CKB, vcc, flag);
   not g3 (qt_bar, qt);
   or g4 (Q, CKB, qt_bar);
endmodule


module  GCBESLEHMX8(Q, E, TE, CKB);
   wire flag;
   assign flag = 0;
   output Q;
   input E, TE, CKB;
   wire vcc;
   assign vcc = 1;

   wire or_o;
   wire qt_bar;
   wire qt;
   or g1 (or_o, TE, E);
   dlhrb_udp4 g2 (qt, or_o, CKB, vcc, flag);
   not g3 (qt_bar, qt);
   or g4 (Q, CKB, qt_bar);
endmodule


module  GCKESLEHMX1(Q, E, TE, CK);
   wire flag;
   assign flag = 0;
   output Q;
   input E, TE, CK;
   wire vcc;
   assign vcc = 1;

   wire or_o;
   wire ckb;
   wire qt;
   not g1 (ckb, CK);
   or g2 (or_o, TE, E);
   dlhrb_udp4 g3 (qt, or_o, ckb, vcc, flag);
   and g4 (Q, CK, qt);
endmodule


module  GCKESLEHMX12(Q, E, TE, CK);
   wire flag;
   assign flag = 0;
   output Q;
   input E, TE, CK;
   wire vcc;
   assign vcc = 1;

   wire or_o;
   wire ckb;
   wire qt;
   not g1 (ckb, CK);
   or g2 (or_o, TE, E);
   dlhrb_udp4 g3 (qt, or_o, ckb, vcc, flag);
   and g4 (Q, CK, qt);
endmodule


module  GCKESLEHMX2(Q, E, TE, CK);
   wire flag;
   assign flag = 0;
   output Q;
   input E, TE, CK;
   wire vcc;
   assign vcc = 1;

   wire or_o;
   wire ckb;
   wire qt;
   not g1 (ckb, CK);
   or g2 (or_o, TE, E);
   dlhrb_udp4 g3 (qt, or_o, ckb, vcc, flag);
   and g4 (Q, CK, qt);
endmodule


module  GCKESLEHMX3(Q, E, TE, CK);
   wire flag;
   assign flag = 0;
   output Q;
   input E, TE, CK;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_E, d_TE;


   wire or_o;
   wire ckb;
   wire qt;
   not g1 (ckb, d_CK);
   or g2 (or_o, d_TE, d_E);
   dlhrb_udp4 g3 (qt, or_o, ckb, vcc, flag);
   and g4 (Q, d_CK, qt);
endmodule


module  GCKESLEHMX4(Q, E, TE, CK);
   wire flag;
   assign flag = 0;
   output Q;
   input E, TE, CK;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_E, d_TE;


   wire or_o;
   wire ckb;
   wire qt;
   not g1 (ckb, d_CK);
   or g2 (or_o, d_TE, d_E);
   dlhrb_udp4 g3 (qt, or_o, ckb, vcc, flag);
   and g4 (Q, d_CK, qt);
endmodule


module  GCKESLEHMX6(Q, E, TE, CK);
   wire flag;
   assign flag = 0;
   output Q;
   input E, TE, CK;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_E, d_TE;


   wire or_o;
   wire ckb;
   wire qt;
   not g1 (ckb, d_CK);
   or g2 (or_o, d_TE, d_E);
   dlhrb_udp4 g3 (qt, or_o, ckb, vcc, flag);
   and g4 (Q, d_CK, qt);
endmodule


module  GCKESLEHMX8(Q, E, TE, CK);
   wire flag;
   assign flag = 0;
   output Q;
   input E, TE, CK;

   wire vcc;
   assign vcc = 1;

   wire or_o;
   wire ckb;
   wire qt;
   not g1 (ckb, d_CK);
   or g2 (or_o, d_TE, d_E);
   dlhrb_udp4 g3 (qt, or_o, ckb, vcc, flag);
   and g4 (Q, d_CK, qt);
endmodule


module  GCKESM2HLEHMX12(Q, E, TE, CK);
   wire flag;
   assign flag = 0;
   output Q;
   input E, TE, CK;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_E, d_TE;


   wire or_o;
   wire ckb;
   wire qt;
   not g1 (ckb, d_CK);
   or g2 (or_o, d_TE, d_E);
   dlhrb_udp4 g3 (qt, or_o, ckb, vcc, flag);
   and g4 (Q, d_CK, qt);
endmodule


module  GCKESM2HLEHMX16(Q, E, TE, CK);
   wire flag;
   assign flag = 0;
   output Q;
   input E, TE, CK;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_E, d_TE;


   wire or_o;
   wire ckb;
   wire qt;
   not g1 (ckb, d_CK);
   or g2 (or_o, d_TE, d_E);
   dlhrb_udp4 g3 (qt, or_o, ckb, vcc, flag);
   and g4 (Q, d_CK, qt);
endmodule


module  GCKESM2HLEHMX6(Q, E, TE, CK);
   wire flag;
   assign flag = 0;
   output Q;
   input E, TE, CK;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_E, d_TE;


   wire or_o;
   wire ckb;
   wire qt;
   not g1 (ckb, d_CK);
   or g2 (or_o, d_TE, d_E);
   dlhrb_udp4 g3 (qt, or_o, ckb, vcc, flag);
   and g4 (Q, d_CK, qt);
endmodule


module  GCKESM2HLEHMX8(Q, E, TE, CK);
   wire flag;
   assign flag = 0;
   output Q;
   input E, TE, CK;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_E, d_TE;


   wire or_o;
   wire ckb;
   wire qt;
   not g1 (ckb, d_CK);
   or g2 (or_o, d_TE, d_E);
   dlhrb_udp4 g3 (qt, or_o, ckb, vcc, flag);
   and g4 (Q, d_CK, qt);
endmodule


module  HA1LEHMX1(S, C, A, B);
   output S, C;
   input A, B;


   and g1 (C, A, B);
   xor g2 (S, A, B);
endmodule


module  HA1LEHMX2(S, C, A, B);
   output S, C;
   input A, B;


   and g1 (C, A, B);
   xor g2 (S, A, B);
endmodule


module  HA1LEHMX3(S, C, A, B);
   output S, C;
   input A, B;


   and g1 (C, A, B);
   xor g2 (S, A, B);
endmodule


module  INVCKLEHMX1(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVCKLEHMX12(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVCKLEHMX16(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVCKLEHMX2(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVCKLEHMX20(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVCKLEHMX24(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVCKLEHMX3(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVCKLEHMX4(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVCKLEHMX6(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVCKLEHMX8(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVCKM2HLEHMX12(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVCKM2HLEHMX16(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVCKM2HLEHMX20(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVCKM2HLEHMX24(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVCKM2HLEHMX32(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVLEHMX1(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVLEHMX12(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVLEHMX16(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVLEHMX2(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVLEHMX20(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVLEHMX24(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVLEHMX3(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVLEHMX4(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVLEHMX6(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVLEHMX8(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVM2HLEHMX12(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVM2HLEHMX16(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVM2HLEHMX20(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVM2HLEHMX24(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVM2HLEHMX32(O, I);
   output O;
   input I;


   not g1 (O, I);
endmodule


module  INVTLEHMX1(O, I, E);
   output O;
   input I, E;


   notif1 g1 (O, I, E);
endmodule


module  INVTLEHMX2(O, I, E);
   output O;
   input I, E;


   notif1 g1 (O, I, E);
endmodule


module  INVTLEHMX3(O, I, E);
   output O;
   input I, E;


   notif1 g1 (O, I, E);
endmodule


module  INVTLEHMX4(O, I, E);
   output O;
   input I, E;


   notif1 g1 (O, I, E);
endmodule


module  INVTLEHMX6(O, I, E);
   output O;
   input I, E;


   notif1 g1 (O, I, E);
endmodule


module  INVTLEHMX8(O, I, E);
   output O;
   input I, E;


   notif1 g1 (O, I, E);
endmodule



module  MUX2CKLEHMX1(O, S, A, B);
   wire flag;
   assign flag = 0;
   input A, B, S;
   output O;


   mux2_udp3 g1 (O, A, B, S);
endmodule


module  MUX2CKLEHMX2(O, S, A, B);
   wire flag;
   assign flag = 0;
   input A, B, S;
   output O;


   mux2_udp3 g1 (O, A, B, S);
endmodule


module  MUX2CKLEHMX3(O, S, A, B);
   wire flag;
   assign flag = 0;
   input A, B, S;
   output O;


   mux2_udp3 g1 (O, A, B, S);
endmodule


module  MUX2CKLEHMX4(O, S, A, B);
   wire flag;
   assign flag = 0;
   input A, B, S;
   output O;


   mux2_udp3 g1 (O, A, B, S);
endmodule


module  MUX2CKLEHMX6(O, S, A, B);
   wire flag;
   assign flag = 0;
   input A, B, S;
   output O;


   mux2_udp3 g1 (O, A, B, S);
endmodule


module  MUX2CKLEHMX8(O, S, A, B);
   wire flag;
   assign flag = 0;
   input A, B, S;
   output O;


   mux2_udp3 g1 (O, A, B, S);
endmodule


module  MUX2LEHMX1(O, S, A, B);
   input A, B, S;
   output O;


   mux2_udp3 g1 (O, A, B, S);
endmodule


module  MUX2LEHMX2(O, S, A, B);
   input A, B, S;
   output O;


   mux2_udp3 g1 (O, A, B, S);
endmodule


module  MUX2LEHMX3(O, S, A, B);
   input A, B, S;
   output O;


   mux2_udp3 g1 (O, A, B, S);
endmodule


module  MUX2LEHMX4(O, S, A, B);
   input A, B, S;
   output O;


   mux2_udp3 g1 (O, A, B, S);
endmodule


module  MUX2LEHMX6(O, S, A, B);
   input A, B, S;
   output O;


   mux2_udp3 g1 (O, A, B, S);
endmodule


module  MUX2LEHMX8(O, S, A, B);
   input A, B, S;
   output O;


   mux2_udp3 g1 (O, A, B, S);
endmodule


module  MUX3LEHMX1(O, S0, S1, A, B, C);
   wire flag;
   assign flag = 0;
   input A, B, C, S0, S1;
   output O;


   mux3_udp5 g1 (O, A, B, C, S0, S1);
endmodule


module  MUX3LEHMX2(O, S0, S1, A, B, C);
   wire flag;
   assign flag = 0;
   input A, B, C, S0, S1;
   output O;


   mux3_udp5 g1 (O, A, B, C, S0, S1);
endmodule


module  MUX3LEHMX3(O, S0, S1, A, B, C);
   wire flag;
   assign flag = 0;
   input A, B, C, S0, S1;
   output O;


   mux3_udp5 g1 (O, A, B, C, S0, S1);
endmodule


module  MUX4LEHMX1(O, S0, S1, A, B, C, D);
   wire flag;
   assign flag = 0;
   output O;
   input S0, S1, A, B, C, D;


   mux4_udp6 g1 (O, A, B, C, D, S0, S1);
endmodule


module  MUX4LEHMX2(O, S0, S1, A, B, C, D);
   wire flag;
   assign flag = 0;
   output O;
   input S0, S1, A, B, C, D;


   mux4_udp6 g1 (O, A, B, C, D, S0, S1);
endmodule


module  MUX4LEHMX3(O, S0, S1, A, B, C, D);
   wire flag;
   assign flag = 0;
   output O;
   input S0, S1, A, B, C, D;


   mux4_udp6 g1 (O, A, B, C, D, S0, S1);
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


module  MUXB2LEHMX2(O, S, A, B, EB);
   input A, B, S, EB;
   output O;
   wire o1;
   wire eb1;
   mux2_udp3 g1 (o1, A, B, S);
   not g2 (eb1, EB);
   and g3 (O, o1, eb1);
endmodule


module  MUXB2LEHMX3(O, S, A, B, EB);
   input A, B, S, EB;
   output O;
   wire o1;
   wire eb1;
   mux2_udp3 g1 (o1, A, B, S);
   not g2 (eb1, EB);
   and g3 (O, o1, eb1);
endmodule


module  MUXB4LEHMX1(O, S0, S1, A, B, C, D, EB);
   output O;
   input S0, S1, A, B, C, D, EB;
   wire e;
   wire o1;
   mux4_udp6 g1 (o1, A, B, C, D, S0, S1);
   not g2 (e, EB);
   and g3 (O, e, o1);
endmodule


module  MUXB4LEHMX2(O, S0, S1, A, B, C, D, EB);
   output O;
   input S0, S1, A, B, C, D, EB;
   wire e;
   wire o1;
   mux4_udp6 g1 (o1, A, B, C, D, S0, S1);
   not g2 (e, EB);
   and g3 (O, e, o1);
endmodule


module  MUXB4LEHMX3(O, S0, S1, A, B, C, D, EB);
   output O;
   input S0, S1, A, B, C, D, EB;
   wire e;
   wire o1;
   mux4_udp6 g1 (o1, A, B, C, D, S0, S1);
   not g2 (e, EB);
   and g3 (O, e, o1);
endmodule


module  MXL2LEHMX1(OB, S, A, B);
   input A, B, S;
   output OB;
   wire o;
   mux2_udp3 g1 (o, A, B, S);
   not g2 (OB, o);
endmodule


module  MXL2LEHMX2(OB, S, A, B);
   input A, B, S;
   output OB;
   wire o;
   mux2_udp3 g1 (o, A, B, S);
   not g2 (OB, o);
endmodule


module  MXL2LEHMX3(OB, S, A, B);
   input A, B, S;
   output OB;
   wire o;
   mux2_udp3 g1 (o, A, B, S);
   not g2 (OB, o);
endmodule


module  MXL2LEHMX4(OB, S, A, B);
   input A, B, S;
   output OB;
   wire o;
   mux2_udp3 g1 (o, A, B, S);
   not g2 (OB, o);
endmodule


module  MXL2LEHMX6(OB, S, A, B);
   input A, B, S;
   output OB;
   wire o;
   mux2_udp3 g1 (o, A, B, S);
   not g2 (OB, o);
endmodule


module  MXL2LEHMX8(OB, S, A, B);
   input A, B, S;
   output OB;
   wire o;
   mux2_udp3 g1 (o, A, B, S);
   not g2 (OB, o);
endmodule


module  ND2BPNLEHMX1(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2BPNLEHMX2(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2BPNLEHMX3(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2BPNLEHMX4(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2BPNLEHMX6(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2BPNLEHMX8(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2BPNM2HLEHMX12(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2BPNM2HLEHMX16(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2BPNM2HLEHMX6(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2BPNM2HLEHMX8(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2CKLEHMX1(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2CKLEHMX2(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2CKLEHMX3(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2CKLEHMX4(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2CKLEHMX6(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2CKLEHMX8(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2LEHMX1(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2LEHMX2(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2LEHMX3(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2LEHMX4(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2LEHMX6(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2LEHMX8(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2M2HLEHMX12(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2M2HLEHMX16(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2M2HLEHMX6(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND2M2HLEHMX8(O, I1, I2);
   output O;
   input I1, I2;
   nand g1 (O, I1, I2);
endmodule


module  ND3LEHMX1(O, I1, I2, I3);
   output O;
   input I1, I2, I3;
   nand3 g1 (O, I1, I2, I3);
endmodule


module  ND3LEHMX2(O, I1, I2, I3);
   output O;
   input I1, I2, I3;
   nand3 g1 (O, I1, I2, I3);
endmodule


module  ND3LEHMX3(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   nand3 g1 (O, I1, I2, I3);
endmodule


module  ND3LEHMX4(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   nand3 g1 (O, I1, I2, I3);
endmodule


module  ND3LEHMX6(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   nand3 g1 (O, I1, I2, I3);
endmodule


module  ND3LEHMX8(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   nand3 g1 (O, I1, I2, I3);
endmodule


module  ND3M2HLEHMX10(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   nand3 g1 (O, I1, I2, I3);
endmodule


module  ND3M2HLEHMX6(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   nand3 g1 (O, I1, I2, I3);
endmodule


module  ND3M2HLEHMX8(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   nand3 g1 (O, I1, I2, I3);
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


module  ND4B1LEHMX2(O, I1, I2, I3, B1);
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


module  ND4B1LEHMX3(O, I1, I2, I3, B1);
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


module  ND4B2LEHMX1(O, I1, I2, B1, B2);
   output O;
   input I1, I2, B1, B2;


   wire o2;
   wire o1;
   and g1 (o1, I1, I2);
   nor g2 (o2, B1, B2);
   nand g3 (O, o1, o2);
endmodule


module  ND4B2LEHMX2(O, I1, I2, B1, B2);
   output O;
   input I1, I2, B1, B2;


   wire o2;
   wire o1;
   and g1 (o1, I1, I2);
   nor g2 (o2, B1, B2);
   nand g3 (O, o1, o2);
endmodule


module  ND4B2LEHMX3(O, I1, I2, B1, B2);
   output O;
   input I1, I2, B1, B2;


   wire o2;
   wire o1;
   and g1 (o1, I1, I2);
   nor g2 (o2, B1, B2);
   nand g3 (O, o1, o2);
endmodule


module  ND4LEHMX1(O, I1, I2, I3, I4);
   output O;
   input I1, I2, I3, I4;


   nand4 g1 (O, I1, I2, I3, I4);
endmodule


module  ND4LEHMX2(O, I1, I2, I3, I4);
   output O;
   input I1, I2, I3, I4;


   nand4 g1 (O, I1, I2, I3, I4);
endmodule


module  ND4LEHMX3(O, I1, I2, I3, I4);
   output O;
   input I1, I2, I3, I4;


   nand4 g1 (O, I1, I2, I3, I4);
endmodule


module  ND4M2HLEHMX3(O, I1, I2, I3, I4);
   output O;
   input I1, I2, I3, I4;


   nand4 g1 (O, I1, I2, I3, I4);
endmodule


module  ND4M2HLEHMX4(O, I1, I2, I3, I4);
   output O;
   input I1, I2, I3, I4;


   nand4 g1 (O, I1, I2, I3, I4);
endmodule


module  NR2BPNLEHMX1(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2BPNLEHMX2(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2BPNLEHMX3(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2BPNLEHMX4(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2BPNLEHMX6(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2BPNLEHMX8(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2BPNM2HLEHMX10(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2BPNM2HLEHMX12(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2BPNM2HLEHMX16(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2BPNM2HLEHMX6(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2BPNM2HLEHMX8(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2CKLEHMX1(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2CKLEHMX2(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2CKLEHMX3(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2CKLEHMX4(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2CKLEHMX6(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2CKLEHMX8(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2LEHMX1(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2LEHMX2(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2LEHMX3(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2LEHMX4(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2LEHMX6(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2LEHMX8(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2M2HLEHMX10(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2M2HLEHMX12(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2M2HLEHMX16(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2M2HLEHMX6(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR2M2HLEHMX8(O, I1, I2);
   output O;
   input I1, I2;


   nor g1 (O, I1, I2);
endmodule


module  NR3LEHMX1(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   nor3 g1 (O, I1, I2, I3);
endmodule


module  NR3LEHMX2(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   nor3 g1 (O, I1, I2, I3);
endmodule


module  NR3LEHMX3(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   nor3 g1 (O, I1, I2, I3);
endmodule


module  NR3LEHMX4(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   nor3 g1 (O, I1, I2, I3);
endmodule


module  NR3LEHMX6(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   nor3 g1 (O, I1, I2, I3);
endmodule


module  NR3LEHMX8(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   nor3 g1 (O, I1, I2, I3);
endmodule


module  NR3M2HLEHMX10(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   nor3 g1 (O, I1, I2, I3);
endmodule


module  NR3M2HLEHMX6(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   nor3 g1 (O, I1, I2, I3);
endmodule


module  NR3M2HLEHMX8(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   nor3 g1 (O, I1, I2, I3);
endmodule


module  NR4LEHMX1(O, I1, I2, I3, I4);
   output O;
   input I1, I2, I3, I4;


   nor4 g1 (O, I1, I2, I3, I4);
endmodule


module  NR4LEHMX2(O, I1, I2, I3, I4);
   output O;
   input I1, I2, I3, I4;


   nor4 g1 (O, I1, I2, I3, I4);
endmodule


module  NR4LEHMX3(O, I1, I2, I3, I4);
   output O;
   input I1, I2, I3, I4;


   nor4 g1 (O, I1, I2, I3, I4);
endmodule


module  OA112LEHMX1(O, A1, B1, C1, C2);
   output O;
   input A1, B1, C1, C2;


   wire o2;
   wire o1;
   or g1 (o1, C1, C2);
   nand3 g2 (o2, A1, B1, o1);
   not g3 (O, o2);
endmodule


module  OA112LEHMX2(O, A1, B1, C1, C2);
   output O;
   input A1, B1, C1, C2;


   wire o2;
   wire o1;
   or g1 (o1, C1, C2);
   nand3 g2 (o2, A1, B1, o1);
   not g3 (O, o2);
endmodule


module  OA112LEHMX3(O, A1, B1, C1, C2);
   output O;
   input A1, B1, C1, C2;


   wire o2;
   wire o1;
   or g1 (o1, C1, C2);
   nand3 g2 (o2, A1, B1, o1);
   not g3 (O, o2);
endmodule


module  OA12LEHMX1(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o2;
   wire o1;
   or g1 (o1, B1, B2);
   nand g2 (o2, A1, o1);
   not g3 (O, o2);
endmodule


module  OA12LEHMX2(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o2;
   wire o1;
   or g1 (o1, B1, B2);
   nand g2 (o2, A1, o1);
   not g3 (O, o2);
endmodule


module  OA12LEHMX3(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o2;
   wire o1;
   or g1 (o1, B1, B2);
   nand g2 (o2, A1, o1);
   not g3 (O, o2);
endmodule


module  OA12LEHMX4(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o2;
   wire o1;
   or g1 (o1, B1, B2);
   nand g2 (o2, A1, o1);
   not g3 (O, o2);
endmodule


module  OA12LEHMX6(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o2;
   wire o1;
   or g1 (o1, B1, B2);
   nand g2 (o2, A1, o1);
   not g3 (O, o2);
endmodule


module  OA13LEHMX1(O, A1, B1, B2, B3);
   output O;
   input A1, B1, B2, B3;


   wire o2;
   wire o1;
   or3 g1 (o1, B1, B2, B3);
   nand g2 (o2, A1, o1);
   not g3 (O, o2);
endmodule


module  OA13LEHMX2(O, A1, B1, B2, B3);
   output O;
   input A1, B1, B2, B3;


   wire o2;
   wire o1;
   or3 g1 (o1, B1, B2, B3);
   nand g2 (o2, A1, o1);
   not g3 (O, o2);
endmodule


module  OA13LEHMX3(O, A1, B1, B2, B3);
   output O;
   input A1, B1, B2, B3;


   wire o2;
   wire o1;
   or3 g1 (o1, B1, B2, B3);
   nand g2 (o2, A1, o1);
   not g3 (O, o2);
endmodule


module  OA222LEHMX1(O, A1, A2, B1, B2, C1, C2);
   output O;
   input A1, A2, B1, B2, C1, C2;


   wire o4;
   wire o2;
   wire o1;
   wire o3;
   or g1 (o1, B1, B2);
   or g2 (o2, A1, A2);
   or g5 (o3, C1, C2);
   nand3 g3 (o4, o1, o2, o3);
   not g4 (O, o4);
endmodule


module  OA222LEHMX2(O, A1, A2, B1, B2, C1, C2);
   output O;
   input A1, A2, B1, B2, C1, C2;


   wire o4;
   wire o2;
   wire o1;
   wire o3;
   or g1 (o1, B1, B2);
   or g2 (o2, A1, A2);
   or g5 (o3, C1, C2);
   nand3 g3 (o4, o1, o2, o3);
   not g4 (O, o4);
endmodule


module  OA222LEHMX3(O, A1, A2, B1, B2, C1, C2);
   output O;
   input A1, A2, B1, B2, C1, C2;


   wire o4;
   wire o2;
   wire o1;
   wire o3;
   or g1 (o1, B1, B2);
   or g2 (o2, A1, A2);
   or g5 (o3, C1, C2);
   nand3 g3 (o4, o1, o2, o3);
   not g4 (O, o4);
endmodule


module  OA22LEHMX1(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   wire o3;
   or g1 (o1, B1, B2);
   or g2 (o2, A1, A2);
   nand g3 (o3, o1, o2);
   not g4 (O, o3);
endmodule


module  OA22LEHMX2(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   wire o3;
   or g1 (o1, B1, B2);
   or g2 (o2, A1, A2);
   nand g3 (o3, o1, o2);
   not g4 (O, o3);
endmodule


module  OA22LEHMX3(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   wire o3;
   or g1 (o1, B1, B2);
   or g2 (o2, A1, A2);
   nand g3 (o3, o1, o2);
   not g4 (O, o3);
endmodule


module  OA22LEHMX4(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   wire o3;
   or g1 (o1, B1, B2);
   or g2 (o2, A1, A2);
   nand g3 (o3, o1, o2);
   not g4 (O, o3);
endmodule


module  OA22LEHMX6(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   wire o3;
   or g1 (o1, B1, B2);
   or g2 (o2, A1, A2);
   nand g3 (o3, o1, o2);
   not g4 (O, o3);
endmodule


module  OAI112LEHMX1(O, A1, B1, C1, C2);
   output O;
   input A1, B1, C1, C2;


   wire o1;
   or g1 (o1, C1, C2);
   nand3 g2 (O, A1, B1, o1);
endmodule


module  OAI112LEHMX2(O, A1, B1, C1, C2);
   output O;
   input A1, B1, C1, C2;


   wire o1;
   or g1 (o1, C1, C2);
   nand3 g2 (O, A1, B1, o1);
endmodule


module  OAI112LEHMX3(O, A1, B1, C1, C2);
   output O;
   input A1, B1, C1, C2;


   wire o1;
   or g1 (o1, C1, C2);
   nand3 g2 (O, A1, B1, o1);
endmodule


module  OAI122LEHMX1(O, A1, B1, B2, C1, C2);
   output O;
   input A1, B1, B2, C1, C2;


   wire o2;
   wire o1;
   or g1 (o1, B1, B2);
   or g2 (o2, C1, C2);
   nand3 g3 (O, A1, o1, o2);
endmodule


module  OAI122LEHMX2(O, A1, B1, B2, C1, C2);
   output O;
   input A1, B1, B2, C1, C2;


   wire o2;
   wire o1;
   or g1 (o1, B1, B2);
   or g2 (o2, C1, C2);
   nand3 g3 (O, A1, o1, o2);
endmodule


module  OAI122LEHMX3(O, A1, B1, B2, C1, C2);
   output O;
   input A1, B1, B2, C1, C2;


   wire o2;
   wire o1;
   or g1 (o1, B1, B2);
   or g2 (o2, C1, C2);
   nand3 g3 (O, A1, o1, o2);
endmodule


module  OAI12B2LEHMX1(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire i1;
   wire i2;
   wire i3;
   not g1 (i1, B1);
   not g2 (i2, B2);
   or g3 (i3, i2, i1);
   nand g4 (O, i3, A1);
endmodule


module  OAI12B2LEHMX2(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire i1;
   wire i2;
   wire i3;
   not g1 (i1, B1);
   not g2 (i2, B2);
   or g3 (i3, i2, i1);
   nand g4 (O, i3, A1);
endmodule


module  OAI12B2LEHMX3(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire i1;
   wire i2;
   wire i3;
   not g1 (i1, B1);
   not g2 (i2, B2);
   or g3 (i3, i2, i1);
   nand g4 (O, i3, A1);
endmodule


module  OAI12LEHMX1(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o1;
   or g1 (o1, B1, B2);
   nand g2 (O, A1, o1);
endmodule


module  OAI12LEHMX2(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o1;
   or g1 (o1, B1, B2);
   nand g2 (O, A1, o1);
endmodule


module  OAI12LEHMX3(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o1;
   or g1 (o1, B1, B2);
   nand g2 (O, A1, o1);
endmodule


module  OAI12LEHMX4(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o1;
   or g1 (o1, B1, B2);
   nand g2 (O, A1, o1);
endmodule


module  OAI12LEHMX6(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o1;
   or g1 (o1, B1, B2);
   nand g2 (O, A1, o1);
endmodule


module  OAI12M2HLEHMX4(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o1;
   or g1 (o1, B1, B2);
   nand g2 (O, A1, o1);
endmodule


module  OAI12M2HLEHMX6(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o1;
   or g1 (o1, B1, B2);
   nand g2 (O, A1, o1);
endmodule


module  OAI12M2HLEHMX8(O, A1, B1, B2);
   output O;
   input A1, B1, B2;


   wire o1;
   or g1 (o1, B1, B2);
   nand g2 (O, A1, o1);
endmodule


module  OAI13LEHMX1(O, A1, B1, B2, B3);
   output O;
   input A1, B1, B2, B3;


   wire o1;
   or3 g1 (o1, B1, B2, B3);
   nand g2 (O, A1, o1);
endmodule


module  OAI13LEHMX2(O, A1, B1, B2, B3);
   output O;
   input A1, B1, B2, B3;


   wire o1;
   or3 g1 (o1, B1, B2, B3);
   nand g2 (O, A1, o1);
endmodule


module  OAI13LEHMX3(O, A1, B1, B2, B3);
   output O;
   input A1, B1, B2, B3;


   wire o1;
   or3 g1 (o1, B1, B2, B3);
   nand g2 (O, A1, o1);
endmodule


module  OAI13LEHMX4(O, A1, B1, B2, B3);
   output O;
   input A1, B1, B2, B3;


   wire o1;
   or3 g1 (o1, B1, B2, B3);
   nand g2 (O, A1, o1);
endmodule


module  OAI21B1ISLEHMX1(O, A1, A2, B1B);
   output O;
   input A1, A2, B1B;


   wire b1b_bar;
   wire o1;
   or g1 (o1, A1, A2);
   not g2 (b1b_bar, B1B);
   nand g3 (O, o1, b1b_bar);
endmodule


module  OAI21B1ISLEHMX2(O, A1, A2, B1B);
   output O;
   input A1, A2, B1B;


   wire b1b_bar;
   wire o1;
   or g1 (o1, A1, A2);
   not g2 (b1b_bar, B1B);
   nand g3 (O, o1, b1b_bar);
endmodule


module  OAI21B1ISLEHMX3(O, A1, A2, B1B);
   output O;
   input A1, A2, B1B;


   wire b1b_bar;
   wire o1;
   or g1 (o1, A1, A2);
   not g2 (b1b_bar, B1B);
   nand g3 (O, o1, b1b_bar);
endmodule


module  OAI21B1LEHMX1(O, A1, A2, B1B);
   output O;
   input A1, A2, B1B;


   wire b1b_bar;
   wire o1;
   or g1 (o1, A1, A2);
   not g2 (b1b_bar, B1B);
   nand g3 (O, o1, b1b_bar);
endmodule


module  OAI21B1LEHMX2(O, A1, A2, B1B);
   output O;
   input A1, A2, B1B;


   wire b1b_bar;
   wire o1;
   or g1 (o1, A1, A2);
   not g2 (b1b_bar, B1B);
   nand g3 (O, o1, b1b_bar);
endmodule


module  OAI21B1LEHMX3(O, A1, A2, B1B);
   output O;
   input A1, A2, B1B;


   wire b1b_bar;
   wire o1;
   or g1 (o1, A1, A2);
   not g2 (b1b_bar, B1B);
   nand g3 (O, o1, b1b_bar);
endmodule


module  OAI222LEHMX1(O, A1, A2, B1, B2, C1, C2);
   output O;
   input A1, A2, B1, B2, C1, C2;


   wire o2;
   wire o1;
   wire o3;
   or g1 (o1, B1, B2);
   or g3 (o2, A1, A2);
   or g4 (o3, C1, C2);
   nand3 g2 (O, o1, o2, o3);
endmodule


module  OAI222LEHMX2(O, A1, A2, B1, B2, C1, C2);
   output O;
   input A1, A2, B1, B2, C1, C2;


   wire o2;
   wire o1;
   wire o3;
   or g1 (o1, B1, B2);
   or g3 (o2, A1, A2);
   or g4 (o3, C1, C2);
   nand3 g2 (O, o1, o2, o3);
endmodule


module  OAI222LEHMX3(O, A1, A2, B1, B2, C1, C2);
   output O;
   input A1, A2, B1, B2, C1, C2;


   wire o2;
   wire o1;
   wire o3;
   or g1 (o1, B1, B2);
   or g3 (o2, A1, A2);
   or g4 (o3, C1, C2);
   nand3 g2 (O, o1, o2, o3);
endmodule


module  OAI22B2LEHMX1(O, A1, A2, B1B, B2B);
   output O;
   input A1, A2, B1B, B2B;


   wire o2;
   wire o1;
   or g1 (o1, A1, A2);
   nand g2 (o2, B1B, B2B);
   nand g3 (O, o1, o2);
endmodule


module  OAI22B2LEHMX2(O, A1, A2, B1B, B2B);
   output O;
   input A1, A2, B1B, B2B;


   wire o2;
   wire o1;
   or g1 (o1, A1, A2);
   nand g2 (o2, B1B, B2B);
   nand g3 (O, o1, o2);
endmodule


module  OAI22B2LEHMX3(O, A1, A2, B1B, B2B);
   output O;
   input A1, A2, B1B, B2B;


   wire o2;
   wire o1;
   or g1 (o1, A1, A2);
   nand g2 (o2, B1B, B2B);
   nand g3 (O, o1, o2);
endmodule


module  OAI22LEHMX1(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   or g1 (o1, B1, B2);
   or g2 (o2, A1, A2);
   nand g3 (O, o1, o2);
endmodule


module  OAI22LEHMX2(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   or g1 (o1, B1, B2);
   or g2 (o2, A1, A2);
   nand g3 (O, o1, o2);
endmodule


module  OAI22LEHMX3(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   or g1 (o1, B1, B2);
   or g2 (o2, A1, A2);
   nand g3 (O, o1, o2);
endmodule


module  OAI22LEHMX4(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   or g1 (o1, B1, B2);
   or g2 (o2, A1, A2);
   nand g3 (O, o1, o2);
endmodule


module  OAI22LEHMX6(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   or g1 (o1, B1, B2);
   or g2 (o2, A1, A2);
   nand g3 (O, o1, o2);
endmodule


module  OAI22M2HLEHMX4(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   or g1 (o1, B1, B2);
   or g2 (o2, A1, A2);
   nand g3 (O, o1, o2);
endmodule


module  OAI22M2HLEHMX6(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   or g1 (o1, B1, B2);
   or g2 (o2, A1, A2);
   nand g3 (O, o1, o2);
endmodule


module  OAI22M2HLEHMX8(O, A1, A2, B1, B2);
   output O;
   input A1, A2, B1, B2;


   wire o2;
   wire o1;
   or g1 (o1, B1, B2);
   or g2 (o2, A1, A2);
   nand g3 (O, o1, o2);
endmodule


module  OR2B1LEHMX1(O, I1, B1);
   output O;
   input I1, B1;


   wire i2;
   or g1 (O, I1, i2);
   not g2 (i2, B1);
endmodule


module  OR2B1LEHMX2(O, I1, B1);
   output O;
   input I1, B1;


   wire i2;
   or g1 (O, I1, i2);
   not g2 (i2, B1);
endmodule


module  OR2B1LEHMX3(O, I1, B1);
   output O;
   input I1, B1;


   wire i2;
   or g1 (O, I1, i2);
   not g2 (i2, B1);
endmodule


module  OR2B1LEHMX4(O, I1, B1);
   output O;
   input I1, B1;


   wire i2;
   or g1 (O, I1, i2);
   not g2 (i2, B1);
endmodule


module  OR2B1LEHMX6(O, I1, B1);
   output O;
   input I1, B1;


   wire i2;
   or g1 (O, I1, i2);
   not g2 (i2, B1);
endmodule


module  OR2B1LEHMX8(O, I1, B1);
   output O;
   input I1, B1;


   wire i2;
   or g1 (O, I1, i2);
   not g2 (i2, B1);
endmodule


module  OR2CKLEHMX1(O, I1, I2);
   output O;
   input I1, I2;


   or g1 (O, I1, I2);
endmodule


module  OR2CKLEHMX2(O, I1, I2);
   output O;
   input I1, I2;


   or g1 (O, I1, I2);
endmodule


module  OR2CKLEHMX3(O, I1, I2);
   output O;
   input I1, I2;


   or g1 (O, I1, I2);
endmodule


module  OR2CKLEHMX4(O, I1, I2);
   output O;
   input I1, I2;


   or g1 (O, I1, I2);
endmodule


module  OR2CKLEHMX6(O, I1, I2);
   output O;
   input I1, I2;


   or g1 (O, I1, I2);
endmodule


module  OR2CKLEHMX8(O, I1, I2);
   output O;
   input I1, I2;


   or g1 (O, I1, I2);
endmodule


module  OR2LEHMX1(O, I1, I2);
   output O;
   input I1, I2;


   or g1 (O, I1, I2);
endmodule


module  OR2LEHMX2(O, I1, I2);
   output O;
   input I1, I2;


   or g1 (O, I1, I2);
endmodule


module  OR2LEHMX3(O, I1, I2);
   output O;
   input I1, I2;


   or g1 (O, I1, I2);
endmodule


module  OR2LEHMX4(O, I1, I2);
   output O;
   input I1, I2;


   or g1 (O, I1, I2);
endmodule


module  OR2LEHMX6(O, I1, I2);
   output O;
   input I1, I2;


   or g1 (O, I1, I2);
endmodule


module  OR2LEHMX8(O, I1, I2);
   output O;
   input I1, I2;


   or g1 (O, I1, I2);
endmodule


module  OR3B1LEHMX1(O, I1, I2, B1);
   output O;
   input I1, I2, B1;


   wire i3;
   or3 g1 (O, I1, I2, i3);
   not g2 (i3, B1);
endmodule


module  OR3B1LEHMX2(O, I1, I2, B1);
   output O;
   input I1, I2, B1;


   wire i3;
   or3 g1 (O, I1, I2, i3);
   not g2 (i3, B1);
endmodule


module  OR3B1LEHMX3(O, I1, I2, B1);
   output O;
   input I1, I2, B1;


   wire i3;
   or3 g1 (O, I1, I2, i3);
   not g2 (i3, B1);
endmodule


module  OR3LEHMX1(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   or3 g1 (O, I1, I2, I3);
endmodule


module  OR3LEHMX2(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   or3 g1 (O, I1, I2, I3);
endmodule


module  OR3LEHMX3(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   or3 g1 (O, I1, I2, I3);
endmodule


module  OR3LEHMX4(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   or3 g1 (O, I1, I2, I3);
endmodule


module  OR3LEHMX6(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   or3 g1 (O, I1, I2, I3);
endmodule


module  OR3LEHMX8(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   or3 g1 (O, I1, I2, I3);
endmodule


module  OR4LEHMX1(O, I1, I2, I3, I4);
   output O;
   input I1, I2, I3, I4;


   or4 g1 (O, I1, I2, I3, I4);
endmodule


module  OR4LEHMX2(O, I1, I2, I3, I4);
   output O;
   input I1, I2, I3, I4;


   or4 g1 (O, I1, I2, I3, I4);
endmodule


module  OR4LEHMX3(O, I1, I2, I3, I4);
   output O;
   input I1, I2, I3, I4;


   or4 g1 (O, I1, I2, I3, I4);
endmodule


module  Q2DFFLEHMX1(Q1, Q2, D1, D2, CK);
   wire flag, flag1;
   output Q1, Q2;
   input D1, D2;
   input CK;
   wire vcc;
   assign vcc = 1;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   dffrsb_udp5 g1 (qt1, D1, CK, vcc, vcc, flag);
   dffrsb_udp5 g2 (qt2, D2, CK, vcc, vcc, flag1);
endmodule


module  Q2DFFLEHMX2(Q1, Q2, D1, D2, CK);
   wire flag, flag1;
   output Q1, Q2;
   input D1, D2;
   input CK;
   wire vcc;
   assign vcc = 1;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   dffrsb_udp5 g1 (qt1, D1, CK, vcc, vcc, flag);
   dffrsb_udp5 g2 (qt2, D2, CK, vcc, vcc, flag1);
endmodule


module  Q2DFFLEHMX3(Q1, Q2, D1, D2, CK);
   wire flag, flag1;
   output Q1, Q2;
   input D1, D2;
   input CK;
   wire vcc;
   assign vcc = 1;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   dffrsb_udp5 g1 (qt1, D1, CK, vcc, vcc, flag);
   dffrsb_udp5 g2 (qt2, D2, CK, vcc, vcc, flag1);
endmodule


module  Q2DFFRBLEHMX1(Q1, Q2, D1, D2, CK, RB);
   wire flag, flag1;
   output Q1, Q2;
   input D1, D2, CK, RB;
   wire vcc;
   assign vcc = 1;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   dffrsb_udp5 g1 (qt1, D1, CK, RB, vcc, flag);
   dffrsb_udp5 g2 (qt2, D2, CK, RB, vcc, flag1);
endmodule


module  Q2DFFRBLEHMX2(Q1, Q2, D1, D2, CK, RB);
   wire flag, flag1;
   output Q1, Q2;
   input D1, D2, CK, RB;
   wire vcc;
   assign vcc = 1;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   dffrsb_udp5 g1 (qt1, D1, CK, RB, vcc, flag);
   dffrsb_udp5 g2 (qt2, D2, CK, RB, vcc, flag1);
endmodule


module  Q2DFFRBLEHMX3(Q1, Q2, D1, D2, CK, RB);
   wire flag, flag1;
   output Q1, Q2;
   input D1, D2, CK, RB;
   wire vcc;
   assign vcc = 1;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   dffrsb_udp5 g1 (qt1, D1, CK, RB, vcc, flag);
   dffrsb_udp5 g2 (qt2, D2, CK, RB, vcc, flag1);
endmodule


module  Q2DFFRSBLEHMX1(Q1, Q2, D1, D2, CK, RB, SB);
   wire flag, flag1;
   output Q1, Q2;
   input D1, D2, CK, RB, SB;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   dffrsb_udp5 g1 (qt1, D1, CK, RB, SB, flag);
   dffrsb_udp5 g2 (qt2, D2, CK, RB, SB, flag1);
endmodule


module  Q2DFFRSBLEHMX2(Q1, Q2, D1, D2, CK, RB, SB);
   wire flag, flag1;
   output Q1, Q2;
   input D1, D2, CK, RB, SB;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   dffrsb_udp5 g1 (qt1, D1, CK, RB, SB, flag);
   dffrsb_udp5 g2 (qt2, D2, CK, RB, SB, flag1);
endmodule


module  Q2DFFRSBLEHMX3(Q1, Q2, D1, D2, CK, RB, SB);
   wire flag, flag1;
   output Q1, Q2;
   input D1, D2, CK, RB, SB;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   dffrsb_udp5 g1 (qt1, D1, CK, RB, SB, flag);
   dffrsb_udp5 g2 (qt2, D2, CK, RB, SB, flag1);
endmodule


module  Q2DFFSBLEHMX1(Q1, Q2, D1, D2, CK, SB);
   wire flag, flag1;
   output Q1, Q2;
   input D1, D2, CK, SB;
   wire vcc;
   assign vcc = 1;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   dffrsb_udp5 g1 (qt1, D1, CK, vcc, SB, flag);
   dffrsb_udp5 g2 (qt2, D2, CK, vcc, SB, flag1);
endmodule


module  Q2DFFSBLEHMX2(Q1, Q2, D1, D2, CK, SB);
   wire flag, flag1;
   output Q1, Q2;
   input D1, D2, CK, SB;
   wire vcc;
   assign vcc = 1;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   dffrsb_udp5 g1 (qt1, D1, CK, vcc, SB, flag);
   dffrsb_udp5 g2 (qt2, D2, CK, vcc, SB, flag1);
endmodule


module  Q2DFFSBLEHMX3(Q1, Q2, D1, D2, CK, SB);
   wire flag, flag1;
   output Q1, Q2;
   input D1, D2, CK, SB;
   wire vcc;
   assign vcc = 1;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   dffrsb_udp5 g1 (qt1, D1, CK, vcc, SB, flag);
   dffrsb_udp5 g2 (qt2, D2, CK, vcc, SB, flag1);
endmodule


module  Q2DFZLEHMX1(Q1, Q2, D1, D2, TD, CK, SEL);
   wire flag, flag1;
   output Q1, Q2;
   input D1, D2, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;
   wire data2;
   wire data1;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   dffrsb_udp5 g1 (qt1, data1, CK, vcc, vcc, flag);
   dffrsb_udp5 g2 (Q2, data2, CK, vcc, vcc, flag1);
   mux2_udp3 g5 (data1, D1, TD, SEL);
   mux2_udp3 g6 (data2, D2, qt1, SEL);
endmodule


module  Q2DFZLEHMX2(Q1, Q2, D1, D2, TD, CK, SEL);
   wire flag, flag1;
   output Q1, Q2;
   input D1, D2, CK, TD, SEL;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D1, d_D2, d_TD, d_SEL;


   wire data2;
   wire data1;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   dffrsb_udp5 g1 (qt1, data1, d_CK, vcc, vcc, flag);
   dffrsb_udp5 g2 (qt2, data2, d_CK, vcc, vcc, flag1);
   mux2_udp3 g5 (data1, d_D1, d_TD, d_SEL);
   mux2_udp3 g6 (data2, d_D2, qt1, d_SEL);
endmodule


module  Q2DFZLEHMX3(Q1, Q2, D1, D2, TD, CK, SEL);
   wire flag, flag1;
   output Q1, Q2;
   input D1, D2, CK, TD, SEL;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D1, d_D2, d_TD, d_SEL;


   wire data2;
   wire data1;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   dffrsb_udp5 g1 (qt1, data1, d_CK, vcc, vcc, flag);
   dffrsb_udp5 g2 (qt2, data2, d_CK, vcc, vcc, flag1);
   mux2_udp3 g5 (data1, d_D1, d_TD, d_SEL);
   mux2_udp3 g6 (data2, d_D2, qt1, d_SEL);
endmodule


module  Q2DFZRBLEHMX1(Q1, Q2, D1, D2, TD, CK, SEL, RB);
   wire flag, flag1;
   output Q1, Q2;
   input D1, D2, TD, CK, RB, SEL;
   wire D_flag;
   wire D_flag1;
   wire d_CK, d_D1, d_D2, d_SEL, d_TD;

   wire vcc;
   assign vcc = 1;


   wire data1;
   wire SEL_;
   wire qt1;
   wire data2;
   wire qt2;
   buf b5 (SEL_, d_SEL);
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   dffrsb_udp5 g1 (qt1, data1, d_CK, RB, vcc, flag);
   dffrsb_udp5 g2 (qt2, data2, d_CK, RB, vcc, flag1);
   mux2_udp3 g7 (data1, d_D1, d_TD, SEL_);
   mux2_udp3 g8 (data2, d_D2, qt1, SEL_);
endmodule


module  Q2DFZRBLEHMX2(Q1, Q2, D1, D2, TD, CK, SEL, RB);
   wire flag, flag1;
   output Q1, Q2;
   input D1, D2, TD, CK, RB, SEL;
   wire vcc;
   assign vcc = 1;

   wire data1;
   wire SEL_;
   wire qt1;
   wire data2;
   wire qt2;
   buf b5 (SEL_, SEL);
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   dffrsb_udp5 g1 (qt1, D1, CK, RB, vcc, flag);
   dffrsb_udp5 g2 (qt2, D2, CK, RB, vcc, flag1);
endmodule


module  Q2DFZRBLEHMX3(Q1, Q2, D1, D2, TD, CK, SEL, RB);
   wire flag, flag1;
   output Q1, Q2;
   input D1, D2, TD, CK, RB, SEL;
   wire D_flag;
   wire D_flag1;
   wire d_CK, d_D1, d_D2, d_SEL, d_TD;

   wire vcc;
   assign vcc = 1;


   wire data1;
   wire SEL_;
   wire qt1;
   wire data2;
   wire qt2;
   buf b5 (SEL_, d_SEL);
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   dffrsb_udp5 g1 (qt1, data1, d_CK, RB, vcc, flag);
   dffrsb_udp5 g2 (qt2, data2, d_CK, RB, vcc, flag1);
   mux2_udp3 g7 (data1, d_D1, d_TD, SEL_);
   mux2_udp3 g8 (data2, d_D2, qt1, SEL_);
endmodule


module  Q2DFZRSBLEHMX1(Q1, Q2, D1, D2, TD, CK, SEL, RB, SB);
   wire flag, flag1;
   output Q1, Q2;
   input D1, D2, TD, CK, RB, SB, SEL;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q1, D1, CK, RB, SB, flag);
   dffrsb_udp5 g2 (Q2, D2, CK, RB, SB, flag1);
endmodule


module  Q2DFZRSBLEHMX2(Q1, Q2, D1, D2, TD, CK, SEL, RB, SB);
   wire flag, flag1;
   output Q1, Q2;
   input D1, D2, TD, CK, RB, SB, SEL;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q1, D1, CK, RB, SB, flag);
   dffrsb_udp5 g2 (Q2, D2, CK, RB, SB, flag1);
endmodule


module  Q2DFZRSBLEHMX3(Q1, Q2, D1, D2, TD, CK, SEL, RB, SB);
   wire flag, flag1;
   output Q1, Q2;
   input D1, D2, TD, CK, RB, SB, SEL;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q1, D1, CK, RB, SB, flag);
   dffrsb_udp5 g2 (Q2, D2, CK, RB, SB, flag1);
endmodule


module  Q2DFZSBLEHMX1(Q1, Q2, D1, D2, TD, CK, SEL, SB);
   wire flag, flag1;
   output Q1, Q2;
   input D1, D2, TD, CK, SB, SEL;
   wire D_flag;
   wire d_CK, d_D1, d_D2, d_SEL, d_TD, D_flag1;

   wire vcc;
   assign vcc = 1;


   wire data1;
   wire SEL_;
   wire qt1;
   wire data2;
   wire qt2;
   buf b5 (SEL_, d_SEL);
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   dffrsb_udp5 g1 (qt1, data1, d_CK, vcc, SB, flag);
   dffrsb_udp5 g2 (qt2, data2, d_CK, vcc, SB, flag1);
   mux2_udp3 g7 (data1, d_D1, d_TD, SEL_);
   mux2_udp3 g8 (data2, d_D2, qt1, SEL_);
endmodule


module  Q2DFZSBLEHMX2(Q1, Q2, D1, D2, TD, CK, SEL, SB);
   wire flag, flag1; // Notifier flag
   output Q1, Q2;
   input D1, D2, TD, CK, SB, SEL;
   wire D_flag;
   wire d_CK, d_D1, d_D2, d_SEL, d_TD, D_flag1;

   wire vcc;
   assign vcc = 1;

//Function Block
   wire data1;
   wire SEL_;
   wire qt1;
   wire data2;
   wire qt2;
   buf b5 (SEL_, d_SEL);
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   dffrsb_udp5 g1 (qt1, data1, d_CK, vcc, SB, flag);
   dffrsb_udp5 g2 (qt2, data2, d_CK, vcc, SB, flag1);
   mux2_udp3 g7 (data1, d_D1, d_TD, SEL_);
   mux2_udp3 g8 (data2, d_D2, qt1, SEL_);
endmodule


module  Q2DFZSBLEHMX3(Q1, Q2, D1, D2, TD, CK, SEL, SB);
   wire flag, flag1;
   output Q1, Q2;
   input D1, D2, TD, CK, SB, SEL;
   wire D_flag;
   wire d_CK, d_D1, d_D2, d_SEL, d_TD, D_flag1;

   wire vcc;
   assign vcc = 1;


   wire data1;
   wire SEL_;
   wire qt1;
   wire data2;
   wire qt2;
   buf b5 (SEL_, d_SEL);
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   dffrsb_udp5 g1 (qt1, data1, d_CK, vcc, SB, flag);
   dffrsb_udp5 g2 (qt2, data2, d_CK, vcc, SB, flag1);
   mux2_udp3 g7 (data1, d_D1, d_TD, SEL_);
   mux2_udp3 g8 (data2, d_D2, qt1, SEL_);
endmodule


module  Q4DFFLEHMX1(Q1, Q2, Q3, Q4, D1, D2, D3, D4, CK);
   wire flag, flag1, flag2, flag3; // Notifier flag
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4;
   input CK;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D1, d_D2, d_D3, d_D4;

//Function Block
   wire qt4;
   wire qt3;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   buf g5 (Q3, qt3);
   buf g6 (Q4, qt4);
   dffrsb_udp5 g1 (qt1, d_D1, d_CK, vcc, vcc, flag);
   dffrsb_udp5 g2 (qt2, d_D2, d_CK, vcc, vcc, flag1);
   dffrsb_udp5 g7 (qt3, d_D3, d_CK, vcc, vcc, flag2);
   dffrsb_udp5 g8 (qt4, d_D4, d_CK, vcc, vcc, flag3);
endmodule


module  Q4DFFLEHMX2(Q1, Q2, Q3, Q4, D1, D2, D3, D4, CK);
   wire flag, flag1, flag2, flag3; // Notifier flag
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4;
   input CK;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D1, d_D2, d_D3, d_D4;

//Function Block
   wire qt4;
   wire qt3;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   buf g5 (Q3, qt3);
   buf g6 (Q4, qt4);
   dffrsb_udp5 g1 (qt1, d_D1, d_CK, vcc, vcc, flag);
   dffrsb_udp5 g2 (qt2, d_D2, d_CK, vcc, vcc, flag1);
   dffrsb_udp5 g7 (qt3, d_D3, d_CK, vcc, vcc, flag2);
   dffrsb_udp5 g8 (qt4, d_D4, d_CK, vcc, vcc, flag3);
endmodule


module  Q4DFFLEHMX3(Q1, Q2, Q3, Q4, D1, D2, D3, D4, CK);
   wire flag, flag1, flag2, flag3; // Notifier flag
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4;
   input CK;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D1, d_D2, d_D3, d_D4;

//Function Block
   wire qt4;
   wire qt3;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   buf g5 (Q3, qt3);
   buf g6 (Q4, qt4);
   dffrsb_udp5 g1 (qt1, d_D1, d_CK, vcc, vcc, flag);
   dffrsb_udp5 g2 (qt2, d_D2, d_CK, vcc, vcc, flag1);
   dffrsb_udp5 g7 (qt3, d_D3, d_CK, vcc, vcc, flag2);
   dffrsb_udp5 g8 (qt4, d_D4, d_CK, vcc, vcc, flag3);
endmodule


module  Q4DFFRBLEHMX1(Q1, Q2, Q3, Q4, D1, D2, D3, D4, CK, RB);
   wire flag, flag1, flag2, flag3; // Notifier flag
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4, CK, RB;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D1, d_D2, d_D3, d_D4;

//Function Block
   wire qt4;
   wire qt3;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   buf g5 (Q3, qt3);
   buf g6 (Q4, qt4);
   dffrsb_udp5 g1 (qt1, d_D1, d_CK, RB, vcc, flag);
   dffrsb_udp5 g2 (qt2, d_D2, d_CK, RB, vcc, flag1);
   dffrsb_udp5 g7 (qt3, d_D3, d_CK, RB, vcc, flag2);
   dffrsb_udp5 g8 (qt4, d_D4, d_CK, RB, vcc, flag3);
endmodule


module  Q4DFFRBLEHMX2(Q1, Q2, Q3, Q4, D1, D2, D3, D4, CK, RB);
   wire flag, flag1, flag2, flag3; // Notifier flag
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4, CK, RB;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D1, d_D2, d_D3, d_D4;

//Function Block
   wire qt4;
   wire qt3;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   buf g5 (Q3, qt3);
   buf g6 (Q4, qt4);
   dffrsb_udp5 g1 (qt1, d_D1, d_CK, RB, vcc, flag);
   dffrsb_udp5 g2 (qt2, d_D2, d_CK, RB, vcc, flag1);
   dffrsb_udp5 g7 (qt3, d_D3, d_CK, RB, vcc, flag2);
   dffrsb_udp5 g8 (qt4, d_D4, d_CK, RB, vcc, flag3);
endmodule


module  Q4DFFRBLEHMX3(Q1, Q2, Q3, Q4, D1, D2, D3, D4, CK, RB);
   wire flag, flag1, flag2, flag3; // Notifier flag
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4, CK, RB;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D1, d_D2, d_D3, d_D4;

//Function Block
   wire qt4;
   wire qt3;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   buf g5 (Q3, qt3);
   buf g6 (Q4, qt4);
   dffrsb_udp5 g1 (qt1, d_D1, d_CK, RB, vcc, flag);
   dffrsb_udp5 g2 (qt2, d_D2, d_CK, RB, vcc, flag1);
   dffrsb_udp5 g7 (qt3, d_D3, d_CK, RB, vcc, flag2);
   dffrsb_udp5 g8 (qt4, d_D4, d_CK, RB, vcc, flag3);
endmodule


module  Q4DFFRSBLEHMX1(Q1, Q2, Q3, Q4, D1, D2, D3, D4, CK, RB, SB);
   wire flag, flag1, flag2, flag3; // Notifier flag
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4, CK, RB, SB;

   wire d_CK, d_D1, d_D2, d_D3, d_D4;

//Function Block
   wire qt4;
   wire qt3;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   buf g5 (Q3, qt3);
   buf g6 (Q4, qt4);
   dffrsb_udp5 g1 (qt1, d_D1, d_CK, RB, SB, flag);
   dffrsb_udp5 g2 (qt2, d_D2, d_CK, RB, SB, flag1);
   dffrsb_udp5 g7 (qt3, d_D3, d_CK, RB, SB, flag2);
   dffrsb_udp5 g8 (qt4, d_D4, d_CK, RB, SB, flag3);
endmodule


module  Q4DFFRSBLEHMX2(Q1, Q2, Q3, Q4, D1, D2, D3, D4, CK, RB, SB);
   wire flag, flag1, flag2, flag3; // Notifier flag
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4, CK, RB, SB;

   wire d_CK, d_D1, d_D2, d_D3, d_D4;

//Function Block
   wire qt4;
   wire qt3;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   buf g5 (Q3, qt3);
   buf g6 (Q4, qt4);
   dffrsb_udp5 g1 (qt1, d_D1, d_CK, RB, SB, flag);
   dffrsb_udp5 g2 (qt2, d_D2, d_CK, RB, SB, flag1);
   dffrsb_udp5 g7 (qt3, d_D3, d_CK, RB, SB, flag2);
   dffrsb_udp5 g8 (qt4, d_D4, d_CK, RB, SB, flag3);
endmodule


module  Q4DFFRSBLEHMX3(Q1, Q2, Q3, Q4, D1, D2, D3, D4, CK, RB, SB);
   wire flag, flag1, flag2, flag3; // Notifier flag
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4, CK, RB, SB;

   wire d_CK, d_D1, d_D2, d_D3, d_D4;

//Function Block
   wire qt4;
   wire qt3;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   buf g5 (Q3, qt3);
   buf g6 (Q4, qt4);
   dffrsb_udp5 g1 (qt1, d_D1, d_CK, RB, SB, flag);
   dffrsb_udp5 g2 (qt2, d_D2, d_CK, RB, SB, flag1);
   dffrsb_udp5 g7 (qt3, d_D3, d_CK, RB, SB, flag2);
   dffrsb_udp5 g8 (qt4, d_D4, d_CK, RB, SB, flag3);
endmodule


module  Q4DFFSBLEHMX1(Q1, Q2, Q3, Q4, D1, D2, D3, D4, CK, SB);
   wire flag, flag1, flag2, flag3; // Notifier flag
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4, CK, SB;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D1, d_D2, d_D3, d_D4;

//Function Block
   wire qt4;
   wire qt3;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   buf g5 (Q3, qt3);
   buf g6 (Q4, qt4);
   dffrsb_udp5 g1 (qt1, d_D1, d_CK, vcc, SB, flag);
   dffrsb_udp5 g2 (qt2, d_D2, d_CK, vcc, SB, flag1);
   dffrsb_udp5 g7 (qt3, d_D3, d_CK, vcc, SB, flag2);
   dffrsb_udp5 g8 (qt4, d_D4, d_CK, vcc, SB, flag3);
endmodule


module  Q4DFFSBLEHMX2(Q1, Q2, Q3, Q4, D1, D2, D3, D4, CK, SB);
   wire flag, flag1, flag2, flag3; // Notifier flag
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4, CK, SB;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D1, d_D2, d_D3, d_D4;

//Function Block
   wire qt4;
   wire qt3;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   buf g5 (Q3, qt3);
   buf g6 (Q4, qt4);
   dffrsb_udp5 g1 (qt1, d_D1, d_CK, vcc, SB, flag);
   dffrsb_udp5 g2 (qt2, d_D2, d_CK, vcc, SB, flag1);
   dffrsb_udp5 g7 (qt3, d_D3, d_CK, vcc, SB, flag2);
   dffrsb_udp5 g8 (qt4, d_D4, d_CK, vcc, SB, flag3);
endmodule


module  Q4DFFSBLEHMX3(Q1, Q2, Q3, Q4, D1, D2, D3, D4, CK, SB);
   wire flag, flag1, flag2, flag3; // Notifier flag
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4, CK, SB;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D1, d_D2, d_D3, d_D4;

//Function Block
   wire qt4;
   wire qt3;
   wire qt1;
   wire qt2;
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   buf g5 (Q3, qt3);
   buf g6 (Q4, qt4);
   dffrsb_udp5 g1 (qt1, d_D1, d_CK, vcc, SB, flag);
   dffrsb_udp5 g2 (qt2, d_D2, d_CK, vcc, SB, flag1);
   dffrsb_udp5 g7 (qt3, d_D3, d_CK, vcc, SB, flag2);
   dffrsb_udp5 g8 (qt4, d_D4, d_CK, vcc, SB, flag3);
endmodule


module  Q4DFZLEHMX1(Q1, Q2, Q3, Q4, D1, D2, D3, D4, TD, CK, SEL);
   wire flag, flag1, flag2, flag3;
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q1, D1, CK, vcc, vcc, flag);
   dffrsb_udp5 g2 (Q2, D2, CK, vcc, vcc, flag1);
   dffrsb_udp5 g7 (Q3, D3, CK, vcc, vcc, flag2);
   dffrsb_udp5 g8 (Q4, D4, CK, vcc, vcc, flag3);
endmodule


module  Q4DFZLEHMX2(Q1, Q2, Q3, Q4, D1, D2, D3, D4, TD, CK, SEL);
   wire flag, flag1, flag2, flag3;
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q1, D1, CK, vcc, vcc, flag);
   dffrsb_udp5 g2 (Q2, D2, CK, vcc, vcc, flag1);
   dffrsb_udp5 g7 (Q3, D3, CK, vcc, vcc, flag2);
   dffrsb_udp5 g8 (Q4, D4, CK, vcc, vcc, flag3);
endmodule


module  Q4DFZLEHMX3(Q1, Q2, Q3, Q4, D1, D2, D3, D4, TD, CK, SEL);
   wire flag, flag1, flag2, flag3;
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q1, D1, CK, vcc, vcc, flag);
   dffrsb_udp5 g2 (Q2, D2, CK, vcc, vcc, flag1);
   dffrsb_udp5 g7 (Q3, D3, CK, vcc, vcc, flag2);
   dffrsb_udp5 g8 (Q4, D4, CK, vcc, vcc, flag3);
endmodule


module  Q4DFZRBLEHMX1(Q1, Q2, Q3, Q4, D1, D2, D3, D4, TD, CK, SEL, RB);
   wire flag, flag1, flag2, flag3; // Notifier flag
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4, TD, CK, RB, SEL;
   wire D_flag;
   wire D_flag1;
   wire d_CK, d_D1, d_D2, d_D3, d_D4, d_SEL, d_TD;

   wire vcc;
   assign vcc = 1;

//Function Block
   wire qt4;
   wire data1;
   wire data4;
   wire qt3;
   wire SEL_;
   wire qt1;
   wire data3;
   wire data2;
   wire qt2;
   buf b5 (SEL_, d_SEL);
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   buf g5 (Q3, qt3);
   buf g6 (Q4, qt4);
   dffrsb_udp5 g1 (qt1, data1, d_CK, RB, vcc, flag);
   dffrsb_udp5 g2 (qt2, data2, d_CK, RB, vcc, flag1);
   dffrsb_udp5 g7 (qt3, data3, d_CK, RB, vcc, flag2);
   dffrsb_udp5 g8 (qt4, data4, d_CK, RB, vcc, flag3);
   mux2_udp3 g9 (data1, d_D1, d_TD, SEL_);
   mux2_udp3 g10 (data2, d_D2, qt1, SEL_);
   mux2_udp3 g11 (data3, d_D3, qt2, SEL_);
   mux2_udp3 g12 (data4, d_D4, qt3, SEL_);
endmodule


module  Q4DFZRBLEHMX2(Q1, Q2, Q3, Q4, D1, D2, D3, D4, TD, CK, SEL, RB);
   wire flag, flag1, flag2, flag3;
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4, TD, CK, RB, SEL;
   wire D_flag;
   wire D_flag1;
   wire d_CK, d_D1, d_D2, d_D3, d_D4, d_SEL, d_TD;

   wire vcc;
   assign vcc = 1;


   wire qt4;
   wire data1;
   wire data4;
   wire qt3;
   wire SEL_;
   wire qt1;
   wire data3;
   wire data2;
   wire qt2;
   buf b5 (SEL_, d_SEL);
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   buf g5 (Q3, qt3);
   buf g6 (Q4, qt4);
   dffrsb_udp5 g1 (qt1, data1, d_CK, RB, vcc, flag);
   dffrsb_udp5 g2 (qt2, data2, d_CK, RB, vcc, flag1);
   dffrsb_udp5 g7 (qt3, data3, d_CK, RB, vcc, flag2);
   dffrsb_udp5 g8 (qt4, data4, d_CK, RB, vcc, flag3);
   mux2_udp3 g9 (data1, d_D1, d_TD, SEL_);
   mux2_udp3 g10 (data2, d_D2, qt1, SEL_);
   mux2_udp3 g11 (data3, d_D3, qt2, SEL_);
   mux2_udp3 g12 (data4, d_D4, qt3, SEL_);
endmodule


module  Q4DFZRBLEHMX3(Q1, Q2, Q3, Q4, D1, D2, D3, D4, TD, CK, SEL, RB);
   wire flag, flag1, flag2, flag3; // Notifier flag
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4, TD, CK, RB, SEL;
   wire D_flag;
   wire D_flag1;
   wire d_CK, d_D1, d_D2, d_D3, d_D4, d_SEL, d_TD;

   wire vcc;
   assign vcc = 1;

//Function Block
   wire qt4;
   wire data1;
   wire data4;
   wire qt3;
   wire SEL_;
   wire qt1;
   wire data3;
   wire data2;
   wire qt2;
   buf b5 (SEL_, d_SEL);
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   buf g5 (Q3, qt3);
   buf g6 (Q4, qt4);
   dffrsb_udp5 g1 (qt1, data1, d_CK, RB, vcc, flag);
   dffrsb_udp5 g2 (qt2, data2, d_CK, RB, vcc, flag1);
   dffrsb_udp5 g7 (qt3, data3, d_CK, RB, vcc, flag2);
   dffrsb_udp5 g8 (qt4, data4, d_CK, RB, vcc, flag3);
   mux2_udp3 g9 (data1, d_D1, d_TD, SEL_);
   mux2_udp3 g10 (data2, d_D2, qt1, SEL_);
   mux2_udp3 g11 (data3, d_D3, qt2, SEL_);
   mux2_udp3 g12 (data4, d_D4, qt3, SEL_);
endmodule


module  Q4DFZRSBLEHMX1(Q1, Q2, Q3, Q4, D1, D2, D3, D4, TD, CK, SEL, RB, SB);
   wire flag, flag1, flag2, flag3;
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4, TD, CK, RB, SB, SEL;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q1, D1, CK, RB, SB, flag);
   dffrsb_udp5 g2 (Q2, D2, CK, RB, SB, flag1);
   dffrsb_udp5 g7 (Q3, D3, CK, RB, SB, flag2);
   dffrsb_udp5 g8 (Q4, D4, CK, RB, SB, flag3);
endmodule


module  Q4DFZRSBLEHMX2(Q1, Q2, Q3, Q4, D1, D2, D3, D4, TD, CK, SEL, RB, SB);
   wire flag, flag1, flag2, flag3;
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4, TD, CK, RB, SB, SEL;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q1, D1, CK, RB, SB, flag);
   dffrsb_udp5 g2 (Q2, D2, CK, RB, SB, flag1);
   dffrsb_udp5 g7 (Q3, D3, CK, RB, SB, flag2);
   dffrsb_udp5 g8 (Q4, D4, CK, RB, SB, flag3);
endmodule


module  Q4DFZRSBLEHMX3(Q1, Q2, Q3, Q4, D1, D2, D3, D4, TD, CK, SEL, RB, SB);
   wire flag, flag1, flag2, flag3;
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4, TD, CK, RB, SB, SEL;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q1, D1, CK, RB, SB, flag);
   dffrsb_udp5 g2 (Q2, D2, CK, RB, SB, flag1);
   dffrsb_udp5 g7 (Q3, D3, CK, RB, SB, flag2);
   dffrsb_udp5 g8 (Q4, D4, CK, RB, SB, flag3);
endmodule


module  Q4DFZSBLEHMX1(Q1, Q2, Q3, Q4, D1, D2, D3, D4, TD, CK, SEL, SB);
   wire flag, flag1, flag2, flag3; // Notifier flag
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4, TD, CK, SB, SEL;
   wire D_flag;
   wire d_CK, d_D1, d_D2, d_D3, d_D4, d_SEL, d_TD, D_flag1;

   wire vcc;
   assign vcc = 1;

//Function Block
   wire qt4;
   wire data1;
   wire data4;
   wire qt3;
   wire SEL_;
   wire qt1;
   wire data3;
   wire data2;
   wire qt2;
   buf b5 (SEL_, d_SEL);
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   buf g6 (Q3, qt3);
   buf g9 (Q4, qt4);
   dffrsb_udp5 g1 (qt1, data1, d_CK, vcc, SB, flag);
   dffrsb_udp5 g2 (qt2, data2, d_CK, vcc, SB, flag1);
   dffrsb_udp5 g7 (qt3, data3, d_CK, vcc, SB, flag2);
   dffrsb_udp5 g8 (qt4, data4, d_CK, vcc, SB, flag3);
   mux2_udp3 g10 (data1, d_D1, d_TD, SEL_);
   mux2_udp3 g11 (data2, d_D2, qt1, SEL_);
   mux2_udp3 g12 (data3, d_D3, qt2, SEL_);
   mux2_udp3 g13 (data4, d_D4, qt3, SEL_);
endmodule


module  Q4DFZSBLEHMX2(Q1, Q2, Q3, Q4, D1, D2, D3, D4, TD, CK, SEL, SB);
   wire flag, flag1, flag2, flag3;
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4, TD, CK, SB, SEL;
   wire D_flag;
   wire d_CK, d_D1, d_D2, d_D3, d_D4, d_SEL, d_TD, D_flag1;

   wire vcc;
   assign vcc = 1;


   wire qt4;
   wire data1;
   wire data4;
   wire qt3;
   wire SEL_;
   wire qt1;
   wire data3;
   wire data2;
   wire qt2;
   buf b5 (SEL_, d_SEL);
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   buf g6 (Q3, qt3);
   buf g9 (Q4, qt4);
   dffrsb_udp5 g1 (qt1, data1, d_CK, vcc, SB, flag);
   dffrsb_udp5 g2 (qt2, data2, d_CK, vcc, SB, flag1);
   dffrsb_udp5 g7 (qt3, data3, d_CK, vcc, SB, flag2);
   dffrsb_udp5 g8 (qt4, data4, d_CK, vcc, SB, flag3);
   mux2_udp3 g10 (data1, d_D1, d_TD, SEL_);
   mux2_udp3 g11 (data2, d_D2, qt1, SEL_);
   mux2_udp3 g12 (data3, d_D3, qt2, SEL_);
   mux2_udp3 g13 (data4, d_D4, qt3, SEL_);
endmodule


module  Q4DFZSBLEHMX3(Q1, Q2, Q3, Q4, D1, D2, D3, D4, TD, CK, SEL, SB);
   wire flag, flag1, flag2, flag3; // Notifier flag
   output Q1, Q2, Q3, Q4;
   input D1, D2, D3, D4, TD, CK, SB, SEL;
   wire D_flag;
   wire d_CK, d_D1, d_D2, d_D3, d_D4, d_SEL, d_TD, D_flag1;

   wire vcc;
   assign vcc = 1;

//Function Block
   wire qt4;
   wire data1;
   wire data4;
   wire qt3;
   wire SEL_;
   wire qt1;
   wire data3;
   wire data2;
   wire qt2;
   buf b5 (SEL_, d_SEL);
   buf g3 (Q1, qt1);
   buf g4 (Q2, qt2);
   buf g6 (Q3, qt3);
   buf g9 (Q4, qt4);
   dffrsb_udp5 g1 (qt1, data1, d_CK, vcc, SB, flag);
   dffrsb_udp5 g2 (qt2, data2, d_CK, vcc, SB, flag1);
   dffrsb_udp5 g7 (qt3, data3, d_CK, vcc, SB, flag2);
   dffrsb_udp5 g8 (qt4, data4, d_CK, vcc, SB, flag3);
   mux2_udp3 g10 (data1, d_D1, d_TD, SEL_);
   mux2_udp3 g11 (data2, d_D2, qt1, SEL_);
   mux2_udp3 g12 (data3, d_D3, qt2, SEL_);
   mux2_udp3 g13 (data4, d_D4, qt3, SEL_);
endmodule


module  QBDFCLRBNLEHMX1(QB, D, CK, RB, LD);
   wire flag;
   assign flag = 0;
   output QB;
   input D, CK, RB, LD;
   wire vcc;
   assign vcc = 1;
   not g1 (QB, qt);
   dffrsb_udp5 g2 (qt, d1, CK, vcc, vcc, flag);
   and g4 (d1, D, RB);
endmodule


module  QBDFCLRBNLEHMX2(QB, D, CK, RB, LD);
    wire flag;
    assign flag = 0;
    output QB;
    input D, CK, RB, LD;
    wire vcc;
    assign vcc = 1;
    not g1 (QB, qt);
    dffrsb_udp5 g2 (qt, d1, CK, vcc, vcc, flag);
    and g4 (d1, D, RB);
endmodule


module  QBDFCLRBNLEHMX3(QB, D, CK, RB, LD);
    wire flag;
    assign flag = 0;
    output QB;
    input D, CK, RB, LD;
    wire vcc;
    assign vcc = 1;
    not g1 (QB, qt);
    dffrsb_udp5 g2 (qt, d1, CK, vcc, vcc, flag);
    and g4 (d1, D, RB);
endmodule


module  QBDFCRBNLEHMX1(QB, D, CK, RB);
   wire flag;
   assign flag = 0; // Notifier flag
   output QB;
   input D, CK, RB;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D, d_RB;

//Function Block
   wire Q;
   wire qt;
   wire d1;
   buf g3 (Q, qt);
   not g1 (QB, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, vcc, vcc, flag);
   and g4 (d1, d_D, d_RB);
endmodule


module  QBDFCRBNLEHMX2(QB, D, CK, RB);
   wire flag;
   assign flag = 0;
   output QB;
   input D, CK, RB;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D, d_RB;


   wire qt;
   wire d1;
   not g1 (QB, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, vcc, vcc, flag);
   and g4 (d1, d_D, d_RB);
endmodule


module  QBDFCRBNLEHMX3(QB, D, CK, RB);
   wire flag;
   assign flag = 0; // Notifier flag
   output QB;
   input D, CK, RB;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D, d_RB;

//Function Block
   wire Q;
   wire qt;
   wire d1;
   buf g3 (Q, qt);
   not g1 (QB, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, vcc, vcc, flag);
   and g4 (d1, d_D, d_RB);
endmodule


module  QBDFFNLEHMX1(QB, D, CK);
   wire flag;
   assign flag = 0;
   output QB;
   input D, CK;
   wire vcc;
   assign vcc = 1;
   wire qt;
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, D, CK, vcc, vcc, flag);
endmodule


module  QBDFFNLEHMX2(QB, D, CK);
   wire flag;
   assign flag = 0;
   output QB;
   input D, CK;
   wire vcc;
   assign vcc = 1;
   wire qt;
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, D, CK, vcc, vcc, flag);
endmodule


module  QBDFFNLEHMX3(QB, D, CK);
   wire flag;
   assign flag = 0;
   output QB;
   input D, CK;
   wire vcc;
   assign vcc = 1;
   wire qt;
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, D, CK, vcc, vcc, flag);
endmodule


module  QBDFFRBNLEHMX1(QB, D, CK, RB);

   wire flag;
   assign flag = 0; // Notifier flag
   output QB;
   input D, CK, RB;

   wire vcc;
   assign vcc = 1;
//   wire D_flag;
//   wire D_flag1;

   wire d_CK, d_D;

//Function Block
   wire qt;
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, d_D, d_CK, RB, vcc, flag);
endmodule


module  QBDFFRBNLEHMX2(QB, D, CK, RB);

   wire flag;
   assign flag = 0; // Notifier flag
   output QB;
   input D, CK, RB;

   wire vcc;
   assign vcc = 1;
//   wire D_flag;
//   wire D_flag1;

   wire d_CK, d_D;

//Function Block
   wire qt;
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, d_D, d_CK, RB, vcc, flag);
endmodule


module  QBDFFRBNLEHMX3(QB, D, CK, RB);

   wire flag;
   assign flag = 0; // Notifier flag
   output QB;
   input D, CK, RB;

   wire vcc;
   assign vcc = 1;
//   wire D_flag;
//   wire D_flag1;

   wire d_CK, d_D;

//Function Block
   wire qt;
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, d_D, d_CK, RB, vcc, flag);
endmodule


module  QBDFFRSBNLEHMX1(QB, D, CK, RB, SB);
   wire flag;
   assign flag = 0; // Notifier flag
   output QB;
   input D, CK, SB, RB;

   wire d_CK, d_D;

//Function Block
   wire qt;
   wire rb_and_sb;
   wire rs;
   wire qb1;
   not g1 (qb1, qt);
   dffrsb_udp5 g2 (qt, d_D, d_CK, RB, SB, flag);
   and g7 (rb_and_sb, RB, SB);
   or g5 (rs, RB, SB);
   and g6 (QB, qb1, rs);
endmodule


module  QBDFFRSBNLEHMX2(QB, D, CK, RB, SB);
   wire flag;
   assign flag = 0;
   output QB;
   input D, CK, SB, RB;

   wire d_CK, d_D;


   wire qt;
   wire rb_and_sb;
   wire rs;
   wire qb1;
   not g1 (qb1, qt);
   dffrsb_udp5 g2 (qt, d_D, d_CK, RB, SB, flag);
   and g7 (rb_and_sb, RB, SB);
   or g5 (rs, RB, SB);
   and g6 (QB, qb1, rs);
endmodule


module  QBDFFRSBNLEHMX3(QB, D, CK, RB, SB);
   wire flag;
   assign flag = 0; // Notifier flag
   output QB;
   input D, CK, SB, RB;

   wire d_CK, d_D;

//Function Block
   wire qt;
   wire rb_and_sb;
   wire rs;
   wire qb1;
   not g1 (qb1, qt);
   dffrsb_udp5 g2 (qt, d_D, d_CK, RB, SB, flag);
   and g7 (rb_and_sb, RB, SB);
   or g5 (rs, RB, SB);
   and g6 (QB, qb1, rs);
endmodule


module  QBDFFSBNLEHMX1(QB, D, CK, SB);
   wire flag;
   assign flag = 0;
   output QB;
   input D, CK, SB;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D;


   wire qt;
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, d_D, d_CK, vcc, SB, flag);
endmodule


module  QBDFFSBNLEHMX2(QB, D, CK, SB);
   wire flag;
   assign flag = 0;
   output QB;
   input D, CK, SB;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D;


   wire qt;
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, d_D, d_CK, vcc, SB, flag);
endmodule


module  QBDFFSBNLEHMX3(QB, D, CK, SB);
   wire flag;
   assign flag = 0;
   output QB;
   input D, CK, SB;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D;


   wire qt;
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, d_D, d_CK, vcc, SB, flag);
endmodule


module  QBDFZCLRBNLEHMX1(QB, D, TD, CK, RB, SEL, LD);
   wire flag;
   assign flag = 0;
   wire  D_flag1, RB_flag1, SEL_flag1, LD_flag1;
   wire D_flag, RB_flag, SEL_flag, LD_flag;
   output QB;
   input D, TD, CK, RB, SEL, LD;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D, d_LD, d_RB, d_SEL, d_TD;


   wire D_;
   wire di;
   wire qt;
   wire d1;
   wire LD_;
   wire D_tmp;
   wire RB_;
   wire TD_;
   wire SEL_;
   buf b1 (D_, d_D);
   buf b2 (TD_, d_TD);
   buf b3 (RB_, d_RB);
   buf b4 (SEL_, d_SEL);
   buf b5 (LD_, d_LD);
   not g1 (QB, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, vcc, vcc, flag);
   and g4 (D_tmp, di, RB_);
   mux2_udp3 g5 (di, qt, D_, LD_);
   mux2_udp3 g9 (d1, D_tmp, TD_, SEL_);
endmodule


module  QBDFZCLRBNLEHMX2(QB, D, TD, CK, RB, SEL, LD);
   wire flag;
   assign flag = 0;
   wire  D_flag1, RB_flag1, SEL_flag1, LD_flag1;
   wire D_flag, RB_flag, SEL_flag, LD_flag;
   output QB;
   input D, TD, CK, RB, SEL, LD;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D, d_LD, d_RB, d_SEL, d_TD;


   wire D_;
   wire di;
   wire qt;
   wire d1;
   wire LD_;
   wire D_tmp;
   wire RB_;
   wire TD_;
   wire SEL_;
   buf b1 (D_, d_D);
   buf b2 (TD_, d_TD);
   buf b3 (RB_, d_RB);
   buf b4 (SEL_, d_SEL);
   buf b5 (LD_, d_LD);
   not g1 (QB, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, vcc, vcc, flag);
   and g4 (D_tmp, di, RB_);
   mux2_udp3 g5 (di, qt, D_, LD_);
   mux2_udp3 g9 (d1, D_tmp, TD_, SEL_);
endmodule


module  QBDFZCLRBNLEHMX3(QB, D, TD, CK, RB, SEL, LD);
   wire flag;
   assign flag = 0;
   wire  D_flag1, RB_flag1, SEL_flag1, LD_flag1;
   wire D_flag, RB_flag, SEL_flag, LD_flag;
   output QB;
   input D, TD, CK, RB, SEL, LD;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D, d_LD, d_RB, d_SEL, d_TD;


   wire D_;
   wire di;
   wire qt;
   wire d1;
   wire LD_;
   wire D_tmp;
   wire RB_;
   wire TD_;
   wire SEL_;
   buf b1 (D_, d_D);
   buf b2 (TD_, d_TD);
   buf b3 (RB_, d_RB);
   buf b4 (SEL_, d_SEL);
   buf b5 (LD_, d_LD);
   not g1 (QB, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, vcc, vcc, flag);
   and g4 (D_tmp, di, RB_);
   mux2_udp3 g5 (di, qt, D_, LD_);
   mux2_udp3 g9 (d1, D_tmp, TD_, SEL_);
endmodule


module  QBDFZCRBNLEHMX1(QB, D, TD, CK, SEL, RB);
   wire flag;
   assign flag = 0;
   wire  D_flag1,RB_flag1,SEL_flag1;
   wire D_flag,RB_flag,SEL_flag;
   output QB;
   input D, TD, CK, SEL, RB;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D, d_RB, d_SEL, d_TD;


   wire D_;
   wire qt;
   wire d1;
   wire D_tmp;
   wire RB_;
   wire TD_;
   wire SEL_;
   buf b1 (D_, d_D);
   buf b2 (TD_, d_TD);
   buf b3 (RB_, d_RB);
   buf b4 (SEL_, d_SEL);
   not g1 (QB, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, vcc, vcc, flag);
   and g4 (D_tmp, D_, RB_);
   mux2_udp3 g5 (d1, D_tmp, TD_, SEL_);
endmodule


module  QBDFZCRBNLEHMX2(QB, D, TD, CK, SEL, RB);
   wire flag;
   assign flag = 0; // Notifier flag
   wire  D_flag1,RB_flag1,SEL_flag1;
   wire D_flag,RB_flag,SEL_flag;
   output QB;
   input D, TD, CK, SEL, RB;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D, d_RB, d_SEL, d_TD;

//Function Block
   wire D_;
   wire qt;
   wire d1;
   wire D_tmp;
   wire RB_;
   wire TD_;
   wire SEL_;
   wire Q;
   buf b1 (D_, d_D);
   buf b2 (TD_, d_TD);
   buf b3 (RB_, d_RB);
   buf b4 (SEL_, d_SEL);
   buf g3 (Q, qt);
   not g1 (QB, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, vcc, vcc, flag);
   and g4 (D_tmp, D_, RB_);
   mux2_udp3 g5 (d1, D_tmp, TD_, SEL_);
endmodule


module  QBDFZCRBNLEHMX3(QB, D, TD, CK, SEL, RB);
   wire flag;
   assign flag = 0;
   wire  D_flag1,RB_flag1,SEL_flag1;
   wire D_flag,RB_flag,SEL_flag;
   output QB;
   input D, TD, CK, SEL, RB;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D, d_RB, d_SEL, d_TD;


   wire D_;
   wire qt;
   wire d1;
   wire D_tmp;
   wire RB_;
   wire TD_;
   wire SEL_;
   buf b1 (D_, d_D);
   buf b2 (TD_, d_TD);
   buf b3 (RB_, d_RB);
   buf b4 (SEL_, d_SEL);
   not g1 (QB, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, vcc, vcc, flag);
   and g4 (D_tmp, D_, RB_);
   mux2_udp3 g5 (d1, D_tmp, TD_, SEL_);
endmodule


module  QBDFZNLEHMX1(QB, D, TD, CK, SEL);
   wire flag;
   assign flag = 0; // Notifier flag
   output QB;
   input D, CK, TD, SEL;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D, d_TD, d_SEL;

//Function Block
   wire qt;
   wire d1;
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, vcc, vcc, flag);
   mux2_udp3 g4 (d1, d_D, d_TD, d_SEL);
endmodule


module  QBDFZNLEHMX2(QB, D, TD, CK, SEL);
   wire flag;
   assign flag = 0;
   output QB;
   input D, CK, TD, SEL;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D, d_TD, d_SEL;


   wire qt;
   wire d1;
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, vcc, vcc, flag);
   mux2_udp3 g4 (d1, d_D, d_TD, d_SEL);
endmodule


module  QBDFZNLEHMX3(QB, D, TD, CK, SEL);
   wire flag;
   assign flag = 0; // Notifier flag
   output QB;
   input D, CK, TD, SEL;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D, d_TD, d_SEL;

//Function Block
   wire qt;
   wire d1;
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, vcc, vcc, flag);
   mux2_udp3 g4 (d1, d_D, d_TD, d_SEL);
endmodule


module  QBDFZRBNLEHMX1(QB, D, TD, CK, SEL, RB);

   wire flag;
   assign flag = 0;
   output QB;
   input D, CK, TD, SEL, RB;

   wire vcc;
   assign vcc = 1;
   wire D_flag;
   wire D_flag1;

   wire d_CK, d_D, d_TD, d_SEL;


   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, d_SEL);
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, RB, vcc, flag);
   mux2_udp3 g4 (d1, d_D, d_TD, d_SEL);
endmodule


module  QBDFZRBNLEHMX2(QB, D, TD, CK, SEL, RB);

   wire flag;
   assign flag = 0; // Notifier flag
   output QB;
   input D, CK, TD, SEL, RB;

   wire vcc;
   assign vcc = 1;
   wire D_flag;
   wire D_flag1;

   wire d_CK, d_D, d_TD, d_SEL;

//Function Block
   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, d_SEL);
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, RB, vcc, flag);
   mux2_udp3 g4 (d1, d_D, d_TD, d_SEL);
endmodule


module  QBDFZRBNLEHMX3(QB, D, TD, CK, SEL, RB);

   wire flag;
   assign flag = 0;
   output QB;
   input D, CK, TD, SEL, RB;

   wire vcc;
   assign vcc = 1;
   wire D_flag;
   wire D_flag1;

   wire d_CK, d_D, d_TD, d_SEL;


   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, d_SEL);
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, RB, vcc, flag);
   mux2_udp3 g4 (d1, d_D, d_TD, d_SEL);
endmodule


module  QBDFZRSBNLEHMX1(QB, D, TD, CK, SEL, RB, SB);
   wire flag;
   assign flag = 0; // Notifier flag
   output QB;
   input D, CK, TD, SB, SEL, RB;
   wire D_flag;
   wire D_flag1;
   wire d_CK, d_D, d_SEL, d_TD;

//Function Block
   wire rs;
   wire qt;
   wire d1;
   wire SEL_;
   wire rb_and_sb;
   wire qb1;
   buf b3 (SEL_, d_SEL);
   not g1 (qb1, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, RB, SB, flag);
   and g7 (rb_and_sb, RB, SB);
   or g5 (rs, RB, SB);
   and g6 (QB, qb1, rs);
   mux2_udp3 g4 (d1, d_D, d_TD, SEL_);
endmodule


module  QBDFZRSBNLEHMX2(QB, D, TD, CK, SEL, RB, SB);
   wire flag;
   assign flag = 0; // Notifier flag
   output QB;
   input D, CK, TD, SB, SEL, RB;
   wire D_flag;
   wire D_flag1;
   wire d_CK, d_D, d_SEL, d_TD;

//Function Block
   wire rs;
   wire qt;
   wire d1;
   wire SEL_;
   wire rb_and_sb;
   wire qb1;
   buf b3 (SEL_, d_SEL);
   not g1 (qb1, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, RB, SB, flag);
   and g7 (rb_and_sb, RB, SB);
   or g5 (rs, RB, SB);
   and g6 (QB, qb1, rs);
   mux2_udp3 g4 (d1, d_D, d_TD, SEL_);
endmodule


module  QBDFZRSBNLEHMX3(QB, D, TD, CK, SEL, RB, SB);
   wire flag;
   assign flag = 0; // Notifier flag
   output QB;
   input D, CK, TD, SB, SEL, RB;
   wire D_flag;
   wire D_flag1;
   wire d_CK, d_D, d_SEL, d_TD;

//Function Block
   wire rs;
   wire qt;
   wire d1;
   wire SEL_;
   wire rb_and_sb;
   wire qb1;
   buf b3 (SEL_, d_SEL);
   not g1 (qb1, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, RB, SB, flag);
   and g7 (rb_and_sb, RB, SB);
   or g5 (rs, RB, SB);
   and g6 (QB, qb1, rs);
   mux2_udp3 g4 (d1, d_D, d_TD, SEL_);
endmodule


module  QBDFZSBNLEHMX1(QB, D, TD, CK, SEL, SB);
   wire flag;
   assign flag = 0; // Notifier flag
   output QB;
   input D, CK, TD, SEL, SB;

   wire vcc;
   assign vcc = 1;
   wire D_flag;
   wire D_flag1;
   wire d_CK, d_D, d_TD, d_SEL;

//Function Block
   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, d_SEL);
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, vcc, SB, flag);
   mux2_udp3 g4 (d1, d_D, d_TD, d_SEL);
endmodule


module  QBDFZSBNLEHMX2(QB, D, TD, CK, SEL, SB);
   wire flag;
   assign flag = 0;
   output QB;
   input D, CK, TD, SEL, SB;

   wire vcc;
   assign vcc = 1;
   wire D_flag;
   wire D_flag1;
   wire d_CK, d_D, d_TD, d_SEL;


   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, d_SEL);
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, vcc, SB, flag);
   mux2_udp3 g4 (d1, d_D, d_TD, d_SEL);
endmodule


module  QBDFZSBNLEHMX3(QB, D, TD, CK, SEL, SB);
   wire flag;
   assign flag = 0; // Notifier flag
   output QB;
   input D, CK, TD, SEL, SB;

   wire vcc;
   assign vcc = 1;
   wire D_flag;
   wire D_flag1;
   wire d_CK, d_D, d_TD, d_SEL;

//Function Block
   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, d_SEL);
   not g3 (QB, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, vcc, SB, flag);
   mux2_udp3 g4 (d1, d_D, d_TD, d_SEL);
endmodule


module  QDBAHLEHMX1(Q, D, GB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, GB;
   wire vcc;
   assign vcc = 1;
   wire ck;
   dlhrb_udp4 g2 (Q, D, ck, vcc, flag);
   not g1 (ck, GB);
endmodule


module  QDBAHLEHMX2(Q, D, GB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, GB;
   wire vcc;
   assign vcc = 1;
   wire ck;
   dlhrb_udp4 g2 (Q, D, ck, vcc, flag);
   not g1 (ck, GB);
endmodule


module  QDBAHLEHMX3(Q, D, GB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, GB;
   wire vcc;
   assign vcc = 1;
   wire ck;
   dlhrb_udp4 g2 (Q, D, ck, vcc, flag);
   not g1 (ck, GB);
endmodule


module  QDBFNLEHMX1(Q, D, CKB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CKB;
   wire vcc;
   assign vcc = 1;
   wire ck;
   dlhrb_udp4 g2 (Q, D, ck, vcc, flag);
   not g1 (ck, CKB);
endmodule


module  QDBFNLEHMX2(Q, D, CKB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CKB;
   wire vcc;
   assign vcc = 1;
   wire ck;
   dlhrb_udp4 g2 (Q, D, ck, vcc, flag);
   not g1 (ck, CKB);
endmodule


module  QDBFNLEHMX3(Q, D, CKB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CKB;
   wire vcc;
   assign vcc = 1;
   wire ck;
   dlhrb_udp4 g2 (Q, D, ck, vcc, flag);
   not g1 (ck, CKB);
endmodule


module  QDBFRBNLEHMX1(Q, D, CKB, RB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CKB, RB;

   wire vcc;
   assign vcc = 1;

   wire d_CKB, d_D;


   wire ck;
   wire qt;
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d_D, ck, RB, vcc, flag);
   not g7 (ck, d_CKB);
endmodule


module  QDBFRBNLEHMX2(Q, D, CKB, RB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CKB, RB;

   wire vcc;
   assign vcc = 1;

   wire d_CKB, d_D;


   wire ck;
   wire qt;
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d_D, ck, RB, vcc, flag);
   not g7 (ck, d_CKB);
endmodule


module  QDBFRBNLEHMX3(Q, D, CKB, RB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CKB, RB;

   wire vcc;
   assign vcc = 1;

   wire d_CKB, d_D;


   wire ck;
   wire qt;
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d_D, ck, RB, vcc, flag);
   not g7 (ck, d_CKB);
endmodule


module  QDBFRSBNLEHMX1(Q, D, CKB, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CKB, RB, SB;

   wire d_CKB, d_D;


   wire rs;
   wire qt;
   wire rb_and_sb;
   wire qb1;
   wire ck;
   buf g3 (Q, qt);
   not g1 (qb1, qt);
   dffrsb_udp5 g2 (qt, d_D, ck, RB, SB, flag);
   and g4 (rb_and_sb, RB, SB);
   or g5 (rs, RB, SB);
   not g7 (ck, d_CKB);
endmodule


module  QDBFRSBNLEHMX2(Q, D, CKB, RB, SB);
   wire flag;
   assign flag = 0; // Notifier flag
   output Q;
   input D, CKB, RB, SB;

   wire d_CKB, d_D;

//Function Block
   wire rs;
   wire qt;
   wire QB;
   wire rb_and_sb;
   wire qb1;
   wire ck;
   buf g3 (Q, qt);
   not g1 (qb1, qt);
   dffrsb_udp5 g2 (qt, d_D, ck, RB, SB, flag);
   and g4 (rb_and_sb, RB, SB);
   or g5 (rs, RB, SB);
   and g6 (QB, qb1, rs);
   not g7 (ck, d_CKB);
endmodule


module  QDBFRSBNLEHMX3(Q, D, CKB, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CKB, RB, SB;

   wire d_CKB, d_D;


   wire rs;
   wire qt;
   wire rb_and_sb;
   wire qb1;
   wire ck;
   buf g3 (Q, qt);
   not g1 (qb1, qt);
   dffrsb_udp5 g2 (qt, d_D, ck, RB, SB, flag);
   and g4 (rb_and_sb, RB, SB);
   or g5 (rs, RB, SB);
   not g7 (ck, d_CKB);
endmodule


module  QDBZNLEHMX1(Q, D, TD, CKB, SEL);
   wire flag;
   assign flag = 0; // Notifier flag
   output Q;
   input D, CKB, TD, SEL;

   wire vcc;
   assign vcc = 1;
   wire D_flag;
   wire d_CKB, d_D, d_SEL, d_TD, D_flag1;

//Function Block


   wire SEL_;
   wire ck;
   wire qt;
   wire d1;
   buf b3 (SEL_, d_SEL);
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, ck, vcc, vcc, flag);
   not g1 (ck, d_CKB);
   mux2_udp3 g4 (d1, d_D, d_TD, d_SEL);
endmodule


module  QDBZNLEHMX2(Q, D, TD, CKB, SEL);
   wire flag;
   assign flag = 0; // Notifier flag
   output Q;
   input D, CKB, TD, SEL;

   wire vcc;
   assign vcc = 1;
   wire D_flag;
   wire d_CKB, d_D, d_SEL, d_TD, D_flag1;

//Function Block


   wire SEL_;
   wire ck;
   wire qt;
   wire d1;
   buf b3 (SEL_, d_SEL);
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, ck, vcc, vcc, flag);
   not g1 (ck, d_CKB);
   mux2_udp3 g4 (d1, d_D, d_TD, d_SEL);
endmodule


module  QDBZNLEHMX3(Q, D, TD, CKB, SEL);
   wire flag;
   assign flag = 0; // Notifier flag
   output Q;
   input D, CKB, TD, SEL;

   wire vcc;
   assign vcc = 1;
   wire D_flag;
   wire d_CKB, d_D, d_SEL, d_TD, D_flag1;

//Function Block


   wire SEL_;
   wire ck;
   wire qt;
   wire d1;
   buf b3 (SEL_, d_SEL);
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, ck, vcc, vcc, flag);
   not g1 (ck, d_CKB);
   mux2_udp3 g4 (d1, d_D, d_TD, d_SEL);
endmodule


module  QDBZRBNLEHMX1(Q, D, TD, CKB, SEL, RB);
   wire flag;
   assign flag = 0; // Notifier flag
   output Q;
   input D, CKB, TD, SEL, RB;

   wire vcc;
   assign vcc = 1;
   wire D_flag;
   wire d_CKB, d_D, d_SEL, d_TD, D_flag1;

//Function Block


   wire SEL_;
   wire ck;
   wire qt;
   wire d1;
   buf b3 (SEL_, d_SEL);
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, ck, RB, vcc, flag);
   not g1 (ck, d_CKB);
   mux2_udp3 g4 (d1, d_D, d_TD, d_SEL);
endmodule


module  QDBZRBNLEHMX2(Q, D, TD, CKB, SEL, RB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CKB, TD, SEL, RB;

   wire vcc;
   assign vcc = 1;
   wire D_flag;
   wire d_CKB, d_D, d_SEL, d_TD, D_flag1;




   wire SEL_;
   wire ck;
   wire qt;
   wire d1;
   buf b3 (SEL_, d_SEL);
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, ck, RB, vcc, flag);
   not g1 (ck, d_CKB);
   mux2_udp3 g4 (d1, d_D, d_TD, d_SEL);
endmodule


module  QDBZRBNLEHMX3(Q, D, TD, CKB, SEL, RB);
   wire flag;
   assign flag = 0; // Notifier flag
   output Q;
   input D, CKB, TD, SEL, RB;

   wire vcc;
   assign vcc = 1;
   wire D_flag;
   wire d_CKB, d_D, d_SEL, d_TD, D_flag1;

//Function Block


   wire SEL_;
   wire ck;
   wire qt;
   wire d1;
   buf b3 (SEL_, d_SEL);
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, ck, RB, vcc, flag);
   not g1 (ck, d_CKB);
   mux2_udp3 g4 (d1, d_D, d_TD, d_SEL);
endmodule


module  QDBZRSBNLEHMX1(Q, D, TD, CKB, SEL, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, TD, CKB, RB, SB, SEL;
   wire D_flag;
   wire d_CKB, d_D, d_SEL, d_TD, D_flag1;


   wire rs;
   wire qt;
   wire d1;
   wire SEL_;
   wire rb_and_sb;
   wire qb1;
   wire ck;
   buf b3 (SEL_, d_SEL);
   buf g3 (Q, qt);
   not g1 (qb1, qt);
   dffrsb_udp5 g2 (qt, d1, ck, RB, SB, flag);
   and g4 (rb_and_sb, RB, SB);
   or g5 (rs, RB, SB);
   not g7 (ck, d_CKB);
   mux2_udp3 g8 (d1, d_D, d_TD, SEL_);
endmodule


module  QDBZRSBNLEHMX2(Q, D, TD, CKB, SEL, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, TD, CKB, RB, SB, SEL;
   wire D_flag;
   wire d_CKB, d_D, d_SEL, d_TD, D_flag1;


   wire rs;
   wire qt;
   wire d1;
   wire SEL_;
   wire rb_and_sb;
   wire qb1;
   wire ck;
   buf b3 (SEL_, d_SEL);
   buf g3 (Q, qt);
   not g1 (qb1, qt);
   dffrsb_udp5 g2 (qt, d1, ck, RB, SB, flag);
   and g4 (rb_and_sb, RB, SB);
   or g5 (rs, RB, SB);
   not g7 (ck, d_CKB);
   mux2_udp3 g8 (d1, d_D, d_TD, SEL_);
endmodule


module  QDBZRSBNLEHMX3(Q, D, TD, CKB, SEL, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, TD, CKB, RB, SB, SEL;
   wire D_flag;
   wire d_CKB, d_D, d_SEL, d_TD, D_flag1;


   wire rs;
   wire qt;
   wire d1;
   wire SEL_;
   wire rb_and_sb;
   wire qb1;
   wire ck;
   buf b3 (SEL_, d_SEL);
   buf g3 (Q, qt);
   not g1 (qb1, qt);
   dffrsb_udp5 g2 (qt, d1, ck, RB, SB, flag);
   and g4 (rb_and_sb, RB, SB);
   or g5 (rs, RB, SB);
   not g7 (ck, d_CKB);
   mux2_udp3 g8 (d1, d_D, d_TD, SEL_);
endmodule


module  QDFCLRBNLEHMX1(Q, D, CK, RB, LD); // modified
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, RB, LD;
   wire vcc;
   assign vcc = 1;

   wire D_;
   wire di;
   wire qt;
   wire d1;
   wire LD_;
   wire RB_;
   buf b1 (D_, D);
   buf b2 (LD_, LD);
   buf b3 (RB_, RB);
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, CK, vcc, vcc, flag);
   and g4 (d1, D_, RB_);
endmodule


module  QDFCLRBNLEHMX2(Q, D, CK, RB, LD);
   wire flag;
   assign flag = 0; // Notifier flag
   wire  D_flag1, LD_flag1, RB_flag1;
   wire D_flag, LD_flag, RB_flag;
   output Q;
   input D, CK, RB, LD;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D, d_RB, d_LD;

//Function Block
   wire D_;
   wire di;
   wire qt;
   wire d1;
   wire LD_;
   wire RB_;
   buf b1 (D_, d_D);
   buf b2 (LD_, d_LD);
   buf b3 (RB_, d_RB);
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, vcc, vcc, flag);
   and g4 (d1, di, RB_);
   mux2_udp3 g5 (di, qt, D_, LD_);
endmodule


module  QDFCLRBNLEHMX3(Q, D, CK, RB, LD);
   wire flag;
   assign flag = 0;
   wire  D_flag1, LD_flag1, RB_flag1;
   wire D_flag, LD_flag, RB_flag;
   output Q;
   input D, CK, RB, LD;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D, d_RB, d_LD;


   wire D_;
   wire di;
   wire qt;
   wire d1;
   wire LD_;
   wire RB_;
   buf b1 (D_, d_D);
   buf b2 (LD_, d_LD);
   buf b3 (RB_, d_RB);
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, vcc, vcc, flag);
   and g4 (d1, di, RB_);
   mux2_udp3 g5 (di, qt, D_, LD_);
endmodule


module  QDFCRBNLEHMX1(Q, D, CK, RB); // modified
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, RB;
   wire vcc;
   assign vcc = 1;

   wire qt;
   wire d1;
   buf b1 (Q, qt);
   dffrsb_udp5 g1 (qt, d1, CK, vcc, vcc, flag);
   and g2 (d1, D, RB);
endmodule


module  QDFCRBNLEHMX2(Q, D, CK, RB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, RB;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D, d_RB;


   wire qt;
   wire d1;
   buf b1 (Q, qt);
   dffrsb_udp5 g1 (qt, d1, d_CK, vcc, vcc, flag);
   and g2 (d1, d_D, d_RB);
endmodule


module  QDFCRBNLEHMX3(Q, D, CK, RB);
   wire flag;
   assign flag = 0; // Notifier flag
   output Q;
   input D, CK, RB;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D, d_RB;

//Function Block
   wire qt;
   wire d1;
   buf b1 (Q, qt);
   dffrsb_udp5 g1 (qt, d1, d_CK, vcc, vcc, flag);
   and g2 (d1, d_D, d_RB);
endmodule


module  QDFENLEHMX1(Q, D, CK, EB);
  output Q;
  input D, CK, EB;
  wire vcc;
  assign vcc = 1;
  dffrsb_udp5 g2 (Q, D, CK, vcc, vcc, vcc);
endmodule


module  QDFENLEHMX2(Q, D, CK, EB);
  output Q;
  input D, CK, EB;
  wire vcc;
  assign vcc = 1;
  dffrsb_udp5 g2 (Q, D, CK, vcc, vcc, vcc);
endmodule


module  QDFENLEHMX3(Q, D, CK, EB);
  output Q;
  input D, CK, EB;
  wire vcc;
  assign vcc = 1;
  dffrsb_udp5 g2 (Q, D, CK, vcc, vcc, vcc);
endmodule


module  QDFERBNLEHMX1(Q, D, CK, EB, RB);
  output Q;
  input D, CK, EB, RB;
  wire vcc;
  assign vcc = 1;
  dffrsb_udp5 g2 (Q, D, CK, RB, vcc, vcc);
endmodule


module  QDFERBNLEHMX2(Q, D, CK, EB, RB);
  output Q;
  input D, CK, EB, RB;
  wire vcc;
  assign vcc = 1;
  dffrsb_udp5 g2 (Q, D, CK, RB, vcc, vcc);
endmodule


module  QDFERBNLEHMX3(Q, D, CK, EB, RB);
  output Q;
  input D, CK, EB, RB;
  wire vcc;
  assign vcc = 1;
  dffrsb_udp5 g2 (Q, D, CK, RB, vcc, vcc);
endmodule


module  QDFFHLEHMX1(Q, D, CK);
   output Q;
   input D, CK;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, vcc, vcc, vcc);
endmodule


module  QDFFHLEHMX2(Q, D, CK);
   output Q;
   input D, CK;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, vcc, vcc, vcc);
endmodule


module  QDFFHLEHMX3(Q, D, CK);
   output Q;
   input D, CK;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, vcc, vcc, vcc);
endmodule


module  QDFFHM2HLEHMX4(Q, D, CK);
   output Q;
   input D, CK;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, vcc, vcc, vcc);
endmodule


module  QDFFHM2HLEHMX6(Q, D, CK);
   output Q;
   input D, CK;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, vcc, vcc, vcc);
endmodule


module  QDFFLLEHMX1(Q, D, CK);
   output Q;
   input D, CK;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, vcc, vcc, vcc);
endmodule


module  QDFFLLEHMX2(Q, D, CK);
   output Q;
   input D, CK;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, vcc, vcc, vcc);
endmodule


module  QDFFLLEHMX3(Q, D, CK);
   output Q;
   input D, CK;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, vcc, vcc, vcc);
endmodule


module  QDFFLM2HLEHMX4(Q, D, CK);
   output Q;
   input D, CK;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, vcc, vcc, vcc);
endmodule


module  QDFFLM2HLEHMX6(Q, D, CK);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, vcc, vcc, flag);
endmodule


module  QDFFNLEHMX1(Q, D, CK);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, vcc, vcc, flag);
endmodule


module  QDFFNLEHMX2(Q, D, CK);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, vcc, vcc, flag);
endmodule


module  QDFFNLEHMX3(Q, D, CK);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, vcc, vcc, flag);
endmodule


module  QDFFNM2HLEHMX4(Q, D, CK);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, vcc, vcc, flag);
endmodule


module  QDFFNM2HLEHMX6(Q, D, CK);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, vcc, vcc, flag);
endmodule


module  QDFFRBNLEHMX1(Q, D, CK, RB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, RB;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, RB, vcc, flag);
endmodule


module  QDFFRBNLEHMX2(Q, D, CK, RB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, RB;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, RB, vcc, flag);
endmodule


module  QDFFRBNLEHMX3(Q, D, CK, RB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, RB;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, RB, vcc, flag);
endmodule


module  QDFFRBNM2HLEHMX4(Q, D, CK, RB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, RB;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, RB, vcc, flag);
endmodule


module  QDFFRBNM2HLEHMX6(Q, D, CK, RB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, RB;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, RB, vcc, flag);
endmodule


module  QDFFRSBHLEHMX1(Q, D, CK, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, RB, SB;
   dffrsb_udp5 g1 (Q, D, CK, RB, SB, flag);
endmodule


module  QDFFRSBHLEHMX2(Q, D, CK, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, RB, SB;
   dffrsb_udp5 g1 (Q, D, CK, RB, SB, flag);
endmodule


module  QDFFRSBHM2HLEHMX4(Q, D, CK, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, RB, SB;
   dffrsb_udp5 g1 (Q, D, CK, RB, SB, flag);
endmodule


module  QDFFRSBHM2HLEHMX6(Q, D, CK, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, RB, SB;
   dffrsb_udp5 g1 (Q, D, CK, RB, SB, flag);
endmodule


module  QDFFRSBLLEHMX1(Q, D, CK, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, RB, SB;
   dffrsb_udp5 g1 (Q, D, CK, RB, SB, flag);
endmodule


module  QDFFRSBLLEHMX2(Q, D, CK, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, RB, SB;
   dffrsb_udp5 g1 (Q, D, CK, RB, SB, flag);
endmodule


module  QDFFRSBLM2HLEHMX4(Q, D, CK, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, RB, SB;
   dffrsb_udp5 g1 (Q, D, CK, RB, SB, flag);
endmodule


module  QDFFRSBLM2HLEHMX6(Q, D, CK, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, RB, SB;
   dffrsb_udp5 g1 (Q, D, CK, RB, SB, flag);
endmodule


module  QDFFRSBNLEHMX1(Q, D, CK, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, RB, SB;
   dffrsb_udp5 g1 (Q, D, CK, RB, SB, flag);
endmodule


module  QDFFRSBNLEHMX2(Q, D, CK, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, RB, SB;
   dffrsb_udp5 g1 (Q, D, CK, RB, SB, flag);
endmodule


module  QDFFRSBNM2HLEHMX4(Q, D, CK, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, RB, SB;
   dffrsb_udp5 g1 (Q, D, CK, RB, SB, flag);
endmodule


module  QDFFRSBNM2HLEHMX6(Q, D, CK, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, RB, SB;
   dffrsb_udp5 g1 (Q, D, CK, RB, SB, flag);
endmodule


module  QDFFSBNLEHMX1(Q, D, CK, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, SB;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, vcc, SB, flag);
endmodule


module  QDFFSBNLEHMX2(Q, D, CK, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, SB;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, vcc, SB, flag);
endmodule


module  QDFFSBNLEHMX3(Q, D, CK, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, SB;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, vcc, SB, flag);
endmodule


module  QDFFSBNM2HLEHMX4(Q, D, CK, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, SB;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, vcc, SB, flag);
endmodule


module  QDFFSBNM2HLEHMX6(Q, D, CK, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, SB;
   wire vcc;
   assign vcc = 1;
   dffrsb_udp5 g1 (Q, D, CK, vcc, SB, flag);
endmodule


module  QDFZCLRBNLEHMX1(Q, D, TD, CK, RB, SEL, LD);
   wire flag;
   assign flag = 0; // Notifier flag
   wire  D_flag1, RB_flag1, SEL_flag1, LD_flag1;
   wire D_flag, RB_flag, SEL_flag, LD_flag;
   output Q;
   input D, TD, CK, RB, SEL, LD;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D, d_LD, d_RB, d_SEL, d_TD;

//Function Block
   wire D_;
   wire di;
   wire qt;
   wire d1;
   wire LD_;
   wire D_tmp;
   wire RB_;
   wire TD_;
   wire SEL_;
   buf b1 (D_, d_D);
   buf b2 (TD_, d_TD);
   buf b3 (RB_, d_RB);
   buf b4 (SEL_, d_SEL);
   buf b5 (LD_, d_LD);
   buf g1 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, vcc, vcc, flag);
   and g3 (D_tmp, di, RB_);
   mux2_udp3 g4 (di, qt, D_, LD_);
   mux2_udp3 g5 (d1, D_tmp, TD_, SEL_);
endmodule


module  QDFZCLRBNLEHMX2(Q, D, TD, CK, RB, SEL, LD);
   wire flag;
   assign flag = 0; // Notifier flag
   wire  D_flag1, RB_flag1, SEL_flag1, LD_flag1;
   wire D_flag, RB_flag, SEL_flag, LD_flag;
   output Q;
   input D, TD, CK, RB, SEL, LD;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D, d_LD, d_RB, d_SEL, d_TD;

//Function Block
   wire D_;
   wire di;
   wire qt;
   wire d1;
   wire LD_;
   wire D_tmp;
   wire RB_;
   wire TD_;
   wire SEL_;
   buf b1 (D_, d_D);
   buf b2 (TD_, d_TD);
   buf b3 (RB_, d_RB);
   buf b4 (SEL_, d_SEL);
   buf b5 (LD_, d_LD);
   buf g1 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, vcc, vcc, flag);
   and g3 (D_tmp, di, RB_);
   mux2_udp3 g4 (di, qt, D_, LD_);
   mux2_udp3 g5 (d1, D_tmp, TD_, SEL_);
endmodule


module  QDFZCLRBNLEHMX3(Q, D, TD, CK, RB, SEL, LD);
   wire flag;
   assign flag = 0; // Notifier flag
   wire  D_flag1, RB_flag1, SEL_flag1, LD_flag1;
   wire D_flag, RB_flag, SEL_flag, LD_flag;
   output Q;
   input D, TD, CK, RB, SEL, LD;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D, d_LD, d_RB, d_SEL, d_TD;

//Function Block
   wire D_;
   wire di;
   wire qt;
   wire d1;
   wire LD_;
   wire D_tmp;
   wire RB_;
   wire TD_;
   wire SEL_;
   buf b1 (D_, d_D);
   buf b2 (TD_, d_TD);
   buf b3 (RB_, d_RB);
   buf b4 (SEL_, d_SEL);
   buf b5 (LD_, d_LD);
   buf g1 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, vcc, vcc, flag);
   and g3 (D_tmp, di, RB_);
   mux2_udp3 g4 (di, qt, D_, LD_);
   mux2_udp3 g5 (d1, D_tmp, TD_, SEL_);
endmodule


module  QDFZCRBNLEHMX1(Q, D, TD, CK, SEL, RB);
   wire flag;
   assign flag = 0; // Notifier flag
   wire  D_flag1,RB_flag1,SEL_flag1;
   wire D_flag,RB_flag,SEL_flag;
   output Q;
   input D, TD, CK, SEL, RB;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D, d_RB, d_SEL, d_TD;

//Function Block
   wire D_;
   wire qt;
   wire d1;
   wire D_tmp;
   wire RB_;
   wire TD_;
   wire SEL_;
   buf b1 (D_, d_D);
   buf b2 (TD_, d_TD);
   buf b3 (RB_, d_RB);
   buf b4 (SEL_, d_SEL);
   buf g1 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, vcc, vcc, flag);
   and g3 (D_tmp, D_, RB_);
   mux2_udp3 g4 (d1, D_tmp, TD_, SEL_);
endmodule


module  QDFZCRBNLEHMX2(Q, D, TD, CK, SEL, RB);
   wire flag;
   assign flag = 0;
   wire  D_flag1,RB_flag1,SEL_flag1;
   wire D_flag,RB_flag,SEL_flag;
   output Q;
   input D, TD, CK, SEL, RB;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D, d_RB, d_SEL, d_TD;


   wire D_;
   wire qt;
   wire d1;
   wire D_tmp;
   wire RB_;
   wire TD_;
   wire SEL_;
   buf b1 (D_, d_D);
   buf b2 (TD_, d_TD);
   buf b3 (RB_, d_RB);
   buf b4 (SEL_, d_SEL);
   buf g1 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, vcc, vcc, flag);
   and g3 (D_tmp, D_, RB_);
   mux2_udp3 g4 (d1, D_tmp, TD_, SEL_);
endmodule


module  QDFZCRBNLEHMX3(Q, D, TD, CK, SEL, RB);
   wire flag;
   assign flag = 0; // Notifier flag
   wire  D_flag1,RB_flag1,SEL_flag1;
   wire D_flag,RB_flag,SEL_flag;
   output Q;
   input D, TD, CK, SEL, RB;

   wire vcc;
   assign vcc = 1;

   wire d_CK, d_D, d_RB, d_SEL, d_TD;

//Function Block
   wire D_;
   wire qt;
   wire d1;
   wire D_tmp;
   wire RB_;
   wire TD_;
   wire SEL_;
   buf b1 (D_, d_D);
   buf b2 (TD_, d_TD);
   buf b3 (RB_, d_RB);
   buf b4 (SEL_, d_SEL);
   buf g1 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, d_CK, vcc, vcc, flag);
   and g3 (D_tmp, D_, RB_);
   mux2_udp3 g4 (d1, D_tmp, TD_, SEL_);
endmodule


module  QDFZENLEHMX1(Q, D, TD, CK, SEL, EB);

  output Q;
  input D, TD, CK, SEL, EB;
  wire  D_flag1;
  wire D_flag;
  wire flag;
  assign flag = 0;
  wire vcc;
  assign vcc = 1;

   wire qt;
   dffrsb_udp5 g3 (qt, D, CK, vcc, vcc, flag);
   buf g4 (Q, qt);
endmodule


module  QDFZENLEHMX2(Q, D, TD, CK, SEL, EB);

  output Q;
  input D, TD, CK, SEL, EB;
  wire  D_flag1;
  wire D_flag;
  wire flag;
  assign flag = 0;
  wire vcc;
  assign vcc = 1;

   wire qt;
   dffrsb_udp5 g3 (qt, D, CK, vcc, vcc, flag);
   buf g4 (Q, qt);
endmodule


module  QDFZENLEHMX3(Q, D, TD, CK, SEL, EB);

  output Q;
  input D, TD, CK, SEL, EB;
  wire  D_flag1;
  wire D_flag;
  wire flag;
  assign flag = 0;
  wire vcc;
  assign vcc = 1;

   wire qt;
   dffrsb_udp5 g3 (qt, D, CK, vcc, vcc, flag);
   buf g4 (Q, qt);
endmodule


module  QDFZERBNLEHMX1(Q, D, TD, CK, SEL, EB, RB);

  output Q;
  input D, TD, CK, SEL, EB, RB;
  wire  D_flag1;
  wire D_flag;
  wire flag;
  assign flag = 0;
  wire vcc;
  assign vcc = 1;

   wire qt;
   dffrsb_udp5 g3 (qt, D, CK, RB, vcc, flag);
   buf g4 (Q, qt);
endmodule


module  QDFZERBNLEHMX2(Q, D, TD, CK, SEL, EB, RB);

  output Q;
  input D, TD, CK, SEL, EB, RB;
  wire  D_flag1;
  wire D_flag;
  wire flag;
  assign flag = 0;
  wire vcc;
  assign vcc = 1;

   wire qt;
   dffrsb_udp5 g3 (qt, D, CK, RB, vcc, flag);
   buf g4 (Q, qt);
endmodule


module  QDFZERBNLEHMX3(Q, D, TD, CK, SEL, EB, RB);

  output Q;
  input D, TD, CK, SEL, EB, RB;
  wire  D_flag1;
  wire D_flag;
  wire flag;
  assign flag = 0;
  wire vcc;
  assign vcc = 1;

   wire qt;
   dffrsb_udp5 g3 (qt, D, CK, RB, vcc, flag);
   buf g4 (Q, qt);
endmodule


module  QDFZHLEHMX1(Q, D, TD, CK, SEL);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;

   wire qt;
   wire d1;
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, CK, vcc, vcc, flag);
   mux2_udp3 g4 (d1, D, TD, SEL);
endmodule


module  QDFZHLEHMX2(Q, D, TD, CK, SEL);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;

   wire qt;
   wire d1;
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, CK, vcc, vcc, flag);
   mux2_udp3 g4 (d1, D, TD, SEL);
endmodule


module  QDFZHLEHMX3(Q, D, TD, CK, SEL);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;

   wire qt;
   wire d1;
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, CK, vcc, vcc, flag);
   mux2_udp3 g4 (d1, D, TD, SEL);
endmodule


module  QDFZHM2HLEHMX4(Q, D, TD, CK, SEL);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;

   wire qt;
   wire d1;
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, CK, vcc, vcc, flag);
   mux2_udp3 g4 (d1, D, TD, SEL);
endmodule


module  QDFZHM2HLEHMX6(Q, D, TD, CK, SEL);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;

   wire qt;
   wire d1;
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, CK, vcc, vcc, flag);
   mux2_udp3 g4 (d1, D, TD, SEL);
endmodule


module  QDFZLLEHMX1(Q, D, TD, CK, SEL);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;

   wire qt;
   wire d1;
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, CK, vcc, vcc, flag);
   mux2_udp3 g4 (d1, D, TD, SEL);
endmodule


module  QDFZLLEHMX2(Q, D, TD, CK, SEL);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;

   wire qt;
   wire d1;
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, CK, vcc, vcc, flag);
   mux2_udp3 g4 (d1, D, TD, SEL);
endmodule


module  QDFZLLEHMX3(Q, D, TD, CK, SEL);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;

   wire qt;
   wire d1;
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, CK, vcc, vcc, flag);
   mux2_udp3 g4 (d1, D, TD, SEL);
endmodule


module  QDFZLM2HLEHMX4(Q, D, TD, CK, SEL);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;

   wire qt;
   wire d1;
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, CK, vcc, vcc, flag);
   mux2_udp3 g4 (d1, D, TD, SEL);
endmodule


module  QDFZLM2HLEHMX6(Q, D, TD, CK, SEL);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;

   wire qt;
   wire d1;
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, CK, vcc, vcc, flag);
   mux2_udp3 g4 (d1, D, TD, SEL);
endmodule


module  QDFZNLEHMX1(Q, D, TD, CK, SEL);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;

   wire qt;
   wire d1;
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, CK, vcc, vcc, flag);
   mux2_udp3 g4 (d1, D, TD, SEL);
endmodule


module  QDFZNLEHMX2(Q, D, TD, CK, SEL);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;

   wire qt;
   wire d1;
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, CK, vcc, vcc, flag);
   mux2_udp3 g4 (d1, D, TD, SEL);
endmodule


module  QDFZNLEHMX3(Q, D, TD, CK, SEL);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;

   wire qt;
   wire d1;
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, CK, vcc, vcc, flag);
   mux2_udp3 g4 (d1, D, TD, SEL);
endmodule


module  QDFZNM2HLEHMX4(Q, D, TD, CK, SEL);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;

   wire qt;
   wire d1;
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, CK, vcc, vcc, flag);
   mux2_udp3 g4 (d1, D, TD, SEL);
endmodule


module  QDFZNM2HLEHMX6(Q, D, TD, CK, SEL);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, SEL;
   wire vcc;
   assign vcc = 1;

   wire qt;
   wire d1;
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, CK, vcc, vcc, flag);
   mux2_udp3 g4 (d1, D, TD, SEL);
endmodule


module  QDFZRBNLEHMX1(Q, D, TD, CK, SEL, RB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, RB, SEL;
   wire vcc;
   assign vcc = 1;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, CK, RB, vcc, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZRBNLEHMX2(Q, D, TD, CK, SEL, RB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, RB, SEL;
   wire vcc;
   assign vcc = 1;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, CK, RB, vcc, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZRBNLEHMX3(Q, D, TD, CK, SEL, RB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, RB, SEL;
   wire vcc;
   assign vcc = 1;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, CK, RB, vcc, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZRBNM2HLEHMX4(Q, D, TD, CK, SEL, RB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, RB, SEL;

   wire vcc;
   assign vcc = 1;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, CK, RB, vcc, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZRBNM2HLEHMX6(Q, D, TD, CK, SEL, RB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, RB, SEL;
   wire vcc;
   assign vcc = 1;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g3 (Q, qt);
   dffrsb_udp5 g2 (qt, d1, CK, RB, vcc, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZRSBHLEHMX1(Q, D, TD, CK, SEL, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, TD, CK, RB, SB, SEL;
   wire D_flag;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g2 (Q, qt);
   dffrsb_udp5 g1 (qt, d1, CK, RB, SB, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZRSBHLEHMX2(Q, D, TD, CK, SEL, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, TD, CK, RB, SB, SEL;
   wire D_flag;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g2 (Q, qt);
   dffrsb_udp5 g1 (qt, d1, CK, RB, SB, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZRSBHLEHMX3(Q, D, TD, CK, SEL, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, TD, CK, RB, SB, SEL;
   wire D_flag;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g2 (Q, qt);
   dffrsb_udp5 g1 (qt, d1, CK, RB, SB, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZRSBHM2HLEHMX4(Q, D, TD, CK, SEL, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, TD, CK, RB, SB, SEL;
   wire D_flag;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g2 (Q, qt);
   dffrsb_udp5 g1 (qt, d1, CK, RB, SB, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZRSBHM2HLEHMX6(Q, D, TD, CK, SEL, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, TD, CK, RB, SB, SEL;
   wire D_flag;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g2 (Q, qt);
   dffrsb_udp5 g1 (qt, d1, CK, RB, SB, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZRSBLLEHMX1(Q, D, TD, CK, SEL, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, TD, CK, RB, SB, SEL;
   wire D_flag;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g2 (Q, qt);
   dffrsb_udp5 g1 (qt, d1, CK, RB, SB, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZRSBLLEHMX2(Q, D, TD, CK, SEL, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, TD, CK, RB, SB, SEL;
   wire D_flag;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g2 (Q, qt);
   dffrsb_udp5 g1 (qt, d1, CK, RB, SB, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZRSBLLEHMX3(Q, D, TD, CK, SEL, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, TD, CK, RB, SB, SEL;
   wire D_flag;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g2 (Q, qt);
   dffrsb_udp5 g1 (qt, d1, CK, RB, SB, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZRSBLM2HLEHMX4(Q, D, TD, CK, SEL, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, TD, CK, RB, SB, SEL;
   wire D_flag;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g2 (Q, qt);
   dffrsb_udp5 g1 (qt, d1, CK, RB, SB, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZRSBLM2HLEHMX6(Q, D, TD, CK, SEL, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, TD, CK, RB, SB, SEL;
   wire D_flag;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g2 (Q, qt);
   dffrsb_udp5 g1 (qt, d1, CK, RB, SB, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZRSBNLEHMX1(Q, D, TD, CK, SEL, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, TD, CK, RB, SB, SEL;
   wire D_flag;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g2 (Q, qt);
   dffrsb_udp5 g1 (qt, d1, CK, RB, SB, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZRSBNLEHMX2(Q, D, TD, CK, SEL, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, TD, CK, RB, SB, SEL;
   wire D_flag;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g2 (Q, qt);
   dffrsb_udp5 g1 (qt, d1, CK, RB, SB, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZRSBNLEHMX3(Q, D, TD, CK, SEL, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, TD, CK, RB, SB, SEL;
   wire D_flag;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g2 (Q, qt);
   dffrsb_udp5 g1 (qt, d1, CK, RB, SB, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZRSBNM2HLEHMX4(Q, D, TD, CK, SEL, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, TD, CK, RB, SB, SEL;
   wire D_flag;


   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g2 (Q, qt);
   dffrsb_udp5 g1 (qt, d1, CK, RB, SB, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZRSBNM2HLEHMX6(Q, D, TD, CK, SEL, RB, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, TD, CK, RB, SB, SEL;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g2 (Q, qt);
   dffrsb_udp5 g1 (qt, d1, CK, RB, SB, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZSBNLEHMX1(Q, D, TD, CK, SEL, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, SB, SEL;
   wire vcc;
   assign vcc = 1;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g3 (Q, qt);
   dffrsb_udp5 g1 (qt, d1, CK, vcc, SB, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZSBNLEHMX2(Q, D, TD, CK, SEL, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, SB, SEL;
   wire vcc;
   assign vcc = 1;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g3 (Q, qt);
   dffrsb_udp5 g1 (qt, d1, CK, vcc, SB, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZSBNLEHMX3(Q, D, TD, CK, SEL, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, SB, SEL;
   wire vcc;
   assign vcc = 1;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g3 (Q, qt);
   dffrsb_udp5 g1 (qt, d1, CK, vcc, SB, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZSBNM2HLEHMX4(Q, D, TD, CK, SEL, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, SB, SEL;
   wire vcc;
   assign vcc = 1;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g3 (Q, qt);
   dffrsb_udp5 g1 (qt, d1, CK, vcc, SB, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDFZSBNM2HLEHMX6(Q, D, TD, CK, SEL, SB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, CK, TD, SB, SEL;
   wire vcc;
   assign vcc = 1;

   wire SEL_;
   wire qt;
   wire d1;
   buf b3 (SEL_, SEL);
   buf g3 (Q, qt);
   dffrsb_udp5 g1 (qt, d1, CK, vcc, SB, flag);
   mux2_udp3 g4 (d1, D, TD, SEL_);
endmodule


module  QDLAHLEHMX1(Q, D, G);
   wire flag;
   assign flag = 0;
   output Q;
   input D, G;
   wire vcc;
   assign vcc = 1;

   wire qt;
   buf g3 (Q, qt);
   dlhrb_udp4 g2 (qt, D, G, vcc, flag);
endmodule


module  QDLAHLEHMX2(Q, D, G);
   wire flag;
   assign flag = 0;
   output Q;
   input D, G;
   wire vcc;
   assign vcc = 1;

   wire qt;
   buf g3 (Q, qt);
   dlhrb_udp4 g2 (qt, D, G, vcc, flag);
endmodule


module  QDLAHLEHMX3(Q, D, G);
   wire flag;
   assign flag = 0;
   output Q;
   input D, G;
   wire vcc;
   assign vcc = 1;

   wire qt;
   buf g3 (Q, qt);
   dlhrb_udp4 g2 (qt, D, G, vcc, flag);
endmodule


module  QDLAHM2HLEHMX4(Q, D, G);
   wire flag;
   assign flag = 0;
   output Q;
   input D, G;
   wire vcc;
   assign vcc = 1;

   wire qt;
   buf g3 (Q, qt);
   dlhrb_udp4 g2 (qt, D, G, vcc, flag);
endmodule


module  QDLAHM2HLEHMX6(Q, D, G);
   wire flag;
   assign flag = 0;
   output Q;
   input D, G;
   wire vcc;
   assign vcc = 1;

   wire qt;
   buf g3 (Q, qt);
   dlhrb_udp4 g2 (qt, D, G, vcc, flag);
endmodule


module  QDLAHRBLEHMX1(Q, D, G, RB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, G, RB;

   wire qt;
   buf g3 (Q, qt);
   dlhrb_udp4 g2 (qt, D, G, RB, flag);
endmodule


module  QDLAHRBLEHMX2(Q, D, G, RB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, G, RB;

   wire qt;
   buf g3 (Q, qt);
   dlhrb_udp4 g2 (qt, D, G, RB, flag);
endmodule


module  QDLAHRBLEHMX3(Q, D, G, RB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, G, RB;

   wire qt;
   buf g3 (Q, qt);
   dlhrb_udp4 g2 (qt, D, G, RB, flag);
endmodule


module  QDLAHRBM2HLEHMX4(Q, D, G, RB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, G, RB;

   wire qt;
   buf g3 (Q, qt);
   dlhrb_udp4 g2 (qt, D, G, RB, flag);
endmodule


module  QDLAHRBM2HLEHMX6(Q, D, G, RB);
   wire flag;
   assign flag = 0;
   output Q;
   input D, G, RB;

   wire qt;
   buf g3 (Q, qt);
   dlhrb_udp4 g2 (qt, D, G, RB, flag);
endmodule


module  QDLAHSLEHMX1(Q, D, G, S);
   wire flag;
   assign flag = 0;
   input D, G, S;
   output Q;

   wire sb;
   wire qt;
   dlhsb_udp4 g1 (qt, D, G, sb, flag);
   buf g2 (Q, qt);
   not g4 (sb, S);
endmodule


module  QDLAHSLEHMX2(Q, D, G, S);
   wire flag;
   assign flag = 0;
   input D, G, S;
   output Q;

   wire sb;
   wire qt;
   dlhsb_udp4 g1 (qt, D, G, sb, flag);
   buf g2 (Q, qt);
   not g4 (sb, S);
endmodule


module  QDLAHSLEHMX3(Q, D, G, S);
   wire flag;
   assign flag = 0;
   input D, G, S;
   output Q;

   wire sb;
   wire qt;
   dlhsb_udp4 g1 (qt, D, G, sb, flag);
   buf g2 (Q, qt);
   not g4 (sb, S);
endmodule


module  QDLAHSM2HLEHMX4(Q, D, G, S);
   wire flag;
   assign flag = 0;
   input D, G, S;
   output Q;

   wire sb;
   wire qt;
   dlhsb_udp4 g1 (qt, D, G, sb, flag);
   buf g2 (Q, qt);
   not g4 (sb, S);
endmodule


module  QDLAHSM2HLEHMX6(Q, D, G, S);
   wire flag;
   assign flag = 0;
   input D, G, S;
   output Q;

   wire sb;
   wire qt;
   dlhsb_udp4 g1 (qt, D, G, sb, flag);
   buf g2 (Q, qt);
   not g4 (sb, S);
endmodule


module  TIE0LEHMX1(O);
  output O;
  wire gnd;
  assign gnd = 0;


   buf g1 (O, gnd);
endmodule


module  TIE0LEHMX2(O);
  output O;
  wire gnd;
  assign gnd = 0;


   buf g1 (O, gnd);
endmodule


module  TIE0LEHMX4(O);
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


module  TIE1LEHMX2(O);
  output O;

  wire vcc;
  assign vcc = 1;


   buf g1 (O, vcc);
endmodule


module  TIE1LEHMX4(O);
  output O;
  wire vcc;
  assign vcc = 1;


   buf g1 (O, vcc);
endmodule


module  XNR2CKLEHMX1(O, I1, I2);
   output O;
   input I1, I2;


   xnor g1 (O, I1, I2);
endmodule


module  XNR2CKLEHMX2(O, I1, I2);
   output O;
   input I1, I2;


   xnor g1 (O, I1, I2);
endmodule


module  XNR2CKLEHMX3(O, I1, I2);
   output O;
   input I1, I2;


   xnor g1 (O, I1, I2);
endmodule


module  XNR2CKLEHMX4(O, I1, I2);
   output O;
   input I1, I2;


   xnor g1 (O, I1, I2);
endmodule


module  XNR2CKLEHMX6(O, I1, I2);
   output O;
   input I1, I2;


   xnor g1 (O, I1, I2);
endmodule


module  XNR2CKLEHMX8(O, I1, I2);
   output O;
   input I1, I2;


   xnor g1 (O, I1, I2);
endmodule


module  XNR2LEHMX1(O, I1, I2);
   output O;
   input I1, I2;


   xnor g1 (O, I1, I2);
endmodule


module  XNR2LEHMX2(O, I1, I2);
   output O;
   input I1, I2;


   xnor g1 (O, I1, I2);
endmodule


module  XNR2LEHMX3(O, I1, I2);
   output O;
   input I1, I2;


   xnor g1 (O, I1, I2);
endmodule


module  XNR2LEHMX4(O, I1, I2);
   output O;
   input I1, I2;


   xnor g1 (O, I1, I2);
endmodule


module  XNR2LEHMX6(O, I1, I2);
   output O;
   input I1, I2;


   xnor g1 (O, I1, I2);
endmodule


module  XNR2LEHMX8(O, I1, I2);
   output O;
   input I1, I2;


   xnor g1 (O, I1, I2);
endmodule


module  XNR2M2HLEHMX10(O, I1, I2);
   output O;
   input I1, I2;


   xnor g1 (O, I1, I2);
endmodule


module  XNR2M2HLEHMX12(O, I1, I2);
   output O;
   input I1, I2;


   xnor g1 (O, I1, I2);
endmodule


module  XNR2M2HLEHMX6(O, I1, I2);
   output O;
   input I1, I2;


   xnor g1 (O, I1, I2);
endmodule


module  XNR2M2HLEHMX8(O, I1, I2);
   output O;
   input I1, I2;


   xnor g1 (O, I1, I2);
endmodule


module  XNR3LEHMX1(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   xnor3 g1 (O, I1, I2, I3);
endmodule


module  XNR3LEHMX2(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   xnor3 g1 (O, I1, I2, I3);
endmodule


module  XNR3LEHMX3(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   xnor3 g1 (O, I1, I2, I3);
endmodule


module  XOR2CKLEHMX1(O, I1, I2);
   output O;
   input I1, I2;


   xor g1 (O, I1, I2);
endmodule


module  XOR2CKLEHMX2(O, I1, I2);
   output O;
   input I1, I2;


   xor g1 (O, I1, I2);
endmodule


module  XOR2CKLEHMX3(O, I1, I2);
   output O;
   input I1, I2;


   xor g1 (O, I1, I2);
endmodule


module  XOR2CKLEHMX4(O, I1, I2);
   output O;
   input I1, I2;


   xor g1 (O, I1, I2);
endmodule


module  XOR2CKLEHMX6(O, I1, I2);
   output O;
   input I1, I2;


   xor g1 (O, I1, I2);
endmodule


module  XOR2CKLEHMX8(O, I1, I2);
   output O;
   input I1, I2;


   xor g1 (O, I1, I2);
endmodule


module  XOR2LEHMX1(O, I1, I2);
   output O;
   input I1, I2;


   xor g1 (O, I1, I2);
endmodule


module  XOR2LEHMX2(O, I1, I2);
   output O;
   input I1, I2;


   xor g1 (O, I1, I2);
endmodule


module  XOR2LEHMX3(O, I1, I2);
   output O;
   input I1, I2;


   xor g1 (O, I1, I2);
endmodule


module  XOR2LEHMX4(O, I1, I2);
   output O;
   input I1, I2;


   xor g1 (O, I1, I2);
endmodule


module  XOR2LEHMX6(O, I1, I2);
   output O;
   input I1, I2;


   xor g1 (O, I1, I2);
endmodule


module  XOR2LEHMX8(O, I1, I2);
   output O;
   input I1, I2;


   xor g1 (O, I1, I2);
endmodule


module  XOR2M2HLEHMX10(O, I1, I2);
   output O;
   input I1, I2;


   xor g1 (O, I1, I2);
endmodule


module  XOR2M2HLEHMX12(O, I1, I2);
   output O;
   input I1, I2;


   xor g1 (O, I1, I2);
endmodule


module  XOR2M2HLEHMX6(O, I1, I2);
   output O;
   input I1, I2;


   xor g1 (O, I1, I2);
endmodule


module  XOR2M2HLEHMX8(O, I1, I2);
   output O;
   input I1, I2;


   xor g1 (O, I1, I2);
endmodule


module  XOR3LEHMX1(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   xor3 g1 (O, I1, I2, I3);
endmodule


module  XOR3LEHMX2(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   xor3 g1 (O, I1, I2, I3);
endmodule


module  XOR3LEHMX3(O, I1, I2, I3);
   output O;
   input I1, I2, I3;


   xor3 g1 (O, I1, I2, I3);
endmodule


module GTECH_AND2(A, B, Z);
    output Z;
    input A, B;

    and g1 (Z, A, B);
endmodule


module GTECH_AND3(A, B, C, Z);
    output Z;
    input A, B, C;

    and3 g1 (Z, A, B, C);
endmodule


module GTECH_AND4(A, B, C, D, Z);
    output Z;
    input A, B, C, D;

    and4 g1 (Z, A, B, C, D);
endmodule


module GTECH_AND5(A, B, C, D, E, Z);
    output Z;
    input A, B, C, D, E;

    and5 g1 (Z, A, B, C, D, E);
endmodule


module GTECH_OR2(A, B, Z);
    output Z;
    input A, B;

    or g1 (Z, A, B);
endmodule


module GTECH_XOR2(A, B, Z);
    output Z;
    input A, B;

    xor g1 (Z, A, B);
endmodule


module GTECH_BUF(A, Z);
    output Z;
    input A;

    assign Z = A;
endmodule


module GTECH_NOT(A, Z);
    output Z;
    input A;

    not g1 (Z, A);
endmodule
