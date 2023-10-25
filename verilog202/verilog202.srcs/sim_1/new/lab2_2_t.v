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
    //wire [3:0] offset_cnt;
    
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
        .direction(direction)
        // .offset_cnt(offset_cnt)
    );

    always begin
        #5 clk = ~clk;
    end

    // ??å?‹å?–ä¿¡???
    initial begin
        clk = 0;
        rst_n = 0; // æ¿?æ´»é?ç½®
        max = 4; // ??å¤§å??
        min = 0; // ??å°å??
        in_valid = 0;
        mode = 2'b00;
        in_data = 64;

        // ç­‰å?…ä?äº›æ?‚é?˜é?±æ?Ÿä»¥ç¢ºä?å?å?‹å?–å?Œæ??
        #10;
        // ??œé?‰é?ç½®
        rst_n = 1;
    end

    // æ¨¡æ“¬æ¸¬è©¦?”¨ä¾?
    initial begin
        #20;
        in_valid = 1;
        
        repeat(8) begin
            #10;
            if (in_data != 16) begin
                in_data = in_data + 1;
            end
        end
        in_valid = 0;
        mode = 2'b10;
        #500; 
        $finish;
    end

endmodule
// `timescale 1ns/1ps
// module FSM_2_2;
//     reg clk = 1'b0;
//     reg rst_n = 1'b0;
//     reg in_valid = 1'b0;
//     reg [7:0] in_data;
//     reg [3:0] max = 4'b0100; 
//     reg [3:0] min = 4'b0000; 
//     reg [1:0] mode = 2'b00; 
    
//     wire [11:0] out_data; 
//     wire [2:0] state;
//     wire [3:0] counter_out; /* use wire to connect two module*/
//     wire direction;
//     // wire [7:0] output_tmp_value;
//     // wire [7:0] next_output_tmp_value;
//     //wire e_value;
//     wire [3:0] offset_cnt;
//     always #5 clk = ~clk;

//     Encoder _encode_inst (
//         .clk(clk),
//         .rst_n(rst_n),
//         .max(max),
//         .min(min),
//         .in_valid(in_valid),
//         .mode(mode),
//         .in_data(in_data),
//         .out_data(out_data),
//         .state(state),
//         .counter_out(counter_out),
//         .direction(direction),
//         .offset_cnt(offset_cnt)
//     );

//     initial begin
//         @(negedge clk) rst_n = 1'b1;

//         #10
//         @(negedge clk) begin
//             in_valid = 1'b1;
//             in_data = 8'b00000010;
//         end
        

//         #10
//         @(negedge clk) in_data = 8'b00000100;

//         #10
//         @(negedge clk) in_data = 8'b00000110;

//         #10
//         @(negedge clk) in_data = 8'b00001000;

//         #10
//         @(negedge clk) in_data = 8'b00001010;

//         #10
//         @(negedge clk) in_data = 8'b00001100;

//         #10
//         @(negedge clk) in_data = 8'b00001110;

//         #10
//         @(negedge clk) in_data = 8'b00010000;

//         #10
//         @(negedge clk) begin 
//             in_valid = 1'b0;
//             mode = 2'b10;
//         end
        
//         #170
//         @(negedge clk) begin
//             mode = 2'b00;
//             in_valid = 1'b1;
//             in_data = 8'b11100110;
//         end

//         #10
//         @(negedge clk) begin
//             in_data = 8'b11100111;
//             max = 4'b1111;
//             min = 4'b0010;
//         end

//         #10
//         @(negedge clk) in_data = 8'b11101000;

//         #10
//         @(negedge clk) in_data = 8'b11101001;

//         #10
//         @(negedge clk) in_data = 8'b11101010;
    
//         #10
//         @(negedge clk) in_data = 8'b11101100;

//         #10
//         @(negedge clk) in_data = 8'b11101101;

//         #10
//         @(negedge clk) in_data = 8'b11101110;

//         #10
//         @(negedge clk) begin
//             in_valid = 1'b0;
//             mode = 2'b10;
//         end

//         #400

//         $finish;
//     end

// endmodule