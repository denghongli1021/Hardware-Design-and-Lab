module lab4_2 ( 
    input wire clk,
    input wire rst,
    input wire Digit_1,
    input wire Digit_2,
    input wire Digit_3,
    input wire stop,
    input wire start,
    input wire increase,
    input wire decrease,
    input wire direction,
    output reg [3:0] DIGIT,
    output reg [6:0] DISPLAY,
    output reg [15:0] led
); 
    /* Note that output ports can be either reg or wire. 
    * It depends on how you design your module. */
    // add your design here
    wire clk_div_use;
    clock_divider #(15) clk_d (
        .clk(clk),
        .clk_div(clk_div_use)
    );
    parameter INITIAL = 3'd0;
    parameter COUNTING = 3'd1;
    parameter FAIL = 3'd2;
    parameter SUCCESS = 3'd3;   
    // stop button
    wire stop_debounced;
    debounce a1 (
        .clk(clk),
        .pb(stop),
        .pb_debounced(stop_debounced)
    );
    wire stop_debounced_one_pulse;
    one_pulse b1(
        .clk(clk),
        .pb_in(stop_debounced),
        .pb_out(stop_debounced_one_pulse)
    );
    // start button
    wire start_debounced;
    debounce a2 (
        .clk(clk),
        .pb(start),
        .pb_debounced(start_debounced)
    );
    wire start_debounced_one_pulse;
    one_pulse b2(
        .clk(clk),
        .pb_in(start_debounced),
        .pb_out(start_debounced_one_pulse)
    );
    // increase button
    wire increase_debounced;
    debounce a3 (
        .clk(clk),
        .pb(increase),
        .pb_debounced(increase_debounced)
    );
    wire increase_debounced_one_pulse;
    one_pulse b3(
        .clk(clk),
        .pb_in(increase_debounced),
        .pb_out(increase_debounced_one_pulse)
    );
    // decrease button
    wire decrease_debounced;
    debounce a4 (
        .clk(clk),
        .pb(decrease),
        .pb_debounced(decrease_debounced)
    );
    wire decrease_debounced_one_pulse;
    one_pulse b4(
        .clk(clk),
        .pb_in(decrease_debounced),
        .pb_out(decrease_debounced_one_pulse)
    );
    // direction button
    wire direction_debounced;
    debounce a5 (
        .clk(clk),
        .pb(direction),
        .pb_debounced(direction_debounced)
    );
    wire direction_debounced_one_pulse;
    one_pulse b5(
        .clk(clk),
        .pb_in(direction_debounced),
        .pb_out(direction_debounced_one_pulse)
    );
    reg [2:0] state = INITIAL;
    reg [2:0] next_state = INITIAL;
    reg [2:0] dir = 1; // 1 for up ,0 for down.
    reg [32:0] count = 0;
    reg [32:0] count_num = 0; // 顯示數字的
    reg [32:0] goal = 0;
    reg [32:0] count_fail_success = 0; // 幫助判斷燈亮 (fail || success state)
    reg [4:0] value = 0; // 7-seg
    // state
    always@(posedge clk, posedge rst) begin
        if (rst) begin
            state = INITIAL;
        end
        else begin
            state = next_state;
        end
    end
    // next_state
    always@(posedge clk, posedge rst) begin
        if (rst) begin
            next_state = INITIAL;
        end
        else begin
            case(state) 
            INITIAL : begin
                if (start_debounced_one_pulse) begin
                    next_state = COUNTING;
                end
            end
            COUNTING : begin
                if (stop_debounced_one_pulse) begin
                    if (count_num <= goal) begin
                        if (goal - count_num <= 100) begin
                            next_state = SUCCESS;
                        end
                        else begin
                            next_state = FAIL;
                        end
                    end
                    else if (count_num >= goal) begin
                        if (count_num - goal <= 100) begin
                            next_state = SUCCESS;
                        end
                        else begin
                            next_state = FAIL;
                        end
                    end
                end
                else if (count_num == 999 && dir == 1 || count_num == 0 && dir == 0) begin
                    next_state = FAIL;
                end
            end
            FAIL : begin
                if (start_debounced_one_pulse) begin
                    next_state = INITIAL;
                end
            end
            SUCCESS : begin
                if (start_debounced_one_pulse) begin
                    next_state = INITIAL;
                end
            end
            endcase
        end
    end
    // dir
    always@(posedge clk, posedge rst) begin
        if (rst) begin
            dir = 1;
        end
        else if (state == INITIAL) begin
            if (direction_debounced_one_pulse) begin
                dir = dir ^ 1;
            end
        end
    end
    // led
    always@(posedge clk, posedge rst) begin
        if (rst) begin
            led = 16'b1111_1111_1111_1111;
        end
        else begin
            case(state) 
            INITIAL : begin
                led = 16'b1111_1111_1111_1111;
            end
            COUNTING : begin
                if (count_num%1000 >= 300 && dir == 1) begin
                    led = 16'b0000_0000_0000_0000;
                end
                else if (count_num%1000 <= 699 && dir == 0) begin
                    led = 16'b0000_0000_0000_0000;
                end
                else begin
                    led = 16'b1111_1111_1111_1111;
                end
            end
            FAIL : begin
                if (count_fail_success >= 6) begin
                    led = 16'b0000_0000_0000_0000;
                end
                else if (count_fail_success%2 == 0) begin
                    led = 16'b1111_1111_1111_1111;
                end
                else if (count_fail_success%2 == 1) begin
                    led = 16'b0000_0000_0000_0000;
                end
            end
            SUCCESS : begin
                if (count_fail_success >= 5) begin
                    led = 16'b1111_1111_1111_1111;
                end
                else if (count_fail_success%2 == 0) begin
                    led = 16'b1111_1111_1111_1111;
                end
                else if (count_fail_success%2 == 1) begin
                    led = 16'b0000_0000_0000_0000;
                end
                // if (count_fail_success >= 6) begin
                //     led = 16'b0000_0000_0000_0000;
                // end
                // else if (count_fail_success%2 == 0) begin
                //     led = 16'b1111_1111_1111_1111;
                // end
                // else if (count_fail_success%2 == 1) begin
                //     led = 16'b0000_0000_0000_0000;
                // end
            end
            endcase
        end
    end
    // 7-seg
    always @(posedge clk_div_use) begin
        case(state) 
        INITIAL : begin
            case (DIGIT)
                4'b0111: begin
                    value = goal%10;
                    DIGIT = 4'b1110;
                end
                4'b1110: begin
                    value = goal%100/10;
                    DIGIT = 4'b1101;
                end
                4'b1101: begin
                    value = goal%1000/100;
                    DIGIT = 4'b1011;
                end
                4'b1011: begin
                    if (dir == 1) begin
                        value = 10;
                    end
                    else begin
                        value = 11;
                    end
                    DIGIT = 4'b0111;
                end
                default: begin
                    value = 2;
                    DIGIT = 4'b1110;
                end
            endcase
        end
        COUNTING : begin
            case (DIGIT)
                4'b0111: begin
                    if (count_num%1000 >= 300 && dir == 1) begin
                        value = 12;
                    end
                    else if (count_num%1000 <= 699 && dir == 0) begin
                        value = 12;
                    end
                    else begin
                        value = count_num%10;
                    end
                    DIGIT = 4'b1110;
                end
                4'b1110: begin
                    if (count_num%1000 >= 300 && dir == 1) begin
                        value = 12;
                    end
                    else if (count_num%1000 <= 699 && dir == 0) begin
                        value = 12;
                    end
                    else begin
                        value = count_num%100/10;
                    end
                    DIGIT = 4'b1101;
                end
                4'b1101: begin
                    if (count_num%1000 >= 300 && dir == 1) begin
                        value = 12;
                    end
                    else if (count_num%1000 <= 699 && dir == 0) begin
                        value = 12;
                    end
                    else begin
                        value = count_num%1000/100;
                    end
                    DIGIT = 4'b1011;
                end
                4'b1011: begin
                    if (dir == 1) begin
                        value = 10;
                    end
                    else begin
                        value = 11;
                    end
                    DIGIT = 4'b0111;
                end
                default: begin
                    value = 12;
                    DIGIT = 4'b1110;
                end
            endcase
        end
        FAIL : begin
            case (DIGIT)
                4'b0111: begin
                    value = count_num%10;
                    DIGIT = 4'b1110;
                end
                4'b1110: begin
                    value = count_num%100/10;
                    DIGIT = 4'b1101;
                end
                4'b1101: begin
                    value = count_num%1000/100;
                    DIGIT = 4'b1011;
                end
                4'b1011: begin
                    value = 10;
                    DIGIT = 4'b0111;
                end
                default: begin
                    value = 10;
                    DIGIT = 4'b1110;
                end
            endcase
        end
        SUCCESS : begin
            case (DIGIT)
                4'b0111: begin
                    value = count_num%10;
                    DIGIT = 4'b1110;
                end
                4'b1110: begin
                    value = count_num%100/10;
                    DIGIT = 4'b1101;
                end
                4'b1101: begin
                    value = count_num%1000/100;
                    DIGIT = 4'b1011;
                end
                4'b1011: begin
                    value = 10;
                    DIGIT = 4'b0111;
                end
                default: begin
                    value = 10;
                    DIGIT = 4'b1110;
                end
            endcase
        end
        default : begin

        end 
        endcase
    end
    always @(*) begin 
        case(state) 
        INITIAL : begin
            case (value)
                4'd0: DISPLAY = 7'b100_0000;
                4'd1: DISPLAY = 7'b111_1001;
                4'd2: DISPLAY = 7'b010_0100;
                4'd3: DISPLAY = 7'b011_0000;
                4'd4: DISPLAY = 7'b001_1001;
                4'd5: DISPLAY = 7'b001_0010;
                4'd6: DISPLAY = 7'b000_0010;
                4'd7: DISPLAY = 7'b111_1000;
                4'd8: DISPLAY = 7'b000_0000;
                4'd9: DISPLAY = 7'b001_0000;
                4'd10: DISPLAY = 7'b101_1100; // up
                4'd11: DISPLAY = 7'b110_0011; // down
                default: DISPLAY = 7'b111_1111;
            endcase
        end
        COUNTING : begin
            case (value)
                4'd0: DISPLAY = 7'b100_0000;
                4'd1: DISPLAY = 7'b111_1001;
                4'd2: DISPLAY = 7'b010_0100;
                4'd3: DISPLAY = 7'b011_0000;
                4'd4: DISPLAY = 7'b001_1001;
                4'd5: DISPLAY = 7'b001_0010;
                4'd6: DISPLAY = 7'b000_0010;
                4'd7: DISPLAY = 7'b111_1000;
                4'd8: DISPLAY = 7'b000_0000;
                4'd9: DISPLAY = 7'b001_0000;
                4'd10: DISPLAY = 7'b101_1100; // up
                4'd11: DISPLAY = 7'b110_0011; // down
                4'd12: DISPLAY = 7'b011_1111; // dash
                default: DISPLAY = 7'b111_1111;
            endcase
        end
        FAIL : begin
            case (value)
                4'd0: DISPLAY = 7'b100_0000;
                4'd1: DISPLAY = 7'b111_1001;
                4'd2: DISPLAY = 7'b010_0100;
                4'd3: DISPLAY = 7'b011_0000;
                4'd4: DISPLAY = 7'b001_1001;
                4'd5: DISPLAY = 7'b001_0010;
                4'd6: DISPLAY = 7'b000_0010;
                4'd7: DISPLAY = 7'b111_1000;
                4'd8: DISPLAY = 7'b000_0000;
                4'd9: DISPLAY = 7'b001_0000;
                4'd10: DISPLAY = 7'b000_1110; // F
                default: DISPLAY = 7'b111_1111;
            endcase
        end
        SUCCESS : begin
            case (value)
                4'd0: DISPLAY = 7'b100_0000;
                4'd1: DISPLAY = 7'b111_1001;
                4'd2: DISPLAY = 7'b010_0100;
                4'd3: DISPLAY = 7'b011_0000;
                4'd4: DISPLAY = 7'b001_1001;
                4'd5: DISPLAY = 7'b001_0010;
                4'd6: DISPLAY = 7'b000_0010;
                4'd7: DISPLAY = 7'b111_1000;
                4'd8: DISPLAY = 7'b000_0000;
                4'd9: DISPLAY = 7'b001_0000;
                4'd10: DISPLAY = 7'b001_0010; // S
                default: DISPLAY = 7'b111_1111;
            endcase
        end
        default : begin
            case (value)
                4'd0: DISPLAY = 7'b100_0000;
                4'd1: DISPLAY = 7'b111_1001;
                4'd2: DISPLAY = 7'b010_0100;
                4'd3: DISPLAY = 7'b011_0000;
                4'd4: DISPLAY = 7'b001_1001;
                4'd5: DISPLAY = 7'b001_0010;
                4'd6: DISPLAY = 7'b000_0010;
                4'd7: DISPLAY = 7'b111_1000;
                4'd8: DISPLAY = 7'b000_0000;
                4'd9: DISPLAY = 7'b001_0000;
                default: DISPLAY = 7'b111_1111;
            endcase
        end 
        endcase
    end
    // count
    always@(posedge clk, posedge rst) begin
        if (rst) begin
            count = 0;
        end
        else if (state == INITIAL && next_state == COUNTING) begin
            count = 0;
            if (dir == 1) begin
                count_num = 0;
            end
            else if (dir == 0) begin
                count_num = 999;
            end
        end
        else if (state == INITIAL) begin
            count = 0;
            count_num = 0;
        end
        else if (state == COUNTING && (next_state == FAIL || next_state == SUCCESS)) begin
            count = 0;
            count_fail_success = 0;
        end
        else if (state == COUNTING) begin
            if (stop_debounced_one_pulse) begin
                count = 0;
            end
            else begin
                count = count + 1;
                if (dir == 1) begin
                    if (count_num == 999) begin

                    end
                    else if (count % 1000000 == 0) begin
                        count_num = count_num + 1;
                        count = 0;
                    end
                end
                else if (dir == 0) begin
                    if (count_num == 0) begin

                    end
                    else if (count % 1000000 == 0) begin
                        count_num = count_num - 1;
                        count = 0;
                    end
                end
            end
        end
        else if (state == SUCCESS || state == FAIL) begin
            count = count + 1;
            // if (count_fail_success >= 6) begin
            //     count_fail_success = 0;
            // end
            // else 
            if (count % 100000000 == 0) begin
                count_fail_success = count_fail_success + 1;
                count = 0;
            end
        end
    end
    // 增減 goal
    always @(posedge clk, posedge rst) begin
        if (rst) begin
            goal = 0;
        end
        else if (increase_debounced_one_pulse && state == INITIAL) begin
            if (Digit_1) begin
                if (goal%10 == 9) begin
                    goal = goal - 9;
                end
                else begin
                    goal = goal + 1;
                end
            end
            if (Digit_2) begin
                if (goal%100/10 == 9) begin
                    goal = goal - 90;
                end
                else begin
                    goal = goal + 10;
                end
            end
            if (Digit_3) begin
                if (goal%1000/100 == 9) begin
                    goal = goal - 900;
                end
                else begin
                    goal = goal + 100;
                end
            end
        end
        else if (decrease_debounced_one_pulse && state == INITIAL) begin
            if (Digit_1) begin
                if (goal%10 == 0) begin
                    goal = goal + 9;
                end
                else begin
                    goal = goal - 1;
                end
            end
            if (Digit_2) begin
                if (goal%100/10 == 0) begin
                    goal = goal + 90; 
                end
                else begin
                    goal = goal - 10;
                end
            end
            if (Digit_3) begin
                if (goal%1000/100 == 0) begin
                    goal = goal + 900;
                end
                else begin
                    goal = goal - 100;
                end
            end
        end
    end
endmodule 