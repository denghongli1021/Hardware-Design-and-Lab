`timescale 10ps/1ps

`define WIDTH 8
`define DELAY 10
`define PATTERN_NUM 800
`define CYCLE 10
module exam1_A_tb;
    
    reg clk, rst;
    reg signed [`WIDTH-1:0] A, B, last_A, last_B;
    reg [1:0] ctrl, last_ctrl;
    wire signed [`WIDTH*2-1:0] out;

    reg signed [`WIDTH*2-1:0] ans, last_ans;
    reg [35:0] mem [0:998];
    reg mul_pass, append_pass, plus_pass, default_pass, feed_finish;

    integer feed_i, fetch_i;
    // integer file;
    integer scores;

    initial begin
        clk = 1'b0;
        while(1) #(`CYCLE/2) clk = ~clk;
    end

    exam1_A ALU(
        .clk(clk),
        .rst(rst),
        .A(A),
        .B(B),
        .ctrl(ctrl),
        .out(out)
    );
    
    initial begin
        // input feeding init
        $readmemh("pattern_A.dat", mem);
        if(mem[1] !== 36'h1_66_47_2198) begin
            $display(">>>>>>>>>>> [ERROR] Can not find patter_A.dat, make sure you have added it to simulation source!");
            $finish;
        end

        mul_pass = 1'b1;
        append_pass = 1'b1;
        plus_pass = 1'b1;
        default_pass = 1'b1;
        feed_finish = 1'b0;

        #(`CYCLE*10);
        ctrl = {2{1'bz}};
        A = {`WIDTH{1'bz}};
        B = {`WIDTH{1'bz}};
        rst = 1'b1;
        #(`CYCLE*10);
        rst = 1'b0;

        // Feed addition input
        for(feed_i = 0; feed_i < `PATTERN_NUM; feed_i = feed_i+1) begin
            @(posedge clk);
            #1;
            {last_ctrl, last_A, last_B, last_ans} = {ctrl, A, B, ans}; 
            {ctrl, A, B, ans} = mem[feed_i][33:0];
        end 
        feed_finish = 1'b1;

        // Input feeding stop
        #(`CYCLE*10);
        ctrl = {2{1'bz}};
        A = {`WIDTH{1'bz}};
        B = {`WIDTH{1'bz}};
    end

    initial begin
        wait(rst == 1'b1);
        wait(rst == 1'b0);
        
        // Check your design
        @(negedge clk);
        for(fetch_i = 0; fetch_i < `PATTERN_NUM-1; fetch_i = fetch_i+1) begin
            @(negedge clk);
            if(out !== last_ans) begin
                $display("<ERROR> [pattern %0d] ctrl=%b, A=%d, B=%d, out=%d, ans=%d", fetch_i, last_ctrl, last_A, last_B, out, last_ans);
                case(last_ctrl)
                    2'b00:
                        mul_pass = 1'b0;
                    2'b01:
                        append_pass = 1'b0;
                    2'b11:
                        plus_pass = 1'b0;
                    default:
                        default_pass = 1'b0;
                endcase
            end
        end 

        #(`CYCLE*20);
        scores = 0;

        // Check function 1
        if(mul_pass) begin
            scores = scores + 8;
            $display("Function 1              PASS!");
        end
        else begin
            $display("Function 1              FAIL!");
        end

        // Check function 2
        if(append_pass) begin
            scores = scores + 6;
            $display("Function 2              PASS!");
        end
        else begin
            $display("Function 2              FAIL!");
        end
        
        // Check function 3
        if(plus_pass) begin
            scores = scores + 8;
            $display("Function 3              PASS!");
        end
        else begin
            $display("Function 3              FAIL!");
        end

        // Check function 4
        if(default_pass) begin
            scores = scores + 6;
            $display("Function 4          PASS!");
        end
        else begin
            $display("Function 4          FAIL!");
        end

        // Output current score
        if(feed_finish)
            $display("Pattern Score: %d/28", scores);
        else
            $display("<ERROR> Simulation time is not enough, please add it to 10000ps");

        $finish;
    end

endmodule