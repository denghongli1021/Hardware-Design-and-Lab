module lab4_1 ( 
    input wire clk,
    input wire rst,
    input wire stop,
    input wire start,
    input wire direction,
    output reg [3:0] DIGIT,
    output reg [6:0] DISPLAY,
    output reg [9:0] led
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
    parameter PREPARE = 3'd1;
    parameter COUNTING = 3'd2;
    parameter RESULT = 3'd3;   
    reg [2:0] state = INITIAL;
    reg [2:0] next_state = INITIAL;
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
    // direction button 
    wire direction_debounced;
    debounce a3 (
        .clk(clk),
        .pb(direction),
        .pb_debounced(direction_debounced)
    );
    wire direction_debounced_one_pulse;
    one_pulse b3(
        .clk(clk),
        .pb_in(direction_debounced),
        .pb_out(direction_debounced_one_pulse)
    );

    reg [2:0] dir = 1; // 1 for up ,0 for down.
    reg [32:0] count = 0;
    reg [10:0] count_num = 0;
    reg [10:0] count_result = 0;
    reg [4:0] value = 0;
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
    always@(posedge clk , posedge rst) begin
        if (rst) begin
            next_state = INITIAL;
            count_result = 0;
        end
        else if (state == INITIAL && start_debounced_one_pulse) begin
            next_state = PREPARE;
        end
        else if (state == PREPARE) begin
            if (count == 300000000) begin
                next_state = COUNTING;
            end
        end
        else if (state == COUNTING) begin
            if (stop_debounced_one_pulse) begin
                next_state = RESULT;
            end
            else if (dir == 1 && count_num == 999) begin
                next_state = RESULT;
            end
            else if(dir == 0 && count_num == 0)begin
                next_state = RESULT;
            end
        end
        else if (state == RESULT) begin
            if (start_debounced_one_pulse) begin
                next_state = INITIAL;
                count_result = 0;
            end
            else if (count_result == 5) begin
                
            end
            else if (count % 100000000 == 0) begin
                count_result = count_result + 1;
            end
        end
    end
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
    // count
    always@(posedge clk, posedge rst) begin
        if (rst) begin
            count = 0;
        end
        else if (state == INITIAL) begin
            count = 0;
            count_num = 0;
        end
        else if (state == PREPARE && next_state == COUNTING) begin
            count = 0;
            if (dir == 1) begin
                count_num = 0;
            end
            else begin
                count_num = 999;
            end
        end
        else if (state == PREPARE) begin
            count = count + 1;
        end
        else if (state == COUNTING && next_state == RESULT) begin
            count = 0;
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
                else begin
                    if (count_num == 0) begin

                    end
                    else if (count % 1000000 == 0) begin
                        count_num = count_num - 1;
                        count = 0;
                    end
                end
            end
        end
        else if (state == RESULT) begin
            count = count + 1;
        end
    end
    
    // led
    always@(posedge clk, posedge rst) begin
        if (rst) begin
            led = 10'b1111_1111_11;
        end
        else begin
            case(state) 
            INITIAL : begin
                led = 10'b1111_1111_11;
            end
            COUNTING : begin
                case(count_num / 100) 
                0 : begin
                    led = 10'b0000_0000_01;
                end
                1 : begin
                    led = 10'b0000_0000_10;
                end
                2 : begin
                    led = 10'b0000_0001_00;
                end
                3 : begin
                    led = 10'b0000_0010_00;
                end
                4 : begin
                    led = 10'b0000_0100_00;
                end
                5 : begin
                    led = 10'b0000_1000_00;
                end
                6 : begin
                    led = 10'b0001_0000_00;
                end
                7 : begin
                    led = 10'b0010_0000_00;
                end
                8 : begin
                    led = 10'b0100_0000_00;
                end
                9 : begin
                    led = 10'b1000_0000_00;
                end
                endcase
            end
            RESULT : begin
                if (count_result % 2 == 1) begin
                    led = 10'b1111_1111_11;
                end
                else if (count_result % 2 == 0) begin
                    led = 10'b0000_0000_00;
                end
            end
            default : begin
                led = 10'b0000_0000_00;
            end
            endcase
        end
    end

    // 7 seg
    always @(posedge clk_div_use) begin
        if (state == INITIAL) begin
            case (DIGIT)
                4'b0111: begin
                    value = 2;
                    DIGIT = 4'b1110;
                end
                4'b1110: begin
                    value = 2;
                    DIGIT = 4'b1101;
                end
                4'b1101: begin
                    value = 2;
                    DIGIT = 4'b1011;
                end
                4'b1011: begin
                    if (dir == 1) begin
                        value = 0;
                    end
                    else begin
                        value = 1;
                    end
                    DIGIT = 4'b0111;
                end
                default: begin
                    value = 2;
                    DIGIT = 4'b1110;
                end
            endcase
        end
        else if (state == PREPARE) begin
            DIGIT = 4'b0111;
        end
        else if (state == COUNTING) begin
            case (DIGIT)
                4'b0111: begin
                    value = count_num%10;
                    DIGIT = 4'b1110;
                end
                4'b1110: begin
                    value = count_num/10%10;
                    DIGIT = 4'b1101;
                end
                4'b1101: begin
                    value = count_num/100%10;
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
                    value = 0;
                    DIGIT = 4'b1110;
                end
            endcase
        end
        else if (state == RESULT) begin
            case (DIGIT)
                4'b0111: begin
                    value = count_num%10;
                    DIGIT = 4'b1110;
                end
                4'b1110: begin
                    value = count_num/10%10;
                    DIGIT = 4'b1101;
                end
                4'b1101: begin
                    value = count_num/100%10;
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
                    value = 0;
                    DIGIT = 4'b1110;
                end
            endcase
        end
    end
    always @(*) begin 
        if (state == INITIAL) begin
            case (value)
                4'd0: DISPLAY = 7'b101_1100; // up
                4'd1: DISPLAY = 7'b110_0011; // down
                4'd2: DISPLAY = 7'b011_1111; // other
                default: DISPLAY = 7'b111_1111;
            endcase
        end
        else if (state == PREPARE) begin
            DISPLAY = 7'b000_1100;
        end
        else if (state == COUNTING) begin
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
        else if (state == RESULT) begin
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
    end
endmodule 