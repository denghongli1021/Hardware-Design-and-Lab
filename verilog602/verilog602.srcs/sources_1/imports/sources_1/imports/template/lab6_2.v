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
    output reg pass
    );
    //    a : 1010
    //    b : 1011
    //    c : 1100
    //    d : 1101
    //    e : 1110
    //    f : 1111
    // add your design here
    // KEY_CODE
    parameter [8:0] LEFT_SHIFT = 9'b0_0001_0010;
    parameter [8:0] KEY_CODES [0:15] = {
        9'b0_0001_0110, // 1 (16)
        9'b0_0001_0101, // Q (15)
        9'b0_0001_1100, // A (1C)
        9'b0_0001_1010, // Z (1A) 
        9'b0_0001_1110, // 2 (1E)
        9'b0_0001_1101, // W (1D)
        9'b0_0001_1011, // S (1B)
        9'b0_0010_0010, // X (22) 
        9'b0_0010_0110, // 3 (26)
        9'b0_0010_0100, // E (24)
        9'b0_0010_0011, // D (23)
        9'b0_0010_0001, // C (21)
        9'b0_0010_0101, // 4 (25)
        9'b0_0010_1101, // R (2D)
        9'b0_0010_1011, // F (2B)
        9'b0_0010_1010 // V (2A) 
        // 9'b0_0001_0010  // left shift (12)
    };
    // RST button (btnC)
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
    // keyboard
    wire [127:0] key_down;
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
    reg [9:0] h,v;
    reg pic [0:16] = { 0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0 };
    // reg pic1 = 0;reg pic2 = 0;reg pic3 = 0;reg pic4 = 0;
    // reg pic5 = 0;reg pic6 = 0;reg pic7 = 0;reg pic8 = 0;
    // reg pic9 = 0;reg pic10 = 0;reg pic11 = 0;reg pic12 = 0;
    // reg pic13 = 0;reg pic14 = 0;reg pic15 = 0;reg pic16 = 0;
    reg [9:0] x [0:16] = {
        0,
        0,0,0,0,
        160,160,160,160,
        320,320,320,320,
        480,480,480,480
    };
    reg [9:0] y [0:16] = {
        0,
        0,240,120,360,
        0,240,120,360,
        0,120,240,360,
        0,120,240,360
    };
    // reg [9:0] x1 = 0;// reg [9:0] y1 = 0;
    // reg [9:0] x2 = 0;// reg [9:0] y2 = 120;
    // reg [9:0] x3 =0;// reg [9:0] y3 =240;
    // reg [9:0] x4 =0;// reg [9:0] y4 =360;
    // reg [9:0] x5 =160;// reg [9:0] y5 =0;
    // reg [9:0] x6 =160;// reg [9:0] y6 =120;
    // reg [9:0] x7 =160;// reg [9:0] y7 =240;
    // reg [9:0] x8 =160;// reg [9:0] y8 =360;
    // reg [9:0] x9 =320;// reg [9:0] y9 =0;
    // reg [9:0] x10 =320;// reg [9:0] y10 =120;
    // reg [9:0] x11 =320;// reg [9:0] y11 =240;
    // reg [9:0] x12 =320;// reg [9:0] y12 =360;
    // reg [9:0] x13 =480;// reg [9:0] y13 =0;
    // reg [9:0] x14 =480;// reg [9:0] y14 =120;
    // reg [9:0] x15 =480;// reg [9:0] y15 =240;
    // reg [9:0] x16 =480;// reg [9:0] y16 =360;
    assign pixel_addr = (hint) ? ((h_cnt>>1)+(v_cnt>>1)*320)% 76800 :((h>>1)+(v>>1)*320)% 76800;
    assign {vgaRed, vgaGreen, vgaBlue} = (valid==1'b1) ? pixel:12'h0;
    // other module instance
    clock_divider clk_wiz_0_inst(
      .clk(clk),
      .clk1(clk_25MHz),
      .clk22(clk_22)
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
      .hsync(hsync),
      .vsync(vsync),
      .valid(valid),
      .h_cnt(h_cnt),
      .v_cnt(v_cnt)
    );
    reg [4:0] key_num;
    always @ (*) begin
		case (last_change)
			KEY_CODES[00] : key_num = 1;
			KEY_CODES[01] : key_num = 2;
			KEY_CODES[02] : key_num = 3;
			KEY_CODES[03] : key_num = 4;
			KEY_CODES[04] : key_num = 5;
			KEY_CODES[05] : key_num = 6;
			KEY_CODES[06] : key_num = 7;
			KEY_CODES[07] : key_num = 8;
			KEY_CODES[08] : key_num = 9;
			KEY_CODES[09] : key_num = 10;
			KEY_CODES[10] : key_num = 11;
			KEY_CODES[11] : key_num = 12;
			KEY_CODES[12] : key_num = 13;
			KEY_CODES[13] : key_num = 14;
			KEY_CODES[14] : key_num = 15;
			KEY_CODES[15] : key_num = 16;
            //KEY_CODES[16] : key_num = 17; // left_shift
			default		  : key_num = 0;
	    endcase
    end
    reg [5:0] key_1 = 0;
    reg [8:0] key_1_code = 0;
    reg [5:0] key_2 = 0;
    reg [8:0] key_2_code = 0;
    reg [1:0] press_shift = 0;
    reg [1:0] release_shift = 1;
    reg [1:0] task_finish = 0;
    reg [5:0] tmp;
    reg [1:0] finish = 0;
    // process pic
    always @ (posedge clk) begin
        if (rst2) begin
            // task_finish = 0;
            release_shift = 1;
            pic[1] = 1;pic[2] = 1;pic[3] = 1;pic[4] = 1;
            pic[5] = 0;pic[6] = 0;pic[7] = 0;pic[8] = 0;
            pic[9] = 0;pic[10] = 0;pic[11] = 0;pic[12] = 0;
            pic[13] = 0;pic[14] = 0;pic[15] = 0;pic[16] = 0;
            x[1] = 0 ;y[1] = 0 ;x[2] = 0;y[2] = 240;
            x[3] =0;y[3] =120;x[4] =0;y[4] =360;
            x[5] =160;y[5] =0;x[6] =160;y[6] =240;
            x[7] =160;y[7] =120;x[8] =160;y[8] =360;
            x[9] =320;y[9] =0;x[10] =320;y[10] =120;
            x[11] =320;y[11] =240;x[12] =320;y[12] =360;
            x[13] =480;y[13] =0;x[14] =480;y[14] =120;
            x[15] =480;y[15] =240;x[16] =480;y[16] =360;
        end
        else begin
            if (finish == 0) begin
                if (key_num != 0) begin
                    if (key_1 == 0) begin
                        if (key_down[last_change] == 1) begin
                            key_1 = key_num;
                            key_1_code = last_change; 
                        end
                    end
                    else if (key_1 != 0) begin
                        if (key_down[key_1_code] == 0) begin 
                            key_1 = 0;
                            key_1_code = 0;
                        end
                    end
                    if (key_1 != 0 && key_2 == 0 && last_change != key_1_code) begin
                        if (key_down[last_change] == 1) begin
                            key_2 = key_num;
                            key_2_code = last_change;
                        end
                    end
                    else if (key_2 != 0) begin
                        if (key_down[key_2_code] == 0) begin
                            key_2 = 0;
                            key_2_code = 0;
                        end
                        else if (key_down[key_1_code] == 0) begin
                            key_1 = key_2;
                            key_1_code = key_2_code;
                        end
                    end
                end
                if (press_shift == 1 && key_down[key_1_code] == 1 && task_finish == 0 && release_shift == 1) begin
                    pic[key_1] = pic[key_1] ^ 1;
                    task_finish = 1;
                    release_shift = 0;
                end 
                else if (key_down[LEFT_SHIFT] == 0 && release_shift == 0) begin
                    release_shift = 1;
                end
                else if (key_down[key_1_code] == 0) begin
                    task_finish = 0;
                end
                else if (press_shift == 0) begin
                    if (key_down[key_1_code] == 1 && key_down[key_2_code] == 1 && task_finish == 0) begin
                        x[key_1] <= x[key_2];
                        x[key_2] <= x[key_1];
                        y[key_1] <= y[key_2];
                        y[key_2] <= y[key_1];
                        pic[key_1] <= pic[key_2];
                        pic[key_2] <= pic[key_1];
                        task_finish = 1;
                    end
                    else if (key_down[key_1_code] == 0 && key_down[key_2_code] == 0) begin
                        task_finish = 0;
                    end
                end
            end
            if (h_cnt <= 160) begin 
                if (v_cnt <= 120) begin
                    h = h_cnt + x[1] - 0;
                    if (pic[1]) begin
                        v = y[1] + 120 - (v_cnt - 0); 
                    end
                    else begin
                        v = v_cnt + y[1] - 0;
                    end
                end
                else if (v_cnt > 120 && v_cnt <= 240) begin
                    h = h_cnt + x[2] - 0;
                    if (pic[2]) begin
                        v = y[2] + 120 - (v_cnt - 120);
                    end
                    else begin
                        v = v_cnt + y[2] - 120;
                    end
                end
                else if (v_cnt >240 && v_cnt <= 360) begin
                    h = h_cnt + x[3] - 0;
                    if (pic[3]) begin
                        v = y[3] + 120 - (v_cnt - 240);
                    end
                    else begin
                        v = v_cnt + y[3] - 240;
                    end
                end
                else if (v_cnt > 360) begin
                    h = h_cnt + x[4] - 0;
                    if (pic[4]) begin
                        v = y[4] + 120 - (v_cnt - 360);
                    end
                    else begin
                        v = v_cnt + y[4] - 360;
                    end
                end
            end
            else if (h_cnt > 160 && h_cnt <= 320) begin
                if (v_cnt <= 120) begin
                    h = h_cnt + x[5] - 160;
                    if (pic[5]) begin
                        v = y[5] + 120 - (v_cnt - 0);
                    end
                    else begin
                        v = v_cnt + y[5] - 0;
                    end
                end
                else if (v_cnt > 120 && v_cnt <= 240) begin
                    h = h_cnt + x[6] - 160;
                    if (pic[6]) begin
                        v = y[6] + 120 - (v_cnt - 120);
                    end
                    else begin
                        v = v_cnt + y[6] - 120;
                    end
                end
                else if (v_cnt >240 && v_cnt <= 360) begin
                    h = h_cnt + x[7] - 160;
                    if (pic[7]) begin
                        v = y[7] + 120 - (v_cnt - 240);
                    end
                    else begin
                        v = v_cnt + y[7] - 240;
                    end
                end
                else if (v_cnt > 360) begin
                    h = h_cnt + x[8] - 160;
                    if (pic[8]) begin
                        v = y[8] + 120 - (v_cnt - 360);
                    end
                    else begin
                        v = v_cnt + y[8] - 360;
                    end
                end
            end
            else if (h_cnt >320 && h_cnt <= 480) begin
                if (v_cnt <= 120) begin
                    h = h_cnt + x[9] - 320;
                    if (pic[9]) begin
                        v = y[9] + 120 - (v_cnt - 0);
                    end
                    else begin
                        v = v_cnt + y[9] - 0;
                    end
                end
                else if (v_cnt > 120 && v_cnt <= 240) begin
                    h = h_cnt + x[10] - 320;
                    if (pic[10]) begin
                        v = y[10] + 120 - (v_cnt - 120);
                    end
                    else begin
                        v = v_cnt + y[10] - 120;
                    end
                end
                else if (v_cnt >240 && v_cnt <= 360) begin
                    h = h_cnt + x[11] - 320;
                    if (pic[11]) begin
                        v = y[11] + 120 - (v_cnt - 240);
                    end
                    else begin
                        v = v_cnt + y[11] - 240;
                    end
                end
                else if (v_cnt > 360) begin
                    h = h_cnt + x[12] - 320;
                    if (pic[12]) begin
                        v = y[12] + 120 - (v_cnt - 360);
                    end
                    else begin
                        v = v_cnt + y[12] - 360;
                    end
                end
            end
            else if (h_cnt > 480) begin
                if (v_cnt <= 120) begin
                    h = h_cnt + x[13] - 480;
                    if (pic[13]) begin
                        v = y[13] + 120 - (v_cnt - 0);
                    end
                    else begin
                        v = v_cnt + y[13] - 0;
                    end
                end
                else if (v_cnt > 120 && v_cnt <= 240) begin
                    h = h_cnt + x[14] - 480;
                    if (pic[14]) begin
                        v = y[14] + 120 - (v_cnt - 120);
                    end
                    else begin
                        v = v_cnt + y[14] - 120;
                    end
                end
                else if (v_cnt >240 && v_cnt <= 360) begin
                    h = h_cnt + x[15] - 480;
                    if (pic[15]) begin
                        v = y[15] + 120 - (v_cnt - 240);
                    end
                    else begin
                        v = v_cnt + y[15] - 240;
                    end
                end
                else if (v_cnt > 360) begin
                    h = h_cnt + x[16] - 480;
                    if (pic[16]) begin
                        v = y[16] + 120 - (v_cnt - 360);
                    end
                    else begin
                        v = v_cnt + y[16] - 360;
                    end
                end
            end
        end
    end
    always@(*) begin
        if (key_down[LEFT_SHIFT] == 1) begin
            press_shift = 1;
        end
        else if (key_down[LEFT_SHIFT] == 0) begin
            press_shift = 0;
        end
    end
    always@(posedge clk or posedge rst2) begin
        if (rst2) begin
            finish = 0;
            pass = 0;
        end
        else if(pic[1] == 0 &&
            pic[2] == 0 &&
            pic[3] == 0 &&
            pic[4] == 0 &&
            pic[5] == 0 &&
            pic[6] == 0 &&
            pic[7] == 0 &&
            pic[8] == 0 &&
            pic[9] == 0 &&
            pic[10] == 0 &&
            pic[11] == 0 &&
            pic[12] == 0 &&
            pic[13] == 0 &&
            pic[14] == 0 &&
            pic[15] == 0 &&
            pic[16] == 0 &&
            x[1] == 0 &&
            y[1] == 0 &&
            x[2] == 0 &&
            y[2] == 120 &&
            x[3] ==0 &&
            y[3] ==240 &&
            x[4] ==0 &&
            y[4] ==360 &&
            x[5] ==160 &&
            y[5] ==0 &&
            x[6] ==160 &&
            y[6] ==120 &&
            x[7] ==160 &&
            y[7] ==240 &&
            x[8] ==160 &&
            y[8] ==360 &&
            x[9] ==320 &&
            y[9] ==0 &&
            x[10] ==320 &&
            y[10] ==120 &&
            x[11] ==320 &&
            y[11] ==240 &&
            x[12] ==320 &&
            y[12] ==360 &&
            x[13] ==480 &&
            y[13] ==0 &&
            x[14] ==480 &&
            y[14] ==120 &&
            x[15] ==480 &&
            y[15] ==240 &&
            x[16] ==480 &&
            y[16] ==360
            ) begin
            finish = 1;
            pass = 1;
        end
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
module KeyboardDecoder(
	output reg [127:0] key_down,
	output wire [8:0] last_change,
	output reg key_valid,
	inout wire PS2_DATA,
	inout wire PS2_CLK,
	input wire rst,
	input wire clk
    );
    
    parameter [1:0] INIT			= 2'b00;
    parameter [1:0] WAIT_FOR_SIGNAL = 2'b01;
    parameter [1:0] GET_SIGNAL_DOWN = 2'b10;
    parameter [1:0] WAIT_RELEASE    = 2'b11;
    
	parameter [7:0] IS_INIT			= 8'hAA;
    parameter [7:0] IS_EXTEND		= 8'hE0;
    parameter [7:0] IS_BREAK		= 8'hF0;
    
    reg [9:0] key;		// key = {been_extend, been_break, key_in}
    reg [1:0] state;
    reg been_ready, been_extend, been_break;
    
    wire [7:0] key_in;
    wire is_extend;
    wire is_break;
    wire valid;
    wire err;
    
    wire [511:0] key_decode = 1 << last_change;
    assign last_change = {key[9], key[7:0]};
    
    KeyboardCtrl_0 inst (
		.key_in(key_in),
		.is_extend(is_extend),
		.is_break(is_break),
		.valid(valid),
		.err(err),
		.PS2_DATA(PS2_DATA),
		.PS2_CLK(PS2_CLK),
		.rst(rst),
		.clk(clk)
	);
	
	one_pulse op (
		.pb_out(pulse_been_ready),
		.pb_in(been_ready),
		.clk(clk)
	);
    
    always @ (posedge clk, posedge rst) begin
    	if (rst) begin
    		state <= INIT;
    		been_ready  <= 1'b0;
    		been_extend <= 1'b0;
    		been_break  <= 1'b0;
    		key <= 10'b0_0_0000_0000;
    	end else begin
    		state <= state;
			been_ready  <= been_ready;
			been_extend <= (is_extend) ? 1'b1 : been_extend;
			been_break  <= (is_break ) ? 1'b1 : been_break;
			key <= key;
    		case (state)
    			INIT : begin
    					if (key_in == IS_INIT) begin
    						state <= WAIT_FOR_SIGNAL;
    						been_ready  <= 1'b0;
							been_extend <= 1'b0;
							been_break  <= 1'b0;
							key <= 10'b0_0_0000_0000;
    					end else begin
    						state <= INIT;
    					end
    				end
    			WAIT_FOR_SIGNAL : begin
    					if (valid == 0) begin
    						state <= WAIT_FOR_SIGNAL;
    						been_ready <= 1'b0;
    					end else begin
    						state <= GET_SIGNAL_DOWN;
    					end
    				end
    			GET_SIGNAL_DOWN : begin
						state <= WAIT_RELEASE;
						key <= {been_extend, been_break, key_in};
						been_ready  <= 1'b1;
    				end
    			WAIT_RELEASE : begin
    					if (valid == 1) begin
    						state <= WAIT_RELEASE;
    					end else begin
    						state <= WAIT_FOR_SIGNAL;
    						been_extend <= 1'b0;
    						been_break  <= 1'b0;
    					end
    				end
    			default : begin
    					state <= INIT;
						been_ready  <= 1'b0;
						been_extend <= 1'b0;
						been_break  <= 1'b0;
						key <= 10'b0_0_0000_0000;
    				end
    		endcase
    	end
    end
    
    always @ (posedge clk, posedge rst) begin
    	if (rst) begin
    		key_valid <= 1'b0;
    		key_down <= 511'b0;
    	end else if (key_decode[last_change] && pulse_been_ready) begin
    		key_valid <= 1'b1;
    		if (key[8] == 0) begin
    			key_down <= key_down | key_decode;
    		end else begin
    			key_down <= key_down & (~key_decode);
    		end
    	end else begin
    		key_valid <= 1'b0;
			key_down <= key_down;
    	end
    end

endmodule
