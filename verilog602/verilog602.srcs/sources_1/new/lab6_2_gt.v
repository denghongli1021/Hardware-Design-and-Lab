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
  wire [511:0] key_down;
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
    .clk(clk_22),
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
  input [511:0] key_down,
  input [8:0] last_change,
  input been_ready,
  output reg pass,
  output reg [16:0] pixel_addr
);
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
  parameter [8:0] SHIFT = 9'b000010010;
  reg [8:0] last_change2;
  reg [3:0] blocks [0:15], id, id2;
  reg [15:0] rotate;
  reg next_pass;
  reg pushed;
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

  always @(posedge clk, posedge rst) begin
    if (rst) begin
      // blocks[0] <= 3;
      // blocks[1] <= 10;
      // blocks[2] <= 1;
      // blocks[3] <= 15;
      // blocks[4] <= 5;
      // blocks[5] <= 0;
      // blocks[6] <= 8;
      // blocks[7] <= 12;
      // blocks[8] <= 4;
      // blocks[9] <= 9;
      // blocks[10] <= 11;
      // blocks[11] <= 13;
      // blocks[12] <= 14;
      // blocks[13] <= 2;
      // blocks[14] <= 6;
      // blocks[15] <= 7;
      blocks[0] <= 0;
      blocks[1] <= 1;
      blocks[2] <= 2;
      blocks[3] <= 3;
      blocks[4] <= 4;
      blocks[5] <= 5;
      blocks[6] <= 6;
      blocks[7] <= 7;
      blocks[8] <= 8;
      blocks[9] <= 9;
      blocks[10] <= 10;
      blocks[11] <= 11;
      blocks[12] <= 12;
      blocks[13] <= 13;
      blocks[14] <= 15;
      blocks[15] <= 14;
      // blocks <= {3, 10, 1, 15, 5, 0, 8, 12, 4, 9, 11, 13, 14, 2, 6, 7};
      // rotate <= 16'b0000010001110111;
      rotate <= 0;
    end
    else begin
      // blocks <= blocks;
      blocks[0] <= blocks[0];
      blocks[1] <= blocks[1];
      blocks[2] <= blocks[2];
      blocks[3] <= blocks[3];
      blocks[4] <= blocks[4];
      blocks[5] <= blocks[5];
      blocks[6] <= blocks[6];
      blocks[7] <= blocks[7];
      blocks[8] <= blocks[8];
      blocks[9] <= blocks[9];
      blocks[10] <= blocks[10];
      blocks[11] <= blocks[11];
      blocks[12] <= blocks[12];
      blocks[13] <= blocks[13];
      blocks[14] <= blocks[14];
      blocks[15] <= blocks[15];
      rotate <= rotate;
      if (id != id2) begin
        blocks[id] <= blocks[id2];
        blocks[id2] <= blocks[id];
      end
    end
  end
  always @(posedge clk, posedge rst) begin
    if (rst) last_change2 <= 0;
    else last_change2 <= last_change;
  end
  always @(*) begin
    // if (been_ready && key_down[last_change]) begin
    for (i = 0; i < 16; i = i + 1) begin
      if (last_change == KEY_CODES[i]) id = i;
      if (last_change2 == KEY_CODES[i]) id2 = i;
    end
    // end
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