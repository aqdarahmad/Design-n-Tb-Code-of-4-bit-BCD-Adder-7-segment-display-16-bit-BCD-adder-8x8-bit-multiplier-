module seven_segment_udp (
    input D3, D2, D1, D0,   
    output segA, segB, segC, segD, segE, segF, segG
);

    segA_udp a_unit(segA, D3,D2,D1,D0);
    segB_udp b_unit(segB, D3,D2,D1,D0);
    segC_udp c_unit(segC, D3,D2,D1,D0);
    segD_udp d_unit(segD, D3,D2,D1,D0);
    segE_udp e_unit(segE, D3,D2,D1,D0);
    segF_udp f_unit(segF, D3,D2,D1,D0);
    segG_udp g_unit(segG, D3,D2,D1,D0);

endmodule



// Segment A
primitive segA_udp(segA, D3,D2,D1,D0);
    output segA;
    input D3,D2,D1,D0;
    table
    // D3 D2 D1 D0 : segA
       0 0 0 0 : 1;
       0 0 0 1 : 0;
       0 0 1 0 : 1;
       0 0 1 1 : 1;
       0 1 0 0 : 0;
       0 1 0 1 : 1;
       0 1 1 0 : 1;
       0 1 1 1 : 1;
       1 0 0 0 : 1;
       1 0 0 1 : 1;
       1 0 1 0 : 0;
       1 0 1 1 : 0;
       1 1 0 0 : 0;
       1 1 0 1 : 0;
       1 1 1 0 : 0;
       1 1 1 1 : 0;
    endtable
endprimitive

// Segment B
primitive segB_udp(segB, D3,D2,D1,D0);
    output segB;
    input D3,D2,D1,D0;
    table
    // D3 D2 D1 D0 : segB
       0 0 0 0 : 1;
       0 0 0 1 : 1;
       0 0 1 0 : 1;
       0 0 1 1 : 1;
       0 1 0 0 : 1;
       0 1 0 1 : 0;
       0 1 1 0 : 0;
       0 1 1 1 : 1;
       1 0 0 0 : 1;
       1 0 0 1 : 1;
       1 0 1 0 : 1;
       1 0 1 1 : 0;
       1 1 0 0 : 0;
       1 1 0 1 : 0;
       1 1 1 0 : 0;
       1 1 1 1 : 0;
    endtable
endprimitive

// Segment C
primitive segC_udp(segC, D3,D2,D1,D0);
    output segC;
    input D3,D2,D1,D0;
    table
       0 0 0 0 : 1;
       0 0 0 1 : 1;
       0 0 1 0 : 0;
       0 0 1 1 : 1;
       0 1 0 0 : 1;
       0 1 0 1 : 1;
       0 1 1 0 : 1;
       0 1 1 1 : 1;
       1 0 0 0 : 1;
       1 0 0 1 : 1;
       1 0 1 0 : 1;
       1 0 1 1 : 1;
       1 1 0 0 : 0;
       1 1 0 1 : 0;
       1 1 1 0 : 0;
       1 1 1 1 : 0;
    endtable
endprimitive
// Segment D
primitive segD_udp(segD, D3,D2,D1,D0);
    output segD;
    input D3,D2,D1,D0;
    table
       0 0 0 0 : 1;
       0 0 0 1 : 0;
       0 0 1 0 : 1;
       0 0 1 1 : 1;
       0 1 0 0 : 0;
       0 1 0 1 : 1;
       0 1 1 0 : 1;
       0 1 1 1 : 0;
       1 0 0 0 : 1;
       1 0 0 1 : 1;
       1 0 1 0 : 0;
       1 0 1 1 : 1;
       1 1 0 0 : 0;
       1 1 0 1 : 0;
       1 1 1 0 : 0;
       1 1 1 1 : 0;
    endtable
endprimitive

// Segment E
primitive segE_udp(segE, D3,D2,D1,D0);
    output segE;
    input D3,D2,D1,D0;
    table
       0 0 0 0 : 1;
       0 0 0 1 : 0;
       0 0 1 0 : 0;
       0 0 1 1 : 0;
       0 1 0 0 : 1;
       0 1 0 1 : 0;
       0 1 1 0 : 1;
       0 1 1 1 : 0;
       1 0 0 0 : 1;
       1 0 0 1 : 0;
       1 0 1 0 : 1;
       1 0 1 1 : 0;
       1 1 0 0 : 0;
       1 1 0 1 : 0;
       1 1 1 0 : 0;
       1 1 1 1 : 0;
    endtable
endprimitive

// Segment F
primitive segF_udp(segF, D3,D2,D1,D0);
    output segF;
    input D3,D2,D1,D0;
    table
       0 0 0 0 : 1;
       0 0 0 1 : 0;
       0 0 1 0 : 1;
       0 0 1 1 : 1;
       0 1 0 0 : 1;
       0 1 0 1 : 1;
       0 1 1 0 : 1;
       0 1 1 1 : 0;
       1 0 0 0 : 1;
       1 0 0 1 : 0;
       1 0 1 0 : 1;
       1 0 1 1 : 0;
       1 1 0 0 : 0;
       1 1 0 1 : 0;
       1 1 1 0 : 0;
       1 1 1 1 : 0;
    endtable
endprimitive

// Segment G
primitive segG_udp(segG, D3,D2,D1,D0);
    output segG;
    input D3,D2,D1,D0;
    table
       0 0 0 0 : 0;
       0 0 0 1 : 0;
       0 0 1 0 : 1;
       0 0 1 1 : 1;
       0 1 0 0 : 1;
       0 1 0 1 : 1;
       0 1 1 0 : 1;
       0 1 1 1 : 0;
       1 0 0 0 : 1;
       1 0 0 1 : 1;
       1 0 1 0 : 1;
       1 0 1 1 : 0;
       1 1 0 0 : 0;
       1 1 0 1 : 0;
       1 1 1 0 : 0;
       1 1 1 1 : 0;
    endtable
endprimitive






module Full_Adder(output Sum, Cout, input A, B, Cin);
  wire w1, w2, w3;
  xor (w1, A, B);
  xor (Sum, w1, Cin);
  and (w2, w1, Cin);
  and (w3, A, B);
  or  (Cout, w2, w3);
endmodule




module RCA_4bit(output [3:0] Sum, output Cout, input [3:0] A, B, input Cin);
  wire [2:0] c;
  Full_Adder FA0(Sum[0], c[0], A[0], B[0], Cin);
  Full_Adder FA1(Sum[1], c[1], A[1], B[1], c[0]);
  Full_Adder FA2(Sum[2], c[2], A[2], B[2], c[1]);
  Full_Adder FA3(Sum[3], Cout, A[3], B[3], c[2]);
endmodule




module Carry_Detect(output Correction, input [3:0] Sum, input Cout);
  wire w1, w2;
  and (w1, Sum[3], Sum[2]);
  and (w2, Sum[3], Sum[1]);
  or  (Correction, Cout, w1, w2);
endmodule





module BCD_Adder_4bit(output [3:0] BCD_Sum, output BCD_Cout, input [3:0] A, B, input Cin);
  wire [3:0] Binary_Sum, Correction_Value;
  wire Binary_Cout, Correction, Temp_Cout, notCorr;

  RCA_4bit RCA1(Binary_Sum, Binary_Cout, A, B, Cin);
  Carry_Detect CD(Correction, Binary_Sum, Binary_Cout);

  not (notCorr, Correction);

  // Correction_Value = Correction ? 0110 : 0000
  and (Correction_Value[0], 1'b0, Correction); 
  and (Correction_Value[1], 1'b1, Correction); 
  and (Correction_Value[2], 1'b1, Correction); 
  and (Correction_Value[3], 1'b0, Correction); 

  RCA_4bit RCA2(BCD_Sum, Temp_Cout, Binary_Sum, Correction_Value, 1'b0);
  or (BCD_Cout, Temp_Cout, Correction);
endmodule


module BCD_Adder_16bit(output [15:0] SUM, output Cout, input [15:0] A, B);
  wire [3:0] S0, S1, S2, S3;
  wire C1, C2, C3;

  BCD_Adder_4bit U0(S0, C1, A[3:0],   B[3:0],   1'b0);
  BCD_Adder_4bit U1(S1, C2, A[7:4],   B[7:4],   C1);
  BCD_Adder_4bit U2(S2, C3, A[11:8],  B[11:8],  C2);
  BCD_Adder_4bit U3(S3, Cout, A[15:12], B[15:12], C3);


  buf (SUM[0], S0[0]);  buf (SUM[1], S0[1]);  buf (SUM[2], S0[2]);  buf (SUM[3], S0[3]);
  buf (SUM[4], S1[0]);  buf (SUM[5], S1[1]);  buf (SUM[6], S1[2]);  buf (SUM[7], S1[3]);
  buf (SUM[8], S2[0]);  buf (SUM[9], S2[1]);  buf (SUM[10], S2[2]); buf (SUM[11], S2[3]);
  buf (SUM[12], S3[0]); buf (SUM[13], S3[1]); buf (SUM[14], S3[2]); buf (SUM[15], S3[3]);
endmodule





module Top_BCD_Adder_7Seg(
  input  [15:0] A, B,
  output [6:0] sega,
  output [6:0] segb,
  output [6:0] segc,
  output [6:0] segd,
  output Cout
);
  wire [15:0] SUM;

  BCD_Adder_16bit adder16(SUM, Cout, A, B);

  seven_segment_udp disp0(SUM[3],  SUM[2],  SUM[1],  SUM[0],  sega[6], sega[5], sega[4], sega[3], sega[2], sega[1], sega[0]);
  seven_segment_udp disp1(SUM[7],  SUM[6],  SUM[5],  SUM[4],  segb[6], segb[5], segb[4], segb[3], segb[2], segb[1], segb[0]);
  seven_segment_udp disp2(SUM[11], SUM[10], SUM[9],  SUM[8],  segc[6], segc[5], segc[4], segc[3], segc[2], segc[1], segc[0]);
  seven_segment_udp disp3(SUM[15], SUM[14], SUM[13], SUM[12], segd[6], segd[5], segd[4], segd[3], segd[2], segd[1], segd[0]);

endmodule
//لازم اغير قيم طباعه لدسمال
module tb_Top_BCD_Adder_7Seg;
  reg [15:0] A, B;
  wire [6:0] sega, segb, segc, segd;
  wire Cout;


  Top_BCD_Adder_7Seg uut (A, B, sega, segb, segc, segd, Cout);

  initial begin
    $display("Time\tA\tB\tCout\tsega       segb       segc       segd");
    $monitor("%0t\t%h\t%h\t%b\t%b %b %b %b %b %b %b   %b %b %b %b %b %b %b   %b %b %b %b %b %b %b   %b %b %b %b %b %b %b",
             $time, A, B, Cout,
             sega[6], sega[5], sega[4], sega[3], sega[2], sega[1], sega[0],
             segb[6], segb[5], segb[4], segb[3], segb[2], segb[1], segb[0],
             segc[6], segc[5], segc[4], segc[3], segc[2], segc[1], segc[0],
             segd[6], segd[5], segd[4], segd[3], segd[2], segd[1], segd[0]);

   
    A = 16'h0009; B = 16'h0001; #20;  
    A = 16'h0005; B = 16'h0005; #20;  
    A = 16'h0099; B = 16'h0001; #20;  
    A = 16'h0456; B = 16'h0544; #20;  

    $finish;
  end
endmodule

