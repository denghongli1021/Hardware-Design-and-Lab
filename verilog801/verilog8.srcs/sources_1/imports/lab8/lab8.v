module Lab8(
    input clk,
    input rst,
    input echo,
    input left_track,
    input right_track,
    input mid_track,
    input sw,
    output trig,
    output IN1,
    output IN2,
    output IN3, 
    output IN4,
    output left_pwm,
    output right_pwm,
    output [2:0] LED
    
);
    wire rst_1,rst_2;
    debounce d1(.pb_debounced(rst_1), .pb(rst), .clk(clk));
    onepulse d2(.PB_debounced(rst_1), .clk(clk), .PB_one_pulse(rst_2));
    reg [2:0] mode;
    wire [2:0] state;
    wire [19:0] distance;
    reg stop = 0;
    assign LED[2] = (left_track == 1) ? 1: 0;
    assign LED[1] = (mid_track == 1) ? 1: 0;
    assign LED[0] = (right_track == 1) ? 1: 0;
    always @(posedge clk or posedge rst_2) begin
        if(rst_2)
            mode = 3'b000;
        else begin
            if (distance <= 3000 || sw == 1) begin
                stop = 1; // stop
            end
            else begin
                stop = 0;
            end
            mode = state;
        end
    end

    tracker_sensor t (.clk(clk), .reset(rst_2), .left_track(left_track), .right_track(right_track), .mid_track(mid_track), .state(state));

    motor A(
        .clk(clk),
        .rst(rst_2),
        .mode(mode),
        .stop(stop),
        .pwm({left_pwm, right_pwm}),
        .l_IN({IN1, IN2}),
        .r_IN({IN3, IN4})
    );

    sonic_top B(
        .clk(clk), 
        .rst(rst_2), 
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

    always @(posedge clk or posedge reset) begin
        if (reset) state <= 3'b000;
        else state <= {left_track, mid_track, right_track};
    end
endmodule

module motor(
    input clk,
    input rst,
    input [2:0] mode,
    input stop,
    output [1:0] pwm,
    output reg [1:0] r_IN,
    output reg [1:0] l_IN
    );
    wire [9:0] left_motor, right_motor;
    wire left_pwm, right_pwm;

    motor_pwm m0(clk, rst, left_motor, left_pwm);
    motor_pwm m1(clk, rst, right_motor, right_pwm);

    assign left_motor = 750, right_motor = 740;

    assign pwm = {left_pwm,right_pwm};

    always @(*) begin
        if (stop) begin
            r_IN = 2'b00;
            l_IN = 2'b00;
        end
        else begin
            case (mode)
                3'b110, 3'b100: begin // turn right
                    r_IN = 2'b01;
                    l_IN = 2'b10;
                end
                3'b011, 3'b001: begin // turn left
                    r_IN = 2'b10;
                    l_IN = 2'b01;
                end
                default: begin // straight
                // 111, 000, 101, 010
                    r_IN = 2'b01;
                    l_IN = 2'b01;
                end
            endcase
        end
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
        
    end
endmodule

// clock divider for T = 1us clock
module div(clk ,out_clk);
    input clk;
    output out_clk;
    reg out_clk;
    reg [6:0]cnt;
   
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