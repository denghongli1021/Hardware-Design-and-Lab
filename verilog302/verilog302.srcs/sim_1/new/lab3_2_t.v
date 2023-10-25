`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/02 02:04:29
// Design Name: 
// Module Name: lab3_2_t
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


module lab3_2_t ;
    reg clk;
    reg rst;
    reg en;
    reg speed;
    reg dir;
    wire [15:0] led;
    wire [3:0] state;
    wire [3:0] count;
    // wire [3:0] clk_div_use;

    lab3_2 test (
        .clk(clk),
        .rst(rst),
        .en(en),
        .speed(speed),
        .dir(dir),
        .led(led),
        .state(state),
        .count(count)
        // .clk_div_use(clk_div_use)
    );
    always begin
        #5 clk = ~clk;
    end
    initial begin
        clk = 0;
        rst = 1;
        en = 0;
        speed = 0;
        dir = 0;

        #10;
        en = 1;
        rst = 0;
    end
endmodule
