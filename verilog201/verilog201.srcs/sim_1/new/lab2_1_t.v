`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/23 15:39:02
// Design Name: 
// Module Name: lab2_1_t
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

module test_Parameterized_Ping_Pong_Counter; 

    // 定義模擬??????�信???
    reg clk;
    reg rst_n; 
    reg enable;
    reg flip;
    reg [3:0] max;
    reg [3:0] min;
    wire direction;
    wire [3:0] out;

    // 實�?��?�被測試??�模�?
    Parameterized_Ping_Pong_Counter test (
        .clk(clk),
        .rst_n(rst_n),
        .enable(enable),
        .flip(flip),
        .max(max),
        .min(min),
        .direction(direction),
        .out(out)
    );

    // ??��?��?��?�信???
    always begin
        #5 clk = ~clk;
    end

    // ??��?��?�信???
    initial begin
        clk = 0;
        rst_n = 0; // �?活�?�置
        enable = 1; // ??�用計數?��
        flip = 0; // 不翻轉方???
        max = 4; // ??大�??
        min = 0; // ??小�??

        // 等�?��?些�?��?��?��?�以確�?��?��?��?��?��??
        #10;

        // ??��?��?�置
        rst_n = 1;
    end

    // 模擬測試?���?
    initial begin
        //####### testcase1
        //?��??�到max min?��??�改變direction
        #55;
        
        //####### testcase2
        // enable == 0 ??? �? 不改�?
        enable = 0;
        #20
        enable = 1;

        //####### testcase3
        // max min change
        max = 10;
        min = 5;
        #50
        rst_n = 0;
        #10
        rst_n = 1;

        // ??��?�翻轉�?��?�以?��變方???
        //flip = 1;
        //#10;
        //flip = 0;

        // 等�?��?些�?��?��?��?�以�?察�?��??
        #1000;

        // ??�止模擬
        $finish;
    end

endmodule

