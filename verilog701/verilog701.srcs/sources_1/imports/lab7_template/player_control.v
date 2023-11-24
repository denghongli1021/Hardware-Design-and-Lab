module player_control (
	input clk, 
	input reset, 
	input _play, 
	input _slow, 
	input _mode, 
	output reg [11:0] ibeat
);
	parameter LEN = 4095;
    reg [11:0] next_ibeat;

	always @(posedge clk, posedge reset) begin
		if (reset) begin
			ibeat <= 0;
		end else if (_play && _mode == 1) begin
            ibeat <= next_ibeat;
		end
	end

    always @* begin
        next_ibeat = (ibeat + 1 < LEN) ? (ibeat + 1) : 0;
    end

endmodule

module player_control2 (
	input clk, 
	input reset, 
	input _play, 
	input _slow, 
	input _mode, 
	output reg [11:0] ibeat
);
	parameter LEN = 4095;
    reg [11:0] next_ibeat;

	always @(posedge clk, posedge reset) begin
		if (reset) begin
			ibeat <= 0;
		end 
		// else if (_play == 0) begin
		// 	ibeat <= 0;
		// end // 不確定_play=0要不要重來
		else if (_play && _mode == 0) begin
            ibeat <= next_ibeat;
		end
	end

    always @* begin
        next_ibeat = (ibeat + 1 < LEN) ? (ibeat + 1) : LEN-1;
    end

endmodule