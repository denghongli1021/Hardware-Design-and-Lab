`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/03 11:14:55
// Design Name: 
// Module Name: lab3_3_t
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


module lab3_3_t(
    input clk,
    input rst,
    input en,
    output wire [15:0] led
    );

    lab3_3 test (
        .clk(clk),
        .rst(rst),
        .en(en),
        .led(led)
    );
    always begin
        #5 clk = ~clk;
    end

    initial begin
        en = 1;
        rst = 0;
        #500;
    end
endmodule
