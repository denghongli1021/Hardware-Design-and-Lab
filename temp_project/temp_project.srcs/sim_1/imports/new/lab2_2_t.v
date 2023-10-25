`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/23 17:01:41
// Design Name: 
// Module Name: lab2_2_t
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


module lab2_2_t ;
    reg clk;
    reg rst_n;
    reg [3:0] max;
    reg [3:0] min;
    reg in_valid;
    reg [1:0]mode;
    reg [7:0] in_data;
    wire [11:0] out_data;
    wire [2:0] state;
    wire [3:0] counter_out;
    wire direction;
    wire [3:0] offset_cnt;
    
    Encoder test (
        .clk(clk), 
        .rst_n(rst_n), 
        .in_valid(in_valid),
        .in_data(in_data), 
        .max(max), 
        .min(min), 
        .mode(mode), 
        .out_data(out_data), 
        .state(state), 
        .counter_out(counter_out), 
        .direction(direction),
        .offset_cnt(offset_cnt)
    );

    always begin
        #5 clk = ~clk;
    end

    // 初始化信號
    initial begin
        clk = 0;
        rst_n = 0; // 激活重置
        max = 4; // 最大值
        min = 0; // 最小值
        in_valid = 0;
        mode = 2'b00;
        in_data = 2;

        // 等待一些時鐘週期以確保初始化完成
        #10;
        // 關閉重置
        rst_n = 1;
    end

    // 模擬測試用例
    initial begin
        #40;
        in_valid = 1;
        #10;
        repeat(8) begin
            in_data = in_data + 1;
            #10;
        end
        in_valid = 0;

        #500;
        $finish;
    end

endmodule
