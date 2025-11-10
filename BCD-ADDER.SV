//Basic Full Adder
module Full_Adder(output Sum , Cout , input A , B , Cin);
  
  wire W,X,Y;
  xor(W,A,B);
  xor(Sum ,W , Cin);
  and(X,W,Cin);
  and(Y,A,B);
  or(Cout , X , Y);
    
endmodule
//Bit Ripple Carry Adder
module RCA_4bit(output [3:0] Sum, output Cout, input [3:0] A, B, input Cin);
  wire [2:0] carry;
  Full_Adder FA0(Sum[0], carry[0], A[0], B[0], Cin);
  Full_Adder FA1(Sum[1], carry[1], A[1], B[1], carry[0]);
  Full_Adder FA2(Sum[2], carry[2], A[2], B[2], carry[1]);
  Full_Adder FA3(Sum[3], Cout,     A[3], B[3], carry[2]);
endmodule

//Carry Detect to detemine when out is > 9 
module Carry_Detect(output Correction, input [3:0] Sum, input Cout);
  wire w1, w2;
  and (w1, Sum[3], Sum[2]);
  and (w2, Sum[3], Sum[1]);
  or  (Correction, Cout, w1, w2);
endmodule


//Final Module BCD Adder ;
module BCD_Adder_4bit(
  output [3:0] BCD_Sum,
  output BCD_Cout,
  input [3:0] A, B,
  input Cin
);
  wire [3:0] Binary_Sum;
  wire Binary_Cout;
  wire Correction;
  wire [3:0] Correction_Value;
  wire Temp_Cout;

 
  RCA_4bit RCA1(Binary_Sum, Binary_Cout, A, B, Cin);

 
  Carry_Detect CD(Correction, Binary_Sum, Binary_Cout);

  assign Correction_Value = Correction ? 4'b0110 : 4'b0000;

 
  RCA_4bit RCA2(BCD_Sum, Temp_Cout, Binary_Sum, Correction_Value, 1'b0);

  assign BCD_Cout = Temp_Cout | Correction;

endmodule

//-----------------------------------------------------------------------------------------

module test_BCD_Adder;
  reg [3:0] A, B;
  reg Cin;
  wire [3:0] Sum;
  wire Cout;

  BCD_Adder_4bit uut(Sum, Cout, A, B, Cin);

  initial begin
    $monitor($time, " A=%d B=%d Cin=%b | Sum=%d Cout=%b", A, B, Cin, Sum, Cout);

    A = 4'd5;  B = 4'd4;  Cin = 0; 
    #10 A = 4'd6; B = 4'd7; Cin = 0; 
    #10 A = 4'd9; B = 4'd9; Cin = 0;
    #10 A = 4'd2; B = 4'd3; Cin = 1; 

    #20 $finish;
  end
endmodule







