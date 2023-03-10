`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09.03.2023 22:41:55
// Design Name:
// Module Name: twoBitEquality
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
//
//////////////////////////////////////////////////////////////////////////////////


module twoBitEquality(
    input [1:0] A,
    input [1:0] B,
    output Y
);
wire n1;
wire n2;

oneBitEquality obe1 (.A(A[0]), .B(B[0]), .Y(n1));
oneBitEquality obe2 (.A(A[1]), .B(B[1]), .Y(n2));

and(Y,n1,n2);

endmodule
