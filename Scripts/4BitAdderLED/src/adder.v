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
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module adder(
    input wire [3:0] A,
    input wire [3:0] B,
    input clk,
    output [3:0] Y,
    output C,
    output reg [1:0] seperator,
    output [3:0] nib1,
    output [3:0] nib2
);

reg [24:0] counter;
reg [24:0] maxCounter;

assign nib1 = A;
assign nib2 = B;

initial
    begin
        maxCounter = 25'b1001100010010110100000000;
        counter = 0;
        seperator = 2'b11;
    end

always @(posedge clk)
    begin
        if(counter == maxCounter)
            begin
                counter <= 0;
                seperator <= ~seperator;
            end
        else
            counter <= counter + 1;
    end


fourBitAdder fba (.A(A), .B(B), .Y(Y), .C(C), .Cin(0));

endmodule
