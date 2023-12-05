// <111062107> <鄧弘利>

// Add your ID and name to FIRST line of file, or you will get 5 points penalty
// e.g. 110123456 王小明
module exam2_A(
    input clk,
    input btnC, 
    input btnU,
    input btnR, 
    input [15:0] sw, 
    output [3:0] DIGIT,
    output [6:0] DISPLAY, 
    output reg [15:0] led
);
    // add your design here
    wire clk_div_use;
    clock_divider  #(.n(15)) c1 (.clk(clk), .clk_div(clk_div_use)); // for 7seg
    wire btnC2,btnU2,btnR2;
    debounce db1(.pb(btnC), .clk(clk), .pb_debounced(btnC2));
    debounce db2(.pb(btnR), .clk(clk), .pb_debounced(btnR2));
    debounce db3(.pb(btnU), .clk(clk), .pb_debounced(btnU2));
    reg [3:0] d0 = 0;
    reg [3:0] d1 = 0;
    reg [3:0] d2 = 0;
    reg [3:0] d3 = 0;
    seven_segment seg(
        .clk(clk_div_use), 
        .digit_0(d0),
        .digit_1(d1), 
        .digit_2(d2), 
        .digit_3(d3), 
        .DIGIT(DIGIT), 
        .DISPLAY(DISPLAY)
    );
    reg [4:0] nums = 0;
    // led
    always@(posedge clk) begin
        if (btnC2) begin
            led = ~sw;
        end
        else if (btnR2) begin
            if (sw[0] == 1) begin
                led = sw >> 1;
                led[15] = 1;
            end
            else begin
                led = sw >> 1;
            end
        end
        else if (btnU2) begin
            led = 16'b1111_1111_1111_1111;
        end
        else begin
            led = sw;
        end
    end
    // nums
    always@(posedge clk) begin
        nums = 0;
        if (led[0] == 1) begin
            nums = nums + 1;
        end
        if (led[1] == 1) begin
            nums = nums + 1;
        end
        if (led[2] == 1) begin
            nums = nums + 1;
        end
        if (led[3] == 1) begin
            nums = nums + 1;
        end
        if (led[4] == 1) begin
            nums = nums + 1;
        end
        if (led[5] == 1) begin
            nums = nums + 1;
        end
        if (led[6] == 1) begin
            nums = nums + 1;
        end
        if (led[7] == 1) begin
            nums = nums + 1;
        end
        if (led[8] == 1) begin
            nums = nums + 1;
        end
        if (led[9] == 1) begin
            nums = nums + 1;
        end
        if (led[10] == 1) begin
            nums = nums + 1;
        end
        if (led[11] == 1) begin
            nums = nums + 1;
        end
        if (led[12] == 1) begin
            nums = nums + 1;
        end
        if (led[13] == 1) begin
            nums = nums + 1;
        end
        if (led[14] == 1) begin
            nums = nums + 1;
        end
        if (led[15] == 1) begin
            nums = nums + 1;
        end
    end
    always@(posedge clk) begin
        d0 = nums % 10;
        d1 = nums / 10;
    end
endmodule

// provided modules
module clock_divider #(parameter n=25) (clk, clk_div);
    input clk;
    output clk_div;

    reg [n-1:0] num = 0;
    wire [n-1:0] next_num;

    always @(posedge clk) begin
        num <= next_num;
    end

    assign next_num = num + 1;
    assign clk_div = num[n-1];
endmodule

module debounce (pb, clk, pb_debounced);
    input pb;
    input clk;
    output pb_debounced;

    reg [3:0] shift_reg;

    always @(posedge clk) begin
        shift_reg[3:1] <= shift_reg[2:0];
        shift_reg[0] <= pb;
    end

    assign pb_debounced = ((shift_reg == 4'b1111) ? 1'b1 : 1'b0);
endmodule

module seven_segment (
    input clk, 
    input [3:0] digit_0,
    input [3:0] digit_1, 
    input [3:0] digit_2, 
    input [3:0] digit_3, 
    output reg [3:0] DIGIT, 
    output reg [6:0] DISPLAY
    );
    reg [3:0] value;

    always @(posedge clk) begin
        case (DIGIT)
            4'b1110: begin
                value <= digit_1;
                DIGIT <= 4'b1101;
            end 
            4'b1101: begin
                value <= digit_2;
                DIGIT <= 4'b1011;
            end
            4'b1011: begin
                value <= digit_3;
                DIGIT <= 4'b0111;
            end
            4'b0111: begin
                value <= digit_0;
                DIGIT <= 4'b1110;
            end
            default: begin
                value <= digit_0;
                DIGIT <= 4'b1110;
            end
        endcase
    end

    always @(*) begin
        case (value)
            4'd0:   DISPLAY = 7'b1000000;   // 0
            4'd1:   DISPLAY = 7'b1111001;   // 1
            4'd2:   DISPLAY = 7'b0100100;   // 2
            4'd3:   DISPLAY = 7'b0110000;   // 3
            4'd4:   DISPLAY = 7'b0011001;   // 4
            4'd5:   DISPLAY = 7'b0010010;   // 5
            4'd6:   DISPLAY = 7'b0000010;   // 6
            4'd7:   DISPLAY = 7'b1111000;   // 7
            4'd8:   DISPLAY = 7'b0000000;   // 8
            4'd9:   DISPLAY = 7'b0010000;   // 9
            4'd10:  DISPLAY = 7'b0111111;   // -
            default:DISPLAY = 7'b1111111;   // no light
        endcase
    end
endmodule