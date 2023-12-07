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
    motor A(
        .clk(clk),
        .rst(rst),
        .mode(mode),  // 這是一個未定義的變數，確保您已經定義了 mode。
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
