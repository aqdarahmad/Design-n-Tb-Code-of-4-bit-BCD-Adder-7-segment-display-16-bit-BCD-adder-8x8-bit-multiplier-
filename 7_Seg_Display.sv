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


//------------------------------------------------------------

module tb_seven_segment_udp_alt;

  reg D3, D2, D1, D0;


  wire segA, segB, segC, segD, segE, segF, segG;


  seven_segment_udp uut (
    .D3(D3), .D2(D2), .D1(D1), .D0(D0),
    .segA(segA), .segB(segB), .segC(segC),
    .segD(segD), .segE(segE), .segF(segF), .segG(segG)
  );

  initial begin
    $display("Time\tBCD(D3 D2 D1 D0) | segA segB segC segD segE segF segG | Decimal");
    $monitor("%0t\t%b %b %b %b           | %b    %b    %b    %b    %b    %b    %b    | %0d",
             $time, D3, D2, D1, D0, segA, segB, segC, segD, segE, segF, segG,
             D3*8 + D2*4 + D1*2 + D0*1);

    
    {D3,D2,D1,D0} = 4'b0000; #10;
    {D3,D2,D1,D0} = 4'b0001; #10;
    {D3,D2,D1,D0} = 4'b0010; #10;
    {D3,D2,D1,D0} = 4'b0011; #10;
    {D3,D2,D1,D0} = 4'b0100; #10;
    {D3,D2,D1,D0} = 4'b0101; #10;
    {D3,D2,D1,D0} = 4'b0110; #10;
    {D3,D2,D1,D0} = 4'b0111; #10;
    {D3,D2,D1,D0} = 4'b1000; #10;

    {D3,D2,D1,D0} = 4'b1001; #10;

    $finish;
  end

endmodule
