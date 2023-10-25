`timescale 1ns/1ps
module FSM_Practice(
    input clk, 
    input rst_n, 
    input [5:0] in_data, 
    input in_valid, 
    output [5:0] out_data, 
    output [2:0] state, 
    output [3:0] offset_cnt
);
reg [5:0] out_data;
reg [2:0] state;

parameter INIT = 3'd0;
parameter GET_DATA = 3'd1;
parameter PROCESS_DATA = 3'd2;
parameter OUTPUT_DATA = 3'd3;

reg [2:0] next_state;
reg [3:0] offset_cnt, next_offset_cnt; // counter that helps countrol the state transition
reg [5:0] output_tmp [7:0], next_output_tmp [7:0];

/* state transition */
always@(posedge clk)begin
    if(!rst_n) begin
        state <= INIT;
    end
    else begin
        state <= next_state;
    end
end
always@(*) begin
    case(state)
    INIT: begin
        if(in_valid) next_state = GET_DATA;
        else next_state = INIT;
    end
    GET_DATA: begin
        /* determine the next state */
        if (!in_valid) next_state = PROCESS_DATA;
        else next_state = state;
    end
    PROCESS_DATA: begin
        if(offset_cnt == 4'd7) next_state = OUTPUT_DATA;
        else next_state = PROCESS_DATA;
    end
    OUTPUT_DATA: begin
        /* determine the next state */
        if (offset_cnt == 4'd7) next_state = INIT;
        else next_state = OUTPUT_DATA;
    end
    default: begin
        next_state = state;
    end
    endcase
end

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
            PROCESS_DATA: next_offset_cnt = offset_cnt+1;
            OUTPUT_DATA: next_offset_cnt = offset_cnt+1;
            default: begin
                next_offset_cnt = offset_cnt;
            end
        endcase
    end
end
// always@(*) begin
//     case(state)
//     INIT: next_offset_cnt = 0;
//     GET_DATA: next_offset_cnt = offset_cnt + 1;
//     PROCESS_DATA: next_offset_cnt = (offset_cnt >= 7) ?  0 : offset_cnt+1;
//     OUTPUT_DATA: next_offset_cnt = (offset_cnt >= 7) ?  0 : offset_cnt+1;
//     default: begin
//         next_offset_cnt = offset_cnt;
//     end
//     endcase
// end

/* output_tmp */
always@(posedge clk) begin
    if(!rst_n) begin
        output_tmp[0] <= 6'b0;
    end
    else if (state == PROCESS_DATA && offset_cnt == 0) begin
        output_tmp[0] <= next_output_tmp[0];
        output_tmp[1] <= next_output_tmp[1];
        output_tmp[2] <= next_output_tmp[2];
        output_tmp[3] <= next_output_tmp[3];
        output_tmp[4] <= next_output_tmp[4];
        output_tmp[5] <= next_output_tmp[5];
        output_tmp[6] <= next_output_tmp[6];
        output_tmp[7] <= next_output_tmp[7];
    end
end
/* determine the next_output_tmp value base on the current state */
/* You can store the in_data in the next_output_tmp (by using the value of offset_cnt reg)
    and then process these data in the PROCESS_DATA state */
always@(*) begin
    case(state)
    INIT: begin
        next_output_tmp[0] = 0;
        next_output_tmp[1] = 0;
        next_output_tmp[2] = 0;
        next_output_tmp[3] = 0;
        next_output_tmp[4] = 0;
        next_output_tmp[5] = 0;
        next_output_tmp[6] = 0;
        next_output_tmp[7] = 0;
    end
    GET_DATA: begin
        if(in_valid && next_output_tmp[0] == 0) next_output_tmp[0] = in_data;
        else if (in_valid && offset_cnt <= 6) next_output_tmp[next_offset_cnt] = in_data;
        // else if (in_valid && next_offset_cnt == 7) next_output_tmp[offset_cnt] = in_data;
        //else next_output_tmp[offset_cnt] = 0; 
    end
    PROCESS_DATA: begin
        if (output_tmp[0] == next_output_tmp[0]) begin
            output_tmp[0] = next_output_tmp[0] + 1;
        end
        if (output_tmp[1] == next_output_tmp[1]) begin
            output_tmp[1] = next_output_tmp[1] + 1;
        end
        if (output_tmp[2] == next_output_tmp[2] )begin
            output_tmp[2] = next_output_tmp[2] + 1;
        end
        if (output_tmp[3] == next_output_tmp[3] )begin
            output_tmp[3] = next_output_tmp[3] + 1;
        end
        if (output_tmp[4] == next_output_tmp[4] )begin
            output_tmp[4] = next_output_tmp[4] + 1;
        end
        if (output_tmp[5] == next_output_tmp[5] )begin
            output_tmp[5] = next_output_tmp[5] + 1;
        end
        if (output_tmp[6] == next_output_tmp[6] )begin
            output_tmp[6] = next_output_tmp[6] + 1;
            output_tmp[7] = next_output_tmp[7] + 1;
        end
        // if (output_tmp[7] == next_output_tmp[7])begin
        //     output_tmp[7] = next_output_tmp[7] + 1;
        // end
    end
    default: begin
        next_output_tmp[offset_cnt] = output_tmp[offset_cnt];
    end
    endcase
end
/* output data */
always @(posedge clk) begin
    if (!rst_n) begin
        out_data <= 6'b0;
    end
    // else if (state == INIT) begin
    //     out_data <= 6'b0;
    // end
    else if (state == PROCESS_DATA && offset_cnt == 7) begin
        out_data <= output_tmp[0];
    end
    else if (state == OUTPUT_DATA && offset_cnt == 0) begin
        /* determine the value of out_data under different circumstances */
        out_data <= output_tmp[1];
    end
    else if (state == OUTPUT_DATA && offset_cnt == 1) begin
        /* determine the value of out_data under different circumstances */
        out_data <= output_tmp[2];
    end
    else if (state == OUTPUT_DATA && offset_cnt == 2) begin
        /* determine the value of out_data under different circumstances */
        out_data <= output_tmp[3];
    end
    else if (state == OUTPUT_DATA && offset_cnt == 3) begin
        /* determine the value of out_data under different circumstances */
        out_data <= output_tmp[4];
    end
    else if (state == OUTPUT_DATA && offset_cnt == 4) begin
        /* determine the value of out_data under different circumstances */
        out_data <= output_tmp[5];
    end
    else if (state == OUTPUT_DATA && offset_cnt == 5) begin
        /* determine the value of out_data under different circumstances */
        out_data <= output_tmp[6];
    end
    else if (state == OUTPUT_DATA && offset_cnt == 6) begin
        /* determine the value of out_data under different circumstances */
        out_data <= output_tmp[7] ;
    end
    else if (state == OUTPUT_DATA && offset_cnt == 7) begin
        /* determine the value of out_data under different circumstances */
        out_data <= 0;
    end
end

endmodule