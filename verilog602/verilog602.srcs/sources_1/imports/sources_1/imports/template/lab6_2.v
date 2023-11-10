module lab6_2(
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
    
    // add your design here
    wire rst1 , rst2;
    debounce a1 (
        .clk(clk),
        .pb(rst), 
	    .pb_debounced(rst1)
    );
    one_pulse a2(
        .clk(clk),
        .pb_in(rst1),
        .pb_out(rst2)
    );
    wire [511:0] key_down;
	wire [8:0] last_change;
	wire key_valid;
    KeyboardDecoder kd(
        .key_down(key_down),
        .last_change(last_change),
        .key_valid(key_valid),
        .PS2_DATA(PS2_DATA),
        .PS2_CLK(PS2_CLK),
        .rst(rst2),
        .clk(clk)
    );
    wire [11:0] data;
    wire clk_25MHz;
    wire clk_22;
    wire [16:0] pixel_addr;
    wire [11:0] pixel;
    wire valid;
    wire [9:0] h_cnt; //640
    wire [9:0] v_cnt;  //480

    assign {vgaRed, vgaGreen, vgaBlue} = (valid==1'b1) ? pixel:12'h0;

    clock_divider clk_wiz_0_inst(
      .clk(clk),
      .clk1(clk_25MHz),
      .clk22(clk_22)
    );

    mem_addr_gen mem_addr_gen_inst(
    .clk(clk_22),
    .rst(rst2),
    //.en(en),
    //.dir(dir),
    //.enlarge(enlarge),
    //.hmir(hmir),
    //.vmir(vmir),
    .key_down(key_down),
    .last_change(last_change),
    .key_valid(key_valid),
    .h_cnt(h_cnt),
    .v_cnt(v_cnt),
    .pixel_addr(pixel_addr)
    );
     
 
    blk_mem_gen_0 blk_mem_gen_0_inst(
      .clka(clk_25MHz),
      .wea(0),
      .addra(pixel_addr),
      .dina(data[11:0]),
      .douta(pixel)
    ); 

    vga_controller  vga_inst(
      .pclk(clk_25MHz),
      .reset(rst2),
      //.en(en),
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
    input [511:0] key_down,
    input [8:0] last_change,
	input key_valid,
    output [16:0] pixel_addr
   );
    
   //reg [9:0] position;
   //reg [1:0] a = 0;
   reg [9:0] h,v;
//    assign h = (h_cnt<=320) ? 320-h_cnt :h_cnt;
//    assign v = 480-v_cnt;
    reg pic1 = 0;
    reg pic2 = 0;
    reg pic3 = 0;
    reg pic4 = 0;
    reg pic5 = 0;
    reg pic6 = 0;
    reg pic7 = 0;
    reg pic8 = 0;
    reg pic9 = 0;
    reg pic10 = 0;
    reg pic11 = 0;
    reg pic12 = 0;
    reg pic13 = 0;
    reg pic14 = 0;
    reg pic15 = 0;
    reg pic16 = 0;
    reg [9:0] x1 = 0 ;
    reg [9:0] y1 = 0 ;
    reg [9:0] x2 = 0;
    reg [9:0] y2 = 120;
    reg [9:0] x3 =0;
    reg [9:0] y3 =240;
    reg [9:0] x4 =0;
    reg [9:0] y4 =360;
    reg [9:0] x5 =160;
    reg [9:0] y5 =0;
    reg [9:0] x6 =160;
    reg [9:0] y6 =120;
    reg [9:0] x7 =160;
    reg [9:0] y7 =240;
    reg [9:0] x8 =160;
    reg [9:0] y8 =360;
    reg [9:0] x9 =320;
    reg [9:0] y9 =0;
    reg [9:0] x10 =320;
    reg [9:0] y10 =120;
    reg [9:0] x11 =320;
    reg [9:0] y11 =240;
    reg [9:0] x12 =320;
    reg [9:0] y12 =360;
    reg [9:0] x13 =480;
    reg [9:0] y13 =0;
    reg [9:0] x14 =480;
    reg [9:0] y14 =120;
    reg [9:0] x15 =480;
    reg [9:0] y15 =240;
    reg [9:0] x16 =480;
    reg [9:0] y16 =360;
    // assign h = (h_cnt<=160) ? h_cnt:
    //             (h_cnt >160 && h_cnt <= 320 ) ? h_cnt:
    //             (h_cnt >320 && h_cnt <= 480) ? h_cnt:
    //             h_cnt;
    // assign v = (v_cnt<=120) ? v_cnt:
    //             (v_cnt >120 && v_cnt <= 240 ) ? v_cnt:
    //             (v_cnt >240 && v_cnt <= 360) ? v_cnt: 
    //             (h_cnt <= 160 && pic13 == 1) ? 480-v_cnt+360 : v_cnt;
    assign pixel_addr = ((h>>1)+(v>>1)*320)% 76800;  //640*480 --> 320*240 160 120
    always @ (*) begin
        if (h_cnt <= 160) begin 
            if (v_cnt <= 120) begin
                h = h_cnt + x1 - 0;
                if (pic1) begin
                    //v = 240 - v_cnt + 120; 
                end
                else begin
                    v = v_cnt + y1 - 0;
                end
            end
            else if (v_cnt > 120 && v_cnt <= 240) begin
                h = h_cnt + x2 - 0;
                if (pic2) begin
                    //v = 240 - v_cnt + 120;
                end
                else begin
                    v = v_cnt + y2 - 120;
                end
            end
            else if (v_cnt >240 && v_cnt <= 360) begin
                h = h_cnt + x3 - 0;
                if (pic3) begin
                    // v = 360 - v_cnt + 240;
                end
                else begin
                    v = v_cnt + y3 - 240;
                end
            end
            else if (v_cnt > 360) begin
                h = h_cnt + x4 - 0;
                if (pic4) begin
                    // v = 480 - v_cnt + 360;
                end
                else begin
                    v = v_cnt + y4 - 360;
                end
            end
        end
        else if (h_cnt > 160 && h_cnt <= 320) begin
            if (v_cnt <= 120) begin
                h = h_cnt + x5 - 160;
                if (pic5) begin
                    v = 120 - v_cnt;
                end
                else begin
                    v = v_cnt + y5 - 0;
                end
            end
            else if (v_cnt > 120 && v_cnt <= 240) begin
                h = h_cnt + x6 - 160;
                if (pic6) begin
                    v = 240 - v_cnt + 120;
                end
                else begin
                    v = v_cnt + y6 - 120;
                end
            end
            else if (v_cnt >240 && v_cnt <= 360) begin
                h = h_cnt + x7 - 160;
                if (pic7) begin
                    v = 360 - v_cnt + 240;
                end
                else begin
                    v = v_cnt + y7 - 240;
                end
            end
            else if (v_cnt > 360) begin
                h = h_cnt + x8 - 160;
                if (pic8) begin
                    v = 480 - v_cnt + 360;
                end
                else begin
                    v = v_cnt + y8 - 360;
                end
            end
        end
        else if (h_cnt >320 && h_cnt <= 480) begin
            if (v_cnt <= 120) begin
                h = h_cnt + x9 - 320;
                if (pic9) begin
                    v = 120 - v_cnt;
                end
                else begin
                    v = v_cnt + y9 - 0;
                end
            end
            else if (v_cnt > 120 && v_cnt <= 240) begin
                h = h_cnt + x10 - 320;
                if (pic10) begin
                    v = 240 - v_cnt + 120;
                end
                else begin
                    v = v_cnt + y10 - 120;
                end
            end
            else if (v_cnt >240 && v_cnt <= 360) begin
                h = h_cnt + x11 - 320;
                if (pic11) begin
                    v = 360 - v_cnt + 240;
                end
                else begin
                    v = v_cnt + y11 - 240;
                end
            end
            else if (v_cnt > 360) begin
                h = h_cnt + x12 - 320;
                if (pic12) begin
                    v = 480 - v_cnt + 360;
                end
                else begin
                    v = v_cnt + y12 - 360;
                end
            end
        end
        else if (h_cnt > 480) begin
            if (v_cnt <= 120) begin
                h = h_cnt + x13 - 480;
                if (pic13) begin
                    v = 120 - v_cnt;
                end
                else begin
                    v = v_cnt + y13 - 0;
                end
            end
            else if (v_cnt > 120 && v_cnt <= 240) begin
                h = h_cnt + x14 - 480;
                if (pic14) begin
                    v = 240 - v_cnt + 120;
                end
                else begin
                    v = v_cnt + y14 - 120;
                end
            end
            else if (v_cnt >240 && v_cnt <= 360) begin
                h = h_cnt + x15 - 480;
                if (pic15) begin
                    v = 360 - v_cnt + 240;   
                    v = v * 2;  
                end
                else begin
                    v = v_cnt + y15 - 240;
                end
            end
            else if (v_cnt > 360) begin
                h = h_cnt + x16 - 480;
                if (pic16) begin
                    v = 480 - v_cnt + 360;
                end
                else begin
                    v = v_cnt + y16 - 360;
                end
            end
        end
        // else begin
        //     // if ((h_cnt) <= 320) begin
        //     //     h = 320 - (h_cnt);
        //     // end
        //     // else begin
                
        //     // end
        //     h = (h_cnt);
        //     v = v_cnt;
        // end
        // if(rst)
        //   position <= 0;
        // else if(position < 239)
        //     position <= position + 1;
        // else begin
        //     position <= 0;
        //     // a = 1;
        // end
        // else if (a == 0) begin
        //     if(position < 640)
        //         position <= position + 1;
        //     else
        //         position <= 640;
        //         a = 1;
        // end
        // else if (a == 1) begin
        //     if(position > 0)
        //         position <= position - 1;
        //     else
        //         position <= 0;
        //         a = 0;
        // end
    end
    
endmodule
/////////////////////////////////////////////////////////////////
// Module Name: vga
/////////////////////////////////////////////////////////////////

module vga_controller (
    input wire pclk, reset,
    output wire hsync, vsync, valid,
    output wire [9:0]h_cnt,
    output wire [9:0]v_cnt
    );

    reg [9:0]pixel_cnt;
    reg [9:0]line_cnt;
    reg hsync_i,vsync_i;

    parameter HD = 640;
    parameter HF = 16;
    parameter HS = 96;
    parameter HB = 48;
    parameter HT = 800; 
    parameter VD = 480;
    parameter VF = 10;
    parameter VS = 2;
    parameter VB = 33;
    parameter VT = 525;
    parameter hsync_default = 1'b1;
    parameter vsync_default = 1'b1;

    always @(posedge pclk)
        if (reset)
            pixel_cnt <= 0;
        else
            if (pixel_cnt < (HT - 1))
                pixel_cnt <= pixel_cnt + 1; 
            else
                pixel_cnt <= 0;

    always @(posedge pclk)
        if (reset)
            hsync_i <= hsync_default;
        else
            if ((pixel_cnt >= (HD + HF - 1)) && (pixel_cnt < (HD + HF + HS - 1)))
                hsync_i <= ~hsync_default;
            else
                hsync_i <= hsync_default; 

    always @(posedge pclk)
        if (reset)
            line_cnt <= 0;
        else
            if (pixel_cnt == (HT -1))
                if (line_cnt < (VT - 1))
                    line_cnt <= line_cnt + 1;
                else
                    line_cnt <= 0;

    always @(posedge pclk)
        if (reset)
            vsync_i <= vsync_default; 
        else if ((line_cnt >= (VD + VF - 1)) && (line_cnt < (VD + VF + VS - 1)))
            vsync_i <= ~vsync_default; 
        else
            vsync_i <= vsync_default; 

    assign hsync = hsync_i;
    assign vsync = vsync_i;
    assign valid = ((pixel_cnt < HD) && (line_cnt < VD));

    assign h_cnt = (pixel_cnt < HD) ? pixel_cnt : 10'd0;
    assign v_cnt = (line_cnt < VD) ? line_cnt : 10'd0;

endmodule