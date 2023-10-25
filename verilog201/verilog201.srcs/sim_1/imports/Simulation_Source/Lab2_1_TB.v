`timescale 1ns/1ps
module Parameterized_Ping_Pong_Counter_t;
reg clk = 1'b0;
reg rst_n = 1'b1;
reg enable = 1'b1;
reg flip = 1'b0;
reg [3:0] max = 4'd4;
reg [3:0] min = 4'd0;
wire direction;
wire [3:0] out;

always#5 clk = ~clk;

Parameterized_Ping_Pong_Counter ppc(
    .clk(clk),
    .rst_n(rst_n),
    .enable(enable),
    .flip(flip),
    .max(max),
    .min(min),
    .direction(direction),
    .out(out)
);
initial begin
    
    $display("===== Starting the simulation =====");
    test_reset;
    test_enable;
    testcase_1;
    testcase_flip;
    
    // min > out
    @(negedge clk) min = 4'd15;
    repeat(2) begin
        @(posedge clk) begin
            if(direction !== 1'b1 || out !== 4'd6) begin
                $display("testcase_min > out fail");
                $finish;
            end
        end
    end
    // max < out
    @(negedge clk) min = 4'd4;
    #20
    @(negedge clk) max = 4'd3;
    repeat(2) begin
        @(posedge clk) begin
            if(direction !== 1'b1 || out !== 4'd8) begin
                $display("testcase_max < out fail");
                $finish;
            end
        end
    end
    // min == max == out
    @(negedge clk) max = 4'd10;
    #20
    @(negedge clk) min = 4'd10;
    @(posedge clk) begin
        if(direction !== 1'b1 || out !== 4'd10) begin
            $display("testcase_min == max == out fail");
            $finish;
        end
    end
    // min > max
    @(negedge clk) min = 4'd12;
    @(posedge clk) begin
        if(direction !== 1'b1 || out !== 4'd10) begin
            $display("testcase_min == max == out fail");
            $finish;
        end
    end

    testcase_2;
    testcase_3;
    
    // enable flip
    @(negedge clk) flip = 1'b1;
    @(negedge clk) flip = 1'b0;
    @(posedge clk) begin
        if(direction !== 1'b0 || out !== 4'd5) begin
            $display("flip test fail");
            $finish;
        end
    end
    
    test_enable_2;
    $display("===== PASS Lab2_1 =====");
    
    $finish;
end
task test_reset;
    begin
    @(negedge clk) rst_n = 1'b0;
    #5;
    @(posedge clk) 
    if(direction !== 1'b1 || out !== min) begin
        $display("reset fail");
        $finish;
    end
    @(negedge clk) rst_n = 1'b1;
    end
endtask

task test_enable;
    begin
        // not enable
        @(negedge clk) enable = 1'b0;
        #5;
        if(direction !== 1'b1 || out !== min + 1'b1) begin
            $display("enable fail");
            $finish;
        end
    end
endtask

task testcase_1;
    integer i;
    begin
        // enable max 15, min 0
        i = 1;
        @(negedge clk) enable = 1'b1;
        max = 4'd15; min = 4'd0;
        repeat(4) begin
            #5;
            @(posedge clk) begin
                if(direction !== 1'b1 || out !== min + 1'b1 + i) begin
                    $display("testcase_1 fail");
                    $finish;
                end
                else begin
                    i = i + 1;
                end
            end
        end
    end
endtask
task testcase_flip;
    integer i;
    begin
        // enable flip
        i = 1;
        @(negedge clk) flip = 1'b1;
        @(negedge clk) flip = 1'b0;
        repeat(2) begin
            @(posedge clk) begin
                if(direction !== 1'b0 || out !== min + 4'd6 - i) begin
                    $display("testcase_flip fail");
                    $finish;
                end
                else i = i + 1;
            end
        end
        @(negedge clk) flip = 1'b1;
        @(posedge clk) begin
            if(direction !== 1'b0 || out !== 4'd3) begin
                $display("testcase_flip fail");
                $finish;
            end
        end
        @(negedge clk) flip = 1'b0;
        i = 1;
        repeat(2) begin
            @(posedge clk) begin
                if(direction !== 1'b1 || out !== 4'd3 + i) begin
                    $display("testcase_flip fail");
                    $finish;
                end
                else i = i + 1;
            end
        end
    end
endtask
task testcase_2;
    integer i;
    begin
        // enable max 13, min 3
        #10
        @(negedge clk) min = 4'd3;
        max = 4'd13;
        i = 1;
        #10;
        repeat(3) begin
            @(posedge clk) begin
                if(direction !== 1'b1 || out !== 4'd10 + i) begin
                    $display("testcase_2 fail");
                    $finish;
                end
                else i = i + 1;
            end
        end
        i = 1;
        repeat(5) begin
            @(posedge clk) begin
                if(direction !== 1'b0 || out !== max - i) begin
                    $display("testcase_2 fail");
                    $finish;
                end
                else i = i + 1;
            end
        end
    end
endtask
task testcase_3;
    integer i;
    begin
        // enable max 7, min 5
        i = 1;
        @(negedge clk) min = 4'd5;
        max = 4'd7;
        repeat(3) begin
            @(posedge clk) begin
                if(direction !== 1'b0 || out !== 4'd8 - i) begin
                    $display("testcase_3 fail");
                    $finish;
                end
                else i = i + 1;
            end            
        end
        i = 1;
        repeat(2) begin
            @(posedge clk) begin
                if(direction !== 1'b1 || out !== min + i) begin
                    $display("testcase_3 fail");
                    $finish;
                end
                else i = i + 1;
            end            
        end
        i = 1;
        repeat(2) begin
            @(posedge clk) begin
                if(direction !== 1'b0 || out !== max - i) begin
                    $display("testcase_3 fail");
                    $finish;
                end
                else i = i + 1;
            end            
        end
    end
endtask
task test_enable_2;
    integer i;
    begin
        i = 1;
        // not enable    
        @(negedge clk)  enable = 1'b0;
        repeat(3) begin
            @(posedge clk) begin
                if(direction !== 1'b1 || out !== max - 1) begin
                    $display("enable test_2 fail");
                    $finish;
                end
                else begin
                    i = i + 1;
                end
            end
        end
    end
endtask
endmodule