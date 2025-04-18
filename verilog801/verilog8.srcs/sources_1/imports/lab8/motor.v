// // This module take "mode" input and control two motors accordingly.
// // clk should be 100MHz for PWM_gen module to work correctly.
// // You can modify / add more inputs and outputs by yourself.
// module motor(
//     input clk,
//     input rst,
//     input [1:0]mode,
//     output [1:0]pwm,
//     output [1:0]r_IN,
//     output [1:0]l_IN
// );

//     reg [9:0]left_motor, right_motor;
//     wire left_pwm, right_pwm;

//     motor_pwm m0(clk, rst, left_motor, left_pwm);
//     motor_pwm m1(clk, rst, right_motor, right_pwm);

//     assign pwm = {left_pwm,right_pwm};

//     // TODO: trace the rest of motor.v and control the speed and direction of the two motors
//     // 在這裡添加邏輯，基於 mode 控制左右馬達的速度和方向。
//     // 請確保您根據您的需求調整控制邏輯。

    
// endmodule

// module motor_pwm (
//     input clk,
//     input reset,
//     input [9:0]duty,
// 	output pmod_1 //PWM
// );
//     // TODO: 基於輸入的頻率和占空比生成 PWM 信號。
//     // 在這裡添加 PWM 生成的邏輯，使用輸入的頻率和占空比。  
//     PWM_gen pwm_0 ( 
//         .clk(clk), 
//         .reset(reset), 
//         .freq(32'd25000),
//         .duty(duty), 
//         .PWM(pmod_1)
//     );
    

// endmodule

// //generte PWM by input frequency & duty cycle
// module PWM_gen (
//     input wire clk,
//     input wire reset,
// 	input [31:0] freq,
//     input [9:0] duty,
//     output reg PWM
// );
//     // TODO: 基於輸入的頻率和占空比生成 PWM 信號。
//     // 在這裡添加 PWM 生成的邏輯，使用輸入的頻率和占空比。

//     // 馬力不足可能是因為 duty 
//     wire [31:0] count_max = 100_000_000 / freq;
//     wire [31:0] count_duty = count_max * duty / 1024;
//     reg [31:0] count;
        
//     always @(posedge clk, posedge reset) begin
//         if (reset) begin
//             count <= 0;
//             PWM <= 0;
//         end else if (count < count_max) begin
//             count <= count + 1;
//             // TODO: set <PWM> accordingly
//             if (count < count_duty)
//                 PWM <= 1;
//             else
//                 PWM <= 0;  
//         end else begin
//             count <= 0;
//             PWM <= 0;
//         end
//     end
// endmodule

