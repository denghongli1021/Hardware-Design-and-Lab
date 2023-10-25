`timescale 1ns/1ps
module Encoder (
    input clk, 
    input rst_n, 
    input [3:0] max, 
    input [3:0] min, 
    input in_valid, 
    input [1:0] mode, 
    input [7:0] in_data, 
    output reg [11:0] out_data, 
    output reg [2:0] state, 
    output wire [3:0] counter_out, /* use wire to connect two module*/
    output wire direction,
    output reg [3:0] offset_cnt
);
reg [2:0] next_state;
parameter INIT = 3'd0;
parameter GET_DATA = 3'd1;
parameter ENCRYPT_DATA = 3'd2;
parameter OUTPUT_DATA = 3'd3;

reg [11:0] output_tmp [7:0], next_output_tmp [7:0];

reg [3:0] offset_cnt;
reg [3:0] next_offset_cnt;
// reg rst_n2;
/* using mode signal to process the flip and enable signal */
wire flip, enable;

/* fill in the following blanks (e.g.: a = (b == 2'b01) ? 1'b1 : 1'b0) */
assign flip = (mode == 2'b01) ? 1'b1: 1'b0;
assign enable = (mode == 2'b10) ? 1'b0 : 1'b1;
wire r1, r2, r3, r4;
reg [11:0] data_in;
reg [11:0] parity_data;  // 用于存储包括数据和冗余位的编码数据
assign r1 = data_in[0] ^ data_in[1] ^ data_in[3] ^ data_in[4] ^ data_in[6];
assign r2 = data_in[0] ^ data_in[2] ^ data_in[3] ^ data_in[5] ^ data_in[6];
assign r3 = data_in[1] ^ data_in[2] ^ data_in[3] ^ data_in[7];
assign r4 = data_in[4] ^ data_in[5] ^ data_in[6] ^ data_in[7];

/* instantiate the Parameterized_Ping_Pong_Counter module */
Parameterized_Ping_Pong_Counter pppc(
    .clk(clk), 
    .rst_n(rst_n), 
    .enable(enable), 
    .max(max), 
    .min(min), 
    .flip(flip), 
    .direction(direction), 
    .out(counter_out)
);

/* state transition */
always@(posedge clk)begin
    if (rst_n == 1'b0) begin
        state = INIT;
        data_in = 0;
    end
    else begin
        state = next_state;
    end
end

always@(*) begin
    case (state) 
    INIT: begin
        if (in_valid == 1'b1) next_state = GET_DATA;
        else begin
            next_state = INIT;
        end
    end
    GET_DATA : begin
        if (!in_valid && mode == 2'b10 || offset_cnt == 7) begin
            next_state = ENCRYPT_DATA;
        end
        else next_state = GET_DATA;
    end
    ENCRYPT_DATA : begin
        if (offset_cnt == 7) begin
            next_state = OUTPUT_DATA;
        end
        else next_state = ENCRYPT_DATA;
    end
    OUTPUT_DATA : begin
        if (offset_cnt == 7) begin
            next_state = INIT;
        end
        else next_state = OUTPUT_DATA;
    end
    default : begin
        next_state = state;
    end
    endcase
end
/* counter (this is the offset_cnt in the Practice_2) */
/* offset_cnt */
always@(posedge clk) begin
    if (!rst_n) begin
        offset_cnt <= 4'd0;
    end
    else begin
        offset_cnt <= next_offset_cnt;
    end
end
/* determine the next_offset_cnt value base on the current state */
always @(*) begin
    if(offset_cnt >= 4'd7) begin
        /* handle the boundary condition */
        next_offset_cnt = 0;
    end
    else begin
        /* increment the value in the "out" register by 1'b1 and store it in the "next_out" register */
        case(state)
            INIT: next_offset_cnt = 0;
            GET_DATA: next_offset_cnt = offset_cnt + 1;
            ENCRYPT_DATA: next_offset_cnt = offset_cnt+1;
            OUTPUT_DATA: next_offset_cnt = offset_cnt+1;
            default: begin
                next_offset_cnt = offset_cnt;
            end
        endcase
    end
end
// always@(posedge clk) begin
//     //if (state == 0 && in_valid)
//     if (state == GET_DATA && mode == 2'b10 && !in_valid) begin
//         rst_n2 = 0;
//     end
//     else if (rst_n2 == 0) begin
//         rst_n2 = 1;
//     end
// end
// always @(posedge clk) begin
//     if(!rst_n) begin
//         /* initialize the "out" register */
//         offset_cnt <= 0;
//     end
//     else if (state == INIT) begin
//         offset_cnt <= 7;
//     end
//     else begin
//         /* get the next value of the "out" register */
//         offset_cnt <= next_offset_cnt;
//     end
// end
// always @(*) begin
//     if(offset_cnt == 4'd7) begin
//         /* handle the boundary condition */
//         next_offset_cnt = 0;
//     end
//     else begin
//         /* increment the value in the "out" register by 1'b1 and store it in the "next_out" register */
//         next_offset_cnt = offset_cnt + 1;
//     end
// end
/* data processing  */
always@(posedge clk) begin
    if(!rst_n) begin
        output_tmp[0] <= 12'b0;
    end
    // else if (state == GET_DATA && offset_cnt == 6) begin
    //     output_tmp[0] <= next_output_tmp[0];
    //     output_tmp[1] <= next_output_tmp[1];
    //     output_tmp[2] <= next_output_tmp[2];
    //     output_tmp[3] <= next_output_tmp[3];
    //     output_tmp[4] <= next_output_tmp[4];
    //     output_tmp[5] <= next_output_tmp[5];
    //     output_tmp[6] <= next_output_tmp[6];
    //     //output_tmp[7] <= next_output_tmp[7];
    // end
    // else if (state == ENCRYPT_DATA && offset_cnt == 0) begin
    //     output_tmp[0] <= next_output_tmp[0];
    //     output_tmp[1] <= next_output_tmp[1];
    //     output_tmp[2] <= next_output_tmp[2];
    //     output_tmp[3] <= next_output_tmp[3];
    //     output_tmp[4] <= next_output_tmp[4];
    //     output_tmp[5] <= next_output_tmp[5];
    //     output_tmp[6] <= next_output_tmp[6];
    //     output_tmp[7] <= next_output_tmp[7];
    // end
end
always@(*) begin
    case (state)
    INIT : begin
        next_output_tmp[0] = 0;
        next_output_tmp[1] = 0;
        next_output_tmp[2] = 0;
        next_output_tmp[3] = 0;
        next_output_tmp[4] = 0;
        next_output_tmp[5] = 0;
        next_output_tmp[6] = 0;
        next_output_tmp[7] = 0;
    end
    GET_DATA : begin
        if(in_valid && next_output_tmp[0] == 0) next_output_tmp[0] = in_data;
        else if (in_valid && offset_cnt <= 6) next_output_tmp[next_offset_cnt] = in_data;
        if (offset_cnt == 7) begin
            next_output_tmp[0] = (next_output_tmp[0] + counter_out) % 256;
            data_in = next_output_tmp[0];
            parity_data[0] = r1;
            parity_data[1] = r2;
            parity_data[2] = data_in[0];
            parity_data[3] = r3;
            parity_data[4] = data_in[1];
            parity_data[5] = data_in[2];
            parity_data[6] = data_in[3];
            parity_data[7] = r4;
            parity_data[8] = data_in[4];
            parity_data[9] = data_in[5];
            parity_data[10] = data_in[6];
            parity_data[11] = data_in[7];
            output_tmp[0] = parity_data;
        end
    end
    ENCRYPT_DATA : begin
        if (offset_cnt <= 6) begin
            next_output_tmp[next_offset_cnt] = (next_output_tmp[next_offset_cnt] + counter_out) % 256;
            data_in = next_output_tmp[next_offset_cnt];
            parity_data[0] = r1;
            parity_data[1] = r2;
            parity_data[2] = data_in[0];
            parity_data[3] = r3;
            parity_data[4] = data_in[1];
            parity_data[5] = data_in[2];
            parity_data[6] = data_in[3];
            parity_data[7] = r4;
            parity_data[8] = data_in[4];
            parity_data[9] = data_in[5];
            parity_data[10] = data_in[6];
            parity_data[11] = data_in[7];
            output_tmp[next_offset_cnt] = parity_data;
        end
    end
    OUTPUT_DATA : begin

    end
    default : begin
        next_output_tmp[offset_cnt] = output_tmp[offset_cnt];
    end
    endcase
end
/* output data */
always @(posedge clk) begin
    if (state == OUTPUT_DATA && offset_cnt == 7) begin
        out_data = 0;
    end
    else if (state == INIT || state == GET_DATA || state == ENCRYPT_DATA) begin
        out_data = 0;
    end
    else if (state == ENCRYPT_DATA && offset_cnt != 7) begin
        out_data = 0;
    end
    else if (state == ENCRYPT_DATA && offset_cnt == 7) begin
        out_data <= output_tmp[0];
    end
    else if (state == OUTPUT_DATA && offset_cnt == 0) begin
        /* determine the value of out_data under different circumstances */
        out_data <= output_tmp[1];
    end
    else if (state == OUTPUT_DATA && offset_cnt == 1) begin
        out_data <= output_tmp[2];
    end
    else if (state == OUTPUT_DATA && offset_cnt == 2) begin
        out_data <= output_tmp[3];
    end
    else if (state == OUTPUT_DATA && offset_cnt == 3) begin
        out_data <= output_tmp[4];
    end
    else if (state == OUTPUT_DATA && offset_cnt == 4) begin
        out_data <= output_tmp[5];
    end
    else if (state == OUTPUT_DATA && offset_cnt == 5) begin
        out_data <= output_tmp[6];
    end
    else if (state == OUTPUT_DATA && offset_cnt == 6) begin
        out_data <= output_tmp[7] ;
    end
    else if (state == OUTPUT_DATA && offset_cnt == 7) begin
        /* determine the value of out_data under different circumstances */
        out_data <= 0;
    end
end
endmodule
