`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2023 00:57:13
// Design Name: 
// Module Name: atomicTestingArea
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


module atomicTestingArea (
    input clock_100Mhz, 
    input reset,
    output reg [6:0] C, 
    output reg [3:0] D
);
    
    reg [19:0] counter;
    wire [1:0] currentLED;
    
    reg [6:0] Digit_C = 7'b0110001;
    reg [6:0] Digit_0 = 7'b0000001;
    reg [6:0] Digit_S = 7'b0100100;
    
    always @(posedge clock_100Mhz or posedge reset)
    begin
        if(reset==1)
            counter <= 0;
        else
            counter <= counter + 1;
    end
    
    assign currentLED = counter[19:18];
    
    always @(*)
    begin
        case(currentLED)
        2'b00: 
        begin
            D = 4'b1000;
            C = Digit_C;
        end
        2'b01:
        begin
            D = 4'b1101;
            C = Digit_0;
        end
        2'b10:
        begin
            D = 4'b1011;
            C = Digit_S;
        end
        2'b11:
        begin
            D = 4'b0111;
            C = Digit_0;
        end
        endcase
    end
            
endmodule
