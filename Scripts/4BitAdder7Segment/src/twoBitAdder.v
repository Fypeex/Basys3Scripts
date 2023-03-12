`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer: Felix Jungbluth
//
// Create Date: 03/09/2023 04:36:47 PM
// Design Name: Two Bit Adder
// Module Name: twoBitAdder
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
// This module is a two bit adder
// Dependencies:
// oneBitAdder.v
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
// Input:
//   A - 2 bit input
//   B - 2 bit input
//   Cin - 1 bit carry in
// Output:
//   Y - 2 bit output
//   C - 1 bit carry out
//////////////////////////////////////////////////////////////////////////////////


module twoBitAdder(
        input [1:0] A,  //Two bit input A
        input [1:0] B,  //Two bit input B
        input Cin,      //One bit carry in
        output [1:0] Y, //Two bit output Y
        output C        //One bit carry out
);
        wire n1;

        oneBitAdder oba1(.A(A[0]), .B(B[0]), .Y(Y[0]), .C(n1), .Cin(Cin));
        oneBitAdder oba2(.A(A[1]), .B(B[1]), .Y(Y[1]), .C(C), .Cin(n1));

endmodule
