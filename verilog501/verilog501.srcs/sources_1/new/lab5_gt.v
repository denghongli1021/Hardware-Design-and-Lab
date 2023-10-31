module Lab5_gt(
  output wire [6:0] display,
  output wire [3:0] digit,
  output reg [15:0] LED,
  inout wire PS2_DATA,
  inout wire PS2_CLK,
  input wire rst,
  input wire clk,
  input wire btnL,
  input wire btnR
  );

  parameter [8:0] KEY_CODES [0:19] = {
    9'b0_0100_0101, // 0 => 45
    9'b0_0001_0110, // 1 => 16
    9'b0_0001_1110, // 2 => 1E
    9'b0_0010_0110, // 3 => 26
    9'b0_0010_0101, // 4 => 25
    9'b0_0010_1110, // 5 => 2E
    9'b0_0011_0110, // 6 => 36
    9'b0_0011_1101, // 7 => 3D
    9'b0_0011_1110, // 8 => 3E
    9'b0_0100_0110, // 9 => 46
    9'b0_0111_0000, // right_0 => 70
    9'b0_0110_1001, // right_1 => 69
    9'b0_0111_0010, // right_2 => 72
    9'b0_0111_1010, // right_3 => 7A
    9'b0_0110_1011, // right_4 => 6B
    9'b0_0111_0011, // right_5 => 73
    9'b0_0111_0100, // right_6 => 74
    9'b0_0110_1100, // right_7 => 6C
    9'b0_0111_0101, // right_8 => 75
    9'b0_0111_1101  // right_9 => 7D
  };
  parameter SPACE = 9'b0_0010_1001;
  parameter ENTER = 9'b0_0101_1010;
  reg [15:0] nums;
  reg [3:0] key_num;
  reg [9:0] last_key;
  
  wire [511:0] key_down;
  wire [8:0] last_change;
  reg [8:0] last_change2;
  wire been_ready;

  parameter IDLE = 0, SET = 1, PAYMENT = 2, BUY = 3, CHANGE = 4;
  reg [2:0] state, next_state;
  reg [23:0] tmp;
  reg [5:0] cnt;
  reg [3:0] items = 4'b1001, pitems = 0;
  reg [7:0] price = 8'b0001_0000, money = 0, pmoney = 0;
  reg [7:0] price2 = 10, money2 = 0, pmoney2;
  reg [7:0] p10, p01;
  reg [7:0] m10, m01;
  reg pushed;
  // purchased item, money;
  reg LR; // SET state, L = 0, R = 1
  wire btnL2, btnR2, btnL3, btnR3;

  debounce d1(clk, btnL, btnL2);
  one_pulse o1(clk, btnL2, btnL3);
  debounce d2(clk, btnR, btnR2);
  one_pulse o2(clk, btnR2, btnR3);
  SevenSegment seven_seg (
    .display(display),
    .digit(digit),
    .nums(nums),
    .rst(rst),
    .clk(clk)
  );
  KeyboardDecoder key_de (
    .key_down(key_down),
    .last_change(last_change),
    .key_valid(been_ready),
    .PS2_DATA(PS2_DATA),
    .PS2_CLK(PS2_CLK),
    .rst(rst),
    .clk(clk)
  );
  // timer, cnt increases per 0.1s
  always @(posedge clk, posedge rst) begin
    if (rst) begin
      tmp <= 0;
      cnt <= 0;
    end
    else begin
      if (state == IDLE || state == SET || state == PAYMENT) begin
        tmp <= tmp;
        cnt <= cnt;
      end
      else if (state != next_state && (next_state == BUY || next_state == CHANGE)) begin
        tmp <= 0;
        cnt <= 0;
      end
      else if (tmp + 1 == 10000000) begin
        tmp <= 0;
        cnt <= cnt + 1;
      end
      else begin
        tmp <= tmp + 1;
        cnt <= cnt;
      end      
    end
  end
  // state
  always @(posedge clk, posedge rst) begin
    if (rst) state <= IDLE;
    else state <= next_state;
  end
  // next_state
  always @(*) begin
    next_state = state;
    if (rst) next_state = IDLE;
    else begin
      case (state)
        IDLE: begin
          if (btnL3) next_state = SET;
          else if (btnR3) next_state = PAYMENT;
        end
        SET: begin
          // if press ENTER then next_state = IDLE;
          if (been_ready && key_down[ENTER]) next_state = IDLE;
        end
        PAYMENT: begin
          // press ENTER
          // money >= price, next_state = BUY;
          // money < price, next_state = CHANGE;
          if (been_ready && key_down[ENTER]) begin
            if (money2 >= price2) next_state = BUY;
            else next_state = CHANGE;
          end
        end
        BUY: begin
          // 3s, next_state = CHANGE;
          if (cnt == 30) next_state = CHANGE;
        end
        CHANGE: begin
          // 3s, next_state = IDLE;
          if (cnt == 30) next_state = IDLE;
        end
      endcase
    end
  end

  always @(posedge clk, posedge rst) begin
    if (rst) LR <= 0;
    else begin
      LR <= LR;
      if (state == SET && been_ready && key_down[SPACE]) LR <= ~LR;
    end
  end
  // items & price & money
  always @(posedge clk, posedge rst) begin
    if (rst) begin
      items = 4'b1001;
      price = 8'b0001_0000;
      money = 0;
      price2 = 10;
      money2 = 0;
      pitems = 0;
      pmoney = 0;
      pmoney2 = 0;
      p10 = 0;
      p01 = 0;
      pushed = 0;
      last_change2 = 0;
    end
    else begin
      if (state == IDLE) begin
        items = items;
        money = 0;
        money2 = 0;
        pitems = 0;
        pmoney = 0;
        pmoney2 = 0;
        p10 = 0;
        p01 = 0;
        pushed = 0;
        last_change2 = 0;
      end
      else if (state == SET) begin
        if (been_ready && key_down[last_change] && !pushed) begin
          if (key_num != 4'b1111) begin
            if (!LR) items = key_num;
            else begin
              price = {price[3:0], key_num};
              price2 = price[7:4] * 10 + price[3:0];
            end
          end
            pushed = 1;
            last_change2 = last_change;
        end
        else if (been_ready & !key_down[last_change2]) pushed = 0;
      end
      else if (state == PAYMENT && next_state == BUY) begin
        pitems = money2 / price2;
        if (pitems > items) pitems = items;
        items = items - pitems;
        pmoney2 = price2 * pitems;
        // pmoney[7:4] = pmoney2 / 10;
        // pmoney[3:0] = pmoney2 % 10;
        p10 = pmoney2 / 10;
        p01 = pmoney2 - p10 * 10;
        pmoney = {p10[3:0], p01[3:0]};
        money2 = money2 - pmoney2;
        m10 = money2 / 10;
        m01 = money2 % 10;
        money = {m10[3:0], m01[3:0]};
      end
      else if (state == PAYMENT) begin
        if (been_ready && key_down[last_change] && !pushed) begin
          if (key_num != 4'b1111) begin
            if (!key_num) money = 0;
            else if (money != 8'b1001_1001) begin
              case (key_num)
                1: begin // +1
                  if (money[3:0] == 4'b1001) money = {money[7:4] + 1, 4'b0000};
                  else money = money + 1;
                end
                2: begin // +5
                  if (money[3:0] >= 5) begin
                    if (money[7:4] == 9) money = 8'b1001_1001;
                    else begin
                      // money <= {money[7:4] + 1, money[3:0] - 5};
                      money[7:4] = money[7:4] + 1;
                      money[3:0] = money[3:0] - 5;
                    end 
                  end
                  else money = money + 5;
                end
                3: begin // +10
                  if (money[7:4] == 9) money = 8'b1001_1001;
                  else money[7:4] = money[7:4] + 1;
                end
                4: begin // +50
                  if (money[7:4] >= 5) money = 8'b1001_1001;
                  else money[7:4] = money[7:4] + 5;
                end
              endcase
              money2 = money[7:4] * 10 + money[3:0];
            end
          end
          pushed = 1;
          last_change2 = last_change;
        end
        else if (been_ready && !key_down[last_change2]) pushed = 0;
      end
    end
  end

  // nums on 7-seg
  always @(posedge clk, posedge rst) begin
    if (rst) nums <= 0;
    else begin
      nums <= nums;
      if (state == IDLE) nums <= 16'b1010_1010_1010_1010;
      else if (state == SET) nums <= {items, 4'b1010, price};
      else if (state == PAYMENT) nums <= {8'b1010_1010, money};
      else if (state == BUY) nums <= {pitems, 4'b1010, pmoney};
      else if (state == CHANGE) nums <= {pitems, 4'b1010, money};
    end
  end
  always @(*) begin
    case (last_change)
      KEY_CODES[00] : key_num = 4'b0000;
      KEY_CODES[01] : key_num = 4'b0001;
      KEY_CODES[02] : key_num = 4'b0010;
      KEY_CODES[03] : key_num = 4'b0011;
      KEY_CODES[04] : key_num = 4'b0100;
      KEY_CODES[05] : key_num = 4'b0101;
      KEY_CODES[06] : key_num = 4'b0110;
      KEY_CODES[07] : key_num = 4'b0111;
      KEY_CODES[08] : key_num = 4'b1000;
      KEY_CODES[09] : key_num = 4'b1001;
      KEY_CODES[10] : key_num = 4'b0000;
      KEY_CODES[11] : key_num = 4'b0001;
      KEY_CODES[12] : key_num = 4'b0010;
      KEY_CODES[13] : key_num = 4'b0011;
      KEY_CODES[14] : key_num = 4'b0100;
      KEY_CODES[15] : key_num = 4'b0101;
      KEY_CODES[16] : key_num = 4'b0110;
      KEY_CODES[17] : key_num = 4'b0111;
      KEY_CODES[18] : key_num = 4'b1000;
      KEY_CODES[19] : key_num = 4'b1001;
      default       : key_num = 4'b1111;
    endcase
  end
  // led
  always @(posedge clk, posedge rst) begin
    if (rst) LED <= 0;
    else begin
      LED <= LED;
      if (state == IDLE || state == PAYMENT) LED <= 0;
      else if (state == SET) begin
        if (!LR) LED <= 16'b1111_1111_0000_0000;
        else LED <= 16'b0000_0000_1111_1111;
      end
      else if (state == BUY) begin
        if (cnt % 10 >= 5) LED <= 0;
        else LED <= 16'b1111_1111_1111_1111;
      end
      else if (state == CHANGE) LED <= 16'b1111_1111_1111_1111;
    end
  end

endmodule