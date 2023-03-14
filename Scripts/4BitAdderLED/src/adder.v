`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09.03.2023 21:56:27
// Design Name:
// Module Name: main
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
// fourBitAdder.v
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module adder(
    input wire [3:0] A,
    input wire [3:0] B,
    output [3:0] Y,
    output C,
    output [3:0] nib1,
    output [3:0] nib2
);

reg [24:0] counter;
reg [24:0] maxCounter;

assign nib1 = A;
assign nib2 = B;




fourBitAdder fba (.A(A), .B(B), .Y(Y), .C(C), .Cin(0));

endmodule
