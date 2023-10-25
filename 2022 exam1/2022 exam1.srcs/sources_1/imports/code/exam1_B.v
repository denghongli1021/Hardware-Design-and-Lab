// 111062107 鄧弘利

// e.g. 110123456 王大明
// Add your ID and name to FIRST line of file, or you will get 5 points penalty
module exam1_B(
    input wire clk,
    input wire rst,
    output reg signed [15:0] out// You can modify "reg" to "wire" if needed
);
reg [15:0] pre_out = 0;
reg [15:0] out = 1;
reg [30:0] s;
reg [30:0] tmp_s;
reg [1:0] dir = 1; // 1 up 0 down
reg [15:0] count = 1;

    //Your design here
always @(posedge clk) begin
    if (rst == 1) begin
        out = 1;
        count = 1;
    end
    else begin
        if (dir == 1) begin
            s = pre_out + out;
            if (out == 0) begin
                out = 1;
                pre_out = 0;
            end
            else if (s % 4 == 0 && s < 16384) begin
                tmp_s = s >> 1;
                pre_out = out;
                out = tmp_s * 3;
                count = count + 1;
            end
            else if (s % 4 == 0 && s >= 16384) begin
                if (out+count >= 65176) begin
                    out = 65176;
                    pre_out = 64572;
                    dir = 0;
                    count = 1;
                end
                else begin
                    pre_out = out;
                    out = out + count;
                    count = count + 1;
                end
            end
            else if (s%4 != 0 && count%2 == 1) begin
                if (out+4 >= 65176) begin
                    out = 65176;
                    pre_out = 64572;
                    dir = 0;
                    count = 1;
                end
                else begin
                    pre_out = out;
                    out = out + 4;
                    count = count + 1;
                end
            end
            else if (s%4 != 0 && count%2 == 0) begin
                if (out+1 >= 65176) begin
                    out= 65176;
                    pre_out = 64572;
                    dir = 0;
                    count = 1;
                end
                else begin
                    pre_out = out;
                    out = out + 1;
                    count = count + 1;
                end
            end
            else begin

            end
        end
        else if (dir == 0) begin
            s = pre_out + out;
            if (s[2:0] == count[2:0]) begin
                pre_out = out;
                out = out >> count[1:0];
                count = count + 1;
            end
            else if (s[2:0] != count[2:0]) begin
                if (out <= count*6) begin
                    pre_out = 0;
                    out = 0;
                    dir = 1;
                    count = 1;
                end
                else begin
                    pre_out = out;
                    out = out - count*6;
                    count = count + 1;
                end
            end
        end
    end
end
endmodule

// You can add any module you need.
// Make sure you include all modules you used in this problem.