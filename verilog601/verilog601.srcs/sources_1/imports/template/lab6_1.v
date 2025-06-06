module lab6_1(
    input clk,
    input rst,
    input en,
    input dir,
    input vmir,
    input hmir,
    input enlarge,
    output [3:0] vgaRed, 
    output [3:0] vgaGreen,
    output [3:0] vgaBlue,
    output hsync,
    output vsync
);

    // add your design here
    wire rst1,rst2;
    debounce a1 (
        .clk(clk),
        .pb(rst),
        .pb_debounced(rst1)
    );
    one_pulse a2 (
        .clk(clk),
        .pb_in(rst1),
        .pb_out(rst2)
    );

    wire [11:0] data;
    wire clk_25MHz;
    wire clk_22;
    wire [16:0] pixel_addr;
    wire [11:0] pixel;
    wire valid;
    wire [9:0] h_cnt; //640
    wire [9:0] v_cnt;  //480

  assign {vgaRed, vgaGreen, vgaBlue} = (valid==1'b1) ? pixel:12'h0; //~pixel 負片

    clock_divider clk_wiz_0_inst(
      .clk(clk),
      .clk1(clk_25MHz),
      .clk22(clk_22)
    );

    mem_addr_gen mem_addr_gen_inst(
    .clk(clk_22),
    .rst(rst2),
    .en(en),
    .dir(dir),
    .enlarge(enlarge),
    .hmir(hmir),
    .vmir(vmir),
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

    vga_controller   vga_inst(
      .pclk(clk_25MHz),
      .reset(rst2),
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
   input en,
   input dir,
   input enlarge,
   input vmir,
   input hmir,
   input [9:0] h_cnt,
   input [9:0] v_cnt,
   output [16:0] pixel_addr
   );
    
   reg [9:0] position;
   // reg [1:0] a = 0;
   wire [1:0] a;
    assign a = (enlarge) ? 2 : 1;
    wire [9:0] h;
    wire [9:0] v;
    assign h = (hmir) ? 640-h_cnt:h_cnt;
    assign v = (vmir) ? 480-v_cnt:v_cnt;
    wire [9:0] h_centered = (enlarge) ? 320 : 0;
    wire [9:0] v_centered = (enlarge) ? 240 : 0;
    assign pixel_addr = (((h+h_centered)>>(a))+320*((v+v_centered)>>(a)) +position )% 76800;  //640*480 --> 320*240 

    always @ (posedge clk or posedge rst) begin
        if(rst)
          position <= 0;
        else if (en == 0) begin
            position <= position;
        end 
        else if (dir == 0) begin
            if (hmir) begin
                if(position > 0)
                    position <= position - 1;
                else begin
                    position <= 640;
                    // a = 1;
                end
            end
            else begin
                if(position < 640)
                    position <= position + 1;
                else begin
                    position <= 0;
                    // a = 1;
                end
            end
        end
        else if (dir == 1) begin
            if (hmir == 0) begin
                if(position > 0)
                    position <= position - 1;
                else begin
                    position <= 640;
                    // a = 1;
                end
            end
            else begin
                if(position < 640)
                    position <= position + 1;
                else begin
                    position <= 0;
                    // a = 1;
                end
            end
        end
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

module clock_divider(clk1, clk, clk22);
    input clk;
    output clk1;
    output clk22;
    reg [21:0] num;
    wire [21:0] next_num;

    always @(posedge clk) begin
    num <= next_num;
    end

    assign next_num = num + 1'b1;
    assign clk1 = num[1];
    assign clk22 = num[21];
endmodule

