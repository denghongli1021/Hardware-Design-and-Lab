// <111062107> <鄧弘利>

// e.g. 109012345 ���p��
// Add your ID and name to FIRST line of file, or you will get 5 points penalty


module exam2(
    input wire clk, // 100Mhz clock
    input wire rst,
    input wire en,
    input wire up,       // for remedy
    input wire down,   //for remedy
    inout wire PS2_DATA,
    inout wire PS2_CLK,
    output wire [3:0] DIGIT,
    output wire [6:0] DISPLAY,
    output reg [15:0] led  // You can modify "wire" of output ports to "reg" if needed
);
    
    parameter [8:0] KEY_CODES [0:1] = {
    	9'b0_0110_1001, // right_1 => 69
    	9'b0_0111_0010 // right_2 => 72
    };
    //add your design here
	parameter [1:0] IDLE = 2'b00;
	parameter [1:0] NORMAL = 2'b01;
	parameter [1:0] CHANGE = 2'b10;
	reg [1:0] state = IDLE;
	reg [1:0] next_state = IDLE;
	reg [3:0] sec_1 = 0;
	reg [3:0] sec_2 = 0;
	reg [3:0] sec_3 = 0;
	reg [3:0] sec_4 = 0;
	wire rst1 , rst2;
	debounce d1 (.pb_debounced(rst1), .pb(rst), .clk(clk));
	onepulse o1 (.pb_debounced(rst1), .clk(clk), .pb_1pulse(rst2));	
	wire en1 , en2;
	debounce d2 (.pb_debounced(en1), .pb(en), .clk(clk));
	onepulse o2 (.pb_debounced(en1), .clk(clk), .pb_1pulse(en2));	
	reg [15:0] nums;
	SevenSegment sg(
		.display(DISPLAY),
		.digit(DIGIT), 
		.nums(nums), // four 4-bits BCD number
		.rst(rst2),
		.clk(clk)  // Input 100Mhz clock
	);
	wire [511:0] key_down;
	wire [8:0] last_change;
	wire key_valid;
	KeyboardDecoder kd (
		.key_down(key_down),
		.last_change(last_change),
		.key_valid(key_valid),
		.PS2_DATA(PS2_DATA),
		.PS2_CLK(PS2_CLK),
		.rst(rst2),
		.clk(clk)
    );
	reg [1:0] use_clk = 0;
	wire clk_25;
	wire clk_21;
	wire clk_27;
	clock_divider #(.n(25)) c1 (.clk(clk), .clk_div(clk_25));
	clock_divider #(.n(21)) c2 (.clk(clk), .clk_div(clk_21));
	clock_divider #(.n(27)) c3 (.clk(clk), .clk_div(clk_27));
	reg [9:0] cnt = 0;
	reg reset = 1;
	always@(posedge clk_21) begin
		if (rst2 || state == IDLE) begin
			sec_1 = 0;
			sec_2 = 0;
			sec_3 = 0;
			sec_4 = 0;
		end
		else if (state == CHANGE && reset) begin
			sec_1 = 0;
			sec_2 = 0;
			sec_3 = 0;
			sec_4 = 0;
			reset = 0;
		end
		else if ((state == NORMAL || state == CHANGE) && sec_4 != 1) begin
			if (state == NORMAL && reset == 0) begin
				reset = 1;
			end
			cnt = cnt + 1;
			if (use_clk == 0 && cnt >= 16) begin
				if (sec_1 == 9) begin
					sec_1 = 0;
					if (sec_2 == 9) begin
						sec_2 = 0;
						if (sec_3 == 5) begin
							sec_3 = 0;
							sec_4 = 1;
						end
						else sec_3 = sec_3 + 1;
					end
					else sec_2 = sec_2 + 1;
				end
				else sec_1 = sec_1 + 1;
				cnt = 0;
			end
			else if (use_clk == 1 && cnt >= 1) begin
				if (sec_1 == 9) begin
					sec_1 = 0;
					if (sec_2 == 9) begin
						sec_2 = 0;
						if (sec_3 == 5) begin
							sec_3 = 0;
							sec_4 = 1;
						end
						else sec_3 = sec_3 + 1;
					end
					else sec_2 = sec_2 + 1;
				end
				else sec_1 = sec_1 + 1;
				cnt = 0;
			end
			else if (use_clk == 2 && cnt >= 64) begin
				if (sec_1 == 9) begin
					sec_1 = 0;
					if (sec_2 == 9) begin
						sec_2 = 0;
						if (sec_3 == 5) begin
							sec_3 = 0;
							sec_4 = 1;
						end
						else sec_3 = sec_3 + 1;
					end
					else sec_2 = sec_2 + 1;
				end
				else sec_1 = sec_1 + 1;
				cnt = 0;
			end
		end
	end
	// reg [8:0] press_key = 0;
	always @(posedge clk) begin
		if (rst2) begin
			use_clk = 0;
		end
		else begin
			case (state) 
				IDLE : begin
					use_clk = 0;
				end
				NORMAL : begin
					if (key_down[KEY_CODES[0]] == 1) begin
						use_clk = 1;
					end
					else if (key_down[KEY_CODES[1]] == 1) begin
						use_clk = 2;
					end
				end
				CHANGE : begin
					if (key_down[KEY_CODES[0]] == 1) begin
						use_clk = 1;
						// press_key = KEY_CODES[0];
					end
					else if (key_down[KEY_CODES[1]] == 1) begin
						use_clk = 2;
						// press_key = KEY_CODES[1];
					end
					else begin
						use_clk = 0;
					end
				end
				default : begin
					use_clk = 0;
				end
			endcase
		end
	end
	// 7 segment
	always@(posedge clk) begin
		case(state) 
			IDLE : begin
				nums = 16'b0000_0000_0000_0000;
			end
			NORMAL : begin
				nums = {sec_4 , sec_3 , sec_2 , sec_1};
			end
			CHANGE : begin
				nums = {sec_4 , sec_3 , sec_2 , sec_1};
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
				led = 16'b1111_0000_0000_0000;
			end
			NORMAL : begin
				led = 16'b0000_1111_0000_0000;
			end
			CHANGE : begin
				led = 16'b0000_0000_1111_0000;
			end
			default : begin
				led = 16'b1111_0000_0000_0000;
			end
		endcase
	end
	// state next_state
	always@(posedge clk) begin
		if (rst2) begin
			state = IDLE;
		end
		else state = next_state;
	end
	always@(*) begin
		if (rst2) begin
			next_state = IDLE;
		end
		else begin
			case(state)
				IDLE : begin
					if (en2) begin
						next_state = NORMAL;
					end
					else begin
						next_state = IDLE;
					end
				end
				NORMAL : begin
					if (en2) begin
						next_state = CHANGE;
					end
					else begin
						next_state = NORMAL;
					end
				end
				CHANGE : begin
					if (en2) begin
						next_state = IDLE;
					end
					else begin
						next_state = CHANGE;
					end
				end
				default : begin
					next_state = state;
				end
			endcase
		end
	end
	

endmodule

// You can modify below modules I/O or content if needed.
// Also you can add any module you need.
// Make sure you include all modules you used in this file.

module onepulse(pb_debounced, clk, pb_1pulse);	
	input pb_debounced;	
	input clk;	
	output pb_1pulse;	

	reg pb_1pulse;	
	reg pb_debounced_delay;	

	always@(posedge clk) begin
		pb_1pulse <= pb_debounced & (! pb_debounced_delay);
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

module clock_divider(clk, clk_div);   
    parameter n = 26;     
    input clk;   
    output clk_div;   
    
    reg [n-1:0] num;
    wire [n-1:0] next_num;
    
    always@(posedge clk)begin
    	num <= next_num;
    end
    
    assign next_num = num +1;
    assign clk_div = num[n-1];
    
endmodule

module debounce (pb_debounced, pb, clk); 
	output pb_debounced;
	input pb;
	input clk; 
	reg [3:0] DFF;
	always @(posedge clk) begin 
		DFF[3:1] <= DFF[2:0]; 
		DFF[0] <= pb; 
	end
	assign pb_debounced = ((DFF == 4'b1111) ? 1'b1 : 1'b0);

endmodule

module KeyboardDecoder(
	output reg [511:0] key_down,
	output wire [8:0] last_change,
	output reg key_valid,
	inout wire PS2_DATA,
	inout wire PS2_CLK,
	input wire rst,
	input wire clk
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
	
	
    onepulse op(.clk(clk), .pb_debounced(been_ready), .pb_1pulse(pulse_been_ready));
    
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
