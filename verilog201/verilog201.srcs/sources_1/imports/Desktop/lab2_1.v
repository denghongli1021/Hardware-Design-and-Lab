`timescale 1ps/1ps
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
always @(posedge clk) begin
    if (rst_n == 0) begin
        out <= min;
        direction <= 1;
    end
    else if (max <= min || (max == min) && (max == out) || out>max || out < min) begin
        out <= out;
    end
    else if (enable) begin
        if (out == max) begin
            direction = 0;
        end
        else if (out == min) begin
            direction = 1;
        end
        else if (flip == 1 && direction == 0) begin
            direction = 1;
        end
        else if (flip == 1 && direction == 1) begin
            direction = 0;
        end
        if (direction == 0) out = out - 1;
        else if (direction == 1) out = out + 1;
    end
end

endmodule