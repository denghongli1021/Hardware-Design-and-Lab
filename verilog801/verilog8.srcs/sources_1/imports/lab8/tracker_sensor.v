// module tracker_sensor(clk, reset, left_track, right_track, mid_track, state);
//     input clk;
//     input reset;
//     input left_track, right_track, mid_track;
//     output reg [1:0] state;

//     // TODO: Receive three tracks and make your own policy.
//     // Hint: You can use output state to change your action.
//     // TODO: 接收三個軌道信號並擬定自己的策略。
//     // 提示：您可以使用輸出狀態來更改您的動作。
//     // 在這裡添加邏輯，根據三個軌道信號制定策略，並更改輸出狀態。
//     parameter turn_left = 2'b00;
//     parameter go_straight = 2'b01;
//     parameter turn_right = 2'b10;
//     reg [1:0] next_state;

//     always @(posedge clk or posedge reset)begin
//         if (reset)
//             state <= straight;
//         else
//             state <= next_state;
//     end
//     always @(*) begin
//         if (left_track == 1 && right_track == 0) // 1: white, 0: black
//             next_state = turn_left;
//         else if (left_track == 0 && right_track == 1)
//             next_state = turn_right;
//         //else if(left_track == 1 && right_track == 1 && mid_track == 1)
//         //  next_state = turn_left;
//         else
//             next_state = go_straight;
//     end

// endmodule
