`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2023 03:15:20 PM
// Design Name: 
// Module Name: lookupTable
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
//   A - 1 bit input
// Output:
//   Y - 7 bit output
//////////////////////////////////////////////////////////////////////////////////


module lookupTable(
    input A,
    output [6:0] Y
);

/* A | Y
 * 0 | 0 0 0 0 0 0 1
 * 1 | 1 0 0 1 1 1 1
 * 
*/

assign Y[6] = A;
assign Y[5:4] = 0;
assign Y[3] = A;
assign Y[2] = A;
assign Y[1] = A;
assign Y[0] = 1;

endmodule
