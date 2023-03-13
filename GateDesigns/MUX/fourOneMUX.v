`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 03/11/2023 03:42:01 PM
// Design Name:
// Module Name: mux
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
// twoOneMUX.v
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
// Input:
//    A - 4 bit input
//    S - 2 bit input
// Output:
//    Y - 1 bit output
//////////////////////////////////////////////////////////////////////////////////


module mux(
    input [3:0] A, //Input sum to be displayed
    input [1:0] S, //Current digit
    output Y
);

    wire [1:0] n0;

    twoOneMux m1 (.A(A[3:2]), .S(S[0]), .Y(n0[1]));
    twoOneMux m2 (.A(A[1:0]), .S(S[0]), .Y(n0[0]));
    twoOneMux m3 (.A(n0), .S(S[1]), .Y(Y));

endmodule
