`timescale 1ns/1ps
module Parameterized_Ping_Pong_Counter (
    input clk, 
    input rst_n, 
    input enable, 
    input flip, 
    input [3:0] max, 
    input [3:0] min, 
    output reg direction, 
    output reg [3:0] out
);

// Output signals can be reg or wire
// add your design here
reg [3:0] out_temp;
/*
pos edge
當 rst_n == 0 ， out = min

要加一的時候 要判斷是不是 out > max, max ≤ min, or out < min
還有當 out > max, max ≤ min, or out < min 要  hold the output and direction
*/
always @(posedge clk) begin
    if ((max == min) && (max == out)) begin
        direction = direction;
    end
    else if (flip == 1) begin
        direction = !direction;
    end
    else if (out == max) begin
        direction = 0;
    end
    else if (out == min) begin
        direction = 1;
    end
    else begin
        direction = direction;
    end
end

always @(*) begin
    if (enable && out == max) begin
        out_temp = out - 1 ;
    end
    else if (enable && out == min) begin
        out_temp = out + 1 ;
    end
    else if (enable && (direction == 1)) begin
        out_temp = out + 1;
    end
    else if (enable && (direction == 0)) begin
        out_temp = out - 1;
    end
    else begin
        out_temp = out;
    end
end
//output data
always @(posedge clk) begin
    if (!rst_n) begin
        out <= min;
        //out_temp <= min;
        direction = 1;
    end
    else if (max <= min) begin
        out <= out;
    end
    else if ((max == min) && (max == out)) begin
        out <= out;
    end
    else if (out > max || out < min) begin
        out <= out;
    end
    else begin
        out <= out_temp;
    end
end
endmodule
