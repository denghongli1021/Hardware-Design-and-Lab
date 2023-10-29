module Lab5(
	output wire [6:0] display,
	output wire [3:0] digit,
	output reg [15:0] LED,
	inout wire PS2_DATA,
	inout wire PS2_CLK,
	input wire rst,
	input wire clk,
	input wire btnL,
	input wire btnR
	);
	parameter [8:0] LEFT_SHIFT_CODES  = 9'b0_0001_0010;
	parameter [8:0] RIGHT_SHIFT_CODES = 9'b0_0101_1001;
	parameter [8:0] SPACE = 9'b0_0010_1001;
	parameter [8:0] LEFT_ENTER = 9'b0_0101_1010;
	parameter [8:0] KEY_CODES [0:19] = { // Vivado linter will show an error when in Verilog⦿ But since it supports SystemVerilog too, we still can use this style. ◆ And we do!
		9'b0_0100_0101,	// 0 => 45
		9'b0_0001_0110,	// 1 => 16
		9'b0_0001_1110,	// 2 => 1E
		9'b0_0010_0110,	// 3 => 26
		9'b0_0010_0101,	// 4 => 25
		9'b0_0010_1110,	// 5 => 2E
		9'b0_0011_0110,	// 6 => 36
		9'b0_0011_1101,	// 7 => 3D
		9'b0_0011_1110,	// 8 => 3E
		9'b0_0100_0110,	// 9 => 46
		
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
wire btnL1 , btnL2;
debounce a1 (
	.clk(clk),
	.pb(btnL), 
	.pb_debounced(btnL1)
);
one_pulse a2 (
	.clk(clk),
	.pb_in(btnL1), 
	.pb_out(btnL2)
);
wire btnR1 , btnR2;
debounce b1 (
	.clk(clk),
	.pb(btnR), 
	.pb_debounced(btnR1)
);
one_pulse b2 (
	.clk(clk),
	.pb_in(btnR1), 
	.pb_out(btnR2)
);	
wire btnC1 , btnC2;
debounce c1 (
	.clk(clk),
	.pb(rst), 
	.pb_debounced(btnC1)
);
one_pulse c2 (
	.clk(clk),
	.pb_in(btnC1), 
	.pb_out(btnC2)
);
wire clk_div;
clock_divider #(27) clk_d (
	.clk(clk),
    .clk_div(clk_div)
);
reg [2:0] state;
reg [2:0] next_state;
parameter IDLE = 3'b000;
parameter SET = 3'b001;
parameter PAYMENT =  3'b010;
parameter BUY  = 3'b011;
parameter CHANGE = 3'b100; 
// keyboard
wire [127:0] key_down;
wire [8:0] last_change;
wire been_ready;
reg [3:0] key_num;
// state 要用的
reg [3:0] get_item_num;
reg [3:0] item_num = 4'd9;
reg [3:0] item_price_10 = 1;
reg [3:0] item_price_1 = 0 ;
reg [7:0] item_price = 8'b0000_1010;
reg[3:0] money_10 = 0;
reg[3:0] money_1 = 0;
reg [7:0] money = 0;
reg [7:0] pay_10 = 0;
reg [7:0] pay_1 = 0;
reg [7:0] pay = 0;
reg [2:0] flash_cnt = 0;
reg [28:0] flash_sec = 0;
// note 2
reg [1:0] end_key = 0;
reg [8:0] last_last_change = 0;
KeyboardDecoder key_de (
	.key_down(key_down),
	.last_change(last_change),
	.key_valid(been_ready),
	.PS2_DATA(PS2_DATA),
	.PS2_CLK(PS2_CLK),
	.rst(btnC2),
	.clk(clk)
);
// seven segment
reg[15:0] nums;
// reg[15:0] temp_nums = 16'b1111_1111_1111_1111;
SevenSegment sev_seg (
	.display(display),
	.digit(digit),
	.nums(nums),
	.rst(btnC2),
	.clk(clk)
);
reg [1:0] side = 0; // 0 for left 1 for right 
// side
always@(posedge clk or posedge btnC2) begin
	if (btnC2) begin
		side = 0;
	end
	else if (state == SET) begin // 測看看 side會不會動
		if (been_ready && key_down[SPACE] == 1'b1) begin
			side = side ^ 1;
		end
	end
end
// process state
always@(posedge clk or posedge btnC2) begin
	if (btnC2) begin
		nums = 16'b1010_1010_1010_1010;
		item_num = 9;
		item_price = 8'b0000_1010;
		item_price_10 = 1;
		item_price_1 = 0;
		money = 0;
		money_1 = 0;
		money_10 = 0;
		pay_1 = 0;
		pay_10 = 0;
	end
	else if (state == IDLE) begin
		nums = 16'b1010_1010_1010_1010;
		get_item_num = 0;
		// flash_cnt = 0;
		// flash_sec = 0;
		last_last_change = 0;
		end_key = 0;
		money = 0;
		money_1 = 0;
		money_10 = 0;
		pay_1 = 0;
		pay_10 = 0;
		pay = 0;
	end
	else if (state == SET) begin
		nums = {item_num[3:0] , 4'b1010 , item_price_10 ,item_price_1};
		if (been_ready && key_down[last_change] == 1'b1 && !end_key) begin // &!not_released
			if (key_num != 4'b1111)begin // && key_down[last_last_change] == 1'b0
				if (side == 1'b0) begin
					nums <= {key_num , nums[11:0] };
					item_num = key_num;				
				end else begin
					nums <= {nums[15:8] ,nums[3:0] , key_num};
					item_price_10 = item_price_1;
					item_price_1 = key_num;
					item_price = item_price_1 + item_price_10 * 10;
				end
			end
			end_key = 1;
			last_last_change = last_change;
		end
		else if (key_down[last_last_change] == 1'b0) begin
			end_key = 0;
		end
	end
	else if (state == PAYMENT && next_state == BUY) begin
		get_item_num = money / item_price;
		if (get_item_num >= item_num) begin
			get_item_num = item_num;
			item_num = item_num - get_item_num;
		end
		else begin
			item_num = item_num - get_item_num;
		end
		pay = get_item_num * item_price;
		money = money - pay;
		pay_10 = pay / 4'b1010;
		pay_1 = pay - pay_10 * 4'b1010;
		money_10 = money/10;
		money_1 = money%10;
		nums = {get_item_num[3:0] , 4'b1010 ,pay_10[3:0] ,pay_1[3:0]} ;
	end
	else if (state == PAYMENT) begin
		nums = {4'b1010 , 4'b1010 , money_10[3:0] ,money_1[3:0]};
		if (been_ready && key_down[last_change] == 1'b1 && !end_key) begin // &!not_released
			if (key_num != 4'b1111)begin
				case (key_num) 
				4'b0000: begin
					money_1 = 0;
					money_10 = 0; 
				end
				4'b0001: begin
					money_1 =  money_1 + 4'b0001;
					if (money_1 == 4'b1010) begin
						money_1 = 4'b0000;
						money_10 = money_10 + 4'b0001;
					end	
				end
				4'b0010: begin 
					money_1 = money_1 + 4'b0101;
					if (money_1 >= 4'b1010) begin
						money_1 = money_1 - 4'b1010;
						money_10 = money_10 + 1'b1;
					end
				end
				4'b0011: begin
					money_10 = money_10 + 1'b1;
				end
				4'b0100: begin
					money_10 = money_10 + 4'b0101;
				end
				endcase
				money = money_10 * 4'b1010 + money_1 ;
				if (money >= 8'd99) begin
					money = 8'd99;
					money_1 = 4'b1001;
					money_10 = 4'b1001;
				end
				nums = {4'b1010 , 4'b1010 , money_10[3:0] ,money_1[3:0]};
			end
			end_key = 1;
			last_last_change = last_change;
		end
		else if (been_ready && key_down[last_last_change] == 1'b0) begin
			end_key = 0;
		end
	end
	else if (state == BUY) begin
		if (flash_sec== 0) begin
			nums = {get_item_num[3:0] , 4'b1010 ,pay_10[3:0] ,pay_1[3:0]} ;
		end
		else if (flash_sec == 50000000) begin
			nums = {4'b1011 ,4'b1011 ,4'b1011 ,4'b1011};
		end
		else if (flash_sec == 100000000) begin
			nums = {get_item_num[3:0] , 4'b1010 ,pay_10[3:0] ,pay_1[3:0]} ;
		end
		else if (flash_sec == 150000000) begin
			nums = {4'b1011 ,4'b1011 ,4'b1011 ,4'b1011};
		end
		else if (flash_sec == 200000000) begin
			nums = {get_item_num[3:0] , 4'b1010 ,pay_10[3:0] ,pay_1[3:0]} ;
		end
		else if (flash_sec == 250000000) begin
			nums = {4'b1011 ,4'b1011 ,4'b1011 ,4'b1011};
		end
	end
	else if (state == CHANGE) begin
		nums = {get_item_num[3:0] , 4'b1010 ,money_10[3:0] ,money_1[3:0]};
	end
end
// key_num
	always @ (*) begin
		case (last_change)
			KEY_CODES[00] : key_num = 4'b0000;
			KEY_CODES[01] : key_num = 4'b0001;
			KEY_CODES[02] : key_num = 4'b0010;
			KEY_CODES[03] : key_num = 4'b0011;
			KEY_CODES[04] : key_num = 4'b0100;
			KEY_CODES[05] : key_num = 4'b0101;
			KEY_CODES[06] : key_num = 4'b0110;
			KEY_CODES[07] : key_num = 4'b0111;
			KEY_CODES[08] : key_num = 4'b1000;
			KEY_CODES[09] : key_num = 4'b1001;
			KEY_CODES[10] : key_num = 4'b0000;
			KEY_CODES[11] : key_num = 4'b0001;
			KEY_CODES[12] : key_num = 4'b0010;
			KEY_CODES[13] : key_num = 4'b0011;
			KEY_CODES[14] : key_num = 4'b0100;
			KEY_CODES[15] : key_num = 4'b0101;
			KEY_CODES[16] : key_num = 4'b0110;
			KEY_CODES[17] : key_num = 4'b0111;
			KEY_CODES[18] : key_num = 4'b1000;
			KEY_CODES[19] : key_num = 4'b1001;
			default		  : key_num = 4'b1111;
		endcase
	end
// led
always@(posedge clk or posedge btnC2) begin
	if (btnC2) begin
		LED = 16'b0000_0000_0000_0000;
	end
	else begin
		case (state)
		IDLE : begin
			LED = 16'b0000_0000_0000_0000;
		end
		SET : begin
			if (side == 0) begin
				LED = 16'b1111_1111_0000_0000;
			end
			else begin
				LED = 16'b0000_0000_1111_1111;
			end
		end
		PAYMENT : begin
			if (been_ready && key_down[LEFT_ENTER] == 1'b1 || next_state == BUY || next_state == CHANGE) begin
				LED = 16'b1111_1111_1111_1111;
			end
			else begin
				LED = 16'b0000_0000_0000_0000;
			end
		end
		BUY : begin			
			if (flash_sec== 0) begin
				LED = 16'b1111_1111_1111_1111;
			end
			else if (flash_sec == 50000000) begin
				LED = 16'b0000_0000_0000_0000;
			end
			else if (flash_sec == 100000000) begin
				LED = 16'b1111_1111_1111_1111;
			end
			else if (flash_sec == 150000000) begin
				LED = 16'b0000_0000_0000_0000;
			end
			else if (flash_sec == 200000000) begin
				LED = 16'b1111_1111_1111_1111;
			end
			else if (flash_sec == 250000000) begin
				LED = 16'b0000_0000_0000_0000;
			end
		end
		CHANGE : begin
			LED = 16'b1111_1111_1111_1111;
		end	
		endcase
	end
end
// state
always @(posedge clk or posedge btnC2) begin
	if (btnC2) begin
		state = IDLE;
	end
	else begin
		state = next_state;
	end
end
// next_state
always @(posedge clk or posedge btnC2) begin
	if (btnC2) begin
		next_state = IDLE;
		flash_cnt = 0;
		flash_sec = 0;
	end
	else begin
		
		case (state) 
		IDLE : begin
			if (btnL2) begin
				next_state = SET;
			end
			else if (btnR2) begin
				next_state = PAYMENT;
			end
		end
		SET : begin
			if (been_ready && key_down[LEFT_ENTER] == 1'b1) begin
				next_state = IDLE;
			end
		end
		PAYMENT : begin
			if (been_ready && key_down[LEFT_ENTER] == 1'b1) begin
				if (item_num == 0) begin
					next_state = CHANGE;
				end
				else if (money >= item_price) begin
					next_state = BUY;
				end
				else begin
					next_state = CHANGE;
				end
			end
		end
		BUY : begin
			flash_sec = flash_sec + 1;
			if (flash_sec == 300000000) begin
				next_state = CHANGE;
				flash_sec = 0;
			end
		end
		CHANGE : begin
			flash_sec = flash_sec + 1;
			if (flash_sec == 300000000) begin
				next_state = IDLE;
				flash_sec = 0;
			end
		end
		default : begin

		end
 		endcase
	end
end

endmodule

// module Integer_Divider(
//     input wire [7:0] A,
//     input wire [7:0] B,
// 	input wire clk,
// 	input wire rst,
//     output wire [3:0] Quotient
// );

// reg [7:0] remainder;
// reg [7:0] quotient;
// reg [7:0] count;

// always @(posedge clk or posedge rst) begin
//     if (rst) begin
//         // 初始化
//         remainder <= 7'b0;
//         quotient <= 7'b0;
//         count <= 7'b0;
//     end else begin
//         // 進行除法運算
//         if (remainder >= B) begin
//             remainder <= remainder - B;
//             quotient <= quotient | (1 << count);
//         end
//         count <= count + 1;
//     end
// end

// assign Quotient = quotient;

// endmodule

module KeyboardDecoder(
	output reg [127:0] key_down,
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
	
	one_pulse op (
		.pb_out(pulse_been_ready),
		.pb_in(been_ready),
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
module SevenSegment(
	output reg [6:0] display,
	output reg [3:0] digit,
	input wire [15:0] nums,
	input wire rst,
	input wire clk
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
			10 : display = 7'b0111111; // -
			default : display = 7'b1111111;
    	endcase
    end
    
endmodule
