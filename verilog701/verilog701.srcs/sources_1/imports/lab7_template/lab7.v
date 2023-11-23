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
    output [6:0] DISPLAY,    
    output [3:0] DIGIT
    );        
    
    // Modify these
    //reg [15:0] _led = 16'b1110_0000_0000_0111;
    assign DIGIT = 4'b0000;
    assign DISPLAY = 7'b0111111;

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
    player_control #(.LEN(128)) playerCtrl_00 ( 
        .clk(clkDiv22),
        .reset(rst),
        ._play(1'b1), 
        ._mode(1'b0),
        .ibeat(ibeatNum)
    );

    // Music module
    // [in]  beat number and en
    // [out] left & right raw frequency
    music_example music_00 (
        .ibeatNum(ibeatNum),
        .en(1'b1),
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
        //.mute(_mute),
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
    reg[2:0] tmp_vol;
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
endmodule
