`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 03/10/2023 10:20:58 AM
// Design Name: Two to Four Decoder
// Module Name: twoFourDecoder
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// Input
//    A - 1 bit Input
//    B - 1 bit Input
// Output
//    Y - 4 bit Output
//////////////////////////////////////////////////////////////////////////////////


module twoFourDecoder (
    input A,
    input B,
    output [3:0] Y
);

/*
 * A B | Y
 * 0 0 | 0001
 * 0 1 | 0010
 * 1 0 | 0100
 * 1 1 | 1000
 */

 wire n0, n1;

 not(n0, A);
 not(n1, B);

 and(Y[0], n0, n1);
 and(Y[1], n0, B);
 and(Y[2], A, n1);
 and(Y[3], A, B);
endmodule
