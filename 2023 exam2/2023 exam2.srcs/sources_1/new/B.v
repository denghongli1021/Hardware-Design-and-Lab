// <111062107> <¾H¥°§Q>

// Add your ID and name to FIRST line of file, or you will get 5 points penalty
// e.g. 110123456 ¤ý¤p©ú
module exam2_B(
    input clk, 
    input rst, 
    input en, 
    inout PS2_DATA, 
	inout PS2_CLK, 
    output [3:0] DIGIT, 
    output [6:0] DISPLAY,
    output reg [15:0] led
);
    parameter [8:0] KEY_CODES [0:1] = {
        9'b0_0001_0100, //left Ctrl
        9'b1_0001_0100 // right Ctrl
    };
	// add your design here
	parameter [1:0] IDLE = 2'b00;
	parameter [1:0] COUNTDOWN = 2'b01;
	parameter [1:0] BATTLE = 2'b10;
	reg [1:0] state = IDLE;
	reg [1:0] next_state = IDLE;
	wire rst1,rst2;
	debounce d1(.pb(rst), .clk(clk), .pb_debounced(rst1));
	one_pulse o1(.pb_debounced(rst1), .clk(clk), .pb_one_pulse(rst2));
	wire en1,en2;
	debounce d2(.pb(en), .clk(clk), .pb_debounced(en1));
	one_pulse o2(.pb_debounced(en1), .clk(clk), .pb_one_pulse(en2));

	wire [511:0] key_down;
	wire [8:0] last_change;
	wire key_valid;
	reg [15:0] nums = 0;
	reg [3:0] a_life = 2;
	reg [3:0] b_life = 2;
	reg [15:0] a_bullet = 0;
	reg [15:0] b_bullet = 0;
	wire [15:0] bullet ;
	assign bullet = view_a | view_b;
	KeyboardDecoder kd(
		.rst(rst2),
		.clk(clk),
		.PS2_DATA(PS2_DATA),
		.PS2_CLK(PS2_CLK),
		.key_down(key_down),
		.last_change(last_change),
		.key_valid(key_valid)
	);
	SevenSegment sg(
		.display(DISPLAY),
		.digit(DIGIT), 
		.nums(nums), // four 4-bits BCD number
		.rst(rst2),
		.clk(clk)  // Input 100Mhz clock
	);
	wire clk_26;
	clock_divider #(.n(26)) (.clk(clk), .clk_div(clk_26));
	wire clk_24;
	clock_divider #(.n(24)) (.clk(clk), .clk_div(clk_24));
	// bullet
	always @(posedge clk or posedge rst2) begin
		if (rst2 || state == IDLE) begin
			a_bullet = 0;
			b_bullet = 0;
		end
		else if (state == BATTLE) begin
			a_bullet = view_a >> 1;
			b_bullet = view_b << 1;
			if (key_down[KEY_CODES[0]] == 1) begin
				a_bullet[15] = 1;
			end
			if (key_down[KEY_CODES[1]] == 1) begin
				b_bullet[0] = 1;
			end
			
		end
	end
	reg wt = 1;
	reg [15:0] view_a = 0;
	reg [15:0] view_b = 0;
	always@(posedge clk_24 or posedge rst2) begin
		if (rst2 || state == IDLE) begin
			view_a = 0;
			view_b = 0;
		end
		else if (state == COUNTDOWN) begin
			a_life = 2;
			b_life = 2;
			wt = 1;
		end 
		else if (state == BATTLE) begin
			if (wt) begin
				wt = 0;
				a_life = 2;
				b_life = 2;
			end
			else begin
				view_a = a_bullet;
				view_b = b_bullet;
				if (view_a[0] == 1 && view_b[15] == 1) begin
					a_life <= a_life - 1;
					b_life <= b_life - 1;
				end
				else if (view_b[15] == 1) begin
					a_life = a_life - 1;
				end
				else if (view_a[0] == 1) begin
					b_life = b_life - 1;
				end
				else begin
					a_life = a_life;
					b_life = b_life;
				end
			end
		end
	end
	// cnt
	reg [5:0] cnt = 0;
	always@(posedge clk_26) begin
		if (state == COUNTDOWN) begin
			if (cnt == 6) cnt = cnt;
			else cnt = cnt + 1;
		end
		else cnt = 0;
	end
	// state
	always@(posedge clk) begin
		if (rst2) begin
			state = IDLE;
		end
		else state = next_state;
	end
	always@(posedge clk)begin
		if (rst2) begin
			next_state = IDLE;
		end
		else begin
			case(state) 
				IDLE : begin
					if (en1) begin
						next_state = COUNTDOWN;
					end
					else next_state = IDLE;
				end
				COUNTDOWN : begin
					if (cnt == 6) begin
						next_state = BATTLE;
					end
					else next_state = COUNTDOWN;
				end
				BATTLE : begin
					if ((a_life == 0 || b_life == 0) && wt == 0) begin
						next_state = IDLE;
					end
					else next_state = BATTLE;
				end
				default : begin
					next_state = state;
				end
			endcase
		end
	end
	// 7 seg
	always@(posedge clk) begin
		case(state)
			IDLE : begin
				nums = 16'b0000_0000_0000_0000;
			end
			COUNTDOWN : begin
				if (cnt == 0) begin
					nums = 16'b0000_0000_0000_0011;
				end
				else if (cnt == 1) begin
					nums = 16'b0000_0000_0000_0011;
				end
				else if (cnt == 2) begin
					nums = 16'b0000_0000_0000_0010;
				end
				else if (cnt == 3) begin
					nums = 16'b0000_0000_0000_0010;
				end
				else if (cnt == 4) begin
					nums = 16'b0000_0000_0000_0001;
				end
				else if (cnt == 5) begin
					nums = 16'b0000_0000_0000_0001;
				end
				else if (cnt == 6) begin
					nums = 16'b0000_0000_0000_0000;
				end
				else begin
					nums = 16'b0000_0000_0000_0000;
				end
			end
			BATTLE : begin
				nums = {4'b0000 ,a_life , 4'b0000 , b_life};
			end
			default : begin
				nums = 16'b0000_0000_0000_0000;
			end
		endcase
	end
	// led
	always@(posedge clk) begin
		case(state)
			IDLE : begin
				led = 16'b1111_1111_1111_1111;
			end
			COUNTDOWN : begin
				if (cnt == 0) begin
					led = 16'b0000_0000_0000_0000;
				end
				else if (cnt == 1) begin
					led = 16'b1111_1111_1111_1111;
				end
				else if (cnt == 2) begin
					led = 16'b0000_0000_0000_0000;
				end
				else if (cnt == 3) begin
					led = 16'b1111_1111_1111_1111;
				end
				else if (cnt == 4) begin
					led = 16'b0000_0000_0000_0000;
				end
				else if (cnt == 5) begin
					led = 16'b1111_1111_1111_1111;
				end
				else if (cnt == 6) begin
					led = 16'b0000_0000_0000_0000;
				end
				else begin
					led = 16'b0000_0000_0000_0000;
				end
			end
			BATTLE : begin
				led = bullet;
			end
			default : begin
				led = 16'b0000_0000_0000_0000;
			end
		endcase
	end
    

endmodule


// provided modules
module clock_divider #(parameter n=25) (clk, clk_div);
    input clk;
    output clk_div;

    reg [n-1:0] num = 0;
    wire [n-1:0] next_num;

    always @(posedge clk) begin
        num <= next_num;
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


module SevenSegment(
		output reg [6:0] display,
		output reg [3:0] digit, 
		input wire [15:0] nums, // four 4-bits BCD number
		input wire rst,
		input wire clk  // Input 100Mhz clock
	);
    
    reg [15:0] clk_divider;
    reg [3:0] display_num;
    
    always @ (posedge clk, posedge rst) begin
    	if (rst) begin
    		clk_divider <= 15'b0;
    	end else begin
    		clk_divider <= clk_divider + 15'b1;
    	end
    end
    
    always @ (posedge clk_divider[15], posedge rst) begin
    	if (rst) begin
    		display_num <= 4'b0000;
    		digit <= 4'b1111;
    	end else begin
    		case (digit)
    			4'b1110 : begin
    					display_num <= nums[7:4];
    					digit <= 4'b1101;
    				end
    			4'b1101 : begin
						display_num <= nums[11:8];
						digit <= 4'b1011;
					end
    			4'b1011 : begin
						display_num <= nums[15:12];
						digit <= 4'b0111;
					end
    			4'b0111 : begin
						display_num <= nums[3:0];
						digit <= 4'b1110;
					end
    			default : begin
						display_num <= nums[3:0];
						digit <= 4'b1110;
					end				
    		endcase
    	end
    end
    
    always @ (*) begin
    	case (display_num)
    		0 : display = 7'b1000000;	//0000
			1 : display = 7'b1111001;   //0001                                                
			2 : display = 7'b0100100;   //0010                                                
			3 : display = 7'b0110000;   //0011                                             
			4 : display = 7'b0011001;   //0100                                               
			5 : display = 7'b0010010;   //0101                                               
			6 : display = 7'b0000010;   //0110
			7 : display = 7'b1111000;   //0111
			8 : display = 7'b0000000;   //1000
			9 : display = 7'b0010000;	//1001
			default : display = 7'b1111111;
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
    
    KeyboardCtrl inst (
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