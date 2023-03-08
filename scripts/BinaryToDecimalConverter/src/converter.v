`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 03/08/2023 10:16:41 AM
// Design Name:
// Module Name: inputEncoder
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
localparam n = 13;
module inputEncoder(
    input wire [n - 1:0] sw,
    input clk,
    input reset,
    output wire [n-1:0] led,
    output reg [3:0] an,
    output reg [6:0] seg
);
    reg [26:0] counter;
    reg [26:0] maxCounter = 27'b101111101011110000100000000;

    assign led = sw;

    reg [19:0] LEDRefresh;
    wire [1:0] currentDigit;
    assign currentDigit = LEDRefresh[19:18];


    initial begin
        an = 4'b0;
        seg = 7'b0;

        counter = 0;
        LEDRefresh = 0;
    end

    always @(posedge clk or posedge reset)
        begin
            if(reset == 1)
                begin
                    counter = 0;
                    LEDRefresh = 0;
                end
            else
                begin
                    LEDRefresh <= LEDRefresh + 1;
                    if(counter == maxCounter)
                        counter <= 27'b0;
                    else
                        counter <= counter + 1;
                end
        end


    integer inputNumber = 0;
    integer i;

    integer digit1;
    integer digit2;
    integer digit3;
    integer digit4;

    always @(*)
        begin
            inputNumber = 0;
            for(i = 0;i < n; i = i + 1) begin
                if(sw[i] == 1)
                    inputNumber = inputNumber + 2**i;
            end

            digit4 = inputNumber % 10;
            inputNumber = inputNumber / 10;

            digit3 = inputNumber % 10;
            inputNumber = inputNumber / 10;

            digit2 = inputNumber % 10;
            inputNumber = inputNumber / 10;

            digit1 = inputNumber % 10;

            case(currentDigit)
                2'b00:
                    begin
                        an = 4'b1110;
                        seg = getSegments(digit4);
                    end
                2'b01:
                    begin
                        an = 4'b1101;
                        seg = getSegments(digit3);
                    end
                2'b10:
                    begin
                        an = 4'b1011;
                        seg = getSegments(digit2);
                    end
                2'b11:
                    begin
                        an = 4'b0111;
                        seg = getSegments(digit1);
                    end
                default: begin
                    an = 4'b1000;
                    seg = 7'b0111111;
                end
            endcase
        end

    function [6:0] getSegments(input integer digit);
        case(digit)
            0: getSegments =  7'b0000001;
            1: getSegments =  7'b1001111;
            2: getSegments =  7'b0010010;
            3: getSegments =  7'b0000110;
            4: getSegments =  7'b1001100;
            5: getSegments =  7'b0100100;
            6: getSegments =  7'b0100000;
            7: getSegments =  7'b0001111;
            8: getSegments =  7'b0000000;
            9: getSegments =  7'b0000100;
            default: getSegments =  7'b0000000;
        endcase
    endfunction
endmodule
