`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/02 16:45:35
// Design Name: 
// Module Name: lab3_3
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

module lab3_3(
    input clk,
    input rst,
    input en,
    output wire [15:0] led
    );
    //wire clk_div_use;
    wire clk_div24;
    clock_divider #(24) div1(.clk(clk), .clk_div(clk_div24));
    wire clk_div25;
    clock_divider #(25) div2(.clk(clk), .clk_div(clk_div25));
    wire clk_div26;
    clock_divider #(26) div3(.clk(clk), .clk_div(clk_div26));
    reg [5:0] count = 0;
    // 0 往右 1 往左
    reg [1:0] dir1 = 0;
    reg [1:0] dir2 = 0;
    reg [1:0] dir3 = 1;
    reg [1:0] next_dir1 = 0;
    reg [1:0] next_dir2 = 0;
    reg [1:0] next_dir3 = 1;
    reg [1:0] move1 = 1;
    reg [1:0] move2 = 0;
    reg [1:0] move3 = 0;
    reg [15:0] led1 = 16'b1000_0000_0000_0000; 
    reg [15:0] led2 = 16'b0000_1100_0000_0000; 
    reg [15:0] led3 = 16'b0000_0000_0000_0111; 
    reg [15:0] next_led1; 
    reg [15:0] next_led2 = 16'b0000_1100_0000_0000; 
    reg [15:0] next_led3; 
    // wire next_has_common_bit12 = (next_led1 & next_led2) != 16'b0000_0000_0000_0000;
    // wire next_has_common_bit23 = (next_led3 & next_led2) != 16'b0000_0000_0000_0000;
    wire has_common_bit12 = (next_led1 & led2) != 16'b0000_0000_0000_0000;
    wire has_common_bit23 = (next_led3 & led2) != 16'b0000_0000_0000_0000; //改 1
    assign led = led1|led2|led3;
    always@(posedge clk_div24 or posedge rst) begin
        if (rst) begin
            led1 <= 16'b1000_0000_0000_0000; 
        end
        else if (en == 0) begin
            led1 <= led1;
        end
        else begin
            if (has_common_bit12) begin
                if (led1 != 16'b1000_0000_0000_0000) begin
                    led1 <= led1 << 1;
                    dir1 <= 1;
                end
                else begin
                    led1 <= led1;
                    dir1 <= 0;
                end
            end
            else if (led1 == 16'b1000_0000_0000_0000) begin
                led1 <= 16'b0100_0000_0000_0000;
                dir1 <= 0;
            end
            else begin
                led1 <= next_led1;
            end
        end
    end
    always@(posedge clk_div25 or posedge rst) begin
        if (rst) begin
            led2 <= 16'b0000_1100_0000_0000;
        end
        else if (en == 0) begin
            led2 <= led2;
        end
        else begin
            if (((led2 << 1)&led1) && ((led2 >> 1) & led3)) begin
                led2 <= led2;
            end
            else if (dir2 == 0 && !((led2 >> 1)&led3)) begin 
                led2 <= led2 >> 1;
            end
            else if (dir2 == 0 && (led2 >> 1)&led3) begin
                dir2 <= 1;
                led2 <= led2 << 1;
            end
            else if (dir2 == 1 && !((led2 << 1) & led1)) begin
                led2 <= led2 << 1;
            end
            else if (dir2 == 1 && ((led2 << 1) & led1)) begin
                led2 <= led2 >> 1;
                dir2 <= 0;
            end
        end
    end
    always@(posedge clk_div26 or posedge rst) begin
        if (rst) begin
            led3 <= 16'b0000_0000_0000_0111; 
        end
        else if (en == 0) begin
            led3 <= led3;
        end
        else begin
            if (has_common_bit23) begin
                if (led3 != 16'b0000_0000_0000_0111) begin
                    led3 <= led3 >> 1;
                    dir3 <= 0;
                end
                else begin
                    led3 <= led3;
                    dir3 <= 1;
                end
            end
            else if (led3 == 16'b0000_0000_0000_0111) begin
                led3 <= 16'b0000_0000_0000_1110;
                dir3 <= 1;
            end
            else begin
                led3 <= next_led3;
            end
        end
    end
    always@(*) begin
        case(dir1) 
            0:begin
                next_led1 = led1 >> 1;
            end
            1:begin
                next_led1 = led1 << 1;
            end
            default: begin

            end
        endcase
        case(dir2) 
            0:begin
                next_led2 = led2 >> 1;
            end
            1:begin
                next_led2 = led2 << 1;
            end
            default: begin

            end
        endcase
        case(dir3) 
            0:begin
                next_led3 = led3 >> 1;
            end
            1:begin
                next_led3 = led3 << 1;
            end
            default: begin

            end
        endcase
    end
endmodule
