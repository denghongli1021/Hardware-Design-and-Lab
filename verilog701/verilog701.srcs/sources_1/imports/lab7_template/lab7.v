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
    //reg [15:0] _led = 16'b1110_0000_0000_0111;
    // assign DIGIT = 4'b0000;
    // assign DISPLAY = 7'b0111111;

    // Internal Signal
    wire [15:0] audio_in_left, audio_in_right;

    wire [11:0] ibeatNum;               // Beat counter
    wire [31:0] freqL, freqR;           // Raw frequency, produced by music module
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

    // Music module
    // [in]  beat number and en
    // [out] left & right raw frequency
    music_example music_00 (
        .ibeatNum(ibeatNum),
        .en(_play),
        .toneL(freqL),
        .toneR(freqR)
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
    // vol 加減
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
    // led 顯示 音量大小 (vol) _led
    always@(*) begin
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
                case (freqR)
                    /*
                    `define c   32'd262   
                    `define g   32'd392   
                    `define b   32'd494   
                    `define hc  32'd524   
                    `define hd  32'd588   
                    `define he  32'd660   
                    `define hf  32'd698   
                    `define hg  32'd784
                    */
                    262  : begin
                        val = 10;
                    end
                    392  : begin
                        val = 14;
                    end  
                    494  : begin
                        val = 16;
                    end 
                    524  : begin
                        val = 10;
                    end
                    588  : begin
                        val = 11;
                    end 
                    660  : begin
                        val = 12;
                    end
                    698  : begin
                        val = 13;
                    end
                    784 : begin
                        val = 14;
                    end
                    default : begin
                        val = 17;
                    end
                endcase
                DIGIT = 4'b1101;
            end
            4'b1101 :  begin
                case (freqR)
                    262  : begin
                        val = 4;
                    end
                    392  : begin
                        val = 4;
                    end  
                    494  : begin
                        val = 4;
                    end 
                    524  : begin
                        val = 5;
                    end
                    588  : begin
                        val = 5;
                    end 
                    660  : begin
                        val = 5;
                    end
                    698  : begin
                        val = 5;
                    end
                    784 : begin
                        val = 5;
                    end
                    default : begin
                        val = 17;
                    end
                endcase
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
            4'd0: DISPLAY = 7'b100_0000;
            4'd1: DISPLAY = 7'b111_1001;
            4'd2: DISPLAY = 7'b010_0100;
            4'd3: DISPLAY = 7'b011_0000;
            4'd4: DISPLAY = 7'b001_1001;
            4'd5: DISPLAY = 7'b001_0010;
            4'd6: DISPLAY = 7'b000_0010;
            4'd7: DISPLAY = 7'b111_1000;
            4'd8: DISPLAY = 7'b000_0000;
            4'd9: DISPLAY = 7'b001_0000;
            4'd10: DISPLAY = 7'b100_0110; // C
            4'd11: DISPLAY = 7'b010_0001; // D (d)
            4'd12: DISPLAY = 7'b000_0110; // E
            4'd13: DISPLAY = 7'b000_1110; // F
            4'd14: DISPLAY = 7'b001_0000; // G
            4'd15: DISPLAY = 7'b000_1000; // A
            4'd16: DISPLAY = 7'b000_0011; // B
            default: DISPLAY = 7'b011_1111;
        endcase
    end
endmodule