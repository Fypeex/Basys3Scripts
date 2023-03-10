`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09.03.2023 22:48:45
// Design Name:
// Module Name: nBitEquality
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


module nBitEquality #(
    parameter bits = 4
)
(
    input [bits - 1:0] A,
    input [bits - 1:0] B,
    output Y
);

reg [bits - 1: 0] n;

integer i;

assign Y = n == 2**bits - 1;

always @(*)
begin
    for(i = 0; i < bits; i = i + 1)
        n[i] = !(A[i]^B[i]);
end




endmodule
