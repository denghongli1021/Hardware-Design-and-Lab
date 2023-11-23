module note_gen(
    input clk, // clock from crystal
    input rst, // active high reset
    //input mute,
    input [2:0] volume, 
    input [21:0] note_div_left, // div for note generation
    input [21:0] note_div_right,
    output reg [15:0] audio_left,
    output reg [15:0] audio_right
    );

    // Declare internal signals
    reg [21:0] clk_cnt_next, clk_cnt;
    reg [21:0] clk_cnt_next_2, clk_cnt_2;
    reg b_clk, b_clk_next;
    reg c_clk, c_clk_next;

    // Note frequency generation
    // clk_cnt, clk_cnt_2, b_clk, c_clk
    always @(posedge clk or posedge rst)
        if (rst == 1'b1)
            begin
                clk_cnt <= 22'd0;
                clk_cnt_2 <= 22'd0;
                b_clk <= 1'b0;
                c_clk <= 1'b0;
            end
        else
            begin
                clk_cnt <= clk_cnt_next;
                clk_cnt_2 <= clk_cnt_next_2;
                b_clk <= b_clk_next;
                c_clk <= c_clk_next;
            end
    
    // clk_cnt_next, b_clk_next
    always @*
        if (clk_cnt == note_div_left)
            begin
                clk_cnt_next = 22'd0;
                b_clk_next = ~b_clk;
            end
        else
            begin
                clk_cnt_next = clk_cnt + 1'b1;
                b_clk_next = b_clk;
            end

    // clk_cnt_next_2, c_clk_next
    always @*
        if (clk_cnt_2 == note_div_right)
            begin
                clk_cnt_next_2 = 22'd0;
                c_clk_next = ~c_clk;
            end
        else
            begin
                clk_cnt_next_2 = clk_cnt_2 + 1'b1;
                c_clk_next = c_clk;
            end

    // Assign the amplitude of the note
    // Volume is controlled here
    // assign audio_left = (note_div_left == 22'd1) ? 16'h0000 : 
    //                             (b_clk == 1'b0) ? 16'hE000 : 16'h2000;
    // assign audio_right = (note_div_right == 22'd1) ? 16'h0000 : 
    //                             (c_clk == 1'b0) ? 16'hE000 : 16'h2000;
    always@(*) begin
        if (note_div_left == 22'd1) begin
            audio_left = 16'h0000;
        end
        // else if (mute) begin
        //     audio_left = 16'h0000;
        // end
        else begin
            case(volume)
                3'd0 : begin
                    if (b_clk == 0) audio_left = 16'hE000 >> 5;
                    else audio_left = 16'h2000 >> 5;
                end
                3'd1 : begin
                    if (b_clk == 0) audio_left = 16'hE000 >> 4;
                    else audio_left = 16'h2000 >> 4;
                end
                3'd2 : begin
                    if (b_clk == 0) audio_left = 16'hE000 >> 3;
                    else audio_left = 16'h2000 >> 3;
                end
                3'd3 : begin
                    if (b_clk == 0) audio_left = 16'hE000 >> 2;
                    else audio_left = 16'h2000 >> 2;
                end
                3'd4 : begin
                    if (b_clk == 0) audio_left = 16'hE000 >> 1;
                    else audio_left = 16'h2000 >> 1;
                end
                default : begin
                    audio_left = 0;
                end
            endcase
        end
        if (note_div_right == 22'd1) begin
            audio_right = 16'h0000;
        end
        // else if (mute) begin
        //     audio_right = 16'h0000;
        // end
        else begin
            case(volume)
                3'd0 : begin
                    if (c_clk == 0) audio_right = 16'hE000 >> 5;
                    else audio_right = 16'h2000 >> 5;
                end
                3'd1 : begin
                    if (c_clk == 0) audio_right = 16'hE000 >> 4;
                    else audio_right = 16'h2000 >> 4;
                end
                3'd2 : begin
                    if (c_clk == 0) audio_right = 16'hE000 >> 3;
                    else audio_right = 16'h2000 >> 3;
                end
                3'd3 : begin
                    if (c_clk == 0) audio_right = 16'hE000 >> 2;
                    else audio_right = 16'h2000 >> 2;
                end
                3'd4 : begin
                    if (c_clk == 0) audio_right = 16'hE000 >>1;
                    else audio_right = 16'h2000 >> 1;
                end
                default : begin
                    audio_left = 0;
                end
            endcase
        end
    end
endmodule