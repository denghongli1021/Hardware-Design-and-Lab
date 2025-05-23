// This module take "mode" input and control two motors accordingly.
// clk should be 100MHz for PWM_gen module to work correctly.
// You can modify / add more inputs and outputs by yourself.
module motor(
    input clk,
    input rst,
    input [1:0]mode,
    output [1:0]pwm,
    output [1:0]r_IN,
    output [1:0]l_IN
);

    reg [9:0]next_left_motor, next_right_motor;
    reg [9:0]left_motor, right_motor;
    wire left_pwm, right_pwm;

    motor_pwm m0(clk, rst, left_motor, left_pwm);
    motor_pwm m1(clk, rst, right_motor, right_pwm);

    assign pwm = {left_pwm,right_pwm};

    // TODO: trace the rest of motor.v and control the speed and direction of the two motors
    assign l_IN=2'b10;
    assign r_IN=2'b01;
    always @* begin
        case (mode) 
            2'b11: begin
                left_motor = 700;
                right_motor = 700;
            end
            2'b10: begin
                left_motor = 400;
                right_motor = 600;
            end
            2'b01: begin
                left_motor  = 600;
                right_motor = 400;
            end
            2'b00: begin
                left_motor = 0;
                right_motor = 0;
            end
        endcase
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
            PWM<=(count<=count_duty);
        end else begin
            count <= 0;
            PWM <= 0;
        end
    end
endmodule

