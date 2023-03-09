`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09.03.2023 23:17:31
// Design Name:
// Module Name: nBitAdder
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


module nBitAdder #(
    parameter bits = 4
)
(
    input [bits - 1:0] A,
    input [bits - 1:0] B,
    output C,
    output reg [bits - 1:0] Y
);

reg Cin = 0;
assign C = Cin;

integer i;

always @(*)
begin
    for(i = 0; i < bits; i = i + 1)
        begin
            Y[i] = A[i] ^ B[i] ^ Cin;
            Cin = A[i] & B[i] ^ A[i] & Cin ^ B[i] & Cin;
        end
end




endmodule