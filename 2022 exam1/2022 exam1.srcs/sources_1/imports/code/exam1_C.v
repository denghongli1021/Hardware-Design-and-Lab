// 111062107 鄧弘利

// e.g. 110123456 ??�大???
// Add your ID and name to FIRST line of file, or you will get 5 points penalty

module exam1_C(
    input wire clk, // 100Mhz clock
    input wire rst,
    input wire en,
    input wire set,
    input wire up,
    input wire down,
    input wire [15:0] sw,
    output wire [3:0] DIGIT,
    output wire [6:0] DISPLAY,
    output reg [15:0] led
);
    //Your design here

parameter RESET = 2'b00;
parameter START = 2'b01;
parameter PAUSE = 2'b10;
parameter FINISH = 2'b11;
wire clk_use0;
wire clk_use1;
wire clk_use2;
wire clk_use_user;
assign clk_use_user = (mode == 3) ? clk_use2 : 
					(mode == 2) ? clk_use1 : clk_use0;
reg[2:0] state = RESET;
reg[2:0] next_state;
reg[15:0] led_ai = 16'b1000_0000_0000_0000;
reg[15:0] led_user = 16'b0000_0000_0000_0111;
reg[15:0] led_flag = 16'b0000_0000_0000_0000;
wire led2;
assign led2 = led_ai | led_user | led_flag; 
reg[2:0] mode = 1;
// always@(*) begin
// 	if (mode == 0) begin
// 		clk_use_user = clk_use0;
// 	end
// 	else if (mode == 1) begin
// 		clk_use_user = clk_use1;
// 	end
// 	else if (mode == 2) begin
// 		clk_use_user = clk_use2;
// 	end
// end

clock_divider #(24) f0 (
	.clk(clk),
	.clk_div(clk_use0)
);
clock_divider #(25) f1 (
	.clk(clk),
	.clk_div(clk_use1)
);
clock_divider f2 (
	.clk(clk),
	.clk_div(clk_use2)
);
wire rst1;
debounce a1 (
	.pb_debounced(rst1),
	.pb(rst),
	.clk(clk)
);
wire rst2;
one_pulse a2 (
	.pb_debounced(rst1),
	.clk(clk),
	.pb_1pulse(rst2)
);

wire en1;
debounce b1 (
	.pb_debounced(en1),
	.pb(rst),
	.clk(clk)
);
wire en2;
one_pulse b2 (
	.pb_debounced(en1),
	.clk(clk),
	.pb_1pulse(en2)
);

wire set1;
debounce c1 (
	.pb_debounced(set1),
	.pb(rst),
	.clk(clk)
);
wire set2;
one_pulse c2 (
	.pb_debounced(set1),
	.clk(clk),
	.pb_1pulse(set2)
);

wire up1;
debounce d1 (
	.pb_debounced(up1),
	.pb(rst),
	.clk(clk)
);
wire up2;
one_pulse d2 (
	.pb_debounced(up1),
	.clk(clk),
	.pb_1pulse(up2)
);

wire down1;
debounce e1 (
	.pb_debounced(down1),
	.pb(rst),
	.clk(clk)
);
wire down2;
one_pulse e2 (
	.pb_debounced(down1),
	.clk(clk),
	.pb_1pulse(down2)
);
// state
always @ (posedge clk , posedge rst) begin
	if (rst) begin
		state = RESET;
	end
	else begin
		state = next_state;
	end
end
// next_state
always @ (posedge clk , posedge rst) begin
	if (rst) begin
		next_state = RESET;
	end
	else begin
		case(state)
		RESET : begin
			if (en2) begin
				next_state = START;
			end
		end
		START : begin
			if (en2) begin
				next_state = PAUSE;
			end
			else if (point_ai == 10 || point_user == 10) begin
				next_state = FINISH;
			end
		end
		PAUSE : begin
			if (en2) begin
				next_state = START;
			end
		end
		FINISH : begin

		end
		endcase
	end
end
reg[4:0] point_ai = 0;
reg[1:0] dir_ai = 1; // 1 for right 0 for left
always @(posedge clk_use2 , posedge rst) begin
	if (rst) begin
		led_ai = 16'b1000_0000_0000_0000;
		dir_ai = 1;
		point_ai = 0;
	end
	else begin
		if (dir_ai == 1) begin
			if ((led_ai >> 1)&led_user) begin
				dir_ai = 0;
				led_ai = led_ai << 1;
			end
			else if (led_ai == 16'b0000_0000_0000_0001) begin
				led_ai = 16'b1000_0000_0000_0000;
			end
		end
		else begin
			if ((led_ai << 1)&led_user) begin
				dir_ai = 1;
				led_ai = led_ai >> 1;
			end
			else if (led_ai == 16'b1000_0000_0000_0000) begin
				led_ai = 16'b0000_0000_0000_0001;
			end
		end
	end
end

reg [5:0] point_user = 0;
reg[1:0] dir_user = 0; // 1 for right 0 for left
always @(posedge clk_use_user , posedge rst) begin
	if (rst) begin
		led_ai = 16'b0000_0000_0000_0111;
		mode = 1;
		dir_user = 0;
		point_user = 0;
	end
	else begin
		if (up2 && mode != 2) begin
			mode = mode + 1;
			led_user = (led_user<<1)|(led_user>>1)|led_user;
		end
		else if (down2 && mode != 0) begin
			mode = mode - 1;
			led_user = (led_user<<1)&(led_user>>1);
		end
		if (dir_user == 1) begin
			if ((led_user >> 1) & led_flag && ((led_user >> 1) & led_flag) != (led_ai >> 1) & led_flag && dir_ai == 1 && ((led_user >> 1) & led_flag) != ((led_ai << 1) & led_flag) && dir_ai == 0) begin
				led_flag = led_flag - ((led_user >> 1) & led_flag);
				point_user = point_user + 1;
			end
			else if (led_ai == 16'b0000_0000_0000_0001) begin
				led_ai = 16'b1000_0000_0000_0000;
			end
		end
		else begin
			
		end
	end
end

always @(posedge clk , posedge rst) begin
	if (rst) begin
		led_flag = 0;
	end
	else begin
		if (set2 && state == RESET || state == START || state == PAUSE) begin
			led_flag = sw;
		end
		else begin
			
		end
	end
end
reg [15:0] num;
SevenSegment se_seg(
	.display(DISPLAY),
	.digit(DIGIT),
	.nums(num),
	.rst(rst),
	.clk(clk)
);
always @(posedge clk) begin
	if (state == FINISH) begin
		if (point_ai == 10) begin
			case(DIGIT) 
			4'b1101 : begin
				num = 11;
				
			end
			4'b1110 : begin
				num = 10;
				
			end
			4'b0111 : begin
				num = 11;
				
			end
			4'b1011 : begin
				num = 10;
				
			end
			default  : begin
				num = 10;
				
			end
			endcase
		end
		else if (point_user == 10) begin
			case(DIGIT) 
			4'b1101 : begin
				num = 10;
				
			end
			4'b1110 : begin
				num = 13;
				
			end
			4'b0111 : begin
				num = 14;
				
			end
			4'b1011 : begin
				num = 15;
				
			end
			default  : begin
				num = 10;
				
			end
			endcase
		end
	end
end
endmodule

// You can modify below modules I/O or content if needed.
// Also you can add any module you need.
// Make sure you include all modules you used in this file.

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
			10: display = 7'b0001000;	//A,R
			11: display = 7'b1111001;	//I
			13: display = 7'b1000001;	//U
			14: display = 7'b0010010;	//S
			15: display = 7'b0000110;	//E
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