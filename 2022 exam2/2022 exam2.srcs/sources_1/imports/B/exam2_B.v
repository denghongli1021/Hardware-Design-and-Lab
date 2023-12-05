// <111062107> <?��弘利>

// Add your ID and name to FIRST line of file, or you will get 5 points penalty
// e.g. 110123456 ??��?��??
module exam2_B (
    input clk, 
    input rst, 
    input en, 
    inout PS2_DATA, 
	inout PS2_CLK, 
    output [3:0] DIGIT, 
    output [6:0] DISPLAY,
    output reg [15:0] led
);
    parameter [8:0] KEY_CODES [0:9] = {
        9'b0_0111_0000, // right_0 => 70
        9'b0_0110_1001, // right_1 => 69
        9'b0_0111_0010, // right_2 => 72
        9'b0_0111_1010, // right_3 => 7A
        9'b0_0110_1011, // right_4 => 6B
        9'b0_0111_0011, // right_5 => 73
        9'b0_0111_0100, // right_6 => 74
        9'b0_0110_1100, // right_7 => 6C
        9'b0_0111_0101, // right_8 => 75
        9'b0_0111_1101  // right_9 => 7D
	};

    // add your design here
    wire [511:0] key_down;
    wire [8:0] last_change;
    wire key_valid;
    wire clk_div_use;
    wire clk_25;
    reg [3:0] d0,d1,d2,d3;
    reg [1:0] state = INIT;
    reg [1:0] next_state;
    wire rst1,rst2,en1,en2;
    reg [2:0] cnt = 0;
    parameter [1:0] INIT  = 2'b00;
    parameter [1:0] SET   = 2'b01;
    parameter [1:0] GUESS = 2'b10;
    parameter [1:0] CHECK = 2'b11;
    reg same = 0;
    wire same_2;
    wire same_3;
    debounce db3(.pb(same), .clk(clk), .pb_debounced(same_2));
    one_pulse db32(.pb_debounced(same_2), .clk(clk), .pb_one_pulse(same_3));
    KeyboardDecoder kd(
        .rst(rst2),
        .clk(clk),
        .PS2_DATA(PS2_DATA),
        .PS2_CLK(PS2_CLK),
        .key_down(key_down),
        .last_change(last_change),
        .key_valid(key_valid)
    );
    clock_divider #(.n(15)) (.clk(clk), .clk_div(clk_div_use) ,.rst(same_3));
    clock_divider #(.n(25)) (.clk(clk), .clk_div(clk_25), .rst(same_3));
    seven_segment sg(
        .clk(clk_div_use), 
        .digit_0(d0),
        .digit_1(d1), 
        .digit_2(d2), 
        .digit_3(d3), 
        .DIGIT(DIGIT), 
        .DISPLAY(DISPLAY)
    );
    debounce db1(.pb(rst), .clk(clk), .pb_debounced(rst1));
    one_pulse db12(.pb_debounced(rst1), .clk(clk), .pb_one_pulse(rst2));
    debounce db2(.pb(en), .clk(clk), .pb_debounced(en1));
    one_pulse db22(.pb_debounced(en1), .clk(clk),. pb_one_pulse(en2));
    
    always @(posedge clk_25) begin
        if (state == CHECK) begin
            cnt = cnt + 1;
        end
        else cnt = 0;
    end
    // state
    always@(posedge clk or posedge rst2) begin
        if (rst2) begin
            state = INIT;
        end
        else begin
            state = next_state;
        end
    end
    // next_state
    always@(*) begin
        if (rst2) begin
            next_state = INIT;
        end
        else begin
            case (state) 
            INIT : begin
                if (en2) begin
                    next_state = SET;
                end
                else begin
                    next_state = INIT;
                end
            end
            SET : begin
                if (en2) begin
                    next_state = GUESS;
                end
                else begin
                    next_state = SET;
                end
            end
            GUESS : begin
                if (en2) begin
                    next_state = CHECK;
                    same = 1;
                end
                else begin
                    next_state = GUESS;
                    same = 0;
                end
            end
            CHECK : begin
                if (set_password == guess_password && cnt == 5) begin
                    next_state = INIT;
                end
                else if (set_password != guess_password && cnt == 5)begin
                    next_state = GUESS;
                end
                else begin
                    next_state = CHECK;
                end
            end
            default : begin
                next_state = state;
            end
            endcase
        end
    end
    // key_num
    reg [3:0] key_num;
    always @(*) begin
        case(last_change) 
            KEY_CODES[0] : key_num = 0;
            KEY_CODES[1] : key_num = 1;
            KEY_CODES[2] : key_num = 2;
            KEY_CODES[3] : key_num = 3;
            KEY_CODES[4] : key_num = 4;
            KEY_CODES[5] : key_num = 5;
            KEY_CODES[6] : key_num = 6;
            KEY_CODES[7] : key_num = 7;
            KEY_CODES[8] : key_num = 8;
            KEY_CODES[9] : key_num = 9;
            default : key_num=10;
        endcase
    end
    // password
    reg [16:0] set_password = 0;
    reg [3:0] set_1 = 0;
    reg [3:0] set_2 = 0;
    reg [3:0] set_3 = 0;
    reg [3:0] set_4 = 0;
    reg [16:0] guess_password = 0;
    reg [3:0] guess_1 = 0;
    reg [3:0] guess_2 = 0;
    reg [3:0] guess_3 = 0;
    reg [3:0] guess_4 = 0;
    reg task_finish = 1;
    always@(posedge clk or posedge rst2) begin
        if (rst2) begin
            set_1 = 0;
            set_2 = 0;
            set_3 = 0;
            set_4 = 0;
            guess_1 = 0;
            guess_2 = 0;
            guess_3 = 0;
            guess_4 = 0;
        end
        else begin
            case(state) 
                SET : begin
                    if (key_down[last_change] == 1 && task_finish == 1) begin
                        set_4 = set_3;
                        set_3 = set_2;
                        set_2 = set_1;
                        set_1 = key_num;
                        task_finish = 0;
                    end
                    else if (key_down[last_change] == 0) begin
                        task_finish = 1;
                    end
                    if (next_state == GUESS) begin
                        set_password = 1000*set_4 + 100*set_3 + 10*set_2 + set_1;
                    end
                end
                GUESS : begin
                    if (key_down[last_change] == 1 && task_finish == 1) begin
                        guess_4 = guess_3;
                        guess_3 = guess_2;
                        guess_2 = guess_1;
                        guess_1 = key_num;
                        task_finish = 0;
                    end
                    else if (key_down[last_change] == 0) begin
                        task_finish = 1;
                    end
                    if (next_state == CHECK) begin
                        guess_password = 1000*guess_4 + 100*guess_3 + 10*guess_2 + guess_1;
                    end
                end
                CHECK : begin
                    if (next_state == INIT) begin
                        set_1 = 0;
                        set_2 = 0;
                        set_3 = 0;
                        set_4 = 0;
                        guess_1 = 0;
                        guess_2 = 0;
                        guess_3 = 0;
                        guess_4 = 0;
                    end
                    else if (next_state == GUESS) begin
                        set_password = set_password;
                        guess_password = guess_password;
                    end
                end
                default : begin
                    set_password = set_password;
                    guess_password = guess_password;
                end
            endcase
        end
    end
    // led
    always@(posedge clk or posedge rst2) begin
        if (rst2) begin
            led = 16'b1111_0000_0000_0000;
        end
        else begin
            case(state)
                INIT : begin
                    led = 16'b1111_0000_0000_0000;
                end
                SET : begin
                    led = 16'b0000_1111_0000_0000;
                end
                GUESS : begin
                    led = 16'b0000_0000_1111_0000;
                end
                CHECK : begin
                    led = 16'b0000_0000_0000_1111;
                end
                default : begin
                    led = led;
                end
            endcase
        end
    end
    // seven seg
    always@(*) begin
        case(state)
            INIT : begin
                d0 = 10;
                d1 = 10;
                d2 = 10;
                d3 = 10;
            end
            SET : begin
                d0 = set_1;
                d1 = set_2;
                d2 = set_3;
                d3 = set_4;
            end
            GUESS : begin
                d0 = guess_1;
                d1 = guess_2;
                d2 = guess_3;
                d3 = guess_4;
            end
            CHECK : begin
                if (guess_password == set_password) begin
                    if (cnt == 0) begin
                        d0 = 11;
                        d1 = 11;
                        d2 = 11;
                        d3 = 11;
                    end
                    else if (cnt == 1) begin
                        d0 = 1;
                        d1 = 1;
                        d2 = 1;
                        d3 = 1;
                    end
                    else if (cnt == 2) begin
                        d0 = 11;
                        d1 = 11;
                        d2 = 11;
                        d3 = 11;
                    end
                    else if (cnt == 3) begin
                        d0 = 1;
                        d1 = 1;
                        d2 = 1;
                        d3 = 1;
                    end
                    else if (cnt == 4) begin
                        d0 = 11;
                        d1 = 11;
                        d2 = 11;
                        d3 = 11;
                    end
                    else begin
                        d0 = d0;
                        d1 = d1;
                        d2 = d2;
                        d3 = d3;
                    end
                end
                else if (guess_password != set_password)begin
                    if (cnt == 0) begin
                        d0 = 11;
                        d1 = 11;
                        d2 = 11;
                        d3 = 11;
                    end
                    else if (cnt == 1) begin
                        d0 = 0;
                        d1 = 0;
                        d2 = 0;
                        d3 = 0;
                    end
                    else if (cnt == 2) begin
                        d0 = 11;
                        d1 = 11;
                        d2 = 11;
                        d3 = 11;
                    end
                    else if (cnt == 3) begin
                        d0 = 0;
                        d1 = 0;
                        d2 = 0;
                        d3 = 0;
                    end
                    else if (cnt == 4) begin
                        d0 = 11;
                        d1 = 11;
                        d2 = 11;
                        d3 = 11;
                    end
                    else begin
                        d0 = d0;
                        d1 = d1;
                        d2 = d2;
                        d3 = d3;
                    end
                end
            end
            default : begin
                d0 = 10;
                d1 = 10;
                d2 = 10;
                d3 = 10;
            end
        endcase
    end
endmodule


// provided modules
module clock_divider #(parameter n=25) (clk, clk_div ,rst);
    input clk;
    input rst; // same_3
    output clk_div;

    reg [n-1:0] num = 0;
    wire [n-1:0] next_num;

    always @(posedge clk or posedge rst) begin
        if (rst) num <= 0;
        else num <= next_num;
    end

    assign next_num = num + 1;
    assign clk_div = num[n-1];
endmodule


module debounce (pb, clk, pb_debounced);
    input pb;
    input clk;
    output pb_debounced;

    reg [3:0] shift_reg;

    always @(posedge clk) begin
        shift_reg[3:1] <= shift_reg[2:0];
        shift_reg[0] <= pb;
    end

    assign pb_debounced = ((shift_reg == 4'b1111) ? 1'b1 : 1'b0);
endmodule


module one_pulse (pb_debounced, clk, pb_one_pulse);
    input pb_debounced;
    input clk;
    output pb_one_pulse;
    
    reg pb_one_pulse;
    reg pb_debounced_delay;

    always @(posedge clk) begin
        if(pb_debounced == 1'b1 && pb_debounced_delay == 1'b0) begin
            pb_one_pulse <= 1'b1;
        end else begin
            pb_one_pulse <= 1'b0;
        end            
        pb_debounced_delay <= pb_debounced;
    end
endmodule


module seven_segment (
    input clk, 
    input [3:0] digit_0,
    input [3:0] digit_1, 
    input [3:0] digit_2, 
    input [3:0] digit_3, 
    output reg [3:0] DIGIT, 
    output reg [6:0] DISPLAY
    );
    reg [3:0] value;

    always @(posedge clk) begin
        case (DIGIT)
            4'b1110: begin
                value <= digit_1;
                DIGIT <= 4'b1101;
            end 
            4'b1101: begin
                value <= digit_2;
                DIGIT <= 4'b1011;
            end
            4'b1011: begin
                value <= digit_3;
                DIGIT <= 4'b0111;
            end
            4'b0111: begin
                value <= digit_0;
                DIGIT <= 4'b1110;
            end
            default: begin
                value <= digit_0;
                DIGIT <= 4'b1110;
            end
        endcase
    end

    always @(*) begin
        case (value)
            4'd0:   DISPLAY = 7'b1000000;   // 0
            4'd1:   DISPLAY = 7'b1111001;   // 1
            4'd2:   DISPLAY = 7'b0100100;   // 2
            4'd3:   DISPLAY = 7'b0110000;   // 3
            4'd4:   DISPLAY = 7'b0011001;   // 4
            4'd5:   DISPLAY = 7'b0010010;   // 5
            4'd6:   DISPLAY = 7'b0000010;   // 6
            4'd7:   DISPLAY = 7'b1111000;   // 7
            4'd8:   DISPLAY = 7'b0000000;   // 8
            4'd9:   DISPLAY = 7'b0010000;   // 9
            4'd10:  DISPLAY = 7'b0111111;   // -
            default:DISPLAY = 7'b1111111;   // no light
        endcase
    end

endmodule


module KeyboardDecoder(
    input wire rst,
    input wire clk,
    inout wire PS2_DATA,
    inout wire PS2_CLK,
    output reg [511:0] key_down,
    output wire [8:0] last_change,
    output reg key_valid
    );
    
    parameter [1:0] INIT			= 2'b00;
    parameter [1:0] WAIT_FOR_SIGNAL = 2'b01;
    parameter [1:0] GET_SIGNAL_DOWN = 2'b10;
    parameter [1:0] WAIT_RELEASE    = 2'b11;
    
    parameter [7:0] IS_INIT			= 8'hAA;
    parameter [7:0] IS_EXTEND		= 8'hE0;
    parameter [7:0] IS_BREAK		= 8'hF0;
    
    reg [9:0] key;		// key = {been_extend, been_break, key_in}
    reg [1:0] state;
    reg been_ready, been_extend, been_break;
    
    wire [7:0] key_in;
    wire is_extend;
    wire is_break;
    wire valid;
    wire err;
    
    wire [511:0] key_decode = 1 << last_change;
    assign last_change = {key[9], key[7:0]};
    
    KeyboardCtrl_0 inst (
		.key_in(key_in),
		.is_extend(is_extend),
		.is_break(is_break),
		.valid(valid),
		.err(err),
		.PS2_DATA(PS2_DATA),
		.PS2_CLK(PS2_CLK),
		.rst(rst),
		.clk(clk)
	);
	
	one_pulse op (
		.pb_one_pulse(pulse_been_ready),
		.pb_debounced(been_ready),
		.clk(clk)
	);

    always @ (posedge clk, posedge rst) begin
    	if (rst) begin
    		state <= INIT;
    		been_ready  <= 1'b0;
    		been_extend <= 1'b0;
    		been_break  <= 1'b0;
    		key <= 10'b0_0_0000_0000;
    	end else begin
    		state <= state;
			been_ready  <= been_ready;
			been_extend <= (is_extend) ? 1'b1 : been_extend;
			been_break  <= (is_break ) ? 1'b1 : been_break;
			key <= key;
    		case (state)
    			INIT : begin
    					if (key_in == IS_INIT) begin
    						state <= WAIT_FOR_SIGNAL;
    						been_ready  <= 1'b0;
							been_extend <= 1'b0;
							been_break  <= 1'b0;
							key <= 10'b0_0_0000_0000;
    					end else begin
    						state <= INIT;
    					end
    				end
    			WAIT_FOR_SIGNAL : begin
    					if (valid == 0) begin
    						state <= WAIT_FOR_SIGNAL;
    						been_ready <= 1'b0;
    					end else begin
    						state <= GET_SIGNAL_DOWN;
    					end
    				end
    			GET_SIGNAL_DOWN : begin
						state <= WAIT_RELEASE;
						key <= {been_extend, been_break, key_in};
						been_ready  <= 1'b1;
    				end
    			WAIT_RELEASE : begin
    					if (valid == 1) begin
    						state <= WAIT_RELEASE;
    					end else begin
    						state <= WAIT_FOR_SIGNAL;
    						been_extend <= 1'b0;
    						been_break  <= 1'b0;
    					end
    				end
    			default : begin
    					state <= INIT;
						been_ready  <= 1'b0;
						been_extend <= 1'b0;
						been_break  <= 1'b0;
						key <= 10'b0_0_0000_0000;
    				end
    		endcase
    	end
    end
    
    always @ (posedge clk, posedge rst) begin
    	if (rst) begin
    		key_valid <= 1'b0;
    		key_down <= 511'b0;
    	end else if (key_decode[last_change] && pulse_been_ready) begin
    		key_valid <= 1'b1;
    		if (key[8] == 0) begin
    			key_down <= key_down | key_decode;
    		end else begin
    			key_down <= key_down & (~key_decode);
    		end
    	end else begin
    		key_valid <= 1'b0;
			key_down <= key_down;
    	end
    end
endmodule