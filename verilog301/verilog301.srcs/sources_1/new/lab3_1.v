`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/28 16:18:50
// Design Name: 
// Module Name: lab3_1
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
// module clock_divider
// #(parameter n = 25)
// (input clk,
// output reg clk_div);
// reg [25:0] count;
// always @(posedge clk) begin
//     if (count == (2**n - 1)) begin
//         count <= 0;
//         clk_div <= ~clk_div;
//     end
//     else begin
//         count <= count + 1;
//     end
// end
// endmodule

module clock_divider(clk,clk_div);
    input clk;
    output clk_div;
    parameter n = 25;
    reg[n-1:0]num;
    wire[n-1:0]next_num;
    always@(posedge clk)begin
        num <= next_num;
    end
    assign next_num = num + 1;
    assign clk_div = num[n-1];
endmodule
 
module lab3_1(
    input clk, // (w5)
    input rst, // (w16)
    input en, // (v17)
    input speed, // (v16)
    output reg [15:0] led // (LD15-0)
    );
    //reg LD0,LD1;
    wire clk_div_use,clk_div27,clk_div25;
	
    //directly use two clock in our mudule
	clock_divider #(24) div1(.clk(clk), .clk_div(clk_div25)); 
    clock_divider #(26) div2(.clk(clk), .clk_div(clk_div27));

    assign clk_div_use = (speed)?clk_div25:clk_div27; 
    
    always@(posedge clk_div_use or posedge rst) begin
        if (rst == 1) begin
            led = 16'b0000_0000_0000_0000;
        end
        else if (en == 0) begin
            led = led;
        end
        else if (en == 1 && led == 16'b0000_0000_0000_0000) begin
            led = 16'b1000_1000_1000_1000;
        end
        else if (en == 1 && led == 16'b1000_1000_1000_1000) begin
            led = 16'b1100_1100_1100_1100;
        end
        else if (en == 1 && led == 16'b1100_1100_1100_1100) begin
            led = 16'b1110_1110_1110_1110;
        end
        else if (en == 1 && led == 16'b1110_1110_1110_1110) begin
            led = 16'b1111_1111_1111_1111;
        end
        else if (en == 1 && led == 16'b1111_1111_1111_1111) begin
            led = 16'b0000_0000_0000_0000;
        end
    end
    
endmodule
