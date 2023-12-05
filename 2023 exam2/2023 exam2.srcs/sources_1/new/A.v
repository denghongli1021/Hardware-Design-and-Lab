// <111062107> <¾H¥°§Q>

// Add your ID and name to FIRST line of file, or you will get 5 points penalty
// e.g. 110123456 ¤ý¤p©ú
module exam2_A(
    input clk, 
    input rst, 
    output [3:0] DIGIT, 
    output [6:0] DISPLAY
);
    // add your design here
	reg [5:0] i = 1;
	wire [3:0] d1 = 0;
	wire [3:0] d2 = 0;
	wire [3:0] d3 = 0;
	wire [3:0] d4 = 0;
	reg [15:0] nums = 0;
	reg [10:0] ans = 0;
	
	SevenSegment sg(
		.display(DISPLAY),
		.digit(DIGIT), 
		.nums(nums), // four 4-bits BCD number
		.rst(rst),
		.clk(clk)  // Input 100Mhz clock
	);
	reg [15:0] x = 0;
	reg [15:0] y = 0;
	reg [10:0] a_2 = 0;
	reg [10:0] a = 0;
	reg [10:0] b = 0;
	reg [10:0] b_2 = 0;
	reg [15:0] max_x = 0;
	reg [30:0] max_val = 0;
	reg [30:0] val = 0;
	always@(posedge clk) begin
		if (rst) begin
			x = 0;
			y = 0;
			a_2 = 0;
			a = 0;
			b = 0;
			b_2 = 0;
			max_x = 0;
			max_val = 0;
			val = 0;
		end
		else if (x <= 16'b1111_1111_1111_1111)begin
			x = 0;
			y = 0;
			a_2 = 0;
			a = 0;
			b = 0;
			b_2 = 0;	
			val = 0;
			max_x = max_x;
			max_val = max_val;
			for (i = 0 ; i <= 15 ;i = i+1) begin
				y = y + i * x[i];
			end
			for (i = 0 ;i <= 7 ;i = i+1) begin
				a_2 = a_2 + i * x[i];
			end
			a = a_2;
			a_2 = a_2 * a_2;
			for (i = 8 ; i<=15 ; i= i+1) begin
				b_2 = b_2 + i * x[i];
			end
			b = b_2;
			b_2 = b_2 * b_2;
			val = y - a_2 + 2*a*b - b_2;

			if (val >= max_val) begin
				max_val = val;
				max_x = x;
			end
			if (x != 16'b1111_1111_1111_1111) begin
				x = x + 1;
			end
			else x = x;
		end
	end
	assign d4 = max_x / 1000;
	assign d3 = max_x % 1000 / 100;
	assign d2 = max_x % 100 / 10;
	assign d1 = max_x % 10;
	always@(posedge clk) begin
		nums = {d4 , d3 , d2 , d1};
	end



endmodule
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