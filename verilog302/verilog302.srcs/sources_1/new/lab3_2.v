`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/28 18:48:30
// Design Name: 
// Module Name: lab3_2
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

module lab3_2( 
    input clk,
    input rst,
    input en,
    input speed,
    input dir,
    output reg [15:0] led
    //output reg [3:0] state,
    //output reg [3:0] count
    // output wire clk_div_use
    );
    
    parameter REGULAR = 3'd0;
    //parameter PRE_ESCAPE = 3'd1;
    parameter ESCAPE = 3'd2;
    //parameter PRE_SHINING = 3'd3;
    parameter SHINING = 3'd4;
    // parameter PRE_REGULAR = 3'd5; 

    //reg [2:0] have_started;
    reg [2:0] state = REGULAR;
    reg [2:0] next_state = REGULAR;
    reg [3:0] count = 0;
    reg [15:0] led = 16'b0000_0000_0000_0000;
    
    wire clk_div_use;
    wire clk_div26,clk_div24;
	
    //directly use two clock in our mudule
	clock_divider #(24) div1(.clk(clk), .clk_div(clk_div24));
    clock_divider #(26) div2(.clk(clk), .clk_div(clk_div26));
    assign clk_div_use = (speed)?clk_div24:clk_div26;
    // state
    always@(posedge clk_div_use or posedge rst) begin
        if (rst == 1) begin
            state = REGULAR;
        end
        else if (en==1) begin
            state = next_state;
        end
    end
    // next_state
    always@(posedge clk_div_use or posedge rst) begin
        if (rst == 1) begin
            next_state = REGULAR;
        end
        else if (en == 1) begin
            case(state) 
            REGULAR : begin
                //next_state = ESCAPE;
                if (count == 3 && led == 16'b1110_1110_1110_1110) begin
                    // next_state = PRE_ESCAPE;
                    next_state = ESCAPE;
                end
            end
            // PRE_ESCAPE : begin
            //     next_state = ESCAPE;
            // end
            ESCAPE : begin
                if (dir == 0 && led == 16'b0000_0000_0000_0011) begin
                    next_state = SHINING; 
                end
                else if (dir == 1 && led == 16'b1111_1111_1111_1111) begin
                    next_state = REGULAR;
                end
                else if(dir == 1 && led == 16'b0011_1111_1111_1111) begin
                    next_state = REGULAR;
                end
            end
            // PRE_SHINING : begin
            //     next_state = SHINING;
            // end
            SHINING : begin
                if (count == 7) begin
                    next_state = REGULAR;
                end
            end
            // PRE_REGULAR :  begin
            //     next_state = REGULAR;
            // end
            default : begin
                next_state = state;
            end
            endcase
        end
    end
    // count
    always@(posedge clk_div_use or posedge rst) begin
        if (rst == 1) begin
            count = 0;
        end
        else if (en == 1) begin
            case(state)
            REGULAR : begin
                if (led == 16'b0000_0000_0000_0000) begin
                    count = count + 1;
                end
            end
            ESCAPE : begin
                count = 0;
            end
            SHINING : begin
                if (next_state != REGULAR) begin
                    count = count + 1;
                end
                else
                if (count > 7) begin
                    count = 0;
                end
            end
            default : begin
                count = 0;
            end
            endcase
        end
    end
    // led
    always@(posedge clk_div_use or posedge rst) begin
        if (rst == 1) begin
            led = 16'd0;
        end
        else if (en == 0) begin
            led = led;
        end
        else begin 
            case (state) 
                REGULAR : begin
                    if (led == 16'b0000_0000_0000_0000) begin
                        led = 16'b1000_1000_1000_1000;
                    end
                    else if (led == 16'b1000_1000_1000_1000) begin
                        led = 16'b1100_1100_1100_1100;
                    end
                    else if (led == 16'b1100_1100_1100_1100) begin
                        led = 16'b1110_1110_1110_1110;
                    end
                    else if (led == 16'b1110_1110_1110_1110) begin
                        led = 16'b1111_1111_1111_1111;
                    end
                    else if (count == 3 && led == 16'b1111_1111_1111_1111) begin
                        led = 16'b1111_1111_1111_1111;
                    end
                    else if (led == 16'b1111_1111_1111_1111) begin
                        led = 16'b0000_0000_0000_0000;
                    end
                    else begin
                        led = 16'b0000_0000_0000_0000;
                    end
                end
                // PRE_ESCAPE : begin
                //     led = led;
                // end
                ESCAPE : begin
                    if (dir == 0) begin
                        //led = 16'd0;
                        if (led == 16'b0000_0000_0000_0000) begin
                            led = 16'b1111_1111_1111_1111;
                        end
                        else if (led == 16'b0000_0000_0000_0011) begin
                            led = 16'b0000_0000_0000_0000;
                        end
                        else if (led == 16'b0000_0000_0000_1111) begin
                            led = 16'b0000_0000_0000_0011;
                        end
                        else if (led == 16'b0000_0000_0011_1111) begin
                            led = 16'b0000_0000_0000_1111;
                        end
                        else if (led == 16'b0000_0000_1111_1111) begin
                            led = 16'b0000_0000_0011_1111;
                        end
                        else if (led == 16'b0000_0011_1111_1111) begin
                            led = 16'b0000_0000_1111_1111;
                        end
                        else if (led == 16'b0000_1111_1111_1111) begin
                            led = 16'b0000_0011_1111_1111;
                        end
                        else if (led == 16'b0011_1111_1111_1111) begin
                            led = 16'b0000_1111_1111_1111;
                        end
                        else if (led == 16'b1111_1111_1111_1111) begin
                            led = 16'b0011_1111_1111_1111;
                        end
                    end
                    else if (dir == 1) begin
                        //led = 16'd1;
                        if (led == 16'b0000_0000_0000_0000 && next_state != REGULAR) begin
                            led = 16'b0000_0000_0000_0011;
                        end
                        else if (led == 16'b0000_0000_0000_0011) begin
                            led = 16'b0000_0000_0000_1111;
                        end
                        else if (led == 16'b0000_0000_0000_1111) begin
                            led = 16'b0000_0000_0011_1111;
                        end
                        else if (led == 16'b0000_0000_0011_1111) begin
                            led = 16'b0000_0000_1111_1111;
                        end
                        else if (led == 16'b0000_0000_1111_1111) begin
                            led = 16'b0000_0011_1111_1111;
                        end
                        else if (led == 16'b0000_0011_1111_1111) begin
                            led = 16'b0000_1111_1111_1111;
                        end
                        else if (led == 16'b0000_1111_1111_1111) begin
                            led = 16'b0011_1111_1111_1111;
                        end
                        else if (led == 16'b0011_1111_1111_1111) begin
                            led = 16'b1111_1111_1111_1111;
                        end
                        // else if (led == 16'b1111_1111_1111_1111 && count != 0) begin // next_state == REGULAR
                        //     led = 16'b1000_1000_1000_1000;
                        // end
                        else if (led == 16'b1111_1111_1111_1111) begin
                            led = 16'b0000_0000_0000_0000;
                        end
                    end
                end
                // PRE_SHINING : begin
                //     led = 16'b0000_0000_0000_0000;
                // end
                SHINING : begin
                    if (led == 16'd0) begin
                        led = 16'b1111_1111_1111_1111;
                    end
                    else if (led == 16'b1111_1111_1111_1111) begin
                        led = 16'd0;
                    end
                end
                // PRE_REGULAR : begin
                //     led = 16'b0000_0000_0000_0000;
                // end
                default : begin
                    led = led;
                end
            endcase
        end
    end

endmodule