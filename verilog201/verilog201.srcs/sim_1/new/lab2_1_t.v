`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/23 15:39:02
// Design Name: 
// Module Name: lab2_1_t
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module test_Parameterized_Ping_Pong_Counter; 

    // å®šç¾©æ¨¡æ“¬??????„ä¿¡???
    reg clk;
    reg rst_n; 
    reg enable;
    reg flip;
    reg [3:0] max;
    reg [3:0] min;
    wire direction;
    wire [3:0] out;

    // å¯¦ä?‹å?–è¢«æ¸¬è©¦??„æ¨¡å¡?
    Parameterized_Ping_Pong_Counter test (
        .clk(clk),
        .rst_n(rst_n),
        .enable(enable),
        .flip(flip),
        .max(max),
        .min(min),
        .direction(direction),
        .out(out)
    );

    // ??Ÿæ?æ?‚é?˜ä¿¡???
    always begin
        #5 clk = ~clk;
    end

    // ??å?‹å?–ä¿¡???
    initial begin
        clk = 0;
        rst_n = 0; // æ¿?æ´»é?ç½®
        enable = 1; // ??Ÿç”¨è¨ˆæ•¸?™¨
        flip = 0; // ä¸ç¿»è½‰æ–¹???
        max = 4; // ??å¤§å??
        min = 0; // ??å°å??

        // ç­‰å?…ä?äº›æ?‚é?˜é?±æ?Ÿä»¥ç¢ºä?å?å?‹å?–å?Œæ??
        #10;

        // ??œé?‰é?ç½®
        rst_n = 1;
    end

    // æ¨¡æ“¬æ¸¬è©¦?”¨ä¾?
    initial begin
        //####### testcase1
        //?•¶??‡åˆ°max min?‡ª??•æ”¹è®Šdirection
        #55;
        
        //####### testcase2
        // enable == 0 ??? ï¼? ä¸æ”¹è®?
        enable = 0;
        #20
        enable = 1;

        //####### testcase3
        // max min change
        max = 10;
        min = 5;
        #50
        rst_n = 0;
        #10
        rst_n = 1;

        // ??‡æ?›ç¿»è½‰è?Šè?Ÿä»¥?”¹è®Šæ–¹???
        //flip = 1;
        //#10;
        //flip = 0;

        // ç­‰å?…ä?äº›æ?‚é?˜é?±æ?Ÿä»¥è§?å¯Ÿç?æ??
        #1000;

        // ??œæ­¢æ¨¡æ“¬
        $finish;
    end

endmodule

