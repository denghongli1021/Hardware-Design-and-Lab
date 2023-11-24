`define c   32'd262  
`define d   32'd294
`define e   32'd330 
`define f   32'd349
`define g   32'd392  
`define a   32'd440
`define b   32'd494   
`define hc  32'd524   
`define hd  32'd588   
`define he  32'd660   
`define hf  32'd698   
`define hg  32'd784 
`define ha  32'd880
`define hb  32'd988  
`define lc   32'd131 
`define ld   32'd197
`define le   32'd165
`define lf   32'd175
`define lg   32'd196
`define la   32'd220
`define lb   32'd247
`define silence   32'd50000000

module lab7(
    input clk,
    input rst,        // BTNC: active high reset
    input _play,      // SW0: Play/Pause
    input _start,     // SW1: Start/Exit
    input _mute,      // SW14: Mute
    input _mode,      // SW15: Mode
    input _volUP,     // BTNU: Vol up
    input _volDOWN,   // BTND: Vol down
    inout PS2_DATA,   // Keyboard I/O
    inout PS2_CLK,    // Keyboard I/O
    output reg [15:0] _led,       // LED: [15:9] key & [4:0] volume
    output audio_mclk, // master clock
    output audio_lrck, // left-right clock
    output audio_sck,  // serial clock
    output audio_sdin, // serial audio data input
    output reg [6:0] DISPLAY,    
    output reg [3:0] DIGIT
    );        

    // Modify these
    // keyboard
    wire [511:0] key_down;
    wire [8:0] last_change;
    wire key_valid;
    KeyboardDecoder kd(
        .rst(rst2),
        .clk(clk),
        .PS2_DATA(PS2_DATA),
        .PS2_CLK(PS2_CLK),
        .key_down(key_down),
        .last_change(last_change),
        .key_valid(key_valid)
    );
    //reg [15:0] _led = 16'b1110_0000_0000_0111;
    // assign DIGIT = 4'b0000;
    // assign DISPLAY = 7'b0111111;

    // Internal Signal
    wire [15:0] audio_in_left, audio_in_right;
    wire [11:0] ibeatNum;               // Beat counter
    wire [11:0] ibeatNum2; 
    wire [31:0] freqL, freqR;           // Raw frequency, produced by music module
    wire [31:0] freqR2;
    wire [21:0] freq_outL, freq_outR;    // Processed frequency, adapted to the clock rate of Basys3

    // clkDiv22
    wire clkDiv22;
    clock_divider #(.n(22)) clock_22(.clk(clk), .clk_div(clkDiv22));    // for audio

    // Player Control
    // [in]  reset, clock, _play, _slow, _music, and _mode
    // [out] beat number
    player_control #(.LEN(512)) playerCtrl_00 ( 
        .clk(clkDiv22),
        .reset(rst),
        ._play(_play), 
        ._mode(_mode),
        .ibeat(ibeatNum)
    );
    player_control2 #(.LEN(512)) playerCtrl_helper ( 
        .clk(clkDiv22),
        .reset(rst),
        ._play(_play), 
        ._mode(_mode),
        .ibeat(ibeatNum2)
    );
    // Music module
    // [in]  beat number and en
    // [out] left & right raw frequency
    music_example music_00 (
        .ibeatNum(ibeatNum),
        .mode(_mode),
        .en(_play),
        .key_down(key_down),
        .last_change(last_change),
        .key_valid(key_valid),
        .toneL(freqL),
        .toneR(freqR)
    );
    music_example2 music_helper (
        .ibeatNum(ibeatNum2),
        .mode(_mode),
        .en(_play),
        .key_down(key_down),
        .last_change(last_change),
        .key_valid(key_valid),
        .toneR(freqR2)
    );
    // freq_outL, freq_outR
    // Note gen makes no sound, if freq_out = 50000000 / `silence = 1
    assign freq_outL = 50000000 / freqL;
    assign freq_outR = 50000000 / freqR;

    // Note generation
    // [in]  processed frequency
    // [out] audio wave signal (using square wave here)
    reg [2:0] vol = 2;
    note_gen noteGen_00(
        .clk(clk), 
        .rst(rst), 
        .volume(vol),
        .mute(_mute),
        .play(_play),
        .note_div_left(freq_outL), 
        .note_div_right(freq_outR), 
        .audio_left(audio_in_left),     // left sound audio
        .audio_right(audio_in_right)    // right sound audio
    );

    // Speaker controller
    speaker_control sc(
        .clk(clk), 
        .rst(rst), 
        .audio_in_left(audio_in_left),      // left channel audio data input
        .audio_in_right(audio_in_right),    // right channel audio data input
        .audio_mclk(audio_mclk),            // master clock
        .audio_lrck(audio_lrck),            // left-right clock
        .audio_sck(audio_sck),              // serial clock
        .audio_sdin(audio_sdin)             // serial audio data input
    );
    wire up1,up2;
    debounce d1 (
        .pb_debounced(up1), 
        .pb(_volUP),
        .clk(clk)
    );
    onepulse d2(
        .signal(up1), 
        .clk(clk), 
        .op(up2)
    );
    wire dw1,dw2;
    debounce e1 (
        .pb_debounced(dw1), 
        .pb(_volDOWN),
        .clk(clk)
    );
    onepulse e2 (
        .signal(dw1), 
        .clk(clk), 
        .op(dw2)
    );
    wire rst1,rst2;
    debounce c1 (
        .pb_debounced(rst1), 
        .pb(rst),
        .clk(clk)
    );
    onepulse c2 (
        .signal(rst1), 
        .clk(clk), 
        .op(rst2)
    );
    // vol ??��??
    always@(posedge clk or posedge rst2) begin
        if (rst2) begin
            vol = 2;
        end
        else if (up2 && vol <= 3) begin
            vol = vol + 1;
        end
        else if (dw2 && vol >= 1) begin
            vol = vol - 1;
        end
    end
    // led 顯示 ?��??�大�? (vol) _led
    always@(*) begin
        if (_mute) begin
            _led[4:0] = 5'b00000;
        end
        else begin
            case(vol)
            0 : begin
                _led[4:0] = 5'b00001;
            end
            1 : begin
                _led[4:0] = 5'b00011;
            end
            2 : begin
                _led[4:0] = 5'b00111;
            end
            3 : begin
                _led[4:0] = 5'b01111;
            end
            4 : begin
                _led[4:0] = 5'b11111;
            end
            default : begin
                _led[4:0] = 5'b00000;
            end
            endcase
        end
        if (_mode == 0 && _play == 1) begin
            case (freqR2)
                `c  : begin
                    _led[15:9] = 7'b1000000;
                end
                `d  : begin
                    _led[15:9] = 7'b0100000;
                end
                `e  : begin
                    _led[15:9] = 7'b0010000;
                end
                `f  : begin
                    _led[15:9] = 7'b0001000;
                end
                `g  : begin
                    _led[15:9] = 7'b0000100;
                end  
                `a  : begin
                    _led[15:9] = 7'b0000010;
                end  
                `b  : begin
                    _led[15:9] = 7'b0000001;
                end 
                `hc  : begin
                    _led[15:9] = 7'b1000000;
                end
                `hd  : begin
                    _led[15:9] = 7'b0100000;
                end
                `he  : begin
                    _led[15:9] = 7'b0010000;
                end
                `hf  : begin
                    _led[15:9] = 7'b0001000;
                end
                `hg  : begin
                    _led[15:9] = 7'b0000100;
                end  
                `ha  : begin
                    _led[15:9] = 7'b0000010;
                end  
                `hb  : begin
                    _led[15:9] = 7'b0000001;
                end 
                `lc  : begin
                    _led[15:9] = 7'b1000000;
                end
                `ld  : begin
                    _led[15:9] = 7'b0100000;
                end
                `le  : begin
                    _led[15:9] = 7'b0010000;
                end
                `lf  : begin
                    _led[15:9] = 7'b0001000;
                end
                `lg  : begin
                    _led[15:9] = 7'b0000100;
                end  
                `la  : begin
                    _led[15:9] = 7'b0000010;
                end  
                `lb  : begin
                    _led[15:9] = 7'b0000001;
                end 
                default : begin
                    _led[15:9] = 7'b0000000;
                end
            endcase
        end
    end
    reg [4:0] val;
    clock_divider #(15) clk_d (
        .clk(clk),
        .clk_div(clk_div_use)
    );
    always@(posedge clk_div_use) begin
        case (DIGIT) 
            4'b0111 :  begin
                val = 17;
                DIGIT = 4'b1011;
            end
            4'b1011 :  begin
                if (_mode == 0 && _play == 1) begin
                    case (freqR2)
                        `c  : begin
                            val = 10;
                        end
                        `d  : begin
                            val = 11;
                        end
                        `e  : begin
                            val = 12;
                        end
                        `f  : begin
                            val = 13;
                        end
                        `g  : begin
                            val = 14;
                        end  
                        `a  : begin
                            val = 15;
                        end  
                        `b  : begin
                            val = 16;
                        end 
                        `hc  : begin
                            val = 10;
                        end
                        `hd  : begin
                            val = 11;
                        end
                        `he  : begin
                            val = 12;
                        end
                        `hf  : begin
                            val = 13;
                        end
                        `hg  : begin
                            val = 14;
                        end  
                        `ha  : begin
                            val = 15;
                        end  
                        `hb  : begin
                            val = 16;
                        end 
                        `lc  : begin
                            val = 10;
                        end
                        `ld  : begin
                            val = 11;
                        end
                        `le  : begin
                            val = 12;
                        end
                        `lf  : begin
                            val = 13;
                        end
                        `lg  : begin
                            val = 14;
                        end  
                        `la  : begin
                            val = 15;
                        end  
                        `lb  : begin
                            val = 16;
                        end 
                        default : begin
                            val = 17;
                        end
                    endcase
                end
                else begin
                    case (freqR)
                        `c  : begin
                            val = 10;
                        end
                        `d  : begin
                            val = 11;
                        end
                        `e  : begin
                            val = 12;
                        end
                        `f  : begin
                            val = 13;
                        end
                        `g  : begin
                            val = 14;
                        end  
                        `a  : begin
                            val = 15;
                        end  
                        `b  : begin
                            val = 16;
                        end 
                        `hc  : begin
                            val = 10;
                        end
                        `hd  : begin
                            val = 11;
                        end
                        `he  : begin
                            val = 12;
                        end
                        `hf  : begin
                            val = 13;
                        end
                        `hg  : begin
                            val = 14;
                        end  
                        `ha  : begin
                            val = 15;
                        end  
                        `hb  : begin
                            val = 16;
                        end 
                        `lc  : begin
                            val = 10;
                        end
                        `ld  : begin
                            val = 11;
                        end
                        `le  : begin
                            val = 12;
                        end
                        `lf  : begin
                            val = 13;
                        end
                        `lg  : begin
                            val = 14;
                        end  
                        `la  : begin
                            val = 15;
                        end  
                        `lb  : begin
                            val = 16;
                        end 
                        default : begin
                            val = 17;
                        end
                    endcase
                end
                DIGIT = 4'b1101;
            end
            4'b1101 :  begin
                if (_mode == 0 && _play == 1) begin
                    case (freqR2)
                        `c  : begin
                            val = 4;
                        end
                        `d  : begin
                            val = 4;
                        end
                        `e  : begin
                            val = 4;
                        end
                        `f  : begin
                            val = 4;
                        end
                        `g  : begin
                            val = 4;
                        end  
                        `a  : begin
                            val = 4;
                        end  
                        `b  : begin
                            val = 4;
                        end 
                        `hc  : begin
                            val = 5;
                        end
                        `hd  : begin
                            val = 5;
                        end
                        `he  : begin
                            val = 5;
                        end
                        `hf  : begin
                            val = 5;
                        end
                        `hg  : begin
                            val = 5;
                        end  
                        `ha  : begin
                            val = 5;
                        end  
                        `hb  : begin
                            val = 5;
                        end 
                        `lc  : begin
                            val = 3;
                        end
                        `ld  : begin
                            val = 3;
                        end
                        `le  : begin
                            val = 3;
                        end
                        `lf  : begin
                            val = 3;
                        end
                        `lg  : begin
                            val = 3;
                        end  
                        `la  : begin
                            val = 3;
                        end  
                        `lb  : begin
                            val = 3;
                        end
                        default : begin
                            val = 17;
                        end
                    endcase
                end
                else begin
                    case (freqR)
                        `c  : begin
                            val = 4;
                        end
                        `d  : begin
                            val = 4;
                        end
                        `e  : begin
                            val = 4;
                        end
                        `f  : begin
                            val = 4;
                        end
                        `g  : begin
                            val = 4;
                        end  
                        `a  : begin
                            val = 4;
                        end  
                        `b  : begin
                            val = 4;
                        end 
                        `hc  : begin
                            val = 5;
                        end
                        `hd  : begin
                            val = 5;
                        end
                        `he  : begin
                            val = 5;
                        end
                        `hf  : begin
                            val = 5;
                        end
                        `hg  : begin
                            val = 5;
                        end  
                        `ha  : begin
                            val = 5;
                        end  
                        `hb  : begin
                            val = 5;
                        end 
                        `lc  : begin
                            val = 3;
                        end
                        `ld  : begin
                            val = 3;
                        end
                        `le  : begin
                            val = 3;
                        end
                        `lf  : begin
                            val = 3;
                        end
                        `lg  : begin
                            val = 3;
                        end  
                        `la  : begin
                            val = 3;
                        end  
                        `lb  : begin
                            val = 3;
                        end
                        default : begin
                            val = 17;
                        end
                    endcase
                end
                DIGIT = 4'b1110;
            end
            4'b1110 :  begin
                val = 17;
                DIGIT = 4'b0111;
            end
            default :  begin
                val = 17;
                DIGIT = 4'b0111;
            end
        endcase
    end
    always @(*) begin 
        case (val)
            5'd0: DISPLAY = 7'b100_0000;
            5'd1: DISPLAY = 7'b111_1001;
            5'd2: DISPLAY = 7'b010_0100;
            5'd3: DISPLAY = 7'b011_0000;
            5'd4: DISPLAY = 7'b001_1001;
            5'd5: DISPLAY = 7'b001_0010;
            5'd6: DISPLAY = 7'b000_0010;
            5'd7: DISPLAY = 7'b111_1000;
            5'd8: DISPLAY = 7'b000_0000;
            5'd9: DISPLAY = 7'b001_0000;
            5'd10: DISPLAY = 7'b100_0110; // C
            5'd11: DISPLAY = 7'b010_0001; // D (d)
            5'd12: DISPLAY = 7'b000_0110; // E
            5'd13: DISPLAY = 7'b000_1110; // F
            5'd14: DISPLAY = 7'b001_0000; // G
            5'd15: DISPLAY = 7'b000_1000; // A
            5'd16: DISPLAY = 7'b000_0011; // B
            default: DISPLAY = 7'b011_1111;
        endcase
    end
endmodule