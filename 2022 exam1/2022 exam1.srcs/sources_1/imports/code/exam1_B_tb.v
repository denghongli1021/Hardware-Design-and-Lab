`timescale 10ps/1ps

`define PATTERN_NUM 960
`define CYCLE 10
module exam1_B_tb;

    reg clk, rst;
    wire signed [15:0] out;

    reg signed [15:0] mem[0:`PATTERN_NUM-1];
    reg count_up_pass, count_down_pass, count_again_pass, feed_finish;
    
    exam1_B counter(
        .clk(clk),
        .rst(rst),
        .out(out)
    );

    initial begin
        clk = 1'b0;
        while(1) #(`CYCLE/2) clk = ~clk;
    end

    integer i;
    integer scores;

    initial begin
        // input feeding init
        $readmemh("pattern_B.dat", mem);
        if(mem[1] !== 16'h0005) begin
            $display(">>>>>>>>>>> [ERROR] Can not find patter_B.dat, make sure you have added it to simulation source!");
            $finish;
        end

        count_up_pass = 1'b1;
        count_down_pass = 1'b1;
        count_again_pass = 1'b1;
        feed_finish = 1'b0;

        #(`CYCLE*10);
        rst = 1'b1;
        #(`CYCLE*10);
        rst = 1'b0;

        for(i = 0; i < `PATTERN_NUM; i = i+1) begin
            @(negedge clk);
            if(out !== mem[i]) begin
                if(i <= 425) begin
                    count_up_pass = 1'b0;
                    $display("[COUNT_UP ERROR] i:%d, out:%d, mem:%d", i+1, out, mem[i]);
                end
                else if(i <= 465) begin
                    count_down_pass = 1'b0;
                    $display("[COUNT_DOWN ERROR] i:%d, out:%d, mem:%d", i+1, out, mem[i]);
                end
                else
                    count_again_pass = 1'b0;
                $display("[ERROR] i:%d, out:%d, mem:%d", i+1, out, mem[i]);
                $finish;
            end
        end 
        feed_finish = 1'b1;
        
        #(`CYCLE*10);
        rst = 1'b1;

        scores = 0;
        // Check count up
        if(count_up_pass) begin
            $display("Count Up                PASS!");
            scores = scores + 10;
        end
        else begin
            $display("Count Up                 FAIL!");
        end

        // Check count down
        if(count_down_pass) begin
            $display("Count Down              PASS!");
            scores = scores + 10;
        end
        else begin
            $display("Count Down               FAIL!");
        end
        
        // Check count again
        if(count_again_pass) begin
            $display("Count Again             PASS!");
            scores = scores + 10;
        end
        else begin
            $display("Count Again              FAIL!");
        end

        // Output current score
        if(feed_finish)
            $display("Pattern Score: %d/30", scores);
        else
            $display("<ERROR> Simulation time is not enough, please add it to 10000ps");

        $finish;
    end

endmodule