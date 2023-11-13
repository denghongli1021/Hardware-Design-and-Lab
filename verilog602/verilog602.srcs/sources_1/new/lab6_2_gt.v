module lab6_2_gt(
  input clk,
  input rst,
  inout wire PS2_DATA,
  inout wire PS2_CLK,
  input hint,
  output [3:0] vgaRed,
  output [3:0] vgaGreen,
  output [3:0] vgaBlue,
  output hsync,
  output vsync,
  output pass
  );
  wire [11:0] data;
  wire clk_25MHz, clk_22;
  wire [16:0] pixel_addr;
  wire [11:0] pixel;
  wire valid;
  wire [9:0] h_cnt, v_cnt;  // 640 * 480
  wire rst2, rst3;
  wire [127:0] key_down;
  wire [8:0] last_change;
  wire been_ready;

  assign {vgaRed, vgaGreen, vgaBlue} = (valid == 1'b1) ? pixel : 12'h0;

  debounce d1(
    .clk(clk),
    .pb(rst),
    .pb_debounced(rst2)
  );
  one_pulse o1(
    .clk(clk),
    .pb_in(rst2),
    .pb_out(rst3)
  );
  KeyboardDecoder k1(
    .key_down(key_down),
    .last_change(last_change),
    .key_valid(been_ready),
    .PS2_DATA(PS2_DATA),
    .PS2_CLK(PS2_CLK),
    .rst(rst3),
    .clk(clk)
  );
  clock_divider clk_wiz_0_inst(
    .clk(clk),
    .clk1(clk_25MHz),
    .clk22(clk_22)
  );
  mem_addr_gen mem_addr_gen_inst(
    .clk(clk),
    .rst(rst3),
    .h_cnt(h_cnt),
    .v_cnt(v_cnt),
    .hint(hint),
    .key_down(key_down),
    .last_change(last_change),
    .been_ready(been_ready),
    .pass(pass),
    .pixel_addr(pixel_addr)
  );
  blk_mem_gen_0 blk_mem_gen_0_inst(
    .clka(clk_25MHz),
    .wea(0),
    .addra(pixel_addr),
    .dina(data[11:0]),
    .douta(pixel)
  ); 
  vga_controller vga_inst(
    .pclk(clk_25MHz),
    .reset(rst),
    .hsync(hsync),
    .vsync(vsync),
    .valid(valid),
    .h_cnt(h_cnt),
    .v_cnt(v_cnt)
  );
endmodule
module mem_addr_gen(
  input clk,
  input rst,
  input [9:0] h_cnt,
  input [9:0] v_cnt,
  input hint,
  input [127:0] key_down,
  input [8:0] last_change,
  input been_ready,
  output reg pass,
  output reg [16:0] pixel_addr
);
  parameter [8:0] SHIFT = 9'b000010010;
  parameter [8:0] KEY_CODES [0:15] = {
    9'b000010110, // 1 => 16
    9'b000011110, // 2 => 1E
    9'b000100110, // 3 => 26
    9'b000100101, // 4 => 25
    9'b000010101, // Q
    9'b000011101, // W
    9'b000100100, // E
    9'b000101101, // R
    9'b000011100, // A
    9'b000011011, // S
    9'b000100011, // D
    9'b000101011, // F
    9'b000011010, // Z
    9'b000100010, // X
    9'b000100001, // C
    9'b000101010  // V
  };
  // parameter [3:0] random [0:15] = {
  //   4'd3, 4'd10, 4'd1, 4'd15, 4'd5, 4'd0, 4'd8, 4'd12,
  //   4'd4, 4'd9, 4'd11, 4'd13, 4'd14, 4'd2, 4'd6, 4'd7
  // };
  parameter [3:0] random [0:15] = {
    4'd1, 4'd0, 4'd2, 4'd3, 4'd4, 4'd5, 4'd6, 4'd7,
    4'd8, 4'd9, 4'd10, 4'd11, 4'd12, 4'd13, 4'd14, 4'd15
  };
  reg [3:0] blocks [0:15];
  reg [4:0] j, k1 = 31, k2 = 31;
  reg [15:0] rotate;
  reg next_pass, done;
  wire [16:0] BX, BY, PX, PY;
  wire [3:0] curX, curY;
  wire shift_down;
  integer i;
  assign BX = v_cnt / 120, BY = h_cnt / 160;
  assign PX = (v_cnt >> 1) - BX * 60, PY = (h_cnt >> 1) - BY * 80;
  assign curX = blocks[BX * 4 + BY] / 4, curY = blocks[BX * 4 + BY] % 4;
  assign shift_down = key_down[SHIFT];

  always @(*) begin
    if (hint) pixel_addr = (h_cnt >> 1) + 320 * (v_cnt >> 1);
    else begin
      // current = blocks[BX * 4 + BY]
      if (rotate[blocks[BX * 4 + BY]]) pixel_addr = (curY * 80 + PY) + 320 * (curX * 60 + (60 - PX));
      else pixel_addr = (curY * 80 + PY) + 320 * (curX * 60 + PX);
    end
  end
  always @(*) begin
    case (last_change)
      KEY_CODES[0]: j = 0;
      KEY_CODES[1]: j = 1;
      KEY_CODES[2]: j = 2;
      KEY_CODES[3]: j = 3;
      KEY_CODES[4]: j = 4;
      KEY_CODES[5]: j = 5;
      KEY_CODES[6]: j = 6;
      KEY_CODES[7]: j = 7;
      KEY_CODES[8]: j = 8;
      KEY_CODES[9]: j = 9;
      KEY_CODES[10]: j = 10;
      KEY_CODES[11]: j = 11;
      KEY_CODES[12]: j = 12;
      KEY_CODES[13]: j = 13;
      KEY_CODES[14]: j = 14;
      KEY_CODES[15]: j = 15;
      default: j = 31;
    endcase
  end
  always @(posedge clk, posedge rst) begin
    if (rst) begin
      for (i = 0; i < 16; i = i + 1) blocks[i] <= random[i];
      // rotate <= 16'b0000010001110111;
      rotate <= 16'b1100000000000000;
      done = 0;
      k1 = 31;
      k2 = 31;
    end
    else begin
      for (i = 0; i < 16; i = i + 1) blocks[i] <= blocks[i];
      rotate <= rotate;
      if (!pass) begin
        if (j != 31) begin
          if (k1 == 31 && key_down[last_change]) k1 = j;
          else if (k1 != 31 && key_down[KEY_CODES[k1]] == 0) k1 = 31;
          if (k1 != 31 && k2 == 31 && last_change != KEY_CODES[k1] && key_down[last_change]) k2 = j;
          else if (k2 != 31 && key_down[KEY_CODES[k2]]) k2 = 31;
          else if (k2 != 31 && key_down[KEY_CODES[k1]] == 0) k1 = k2;
        end

        if (shift_down && key_down[KEY_CODES[k1]] && !done) begin
          rotate[blocks[k1]] <= ~rotate[blocks[k1]];
          done = 1;
        end
        else if (!key_down[KEY_CODES[k1]]) done = 0;
        else if (!shift_down) begin // !shift_down
          if (key_down[KEY_CODES[k1]] && key_down[KEY_CODES[k2]] && !done) begin
            blocks[k1] <= blocks[k2];
            blocks[k2] <= blocks[k1];
            done = 1;
          end
          else if (!key_down[KEY_CODES[k1]] && !key_down[KEY_CODES[k2]]) done = 0;
        end
      end
    end
  end
  always @(posedge clk, posedge rst) begin
    if (rst) pass <= 0;
    else pass <= next_pass;
  end
  always @(*) begin
    next_pass = 1;
    for (i = 0; i < 16; i = i + 1)
      if (rotate[i] || blocks[i] != i) next_pass = 0;
  end

endmodule