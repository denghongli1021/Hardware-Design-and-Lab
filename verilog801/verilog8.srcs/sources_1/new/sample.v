module Lab9 (
    input clk,
    input rst,
    input echo,
    input left_track,
    input right_track,
    input mid_track,
    output trig,
    output IN1,
    output IN2,
    output IN3, 
    output IN4,
    output left_pwm,
    output right_pwm
    // output wire [3:0] DIGIT,
    // output wire [6:0] DISPLAY,
    // output wire [2:0] LED
    // You may modify or add more input/ouput yourself.
    );
    // We have connected the motor and sonic_top modules in the template file for you.
    // TODO: control the motors with the information you get from ultrasonic sensor and 3-way track sensor.
    wire [3:0] DIGIT;
    wire [6:0] DISPLAY;
    wire [2:0] LED;
    reg [1:0] mode, next_mode;
    wire [1:0] state;
    reg [3:0] BCD0, BCD1, BCD2, BCD3;
    wire clk_13;
    wire [19:0] distance;

    clock_divider13 div13(.clk(clk), .clk_r(clk_13));

    LED7SEG seg(.DIGIT(DIGIT), .DISPLAY(DISPLAY), .clk(clk_13), .BCD3(BCD3), .BCD2(BCD2), .BCD1(BCD1), .BCD0(BCD0));

    assign LED[2] = left_track;
    assign LED[1] = mid_track;
    assign LED[0] = right_track;

    always @(posedge clk or posedge rst) begin
        if(rst)
            mode <= 2'd1;
        else
            mode <= next_mode;
    end
    always @(*) begin
        if(distance <= 20'd30)
            next_mode = 2'd3;
        else
            next_mode = state;
    end
    
    always @(posedge clk or posedge rst)begin
        if(rst) begin
            BCD0 <= 0;
            BCD1 <= 0;
            BCD2 <= 0;
            BCD3 <= 1;
        end
        else begin
            /*if(distance > 20'd999)begin
                BCD0 <= 0;
                BCD1 <= 0;
                BCD2 <= 0;
                BCD3 <= 1;
            end
            else begin*/
                BCD0 <= distance % 10;
                BCD1 <= (distance / 10) % 10;
                BCD2 <= (distance / 100) % 10;
                BCD3 <= 5;
            //end
        end
    end
    
    tracker_sensor(
        .clk(clk),
        .reset(rst),
        .left_track(left_track),
        .right_track(right_track),
        .mid_track(mid_track),
        .state(state)
    );
    
    motor A(
        .clk(clk),
        .rst(rst),
        .mode(mode), // change
        .pwm({left_pwm, right_pwm}),
        .l_IN({IN1, IN2}),
        .r_IN({IN3, IN4})
    );

    sonic_top B(
        .clk(clk), 
        .rst(rst), 
        .Echo(echo), 
        .Trig(trig),
        .distance(distance)
    );

endmodule


// sonic_top is the module to interface with sonic sensors
// clk = 100MHz
// <Trig> and <Echo> should connect to the sensor
// <distance> is the output distance in cm
module sonic_top (input clk, input rst, input Echo, output Trig, output [19:0] distance);

	wire [19:0] dis;
    wire clk1M;
	wire clk_2_17;

    assign distance = dis;

    div clk1 (clk ,clk1M);
	TrigSignal u1 (.clk(clk), .rst(rst), .trig(Trig));
	PosCounter u2 (.clk(clk1M), .rst(rst), .echo(Echo), .distance_count(dis));
 
endmodule

module PosCounter (input clk, input rst, input echo, output [19:0] distance_count);

    parameter S0 = 2'b00;
    parameter S1 = 2'b01; 
    parameter S2 = 2'b10;
    
    wire start, finish;
    reg [1:0] curr_state, next_state;
    reg echo_reg1, echo_reg2;
    reg [19:0] count, distance_register;
    wire [19:0] distance_count; 

    always @(posedge clk) begin
        if (rst) begin
            echo_reg1 <= 0;
            echo_reg2 <= 0;
            count <= 0;
            distance_register  <= 0;
            curr_state <= S0;
        end
        else begin
            echo_reg1 <= echo;   
            echo_reg2 <= echo_reg1; 
            case (curr_state)
                S0: begin
                    if (start) curr_state <= next_state; //S1
                    else count <= 0;
                end
                S1: begin
                    if (finish) curr_state <= next_state; //S2
                    else count <= count + 1;
                end
                S2: begin
                    distance_register <= count;
                    count <= 0;
                    curr_state <= next_state; //S0
                end
            endcase
        end
    end
    
    always @(*) begin
        case(curr_state)
            S0:next_state = S1;
            S1:next_state = S2;
            S2:next_state = S0;
            default:next_state = S0;
        endcase
    end

    assign start = echo_reg1 & ~echo_reg2;  
    assign finish = ~echo_reg1 & echo_reg2;
    
    assign distance_count = (distance_register / 2) * 340 / 10000;

    // TODO: trace the code and calculate the distance, output it to <distance_count>
    
endmodule

// send trigger signal to sensor
module TrigSignal (input clk, input rst, output trig);

    reg trig, next_trig;
    reg [23:0] count, next_count;
    parameter us_10 = 1000 - 1;
    parameter ms_100 = 10000000 - 1;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            count <= 0;
            trig <= 0;
        end
        else begin
            count <= next_count;
            trig <= next_trig;
        end
    end
    
    // count 10us to set <trig> high and wait for 100ms, then set <trig> back to low
    always @(*) begin
        if (count == ms_100)begin
            next_trig = 0;
            next_count = 0;
        end
        else if (count == us_10)begin
            next_trig = 1;
            next_count = count + 1;
        end
        else begin
            next_trig = trig;
            next_count = count + 1;
        end
        // TODO: set <next_trig> and <next_count> to let the sensor work properly
    end
endmodule

// clock divider for T = 1us clock
module div(clk ,out_clk);
    input clk;
    output out_clk;
    reg out_clk;
    reg [6:0] cnt;
    
    always @(posedge clk) begin   
        if(cnt < 7'd50) begin
            cnt <= cnt + 1'b1;
            out_clk <= 1'b1;
        end 
        else if(cnt < 7'd100) begin
	        cnt <= cnt + 1'b1;
	        out_clk <= 1'b0;
        end
        else if(cnt == 7'd100) begin
            cnt <= 0;
            out_clk <= 1'b1;
        end
    end
endmodule

// This module take "mode" input and control two motors accordingly.
// clk should be 100MHz for PWM_gen module to work correctly.
// You can modify / add more inputs and outputs by yourself.
module motor(
    input clk,
    input rst,
    input [1:0] mode,
    output [1:0] pwm,
    output [1:0] r_IN,
    output [1:0] l_IN
    );

    reg [9:0]next_left_motor, next_right_motor;
    reg [9:0]left_motor, right_motor;
    wire left_pwm, right_pwm;

    motor_pwm m0(clk, rst, left_motor, left_pwm);
    motor_pwm m1(clk, rst, right_motor, right_pwm);

    assign pwm = {left_pwm,right_pwm};
    assign r_IN = 2'b10;
    assign l_IN = 2'b10;

    // TODO: trace the rest of motor.v and control the speed and direction of the two motors
    always @(posedge clk or posedge rst)begin
        if (rst)begin
            left_motor <= 10'd200;
            right_motor <= 10'd200;
        end
        else begin
            left_motor <= next_left_motor;
            right_motor <= next_right_motor;
        end
    end
    always @(*) begin
        if (mode == 0) begin // turn left
            next_left_motor = 10'd850;
            next_right_motor = 10'd0;
        end
        else if (mode == 2) begin // turn right
            next_left_motor = 10'd0;
            next_right_motor = 10'd850;
        end
        else if (mode == 3) begin // stop
            next_left_motor = 10'd0;
            next_right_motor = 10'd0;
        end
        else begin // straight
            next_left_motor = 10'd200;
            next_right_motor = 10'd200;
        end
    end
    
endmodule


module motor_pwm (
    input clk,
    input reset,
    input [9:0] duty,
    output pmod_1 //PWM
    );  
        
    PWM_gen pwm_0 (
	.clk(clk), 
	.reset(reset), 
	.freq(32'd25000),
	.duty(duty), 
	.PWM(pmod_1)
);

endmodule

// generte PWM by input frequency & duty cycle
module PWM_gen (
    input wire clk,
    input wire reset,
	input [31:0] freq,
    input [9:0] duty,
    output reg PWM
    );
    wire [31:0] count_max = 100_000_000 / freq;
    wire [31:0] count_duty = count_max * duty / 1024;
    reg [31:0] count;
        
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 0;
            PWM <= 0;
        end else if (count < count_max) begin
            count <= count + 1;
            // TODO: set <PWM> accordingly
            if (count < count_duty)
                PWM <= 1;
            else
                PWM <= 0;            
        end else begin
            count <= 0;
            PWM <= 0;
        end
    end
endmodule


module tracker_sensor(input clk, input reset, input left_track, input right_track, input mid_track, output reg [1:0] state);

    // TODO: Receive three tracks and make your own policy.
    // Hint: You can use output state to change your action.
    parameter turn_left = 2'd0;
    parameter straight = 2'd1;
    parameter turn_right = 2'd2;
    reg [1:0] next_state;

    always @(posedge clk or posedge reset)begin
        if (reset)
            state <= straight;
        else
            state <= next_state;
    end
    always @(*) begin
        if (left_track == 1 && right_track == 0) // 1: white, 0: black
            next_state = turn_left;
        else if (left_track == 0 && right_track == 1)
            next_state = turn_right;
        //else if(left_track == 1 && right_track == 1 && mid_track == 1)
        //  next_state = turn_left;
        else
            next_state = straight;
    end

endmodule


module LED7SEG(output reg [3:0] DIGIT, output [6:0] DISPLAY, input clk, input [3:0] BCD3, input [3:0] BCD2, input [3:0] BCD1, input [3:0] BCD0);
	
	reg [3:0] value;

	always @(posedge clk) begin	
		case (DIGIT) 
			4'b0111: begin
			    value = BCD2;
				DIGIT <= 4'b1011;
			end
			4'b1011: begin
			    value = BCD1;
				DIGIT <= 4'b1101;
			end
			4'b1101: begin
				value = BCD0;
				DIGIT <= 4'b1110;
			end
			4'b1110: begin
				value = BCD3;
				DIGIT <= 4'b0111;
			end
			default begin
				DIGIT <= 4'b1110;
			end
		endcase	
	end

	assign DISPLAY = (value==4'd0) ? 7'b0000001 :
						(value==4'd1) ? 7'b1001111 :
						(value==4'd2) ? 7'b0010010 :
						(value==4'd3) ? 7'b0000110 :
						(value==4'd4) ? 7'b1001100 :
						(value==4'd5) ? 7'b0100100 :
						(value==4'd6) ? 7'b0100000 :
						(value==4'd7) ? 7'b0001111 :
						(value==4'd8) ? 7'b0000000 : 
						(value==4'd9) ? 7'b0000100 :
						(value==4'd10) ? 7'b1111110 :    //j
						(value==4'd11) ? 7'b1100011 :    //u
						(value==4'd12) ? 7'b0111011 :    //i
						(value==4'd13) ? 7'b1110010 :    //c
						(value==4'd14) ? 7'b0111000 :    //f
						(value==4'd15) ? 7'b1111111 :    //e
                 						7'b1111111;


endmodule

module clock_divider13 (input clk, output clk_r);
    
	parameter n = 13;

    reg [n - 1:0] cnt;

    always @(posedge clk) begin
        cnt <= cnt + 1;
    end

    assign clk_r = cnt[n - 1];

endmodule