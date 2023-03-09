`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer: Felix Jungbluth
//
// Create Date: 03/09/2023 05:24:49 PM
// Design Name: Eight Bit Adder
// Module Name: eightBitAdder
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
// This module adds two eight bit numbers and returns the result.

// Dependencies:
// fourBitAdder.v

// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
// This module is based on the fourBitAdder module.
// It is a eight bit full adder.
//////////////////////////////////////////////////////////////////////////////////


module eightBitAdder(
    input [7:0] A,  //Four bit input A
    input [7:0] B,  //Four bit input B
    input Cin,      //One bit carry in
    output [7:0] Y, //Four bit output Y
    output C        //One bit carry out
);
    wire n1;
    fourBitAdder fba1 (
        .A(A[3:0]),
        .B(B[3:0]),
        .Cin(Cin),
        .Y(Y[3:0]),
        .C(n1)
    );

    fourBitAdder tba2 (
        .A(A[7:4]),
        .B(B[7:4]),
        .Cin(n1),
        .Y(Y[7:4]),
        .C(C)
    );
endmodule
