`timescale 1ns/1ps
module FSM_Practice_t;
reg clk = 1'b1;
reg rst_n = 1'b1;
reg in_valid = 1'b0;
reg [5:0] in_data;
wire [5:0] out_data;
wire [2:0] state;
wire [3:0] offset_cnt;

always#5 clk = ~clk;

FSM_Practice fp(
    .clk(clk), 
    .rst_n(rst_n), 
    .in_data(in_data), 
    .in_valid(in_valid), 
    .out_data(out_data), 
    .state(state),
    .offset_cnt(offset_cnt)
    );

initial begin
    @(negedge clk) rst_n = 1'b0;
    @(negedge clk) rst_n = 1'b1;
    
    @(negedge clk) in_data = 6'd50;
    @(negedge clk) in_valid = 1'b1;

    repeat(8) begin
        in_data = in_data + 1'b1;
        #10;
    end
    @(negedge clk) in_valid = 1'b0;

    #180;
    @(negedge clk) in_data = 6'b0;
    @(negedge clk) in_valid = 1'b1;
    @(negedge clk) in_data = 6'd60;
    #70
    @(negedge clk) in_valid = 1'b0;
    #190
    
    @(negedge clk) in_valid = 1'b1;
    in_data = 6'd60;
    repeat(8) begin
        in_data = in_data - 1'b1;
        #10;
    end
    @(negedge clk) in_valid = 1'b0;
    #180
    $finish;
end
endmodule