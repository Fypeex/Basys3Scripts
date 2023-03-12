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
 * 0 0 | 1110
 * 0 1 | 1101
 * 1 0 | 1011
 * 1 1 | 0111
 */
 
 nand(Y[0], ~A, ~B);
 nand(Y[1], ~A, B);
 nand(Y[2], A, ~B);
 nand(Y[3], A, B);
endmodule
