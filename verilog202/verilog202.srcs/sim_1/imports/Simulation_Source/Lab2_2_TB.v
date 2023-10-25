`timescale 1ns/1ps

module Encoder_t;
reg clk = 1'b0;
reg rst_n = 1'b0;
reg in_valid = 1'b0;
reg [7:0] in_data;
reg [3:0] max = 4'd4;
reg [3:0] min = 4'd0;
reg [1:0] mode = 2'b0;

wire [11:0] out_data;
wire [2:0] state;
wire [3:0] counter_out;
wire direction;

reg [11:0] ans_buf [7:0];
integer file_in, file_err, str;
integer i, j;
integer code;
always#5 clk = ~clk;

Encoder en(
    .clk(clk), 
    .rst_n(rst_n), 
    .max(max), 
    .min(min), 
    .in_valid(in_valid), 
    .mode(mode), 
    .in_data(in_data), 
    .out_data(out_data),
    .state(state),
    .counter_out(counter_out),
    .direction(direction)
);
reg [5:0] cnt_1, cnt_2, cnt_3;
always@(posedge clk) begin
    if(!rst_n) begin
        cnt_1 <= 6'd0;
        cnt_2 <= 6'd0;
        cnt_3 <= 6'd0;
    end
    else begin
        case(state)
        3'd1: begin
            cnt_1 <= cnt_1 + 1'b1;
            cnt_2 <= 6'd0;
            cnt_3 <= 6'd0;
        end
        3'd2: begin
            cnt_1 <= cnt_1;
            cnt_3 <= 6'd0;
            if(cnt_1 !== 6'd8) begin
                $display("state transition 1 fail");
                $finish;
            end
            else begin
                cnt_2 <= cnt_2 + 1'b1;
            end
        end
        3'd3: begin
            cnt_1 <= 6'd0;
            cnt_2 <= cnt_2;
            if(cnt_2 !== 6'd8) begin
                $display("state transition 2 fail");
                $finish;
            end
            else begin
                cnt_3 <= cnt_3 + 1'b1;
            end
        end
        default: begin
            cnt_1 <= cnt_1;
            cnt_2 <= cnt_2;
            cnt_3 <= cnt_3;
        end
        endcase
    end
end
initial begin
    file_in = $fopen("Lab2_en.txt", "r");
    file_err = $ferror(file_in, str);
    if(file_err) begin
        $display("fail to load txt file");
        $finish;
    end

    $display("===== Starting the simulation =====");
    @(negedge clk) rst_n = 1'b1;
    @(negedge clk) in_valid = 1'b1;
    in_data = 8'd1;
    #10;
    repeat(7) begin
        in_data = in_data + 1'b1;
        #10;
    end
    
    if(out_data !== 12'd0) begin
        $display("fail, out_data should be 0 when it is not in the OUTPUT_DATA state");
        $finish;
    end
    
    mode = 2'b10;
    in_valid = 1'b0;
    #90;

    get_data;
    j = 0;
    repeat(8) begin
        @(posedge clk) begin
            if(out_data !== ans_buf[j]) begin
                $display("testcase_1 fail");
                $finish;
            end
            else begin
                j = j + 1;
            end
        end
    end

    #10;
    @(negedge clk)mode = 2'b00;
    in_valid = 1'b1;
    in_data = 8'd236;
    if(out_data !== 12'd0) begin
        $display("fail, out_data should be 0 when it is not in the OUTPUT_DATA state");
        $finish;
    end
    @(negedge clk) max = 4'd15;
    min = 4'd2;
    repeat(7) begin
        in_data = in_data + 1'b1;
        #10;
    end
    mode = 2'b10;
    in_valid = 1'b0;
    #90;

    get_data;
    j = 0;
    repeat(8) begin
        @(posedge clk) begin
            if(out_data !== ans_buf[j]) begin
                $display("testcase_2 fail");
                $finish;
            end
            else begin
                j = j + 1;
            end
        end
    end

    @(negedge clk)mode = 2'b00;
    in_valid = 1'b1;
    in_data = 8'd100;
    @(negedge clk) max = 4'd12;
    min = 4'd0;
    repeat(3) begin
        in_data = in_data + 1'b1;
        #10;
    end
    mode = 2'b01;
    in_data = in_data + 1'b1;
    #10
    mode = 2'b10;
    in_data = in_data + 1'b1;
    #10
    #20
    in_valid = 1'b0;
    mode = 2'b10;
    #90;

    get_data;
    j = 0;
    repeat(8) begin
        @(posedge clk) begin
            if(out_data !== ans_buf[j]) begin
                $display("testcase_3 fail");
                $finish;
            end
            else begin
                j = j + 1;
            end
        end
    end
    @(negedge clk) in_valid = 1'b1;
    mode = 2'b0;
    min = 4'd12;
    in_data = 8'd190;
    #80
    in_valid = 1'b0;
    mode = 2'b10;
    #90;

    get_data;
    j = 0;
    repeat(8) begin
        @(posedge clk) begin
            if(out_data !== ans_buf[j]) begin
                $display("testcase_4 fail");
                $finish;
            end
            else begin
                j = j + 1;
            end
        end
    end  
    #20  
    $display("===== PASS Lab2_2 =====");
    $finish;
end
task get_data;
    begin
        for(i = 0; i<8; i=i+1) begin
            code = $fscanf(file_in, "%d", ans_buf[i]);
        end        
    end
endtask
endmodule