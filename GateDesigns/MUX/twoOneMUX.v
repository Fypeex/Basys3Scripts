`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 03/13/2023 04:16:47 PM
// Design Name:
// Module Name: twoOneMux
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
// Input:
//   A - 2 bit input
//   S - 1 bit input
// Output:
//   Y - 1 bit output
//////////////////////////////////////////////////////////////////////////////////


module twoOneMux(
    input [1:0] A,
    input S,
    output Y
);

    wire n0;
    wire n1;
    wire n2;

    not(n0, S);

    and(n1, A[1], S);
    and(n2, A[0], n0);

    or(Y, n1, n2);

endmodule
