// 111062107 鄧弘利

// e.g. 111062107 鄧弘利
// Add your ID and name to FIRST line of file, or you will get 5 points penalty

`define WIDTH 8

module exam1_A(
    input wire clk,
    input wire rst,
    input wire signed [`WIDTH-1:0] A,
    input wire signed [`WIDTH-1:0] B,
    input wire [1:0] ctrl,
    output wire signed [`WIDTH*2-1:0] out // You can modify "reg" to "wire" if needed
);
reg [15:0] result_reg;    // Register to store the ALU result

    //Your design here
    always @(posedge clk) begin
    if (rst) begin
        result_reg <= 16'b0; // Reset the output to 0
    end else begin
        // ALU operations based on the control signal
        case (ctrl)
            2'b00: result_reg <= A * (-B);
            2'b01: result_reg <= {A ^ B, ~(A | B)};     // (A bitwise-xor B) and (A bitwise-nor B)
            2'b11: result_reg <= A + B;
            default: begin
                if (A < B) result_reg <= -1; // -1 with sign extension
                else result_reg <= 16'b0000_0000_0000_0001;     // 1 with sign extension
            end
        endcase
    end
end

assign out = result_reg; // Connect the output to the flip-flop
endmodule

// You can add any module you need.
// Make sure you include all modules you used in this problem.