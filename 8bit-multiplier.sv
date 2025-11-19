//==============================================================
//  Gate-Level Components (HA / FA)
//==============================================================

// Half Adder (gate-level)
module HA (
    input a, b,
    output sum, carry
);
    xor (sum,  a, b);
    and (carry, a, b);
endmodule

// Full Adder (gate-level)
module FA (
    input a, b, cin,
    output sum, cout
);
    wire axb, ab, axb_cin;

    xor (axb, a, b);
    xor (sum, axb, cin);

    and (ab, a, b);
    and (axb_cin, axb, cin);

    or (cout, ab, axb_cin);

endmodule

//==============================================================
//  8x8 Partial Product AND GRID (flattened 64-bit)
//==============================================================
module AND_Grid_8x8 (
    input  [7:0] A,
    input  [7:0] B,
    output [63:0] PP
);
    genvar i,j;
    generate
        for (i=0;i<8;i=i+1)
            for (j=0;j<8;j=j+1)
                assign PP[i*8+j] = A[i] & B[j];
    endgenerate
endmodule

//==============================================================
//  16-bit Ripple Adder
//==============================================================
module RippleAdder16 (
    input  [15:0] A,
    input  [15:0] B,
    output [15:0] S
);

    wire [15:0] carry;

    HA ha0 (A[0], B[0], S[0], carry[0]);

    FA fa1  (A[1],  B[1],  carry[0], S[1],  carry[1]);
    FA fa2  (A[2],  B[2],  carry[1], S[2],  carry[2]);
    FA fa3  (A[3],  B[3],  carry[2], S[3],  carry[3]);
    FA fa4  (A[4],  B[4],  carry[3], S[4],  carry[4]);
    FA fa5  (A[5],  B[5],  carry[4], S[5],  carry[5]);
    FA fa6  (A[6],  B[6],  carry[5], S[6],  carry[6]);
    FA fa7  (A[7],  B[7],  carry[6], S[7],  carry[7]);
    FA fa8  (A[8],  B[8],  carry[7], S[8],  carry[8]);
    FA fa9  (A[9],  B[9],  carry[8], S[9],  carry[9]);
    FA fa10 (A[10], B[10], carry[9], S[10], carry[10]);
    FA fa11 (A[11], B[11], carry[10], S[11], carry[11]);
    FA fa12 (A[12], B[12], carry[11], S[12], carry[12]);
    FA fa13 (A[13], B[13], carry[12], S[13], carry[13]);
    FA fa14 (A[14], B[14], carry[13], S[14], carry[14]);
    FA fa15 (A[15], B[15], carry[14], S[15], carry[15]);

endmodule

//==============================================================
//  TOP MODULE — 8×8 ARRAY MULTIPLIER USING CSA
//==============================================================
module Multiplier8x8_CSA (
    input  [7:0] A,
    input  [7:0] B,
    output [15:0] P
);

    wire [63:0] PP;

    AND_Grid_8x8 andgrid (A, B, PP);

    // SHIFTED ROWS OF PARTIAL PRODUCTS
    wire [15:0] R0 = {8'b0, PP[7:0]};
    wire [15:0] R1 = {7'b0, PP[15:8], 1'b0};
    wire [15:0] R2 = {6'b0, PP[23:16], 2'b0};
    wire [15:0] R3 = {5'b0, PP[31:24], 3'b0};
    wire [15:0] R4 = {4'b0, PP[39:32], 4'b0};
    wire [15:0] R5 = {3'b0, PP[47:40], 5'b0};
    wire [15:0] R6 = {2'b0, PP[55:48], 6'b0};
    wire [15:0] R7 = {1'b0, PP[63:56], 7'b0};

    // CASCADING ADDITIONS
    wire [15:0] S1, C1;
    RippleAdder16 r1 (R0, R1, S1);
    RippleAdder16 r2 (S1, R2, C1);

    wire [15:0] S2, C2;
    RippleAdder16 r3 (C1, R3, S2);
    RippleAdder16 r4 (S2, R4, C2);

    wire [15:0] S3, C3;
    RippleAdder16 r5 (C2, R5, S3);
    RippleAdder16 r6 (S3, R6, C3);

    wire [15:0] FinalS;
    RippleAdder16 r7 (C3, R7, FinalS);

    // FINAL ADD — use zero carry
    wire [15:0] FinalC = 16'b0;
    RippleAdder16 rf (FinalS, FinalC, P);

endmodule
////////////////////////////////////////////////
`timescale 1ns/1ps

module tb_multiplier8x8;

    reg  [7:0] A;
    reg  [7:0] B;
    wire [15:0] P;

    Multiplier8x8_CSA uut (
        .A(A),
        .B(B),
        .P(P)
    );

    initial begin
        $display("===============================================");
        $display("   A(decimal)   B(decimal)   P(decimal)");
        $display("===============================================");

        A = 8'd8;   B = 8'd8;   #10;
        $display("     %0d          %0d          %0d", A, B, P);

        A = 8'd30;  B = 8'd30;  #10;
        $display("     %0d          %0d          %0d", A, B, P);

        A = 8'd44;  B = 8'd44;   #10;
        $display("     %0d          %0d          %0d", A, B, P);

        A = 8'd200; B = 8'd200;  #10;
        $display("     %0d          %0d          %0d", A, B, P);

        A = 8'd255; B = 8'd255; #10;
        $display("     %0d          %0d          %0d", A, B, P);

        $display("===============================================");
        $finish;
    end

endmodule
