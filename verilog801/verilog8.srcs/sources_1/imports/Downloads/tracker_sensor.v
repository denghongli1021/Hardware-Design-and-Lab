module tracker_sensor(clk, reset, left_track, right_track, mid_track, state);
    input clk;
    input reset;
    input left_track, right_track, mid_track;
    output reg [1:0] state;

    // TODO: Receive three tracks and make your own policy.
    // Hint: You can use output state to change your action.
    always @* begin
        if (left_track) state = 2'b10;
        else if (right_track) state = 2'b01;
        else if (mid_track) state=2'b11;
        else state = 2'b00;
    end
endmodule
