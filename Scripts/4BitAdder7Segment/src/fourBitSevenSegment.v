`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09.03.2023 21:56:27
// Design Name: Four Bit Adder with Display
// Module Name: adder
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
// Add 2 four bit binary numbers and output the result on the seven segment display.
// Decimal point active means overflow
// The Switches 0 - 3 and 13 - 16 control the 2 bit numbers
// Dependencies:
// fourBitAdder.v
// twoBitAdder.v
// oneBitAdder.v
// twoFourDecoder.v
// mux.v
// lut.v
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// Input:
//   A - 4bit
//   B - 4bit
//   clk - 1 bit - clock
// Output
//   C - 1 bit - carry out / decimal point
//   nib1 - 4 bit LED for A
//   nib2 - 4 bit LED for B
//   seg - 7 bit LED for result
//   an - 4 bit LED for active digit
//
//
//
//////////////////////////////////////////////////////////////////////////////////


module fourBitSevenSegmentAdder (
    input [3:0] A,
    input [3:0] B,
    input clk,
    output C,
    output [3:0] nib1,
    output [3:0] nib2,
    output [6:0] seg,
    output [3:0] an
);

wire [3:0] n1;

reg [19:0] counter;
wire [1:0] digit;

wire n2;
wire n3;
assign C = ~n2;
assign digit = counter[19:18];
assign nib1 = A;
assign nib2 = B;

always @(posedge clk)
    counter <= counter + 1;

fourBitAdder fba (.A(A), .B(B), .Y(n1), .C(n2), .Cin(1'b0));
twoFourDecoder dtad (.A(digit[1]), .B(digit[0]), .Y(an));
mux m (.A(n1), .S(digit), .Y(n3));
lookupTable lt (.A(n3), .Y(seg));

endmodule