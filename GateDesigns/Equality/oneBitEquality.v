`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09.03.2023 22:40:58
// Design Name:
// Module Name: oneBitEquality
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


module oneBitEquality(
    input A,
    input B,
    output Y
);

xnor(Y,A,B);

endmodule
