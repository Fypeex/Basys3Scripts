`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer: Felix Jungbluth
//
// Create Date: 03/09/2023 04:22:59 PM
// Design Name: One Bit Adder
// Module Name: oneBitAdder
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//   This module implements a one bit adder
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
// Input:
//   A: 1 bit input
//   B: 1 bit input
//   Cin: 1 bit carry in
// Output:
//   Y: 1 bit output
//   C: 1 bit carry out
//////////////////////////////////////////////////////////////////////////////////


module oneBitAdder(
    input A,    //One bit input A
    input B,    //One bit input B
    input Cin,  //One bit carry in
    output Y,   //One bit output Y
    output C    //One bit carry out
);
    wire n1;
    wire n2;
    wire n3;
    /*
        Y = 1 <=> A = 1 xor B = 1 xor C = 1
        C = 1 <=> A = 1 and B = 1 xor A = 1 and C = 1 xor B = 1 and C = 1
    */
    xor(Y,A,B,Cin);
    and(n1, A, B);
    and(n2, A, Cin);
    and(n3, B, Cin);
    xor(C, n1, n2, n3);

endmodule
