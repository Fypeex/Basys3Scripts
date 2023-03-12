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
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
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
    
//Wires for NOT Signals from S0/S1
wire n0;
wire n1;

//Wires for output of ands
wire n2;
wire n3;
wire n4;
wire n5;

not(n1, S[1]);
not(n0, S[0]);

and(n2, S[1], S[0], A[3]);
and(n3, S[1], n0, A[2]);
and(n4, n1, S[0], A[1]);
and(n5, n1, n0, A[0]);

or(Y, n2,n3,n4,n5);

endmodule
