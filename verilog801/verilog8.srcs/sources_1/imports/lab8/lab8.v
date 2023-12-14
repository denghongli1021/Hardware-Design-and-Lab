module Lab8(
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
);
    // TODO: 根據超聲波傳感器和三軌道傳感器的信息控制馬達。
    // 在這裡添加邏輯以控制馬達，使用超聲波和軌道信息。
    // 請確保根據您的系統需求調整控制邏輯。
    reg [2:0] mode;
    wire [2:0] state;
    wire [19:0] distance;
    reg stop = 0;
    always @(posedge clk or posedge rst) begin
        if(rst)
            mode = 3'b000;
        else begin
            if (distance <= 30) begin
                stop = 1; // stop
            end
            else begin
                stop = 0;
            end
            mode = state;
        end
    end

    tracker_sensor t (.clk(clk), .reset(rst), .left_track(left_signal), .right_track(right_track), .mid_track(mid_track), .state(state));

    motor A(
        .clk(clk),
        .rst(rst),
        .mode(mode),  // 這是一個未定義的變數，確保您已經定義了 mode。
        .stop(stop),
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

module tracker_sensor(clk, reset, left_track, right_track, mid_track, state);
    input clk;
    input reset;
    input left_track, right_track, mid_track;
    output reg [2:0] state;

    // TODO: Receive three tracks and make your own policy.
    // Hint: You can use output state to change your action.
    // TODO: 接收三個軌道信號並擬定自己的策略。
    // 提示：您可以使用輸出狀態來更改您的動作。
    // 在這裡添加邏輯，根據三個軌道信號制定策略，並更改輸出狀態。
    // parameter turn_left = 3'b00;
    // parameter go_straight = 2'b01;
    // parameter turn_right = 2'b10;
    reg [2:0] next_state;

    always @(posedge clk or posedge reset)begin
        if (reset)
            state <= 3'b000;
        else
            state <= next_state;
    end
    always @(*) begin
        // if (left_track == 1 && right_track == 0) // 1: white, 0: black
        //     next_state = turn_left;
        // else if (left_track == 0 && right_track == 1)
        //     next_state = turn_right;
        // //else if(left_track == 1 && right_track == 1 && mid_track == 1)
        // //  next_state = turn_left;
        // else
        //     next_state = go_straight;
        next_state = {left_track ,mid_track , right_track};
    end

endmodule

module motor(
    input clk,
    input rst,
    input [2:0] mode,
    input stop,
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
    assign r_IN = 2'b01;
    assign l_IN = 2'b10;

    // TODO: trace the rest of motor.v and control the speed and direction of the two motors
    always @(posedge clk or posedge rst)begin
        if (rst)begin
            left_motor <= 10'd200;
            right_motor <= 10'd200;
        end
        else if (stop) begin
            left_motor <= 0;
            right_motor <= 0;
        end
        else begin
            left_motor <= next_left_motor;
            right_motor <= next_right_motor;
        end
    end
    always @(*) begin
        case (mode) 
            3'b000 : begin // straight
                next_left_motor = 10'd850;
                next_right_motor = 10'd850;
            end
            // 3'b001 : begin // right
            //     next_left_motor = 10'd0;
            //     next_right_motor = 10'd850;
            // end
            // 3'b010 : begin // right
            //     next_left_motor = 10'd850;
            //     next_right_motor = 10'd0;
            // end
            // 3'b011 : begin // right
            //     next_left_motor = 10'd850;
            //     next_right_motor = 10'd0;
            // end
            // 3'b100 : begin // straight
            //     next_left_motor = 10'd850;
            //     next_right_motor = 10'd850;
            // end
            // 3'b101 : begin // right
            //     next_left_motor = 10'd850;
            //     next_right_motor = 10'd0;
            // end
            // 3'b110 : begin // straight
            //     next_left_motor = 10'd850;
            //     next_right_motor = 10'd850;
            // end
            // 3'b111 : begin // right
            //     next_left_motor = 10'd850;
            //     next_right_motor = 10'd0;
            // end
            default : begin // stop
                next_left_motor = 10'd850;
                next_right_motor = 10'd850;
                // next_left_motor = 10'd0;
                // next_right_motor = 10'd0;
            end
        endcase
        // if (mode == 0) begin // turn left
        //     next_left_motor = 10'd850;
        //     next_right_motor = 10'd0;
        // end
        // else if (mode == 2) begin // turn right
        //     next_left_motor = 10'd0;
        //     next_right_motor = 10'd850;
        // end
        // else if (mode == 3) begin // stop
        //     next_left_motor = 10'd0;
        //     next_right_motor = 10'd0;
        // end
        // else begin // straight
        //     next_left_motor = 10'd200;
        //     next_right_motor = 10'd200;
        // end
    end
endmodule

// sonic_top is the module to interface with sonic sensors
// clk = 100MHz
// <Trig> and <Echo> should connect to the sensor
// <distance> is the output distance in cm
module sonic_top(clk, rst, Echo, Trig, distance);
	input clk, rst, Echo;
	output Trig;
    output [19:0] distance;

	wire[19:0] dis;
    wire clk1M;
	wire clk_2_17;

    assign distance = dis;

    div clk1(clk ,clk1M);
	TrigSignal u1(.clk(clk), .rst(rst), .trig(Trig));
	PosCounter u2(.clk(clk1M), .rst(rst), .echo(Echo), .distance_count(dis));
    // TODO: 與超聲波傳感器進行接口並提供距離信息。
    // 在這裡添加超聲波模塊的邏輯，以提取距離信息。
endmodule

module PosCounter(clk, rst, echo, distance_count); 
    input clk, rst, echo;
    output[19:0] distance_count;

    parameter S0 = 2'b00;
    parameter S1 = 2'b01; 
    parameter S2 = 2'b10;
    
    wire start, finish;
    reg[1:0] curr_state, next_state;
    reg echo_reg1, echo_reg2;
    reg[19:0] count, next_count, distance_register, next_distance;
    wire[19:0] distance_count; 

    always@(posedge clk) begin
        if(rst) begin
            echo_reg1 <= 1'b0;
            echo_reg2 <= 1'b0;
            count <= 20'b0;
            distance_register <= 20'b0;
            curr_state <= S0;
        end
        else begin
            echo_reg1 <= echo;   
            echo_reg2 <= echo_reg1; 
            count <= next_count;
            distance_register <= next_distance;
            curr_state <= next_state;
        end
    end

    always @(*) begin
        case(curr_state)
            S0: begin
                next_distance = distance_register;
                if (start) begin
                    next_state = S1;
                    next_count = count;
                end else begin
                    next_state = curr_state;
                    next_count = 20'b0;
                end 
            end
            S1: begin
                next_distance = distance_register;
                if (finish) begin
                    next_state = S2;
                    next_count = count;
                end else begin
                    next_state = curr_state;
                    next_count = (count > 20'd600_000) ? count : count + 1'b1;
                end 
            end
            S2: begin
                next_distance = count;
                next_count = 20'b0;
                next_state = S0;
            end
            default: begin
                next_distance = 20'b0;
                next_count = 20'b0;
                next_state = S0;
            end
        endcase
    end

    assign distance_count = distance_register * 20'd100 / 20'd58; 
    assign start = echo_reg1 & ~echo_reg2;  
    assign finish = ~echo_reg1 & echo_reg2; 
endmodule

// send trigger signal to sensor
module TrigSignal(clk, rst, trig);
    input clk, rst;
    output trig;

    reg trig, next_trig;
    reg[23:0] count, next_count;

    always @(posedge clk, posedge rst) begin
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
        if (count == 1000) begin // 10 us
            next_trig = 1;
            next_count = count + 1;
        end
        else if (count == 10000000) begin // 100 ms
            next_trig = 0;
            next_count = 0;
        end
        else begin
            next_trig = trig;
            next_count = count + 1;
        end
        // TODO: set <next_trig> and <next_count> to let the sensor work properly
        // TODO: 為傳感器生成觸發信號。
        // 在這裡添加邏輯，以生成觸發信號，確保按照傳感器的需求進行設置。
    end
endmodule

// clock divider for T = 1us clock
module div(clk ,out_clk);
    input clk;
    output out_clk;
    reg out_clk;
    reg [6:0]cnt;
    // TODO: T = 1us 時鐘的時鐘分頻器。
    // 在這裡添加分頻器邏輯，以生成 1us 的時鐘。
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

module motor_pwm (
    input clk,
    input reset,
    input [9:0]duty,
	output pmod_1 //PWM
    );
    // TODO: 基於輸入的頻率和占空比生成 PWM 信號。
    // 在這裡添加 PWM 生成的邏輯，使用輸入的頻率和占空比。  
    PWM_gen pwm_0 ( 
        .clk(clk), 
        .reset(reset), 
        .freq(32'd25000),
        .duty(duty), 
        .PWM(pmod_1)
    );
endmodule

//generte PWM by input frequency & duty cycle
module PWM_gen (
    input wire clk,
    input wire reset,
	input [31:0] freq,
    input [9:0] duty,
    output reg PWM
    );
    // TODO: 基於輸入的頻率和占空比生成 PWM 信號。
    // 在這裡添加 PWM 生成的邏輯，使用輸入的頻率和占空比。

    // 馬力不足可能是因為 duty 
    wire [31:0] count_max = 100_000_000 / freq;
    wire [31:0] count_duty = count_max * duty / 1024;
    reg [31:0] count;
        
    always @(posedge clk, posedge reset) begin
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

module debounce (pb_debounced, pb, clk);
    output pb_debounced; 
    input pb;
    input clk;
    reg [4:0] DFF;
    
    always @(posedge clk) begin
        DFF[4:1] <= DFF[3:0];
        DFF[0] <= pb; 
    end
    assign pb_debounced = (&(DFF)); 
endmodule

module onepulse (PB_debounced, clk, PB_one_pulse);
    input PB_debounced;
    input clk;
    output reg PB_one_pulse;
    reg PB_debounced_delay;

    always @(posedge clk) begin
        PB_one_pulse <= PB_debounced & (! PB_debounced_delay);
        PB_debounced_delay <= PB_debounced;
    end 
endmodule