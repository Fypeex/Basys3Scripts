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

    wire n0;
    wire n1;

    wire n2;
    wire n3;

    wire n4;
    not(n4, S[1]);

    twoOneMux m1 (.A(A[1:0]), .S(S[0]), .Y(n0));
    twoOneMux m2 (.A(A[3:2]), .S(S[0]), .Y(n1));


    and(n2, n0, n4);
    and(n3, n1, S[1]);

    or(Y, n2, n3);
endmodule
