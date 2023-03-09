`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer: Felix Jungbluth
//
// Create Date: 03/09/2023 05:24:49 PM
// Design Name: Four Bit Adder
// Module Name: fourBitAdder
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
// This module adds two four bit numbers together and outputs the result.

// Dependencies:
// twoBitAdder.v

// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module fourBitAdder(
    input [3:0] A,  //Four bit input A
    input [3:0] B,  //Four bit input B
    input Cin,      //One bit carry in
    output [3:0] Y, //Four bit output Y
    output C        //One bit carry out
);
    wire n1;
    twoBitAdder tba1 (
        .A(A[1:0]),
        .B(B[1:0]),
        .Cin(Cin),
        .Y(Y[1:0]),
        .C(n1)
    );

    twoBitAdder tba2 (
        .A(A[3:2]),
        .B(B[3:2]),
        .Cin(n1),
        .Y(Y[3:2]),
        .C(C)
    );
endmodule
