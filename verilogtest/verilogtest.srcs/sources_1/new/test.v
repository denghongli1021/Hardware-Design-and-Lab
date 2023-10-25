module lab4_2 ( 
  input wire clk,
  input wire rst,
  input wire Digit_1,
  input wire Digit_2,
  input wire Digit_3,
  input wire stop,
  input wire start,
  input wire increase,
  input wire decrease,
  input wire direction,
  output reg [3:0] DIGIT,
  output reg [6:0] DISPLAY,
  output reg [15:0] led
); 
  parameter INITIAL = 0, COUNTING = 1, SUCCESS = 2, FAIL = 3;
  reg [1:0] state, next_state;
  reg [3:0] value;
  reg dir; // 1 : up, 0 : down
  wire clk_div;
  clock_divider #(15) cd(.clk(clk), .clk_div(clk_div));
  // start, stop, direction
  wire start2, stop2, direction2, increase2, decrease2; // debounced
  wire start3, stop3, direction3, increase3, decrease3; // one_pulse
  debounce d1(.clk(clk), .pb(start), .pb_debounced(start2));
  one_pulse o1(.clk(clk), .pb_in(start2), .pb_out(start3));
  debounce d2(.clk(clk), .pb(stop), .pb_debounced(stop2));
  one_pulse o2(.clk(clk), .pb_in(stop2), .pb_out(stop3));
  debounce d3(.clk(clk), .pb(direction), .pb_debounced(direction2));
  one_pulse o3(.clk(clk), .pb_in(direction2), .pb_out(direction3));
  debounce d4(.clk(clk), .pb(increase), .pb_debounced(increase2));
  one_pulse o4(.clk(clk), .pb_in(increase2), .pb_out(increase3));
  debounce d5(.clk(clk), .pb(decrease), .pb_debounced(decrease2));
  one_pulse o5(.clk(clk), .pb_in(decrease2), .pb_out(decrease3));

  always @(posedge clk or posedge rst) begin
    if (rst) state <= INITIAL;
    else state <= next_state;
  end
  // clk : 100M Hz
  reg [20:0] tmp; // with max = 1000000
  reg [10:0] cnt; // with max = 999
  reg [10:0] display; // display on 7 seg
  reg [10:0] number; // the hidden number 000~999
  // cnt increasing per 0.01s
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      tmp <= 0;
      cnt <= 0;
    end
    else begin
      if (state != next_state) begin
        tmp <= 0;
        cnt <= 0;
      end
      else if (state == INITIAL) begin
        tmp <= 0;
        cnt <= 0;
      end
      else if (state == SUCCESS && cnt + 1 == 500 || state == FAIL && cnt == 500) begin
        tmp <= tmp;
        cnt <= cnt;
      end
      else if (tmp + 1 == 1000000) begin
        tmp <= 0;
        cnt <= cnt + 1;
      end
      else begin
        tmp <= tmp + 1;
        cnt <= cnt;
      end
      if (state == COUNTING) display <= dir ? cnt : 999 - cnt;
      else display <= display;
    end
  end
  // direction
  always @(posedge clk or posedge rst) begin
    if (rst) dir <= 1;
    else if (state == INITIAL && direction3) dir <= ~dir;
  end
  // hidden number
  always @(posedge clk or posedge rst) begin
    if (rst) number = 0;
    else if (state == INITIAL) begin
      if (increase3) begin
        if (Digit_1) begin
          if (number % 10 == 9) number = number - 9;
          else number = number + 1;
        end
        if (Digit_2) begin
          if ((number / 10) % 10 == 9) number = number - 90;
          else number = number + 10;
        end
        if (Digit_3) begin
          if (number / 100 == 9) number = number - 900;
          else number = number + 100;
        end
      end
      else if (decrease3) begin
        if (Digit_1) begin
          if (number % 10 == 0) number = number + 9;
          else number = number - 1;
        end
        if (Digit_2) begin
          if ((number / 10) % 10 == 0) number = number + 90;
          else number = number - 10;
        end
        if (Digit_3) begin
          if (number / 100 == 0) number = number + 900;
          else number = number - 100;
        end
      end
    end
    else number <= number;
  end
  // state
  always @(*) begin
    next_state = state;
    if (rst) next_state = INITIAL;
    else begin
      case (state)
        INITIAL:
          if (start3) next_state = COUNTING;
        COUNTING:
          if (cnt == 999) next_state = FAIL;
          else if (stop3) begin
            if ((display >= number && display - number <= 100 || display < number && number - display <= 100)) next_state = SUCCESS;
            else next_state = FAIL;
          end
        SUCCESS:
          if (start3) next_state = INITIAL;
        FAIL:
          if (start3) next_state = INITIAL;
      endcase
    end
  end
  // led
  always @(*) begin
    if (rst) led = 16'b1111111111111111;
    else begin
      if (state == INITIAL) led = 16'b1111111111111111;
      else if (state == COUNTING) begin
        if (cnt >= 299) led = 0;
        else led = 16'b1111111111111111;
      end
      else begin // SUCCESS or FAIL
        if (cnt % 200 >= 100) led = 0;
        else led = 16'b1111111111111111;
      end
    end
  end
  // 7 segment display
  always @(posedge clk_div) begin
    if (state == INITIAL) begin
      case (DIGIT)
        // cycle delay :(
        4'b1110: begin
          value <= dir ? 10 : 11; // 1 : up, 0 : down.
          DIGIT <= 4'b0111;
        end
        4'b0111: begin
          value <= number / 100;
          DIGIT <= 4'b1011;
        end
        4'b1011: begin
          value <= (number / 10) % 10;
          DIGIT <= 4'b1101;
        end
        4'b1101: begin
          value <= number % 10;
          DIGIT <= 4'b1110;
        end
        default: begin
          value <= dir ? 10 : 11;
          DIGIT <= 4'b0111;
        end
      endcase
    end
    else if (state == COUNTING) begin
      case (DIGIT)
        // cycle delay :(
        4'b1110: begin
          value <= dir ? 10 : 11; // 1 : up, 0 : down.
          DIGIT <= 4'b0111;
        end
        4'b0111: begin
          value <= (cnt > 299) ? 12 : display / 100;
          DIGIT <= 4'b1011;
        end
        4'b1011: begin
          value <= (cnt > 299) ? 12 : (display / 10) % 10;
          DIGIT <= 4'b1101;
        end
        4'b1101: begin
          value <= (cnt > 299) ? 12 : display % 10;
          DIGIT <= 4'b1110;
        end
        default: begin
          value <= dir ? 10 : 11;
          DIGIT <= 4'b0111;
        end
      endcase
    end
    else begin
      case (DIGIT)
        4'b1110: begin
          value <= ((display >= number && display - number <= 100 || display < number && number - display <= 100)) ? 13 : 14; // 13 : S, 14 : F
          DIGIT <= 4'b0111;
        end
        4'b0111: begin
          value <= display / 100;
          DIGIT <= 4'b1011;
        end
        4'b1011: begin
          value <= (display / 10) % 10;
          DIGIT <= 4'b1101;
        end
        4'b1101: begin
          value <= display % 10;
          DIGIT <= 4'b1110;
        end
        default: begin
          value <= ((display >= number && display - number <= 100 || display < number && number - display <= 100)) ? 13 : 14;
          DIGIT <= 4'b0111;
        end
      endcase
    end
  end
  always @(*) begin
    case (value)
      0: DISPLAY = 7'b100_0000;
      1: DISPLAY = 7'b111_1001;
      2: DISPLAY = 7'b010_0100;
      3: DISPLAY = 7'b011_0000;
      4: DISPLAY = 7'b001_1001;
      5: DISPLAY = 7'b001_0010;
      6: DISPLAY = 7'b000_0010;
      7: DISPLAY = 7'b111_1000;
      8: DISPLAY = 7'b000_0000;
      9: DISPLAY = 7'b001_0000;
      10: DISPLAY = 7'b101_1100; // up
      11: DISPLAY = 7'b110_0011; // down
      12: DISPLAY = 7'b011_1111; // -
      13: DISPLAY = 7'b001_0010; // S
      14: DISPLAY = 7'b000_1110; // F
      default: DISPLAY = 7'b111_1111; // dark
    endcase
  end
endmodule