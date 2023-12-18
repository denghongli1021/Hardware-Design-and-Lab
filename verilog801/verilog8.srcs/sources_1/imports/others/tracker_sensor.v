`timescale 1ns/1ps
module tracker_sensor(clk, reset, left_signal, right_signal, mid_signal, state);
    input clk;
    input reset;
    input left_signal, right_signal, mid_signal;
    output reg [2:0] state;

    // [TO-DO] Receive three signals and make your own policy.
    // Hint: You can use output state to change your action.
    always @(posedge clk or posedge reset) begin
        if (reset) state <= 3'b111;
        else begin
            if (left_signal && mid_signal && right_signal) begin
                state <= 3'b111;
            end 
            else if (left_signal && mid_signal && !right_signal) begin
                state <= 3'b110;
            end 
            else if (!left_signal && mid_signal && right_signal) begin
                state <= 3'b011;
            end 
            else if (!left_signal && mid_signal && !right_signal) begin
                state <= 3'b010;
            end 
            else if (left_signal && !mid_signal&& right_signal) begin
                state <= 3'b101;
            end        
            else if (left_signal && !mid_signal && !right_signal) begin
                state <= 3'b100;
            end   
            else if (!left_signal && !mid_signal && right_signal) begin
                state <= 3'b001;
            end     
            else begin
                state <= 3'b000;
            end
        end
    end
endmodule
