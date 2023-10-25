`timescale 1ns/1ps
module  Counter_Practice(
    input clk, 
    input rst_n, 
    output [3:0] out
);
reg [3:0]out;
reg [3:0] next_out;

always @(posedge clk) begin
    if(!rst_n)begin
        /* initialize the "out" register */
        out <= 0;
    end
    else begin
        /* get the next value of the "out" register */
        out <= next_out;
    end
end
always @(*) begin
    if(out == 4'd7) begin
        /* handle the boundary condition */
        next_out = 0;
    end
    else begin
        /* increment the value in the "out" register by 1'b1 and store it in the "next_out" register */
        next_out = out+1;
    end
end
endmodule