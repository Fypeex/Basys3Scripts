`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2023 22:47:25
// Design Name: 
// Module Name: fourBitEquality
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


module fourBitEquality(
    input [3:0] A,
    input [3:0] B,
    output Y
);

wire n1;
wire n2;

    twoBitEquality tbe1 (.A(A[1:0]), .B(B[1:0]), .Y(n1));
    twoBitEquality tbe2 (.A(A[3:2]), .B(B[3:2]), .Y(n2));

and(Y,n1,n2);

endmodule
