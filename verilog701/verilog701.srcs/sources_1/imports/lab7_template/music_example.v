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
`define ld   32'd147
`define le   32'd165
`define lf   32'd175
`define lg   32'd196
`define la   32'd220
`define lb   32'd247
`define sil   32'd50000000 // slience

module music_example (
	input [11:0] ibeatNum,
	input en,
    input mode,
    input _start,
    input finish,
    input [511:0] key_down,
    input [8:0] last_change,
    input key_valid,
	output reg [31:0] toneL,
    output reg [31:0] toneR
);  
    reg [4:0] i;
    parameter [8:0] KEY_CODES [0:20] = {
        9'b0_0001_0101, // Q (15)
        9'b0_0001_1100, // A (1C)
        9'b0_0001_1010, // Z (1A) 

        9'b0_0001_1101, // W (1D)
        9'b0_0001_1011, // S (1B)
        9'b0_0010_0010, // X (22) 

        9'b0_0010_0100, // E (24)
        9'b0_0010_0011, // D (23)
        9'b0_0010_0001, // C (21)

        9'b0_0010_1101, // R (2D)
        9'b0_0010_1011, // F (2B)
        9'b0_0010_1010, // V (2A) 

        9'b0_0010_1100, // T (2C)
        9'b0_0011_0100, // G (34)
        9'b0_0011_0010, // B (32)

        9'b0_0011_0101, // Y (35)
        9'b0_0011_0011, // H (33)
        9'b0_0011_0001, // N (31)

        9'b0_0011_1100, // U (3C) 
        9'b0_0011_1011, // J (3B) 
        9'b0_0011_1010 // M (3A) 
        // 9'b0_0001_0010  // left shift (12)
    };
    always @* begin
        if(en == 1 && mode == 1 && _start == 0) begin
            case(ibeatNum)
                // --- Measure 1 ---
                12'd0: toneR = `hg;      12'd1: toneR = `hg; // HG (half-beat)
                12'd2: toneR = `hg;      12'd3: toneR = `hg;
                12'd4: toneR = `hg;      12'd5: toneR = `hg;
                12'd6: toneR = `hg;      12'd7: toneR = `hg;
                12'd8: toneR = `he;      12'd9: toneR = `he; // HE (half-beat)
                12'd10: toneR = `he;     12'd11: toneR = `he;
                12'd12: toneR = `he;     12'd13: toneR = `he;
                12'd14: toneR = `he;     12'd15: toneR = `sil; // (Short break for repetitive notes: high E)

                12'd16: toneR = `he;     12'd17: toneR = `he; // HE (one-beat)
                12'd18: toneR = `he;     12'd19: toneR = `he;
                12'd20: toneR = `he;     12'd21: toneR = `he;
                12'd22: toneR = `he;     12'd23: toneR = `he;
                12'd24: toneR = `he;     12'd25: toneR = `he;
                12'd26: toneR = `he;     12'd27: toneR = `he;
                12'd28: toneR = `he;     12'd29: toneR = `he;
                12'd30: toneR = `he;     12'd31: toneR = `he;

                12'd32: toneR = `hf;     12'd33: toneR = `hf; // HF (half-beat)
                12'd34: toneR = `hf;     12'd35: toneR = `hf;
                12'd36: toneR = `hf;     12'd37: toneR = `hf;
                12'd38: toneR = `hf;     12'd39: toneR = `hf;
                12'd40: toneR = `hd;     12'd41: toneR = `hd; // HD (half-beat)
                12'd42: toneR = `hd;     12'd43: toneR = `hd;
                12'd44: toneR = `hd;     12'd45: toneR = `hd;
                12'd46: toneR = `hd;     12'd47: toneR = `sil; // (Short break for repetitive notes: high D)

                12'd48: toneR = `hd;     12'd49: toneR = `hd; // HD (one-beat)
                12'd50: toneR = `hd;     12'd51: toneR = `hd;
                12'd52: toneR = `hd;     12'd53: toneR = `hd;
                12'd54: toneR = `hd;     12'd55: toneR = `hd;
                12'd56: toneR = `hd;     12'd57: toneR = `hd;
                12'd58: toneR = `hd;     12'd59: toneR = `hd;
                12'd60: toneR = `hd;     12'd61: toneR = `hd;
                12'd62: toneR = `hd;     12'd63: toneR = `hd;

                // --- Measure 2 ---
                12'd64: toneR = `hc;     12'd65: toneR = `hc; // HC (half-beat)
                12'd66: toneR = `hc;     12'd67: toneR = `hc;
                12'd68: toneR = `hc;     12'd69: toneR = `hc;
                12'd70: toneR = `hc;     12'd71: toneR = `hc;
                12'd72: toneR = `hd;     12'd73: toneR = `hd; // HD (half-beat)
                12'd74: toneR = `hd;     12'd75: toneR = `hd;
                12'd76: toneR = `hd;     12'd77: toneR = `hd;
                12'd78: toneR = `hd;     12'd79: toneR = `hd;

                12'd80: toneR = `he;     12'd81: toneR = `he; // HE (half-beat)
                12'd82: toneR = `he;     12'd83: toneR = `he;
                12'd84: toneR = `he;     12'd85: toneR = `he;
                12'd86: toneR = `he;     12'd87: toneR = `he;
                12'd88: toneR = `hf;     12'd89: toneR = `hf; // HF (half-beat)
                12'd90: toneR = `hf;     12'd91: toneR = `hf;
                12'd92: toneR = `hf;     12'd93: toneR = `hf;
                12'd94: toneR = `hf;     12'd95: toneR = `hf;

                12'd96: toneR = `hg;     12'd97: toneR = `hg; // HG (half-beat)
                12'd98: toneR = `hg;     12'd99: toneR = `hg;
                12'd100: toneR = `hg;    12'd101: toneR = `hg;
                12'd102: toneR = `hg;    12'd103: toneR = `sil; // (Short break for repetitive notes: high D)
                12'd104: toneR = `hg;    12'd105: toneR = `hg; // HG (half-beat)
                12'd106: toneR = `hg;    12'd107: toneR = `hg;
                12'd108: toneR = `hg;    12'd109: toneR = `hg;
                12'd110: toneR = `hg;    12'd111: toneR = `sil; // (Short break for repetitive notes: high D)

                12'd112: toneR = `hg;    12'd113: toneR = `hg; // HG (one-beat)
                12'd114: toneR = `hg;    12'd115: toneR = `hg;
                12'd116: toneR = `hg;    12'd117: toneR = `hg;
                12'd118: toneR = `hg;    12'd119: toneR = `hg;
                12'd120: toneR = `hg;    12'd121: toneR = `hg;
                12'd122: toneR = `hg;    12'd123: toneR = `hg;
                12'd124: toneR = `hg;    12'd125: toneR = `hg;
                12'd126: toneR = `hg;    12'd127: toneR = `hg;

                // ----Measure 3----
                12'd128: toneR = `hg;    12'd129: toneR = `hg;
                12'd130: toneR = `hg;    12'd131: toneR = `hg;
                12'd132: toneR = `hg;    12'd133: toneR = `hg;
                12'd134: toneR = `hg;    12'd135: toneR = `hg;
                12'd136: toneR = `he;    12'd137: toneR = `he;
                12'd138: toneR = `he;    12'd139: toneR = `he;
                12'd140: toneR = `he;    12'd141: toneR = `he;
                12'd142: toneR = `he;    12'd143: toneR = `sil;

                12'd144: toneR = `he;    12'd145: toneR = `he;
                12'd146: toneR = `he;    12'd147: toneR = `he;
                12'd148: toneR = `he;    12'd149: toneR = `he;
                12'd150: toneR = `he;    12'd151: toneR = `he;
                12'd152: toneR = `he;    12'd153: toneR = `he;
                12'd154: toneR = `he;    12'd155: toneR = `he;
                12'd156: toneR = `he;    12'd157: toneR = `he;
                12'd158: toneR = `he;    12'd159: toneR = `he;

                12'd160: toneR = `hf;    12'd161: toneR = `hf;
                12'd162: toneR = `hf;    12'd163: toneR = `hf;
                12'd164: toneR = `hf;    12'd165: toneR = `hf;
                12'd166: toneR = `hf;    12'd167: toneR = `hf;
                12'd168: toneR = `hd;    12'd169: toneR = `hd;
                12'd170: toneR = `hd;    12'd171: toneR = `hd;
                12'd172: toneR = `hd;    12'd173: toneR = `hd;
                12'd174: toneR = `hd;    12'd175: toneR = `sil;

                12'd176: toneR = `hd;    12'd177: toneR = `hd;
                12'd178: toneR = `hd;    12'd179: toneR = `hd;
                12'd180: toneR = `hd;    12'd181: toneR = `hd;
                12'd182: toneR = `hd;    12'd183: toneR = `hd;
                12'd184: toneR = `hd;    12'd185: toneR = `hd;
                12'd186: toneR = `hd;    12'd187: toneR = `hd;
                12'd188: toneR = `hd;    12'd189: toneR = `hd;
                12'd190: toneR = `hd;    12'd191: toneR = `hd;

                // ----Measure 4----
                12'd192: toneR = `hc;    12'd193: toneR = `hc;
                12'd194: toneR = `hc;    12'd195: toneR = `hc;
                12'd196: toneR = `hc;    12'd197: toneR = `hc;
                12'd198: toneR = `hc;    12'd199: toneR = `hc;
                12'd200: toneR = `he;    12'd201: toneR = `he;
                12'd202: toneR = `he;    12'd203: toneR = `he;
                12'd204: toneR = `he;    12'd205: toneR = `he;
                12'd206: toneR = `he;    12'd207: toneR = `he;

                12'd208: toneR = `hg;    12'd209: toneR = `hg;
                12'd210: toneR = `hg;    12'd211: toneR = `hg;
                12'd212: toneR = `hg;    12'd213: toneR = `hg;
                12'd214: toneR = `hg;    12'd215: toneR = `sil;
                12'd216: toneR = `hg;    12'd217: toneR = `hg;
                12'd218: toneR = `hg;    12'd219: toneR = `hg;
                12'd220: toneR = `hg;    12'd221: toneR = `hg;
                12'd222: toneR = `hg;    12'd223: toneR = `hg;

                12'd224: toneR = `he;    12'd225: toneR = `he;
                12'd226: toneR = `he;    12'd227: toneR = `he;
                12'd228: toneR = `he;    12'd229: toneR = `he;
                12'd230: toneR = `he;    12'd231: toneR = `sil;
                12'd232: toneR = `he;    12'd233: toneR = `he;
                12'd234: toneR = `he;    12'd235: toneR = `he;
                12'd236: toneR = `he;    12'd237: toneR = `he;
                12'd238: toneR = `he;    12'd239: toneR = `sil;

                12'd240: toneR = `he;    12'd241: toneR = `he;
                12'd242: toneR = `he;    12'd243: toneR = `he;
                12'd244: toneR = `he;    12'd245: toneR = `he;
                12'd246: toneR = `he;    12'd247: toneR = `he;
                12'd248: toneR = `he;    12'd249: toneR = `he;
                12'd250: toneR = `he;    12'd251: toneR = `he;
                12'd252: toneR = `he;    12'd253: toneR = `he;
                12'd254: toneR = `he;    12'd255: toneR = `he;

                // ----Measure 5----
                12'd256: toneR = `hd;    12'd257: toneR = `hd;
                12'd258: toneR = `hd;    12'd259: toneR = `hd;
                12'd260: toneR = `hd;    12'd261: toneR = `hd;
                12'd262: toneR = `hd;    12'd263: toneR = `sil;
                12'd264: toneR = `hd;    12'd265: toneR = `hd;
                12'd266: toneR = `hd;    12'd267: toneR = `hd;
                12'd268: toneR = `hd;    12'd269: toneR = `hd;
                12'd270: toneR = `hd;    12'd271: toneR = `sil;

                12'd272: toneR = `hd;    12'd273: toneR = `hd;
                12'd274: toneR = `hd;    12'd275: toneR = `hd;
                12'd276: toneR = `hd;    12'd277: toneR = `hd;
                12'd278: toneR = `hd;    12'd279: toneR = `sil;
                12'd280: toneR = `hd;    12'd281: toneR = `hd;
                12'd282: toneR = `hd;    12'd283: toneR = `hd;
                12'd284: toneR = `hd;    12'd285: toneR = `hd;
                12'd286: toneR = `hd;    12'd287: toneR = `sil;

                12'd288: toneR = `hd;    12'd289: toneR = `hd;
                12'd290: toneR = `hd;    12'd291: toneR = `hd;
                12'd292: toneR = `hd;    12'd293: toneR = `hd;
                12'd294: toneR = `hd;    12'd295: toneR = `hd;
                12'd296: toneR = `he;    12'd297: toneR = `he;
                12'd298: toneR = `he;    12'd299: toneR = `he;
                12'd300: toneR = `he;    12'd301: toneR = `he;
                12'd302: toneR = `he;    12'd303: toneR = `he;

                12'd304: toneR = `hf;    12'd305: toneR = `hf;
                12'd306: toneR = `hf;    12'd307: toneR = `hf;
                12'd308: toneR = `hf;    12'd309: toneR = `hf;
                12'd310: toneR = `hf;    12'd311: toneR = `hf;
                12'd312: toneR = `hf;    12'd313: toneR = `hf;
                12'd314: toneR = `hf;    12'd315: toneR = `hf;
                12'd316: toneR = `hf;    12'd317: toneR = `hf;
                12'd318: toneR = `hf;    12'd319: toneR = `hf;

                // ----Measure 6----
                12'd320: toneR = `he;    12'd321: toneR = `he;
                12'd322: toneR = `he;    12'd323: toneR = `he;
                12'd324: toneR = `he;    12'd325: toneR = `he;
                12'd326: toneR = `he;    12'd327: toneR = `sil;
                12'd328: toneR = `he;    12'd329: toneR = `he;
                12'd330: toneR = `he;    12'd331: toneR = `he;
                12'd332: toneR = `he;    12'd333: toneR = `he;
                12'd334: toneR = `he;    12'd335: toneR = `sil;

                12'd336: toneR = `he;    12'd337: toneR = `he;
                12'd338: toneR = `he;    12'd339: toneR = `he;
                12'd340: toneR = `he;    12'd341: toneR = `he;
                12'd342: toneR = `he;    12'd343: toneR = `sil;
                12'd344: toneR = `he;    12'd345: toneR = `he;
                12'd346: toneR = `he;    12'd347: toneR = `he;
                12'd348: toneR = `he;    12'd349: toneR = `he;
                12'd350: toneR = `he;    12'd351: toneR = `sil;

                12'd352: toneR = `he;    12'd353: toneR = `he;
                12'd354: toneR = `he;    12'd355: toneR = `he;
                12'd356: toneR = `he;    12'd357: toneR = `he;
                12'd358: toneR = `he;    12'd359: toneR = `he;
                12'd360: toneR = `hf;    12'd361: toneR = `hf;
                12'd362: toneR = `hf;    12'd363: toneR = `hf;
                12'd364: toneR = `hf;    12'd365: toneR = `hf;
                12'd366: toneR = `hf;    12'd367: toneR = `hf;

                12'd368: toneR = `hg;    12'd369: toneR = `hg;
                12'd370: toneR = `hg;    12'd371: toneR = `hg;
                12'd372: toneR = `hg;    12'd373: toneR = `hg;
                12'd374: toneR = `hg;    12'd375: toneR = `hg;
                12'd376: toneR = `hg;    12'd377: toneR = `hg;
                12'd378: toneR = `hg;    12'd379: toneR = `hg;
                12'd380: toneR = `hg;    12'd381: toneR = `hg;
                12'd382: toneR = `hg;    12'd383: toneR = `hg;

                // ----Measure 7----
                12'd384: toneR = `hg;    12'd385: toneR = `hg;
                12'd386: toneR = `hg;    12'd387: toneR = `hg;
                12'd388: toneR = `hg;    12'd389: toneR = `hg;
                12'd390: toneR = `hg;    12'd391: toneR = `hg;
                12'd392: toneR = `he;    12'd393: toneR = `he;
                12'd394: toneR = `he;    12'd395: toneR = `he;
                12'd396: toneR = `he;    12'd397: toneR = `he;
                12'd398: toneR = `he;    12'd399: toneR = `sil;

                12'd400: toneR = `he;    12'd401: toneR = `he;
                12'd402: toneR = `he;    12'd403: toneR = `he;
                12'd404: toneR = `he;    12'd405: toneR = `he;
                12'd406: toneR = `he;    12'd407: toneR = `he;
                12'd408: toneR = `he;    12'd409: toneR = `he;
                12'd410: toneR = `he;    12'd411: toneR = `he;
                12'd412: toneR = `he;    12'd413: toneR = `he;
                12'd414: toneR = `he;    12'd415: toneR = `he;

                12'd416: toneR = `hf;    12'd417: toneR = `hf;
                12'd418: toneR = `hf;    12'd419: toneR = `hf;
                12'd420: toneR = `hf;    12'd421: toneR = `hf;
                12'd422: toneR = `hf;    12'd423: toneR = `hf;
                12'd424: toneR = `hd;    12'd425: toneR = `hd;
                12'd426: toneR = `hd;    12'd427: toneR = `hd;
                12'd428: toneR = `hd;    12'd429: toneR = `hd;
                12'd430: toneR = `hd;    12'd431: toneR = `sil;

                12'd432: toneR = `hd;    12'd433: toneR = `hd;
                12'd434: toneR = `hd;    12'd435: toneR = `hd;
                12'd436: toneR = `hd;    12'd437: toneR = `hd;
                12'd438: toneR = `hd;    12'd439: toneR = `hd;
                12'd440: toneR = `hd;    12'd441: toneR = `hd;
                12'd442: toneR = `hd;    12'd443: toneR = `hd;
                12'd444: toneR = `hd;    12'd445: toneR = `hd;
                12'd446: toneR = `hd;    12'd447: toneR = `hd;

                // ----Measure 8----
                12'd448: toneR = `hc;    12'd449: toneR = `hc;
                12'd450: toneR = `hc;    12'd451: toneR = `hc;
                12'd452: toneR = `hc;    12'd453: toneR = `hc;
                12'd454: toneR = `hc;    12'd455: toneR = `hc;
                12'd456: toneR = `he;    12'd457: toneR = `he;
                12'd458: toneR = `he;    12'd459: toneR = `he;
                12'd460: toneR = `he;    12'd461: toneR = `he;
                12'd462: toneR = `he;    12'd463: toneR = `he;

                12'd464: toneR = `hg;    12'd465: toneR = `hg;
                12'd466: toneR = `hg;    12'd467: toneR = `hg;
                12'd468: toneR = `hg;    12'd469: toneR = `hg;
                12'd470: toneR = `hg;    12'd471: toneR = `sil;
                12'd472: toneR = `hg;    12'd473: toneR = `hg;
                12'd474: toneR = `hg;    12'd475: toneR = `hg;
                12'd476: toneR = `hg;    12'd477: toneR = `hg;
                12'd478: toneR = `hg;    12'd479: toneR = `hg;

                12'd480: toneR = `hc;    12'd481: toneR = `hc;
                12'd482: toneR = `hc;    12'd483: toneR = `hc;
                12'd484: toneR = `hc;    12'd485: toneR = `hc;
                12'd486: toneR = `hc;    12'd487: toneR = `hc;
                12'd488: toneR = `hc;    12'd489: toneR = `hc;
                12'd490: toneR = `hc;    12'd491: toneR = `hc;
                12'd492: toneR = `hc;    12'd493: toneR = `hc;
                12'd494: toneR = `hc;    12'd495: toneR = `hc;

                12'd496: toneR = `hc;    12'd497: toneR = `hc;
                12'd498: toneR = `hc;    12'd499: toneR = `hc;
                12'd500: toneR = `hc;    12'd501: toneR = `hc;
                12'd502: toneR = `hc;    12'd503: toneR = `hc;
                12'd504: toneR = `hc;    12'd505: toneR = `hc;
                12'd506: toneR = `hc;    12'd507: toneR = `hc;
                12'd508: toneR = `hc;    12'd509: toneR = `hc;
                12'd510: toneR = `hc;    12'd511: toneR = `hc;

                default: toneR = `sil;
            endcase
        end 
        else if (mode == 0 && finish == 0) begin
            if (key_down[KEY_CODES[0]] == 1) begin
                toneR = `hc;
            end
            else if (key_down[KEY_CODES[1]] == 1) begin
                toneR = `c;
            end
            else if (key_down[KEY_CODES[2]] == 1) begin
                toneR = `lc;
            end
            else if (key_down[KEY_CODES[3]] == 1) begin
                toneR = `hd;
            end
            else if (key_down[KEY_CODES[4]] == 1) begin
                toneR = `d;
            end
            else if (key_down[KEY_CODES[5]] == 1) begin
                toneR = `ld;
            end
            else if (key_down[KEY_CODES[6]] == 1) begin
                toneR = `he;
            end
            else if (key_down[KEY_CODES[7]] == 1) begin
                toneR = `e;
            end
            else if (key_down[KEY_CODES[8]] == 1) begin
                toneR = `le;
            end
            else if (key_down[KEY_CODES[9]] == 1) begin
                toneR = `hf;
            end
            else if (key_down[KEY_CODES[10]] == 1) begin
                toneR = `f;
            end
            else if (key_down[KEY_CODES[11]] == 1) begin
                toneR = `lf;
            end
            else if (key_down[KEY_CODES[12]] == 1) begin
                toneR = `hg;
            end
            else if (key_down[KEY_CODES[13]] == 1) begin
                toneR = `g;
            end
            else if (key_down[KEY_CODES[14]] == 1) begin
                toneR = `lg;
            end
            else if (key_down[KEY_CODES[15]] == 1) begin
                toneR = `ha;
            end
            else if (key_down[KEY_CODES[16]] == 1) begin
                toneR = `a;
            end
            else if (key_down[KEY_CODES[17]] == 1) begin
                toneR = `la;
            end
            else if (key_down[KEY_CODES[18]] == 1) begin
                toneR = `hb;
            end
            else if (key_down[KEY_CODES[19]] == 1) begin
                toneR = `b;
            end
            else if (key_down[KEY_CODES[20]] == 1) begin
                toneR = `lb;
            end
            else begin
                toneR = `sil;
            end
        end
        else begin
            toneR = `sil;
        end
    end
    reg [11:0] temp_beatnum;
    always @(*) begin
        if(en == 1 && mode == 1 && _start == 0)begin
            if (ibeatNum < 128) begin
                case(ibeatNum)
                    12'd0: toneL = `hc;  	12'd1: toneL = `hc; // HC (two-beat)
                    12'd2: toneL = `hc;  	12'd3: toneL = `hc;
                    12'd4: toneL = `hc;	    12'd5: toneL = `hc;
                    12'd6: toneL = `hc;  	12'd7: toneL = `hc;
                    12'd8: toneL = `hc;	    12'd9: toneL = `hc;
                    12'd10: toneL = `hc;	12'd11: toneL = `hc;
                    12'd12: toneL = `hc;	12'd13: toneL = `hc;
                    12'd14: toneL = `hc;	12'd15: toneL = `hc;

                    12'd16: toneL = `hc;	12'd17: toneL = `hc;
                    12'd18: toneL = `hc;	12'd19: toneL = `hc;
                    12'd20: toneL = `hc;	12'd21: toneL = `hc;
                    12'd22: toneL = `hc;	12'd23: toneL = `hc;
                    12'd24: toneL = `hc;	12'd25: toneL = `hc;
                    12'd26: toneL = `hc;	12'd27: toneL = `hc;
                    12'd28: toneL = `hc;	12'd29: toneL = `hc;
                    12'd30: toneL = `hc;	12'd31: toneL = `hc;

                    12'd32: toneL = `g;	    12'd33: toneL = `g; // G (one-beat)
                    12'd34: toneL = `g;	    12'd35: toneL = `g;
                    12'd36: toneL = `g;	    12'd37: toneL = `g;
                    12'd38: toneL = `g;	    12'd39: toneL = `g;
                    12'd40: toneL = `g;	    12'd41: toneL = `g;
                    12'd42: toneL = `g;	    12'd43: toneL = `g;
                    12'd44: toneL = `g;	    12'd45: toneL = `g;
                    12'd46: toneL = `g;	    12'd47: toneL = `g;

                    12'd48: toneL = `b;	    12'd49: toneL = `b; // B (one-beat)
                    12'd50: toneL = `b;	    12'd51: toneL = `b;
                    12'd52: toneL = `b;	    12'd53: toneL = `b;
                    12'd54: toneL = `b;	    12'd55: toneL = `b;
                    12'd56: toneL = `b;	    12'd57: toneL = `b;
                    12'd58: toneL = `b;	    12'd59: toneL = `b;
                    12'd60: toneL = `b;	    12'd61: toneL = `b;
                    12'd62: toneL = `b;	    12'd63: toneL = `b;

                    12'd64: toneL = `hc;	12'd65: toneL = `hc; // HC (two-beat)
                    12'd66: toneL = `hc;    12'd67: toneL = `hc;
                    12'd68: toneL = `hc;	12'd69: toneL = `hc;
                    12'd70: toneL = `hc;	12'd71: toneL = `hc;
                    12'd72: toneL = `hc;	12'd73: toneL = `hc;
                    12'd74: toneL = `hc;	12'd75: toneL = `hc;
                    12'd76: toneL = `hc;	12'd77: toneL = `hc;
                    12'd78: toneL = `hc;	12'd79: toneL = `hc;

                    12'd80: toneL = `hc;	12'd81: toneL = `hc;
                    12'd82: toneL = `hc;    12'd83: toneL = `hc;
                    12'd84: toneL = `hc;    12'd85: toneL = `hc;
                    12'd86: toneL = `hc;    12'd87: toneL = `hc;
                    12'd88: toneL = `hc;    12'd89: toneL = `hc;
                    12'd90: toneL = `hc;    12'd91: toneL = `hc;
                    12'd92: toneL = `hc;    12'd93: toneL = `hc;
                    12'd94: toneL = `hc;    12'd95: toneL = `hc;

                    12'd96: toneL = `g;	    12'd97: toneL = `g; // G (one-beat)
                    12'd98: toneL = `g; 	12'd99: toneL = `g;
                    12'd100: toneL = `g;	12'd101: toneL = `g;
                    12'd102: toneL = `g;	12'd103: toneL = `g;
                    12'd104: toneL = `g;	12'd105: toneL = `g;
                    12'd106: toneL = `g;	12'd107: toneL = `g;
                    12'd108: toneL = `g;	12'd109: toneL = `g;
                    12'd110: toneL = `g;	12'd111: toneL = `g;

                    12'd112: toneL = `b;	12'd113: toneL = `b; // B (one-beat)
                    12'd114: toneL = `b;	12'd115: toneL = `b;
                    12'd116: toneL = `b;	12'd117: toneL = `b;
                    12'd118: toneL = `b;	12'd119: toneL = `b;
                    12'd120: toneL = `b;	12'd121: toneL = `b;
                    12'd122: toneL = `b;	12'd123: toneL = `b;
                    12'd124: toneL = `b;	12'd125: toneL = `b;
                    12'd126: toneL = `b;	12'd127: toneL = `b;

                    default : toneL = `sil;
                endcase
            end
            else if (ibeatNum < 256) begin
                temp_beatnum = ibeatNum - 128;
                case(temp_beatnum)
                    12'd0: toneL = `hc;  	12'd1: toneL = `hc; // HC (two-beat)
                    12'd2: toneL = `hc;  	12'd3: toneL = `hc;
                    12'd4: toneL = `hc;	    12'd5: toneL = `hc;
                    12'd6: toneL = `hc;  	12'd7: toneL = `hc;
                    12'd8: toneL = `hc;	    12'd9: toneL = `hc;
                    12'd10: toneL = `hc;	12'd11: toneL = `hc;
                    12'd12: toneL = `hc;	12'd13: toneL = `hc;
                    12'd14: toneL = `hc;	12'd15: toneL = `hc;

                    12'd16: toneL = `hc;	12'd17: toneL = `hc;
                    12'd18: toneL = `hc;	12'd19: toneL = `hc;
                    12'd20: toneL = `hc;	12'd21: toneL = `hc;
                    12'd22: toneL = `hc;	12'd23: toneL = `hc;
                    12'd24: toneL = `hc;	12'd25: toneL = `hc;
                    12'd26: toneL = `hc;	12'd27: toneL = `hc;
                    12'd28: toneL = `hc;	12'd29: toneL = `hc;
                    12'd30: toneL = `hc;	12'd31: toneL = `hc;

                    12'd32: toneL = `g;	    12'd33: toneL = `g; // G (one-beat)
                    12'd34: toneL = `g;	    12'd35: toneL = `g;
                    12'd36: toneL = `g;	    12'd37: toneL = `g;
                    12'd38: toneL = `g;	    12'd39: toneL = `g;
                    12'd40: toneL = `g;	    12'd41: toneL = `g;
                    12'd42: toneL = `g;	    12'd43: toneL = `g;
                    12'd44: toneL = `g;	    12'd45: toneL = `g;
                    12'd46: toneL = `g;	    12'd47: toneL = `g;

                    12'd48: toneL = `b;	    12'd49: toneL = `b; // B (one-beat)
                    12'd50: toneL = `b;	    12'd51: toneL = `b;
                    12'd52: toneL = `b;	    12'd53: toneL = `b;
                    12'd54: toneL = `b;	    12'd55: toneL = `b;
                    12'd56: toneL = `b;	    12'd57: toneL = `b;
                    12'd58: toneL = `b;	    12'd59: toneL = `b;
                    12'd60: toneL = `b;	    12'd61: toneL = `b;
                    12'd62: toneL = `b;	    12'd63: toneL = `b;

                    12'd64: toneL = `hc;	12'd65: toneL = `hc; // HC (two-beat)
                    12'd66: toneL = `hc;    12'd67: toneL = `hc;
                    12'd68: toneL = `hc;	12'd69: toneL = `hc;
                    12'd70: toneL = `hc;	12'd71: toneL = `hc;
                    12'd72: toneL = `hc;	12'd73: toneL = `hc;
                    12'd74: toneL = `hc;	12'd75: toneL = `hc;
                    12'd76: toneL = `hc;	12'd77: toneL = `hc;
                    12'd78: toneL = `hc;	12'd79: toneL = `hc;

                    12'd80: toneL = `hc;	12'd81: toneL = `hc;
                    12'd82: toneL = `hc;    12'd83: toneL = `hc;
                    12'd84: toneL = `hc;    12'd85: toneL = `hc;
                    12'd86: toneL = `hc;    12'd87: toneL = `hc;
                    12'd88: toneL = `hc;    12'd89: toneL = `hc;
                    12'd90: toneL = `hc;    12'd91: toneL = `hc;
                    12'd92: toneL = `hc;    12'd93: toneL = `hc;
                    12'd94: toneL = `hc;    12'd95: toneL = `hc;

                    12'd96: toneL = `g;	    12'd97: toneL = `g; // G (one-beat)
                    12'd98: toneL = `g; 	12'd99: toneL = `g;
                    12'd100: toneL = `g;	12'd101: toneL = `g;
                    12'd102: toneL = `g;	12'd103: toneL = `g;
                    12'd104: toneL = `g;	12'd105: toneL = `g;
                    12'd106: toneL = `g;	12'd107: toneL = `g;
                    12'd108: toneL = `g;	12'd109: toneL = `g;
                    12'd110: toneL = `g;	12'd111: toneL = `g;

                    12'd112: toneL = `b;	12'd113: toneL = `b; // B (one-beat)
                    12'd114: toneL = `b;	12'd115: toneL = `b;
                    12'd116: toneL = `b;	12'd117: toneL = `b;
                    12'd118: toneL = `b;	12'd119: toneL = `b;
                    12'd120: toneL = `b;	12'd121: toneL = `b;
                    12'd122: toneL = `b;	12'd123: toneL = `b;
                    12'd124: toneL = `b;	12'd125: toneL = `b;
                    12'd126: toneL = `b;	12'd127: toneL = `b;

                    default : toneL = `sil;
                endcase
            end
            else if (ibeatNum < 384) begin
                temp_beatnum = ibeatNum - 256;
                case(temp_beatnum)
                    12'd0: toneL = `hc;  	12'd1: toneL = `hc; // HC (two-beat)
                    12'd2: toneL = `hc;  	12'd3: toneL = `hc;
                    12'd4: toneL = `hc;	    12'd5: toneL = `hc;
                    12'd6: toneL = `hc;  	12'd7: toneL = `hc;
                    12'd8: toneL = `hc;	    12'd9: toneL = `hc;
                    12'd10: toneL = `hc;	12'd11: toneL = `hc;
                    12'd12: toneL = `hc;	12'd13: toneL = `hc;
                    12'd14: toneL = `hc;	12'd15: toneL = `hc;

                    12'd16: toneL = `hc;	12'd17: toneL = `hc;
                    12'd18: toneL = `hc;	12'd19: toneL = `hc;
                    12'd20: toneL = `hc;	12'd21: toneL = `hc;
                    12'd22: toneL = `hc;	12'd23: toneL = `hc;
                    12'd24: toneL = `hc;	12'd25: toneL = `hc;
                    12'd26: toneL = `hc;	12'd27: toneL = `hc;
                    12'd28: toneL = `hc;	12'd29: toneL = `hc;
                    12'd30: toneL = `hc;	12'd31: toneL = `hc;

                    12'd32: toneL = `g;	    12'd33: toneL = `g; // G (one-beat)
                    12'd34: toneL = `g;	    12'd35: toneL = `g;
                    12'd36: toneL = `g;	    12'd37: toneL = `g;
                    12'd38: toneL = `g;	    12'd39: toneL = `g;
                    12'd40: toneL = `g;	    12'd41: toneL = `g;
                    12'd42: toneL = `g;	    12'd43: toneL = `g;
                    12'd44: toneL = `g;	    12'd45: toneL = `g;
                    12'd46: toneL = `g;	    12'd47: toneL = `g;

                    12'd48: toneL = `b;	    12'd49: toneL = `b; // B (one-beat)
                    12'd50: toneL = `b;	    12'd51: toneL = `b;
                    12'd52: toneL = `b;	    12'd53: toneL = `b;
                    12'd54: toneL = `b;	    12'd55: toneL = `b;
                    12'd56: toneL = `b;	    12'd57: toneL = `b;
                    12'd58: toneL = `b;	    12'd59: toneL = `b;
                    12'd60: toneL = `b;	    12'd61: toneL = `b;
                    12'd62: toneL = `b;	    12'd63: toneL = `b;

                    12'd64: toneL = `hc;	12'd65: toneL = `hc; // HC (two-beat)
                    12'd66: toneL = `hc;    12'd67: toneL = `hc;
                    12'd68: toneL = `hc;	12'd69: toneL = `hc;
                    12'd70: toneL = `hc;	12'd71: toneL = `hc;
                    12'd72: toneL = `hc;	12'd73: toneL = `hc;
                    12'd74: toneL = `hc;	12'd75: toneL = `hc;
                    12'd76: toneL = `hc;	12'd77: toneL = `hc;
                    12'd78: toneL = `hc;	12'd79: toneL = `hc;

                    12'd80: toneL = `hc;	12'd81: toneL = `hc;
                    12'd82: toneL = `hc;    12'd83: toneL = `hc;
                    12'd84: toneL = `hc;    12'd85: toneL = `hc;
                    12'd86: toneL = `hc;    12'd87: toneL = `hc;
                    12'd88: toneL = `hc;    12'd89: toneL = `hc;
                    12'd90: toneL = `hc;    12'd91: toneL = `hc;
                    12'd92: toneL = `hc;    12'd93: toneL = `hc;
                    12'd94: toneL = `hc;    12'd95: toneL = `hc;

                    12'd96: toneL = `g;	    12'd97: toneL = `g; // G (one-beat)
                    12'd98: toneL = `g; 	12'd99: toneL = `g;
                    12'd100: toneL = `g;	12'd101: toneL = `g;
                    12'd102: toneL = `g;	12'd103: toneL = `g;
                    12'd104: toneL = `g;	12'd105: toneL = `g;
                    12'd106: toneL = `g;	12'd107: toneL = `g;
                    12'd108: toneL = `g;	12'd109: toneL = `g;
                    12'd110: toneL = `g;	12'd111: toneL = `g;

                    12'd112: toneL = `b;	12'd113: toneL = `b; // B (one-beat)
                    12'd114: toneL = `b;	12'd115: toneL = `b;
                    12'd116: toneL = `b;	12'd117: toneL = `b;
                    12'd118: toneL = `b;	12'd119: toneL = `b;
                    12'd120: toneL = `b;	12'd121: toneL = `b;
                    12'd122: toneL = `b;	12'd123: toneL = `b;
                    12'd124: toneL = `b;	12'd125: toneL = `b;
                    12'd126: toneL = `b;	12'd127: toneL = `b;

                    default : toneL = `sil;
                endcase
            end
            else if (ibeatNum < 512) begin
                temp_beatnum = ibeatNum - 384;
                case(temp_beatnum)
                    12'd0: toneL = `hc;  	12'd1: toneL = `hc; // HC (two-beat)
                    12'd2: toneL = `hc;  	12'd3: toneL = `hc;
                    12'd4: toneL = `hc;	    12'd5: toneL = `hc;
                    12'd6: toneL = `hc;  	12'd7: toneL = `hc;
                    12'd8: toneL = `hc;	    12'd9: toneL = `hc;
                    12'd10: toneL = `hc;	12'd11: toneL = `hc;
                    12'd12: toneL = `hc;	12'd13: toneL = `hc;
                    12'd14: toneL = `hc;	12'd15: toneL = `hc;

                    12'd16: toneL = `hc;	12'd17: toneL = `hc;
                    12'd18: toneL = `hc;	12'd19: toneL = `hc;
                    12'd20: toneL = `hc;	12'd21: toneL = `hc;
                    12'd22: toneL = `hc;	12'd23: toneL = `hc;
                    12'd24: toneL = `hc;	12'd25: toneL = `hc;
                    12'd26: toneL = `hc;	12'd27: toneL = `hc;
                    12'd28: toneL = `hc;	12'd29: toneL = `hc;
                    12'd30: toneL = `hc;	12'd31: toneL = `hc;

                    12'd32: toneL = `g;	    12'd33: toneL = `g; // G (one-beat)
                    12'd34: toneL = `g;	    12'd35: toneL = `g;
                    12'd36: toneL = `g;	    12'd37: toneL = `g;
                    12'd38: toneL = `g;	    12'd39: toneL = `g;
                    12'd40: toneL = `g;	    12'd41: toneL = `g;
                    12'd42: toneL = `g;	    12'd43: toneL = `g;
                    12'd44: toneL = `g;	    12'd45: toneL = `g;
                    12'd46: toneL = `g;	    12'd47: toneL = `g;

                    12'd48: toneL = `b;	    12'd49: toneL = `b; // B (one-beat)
                    12'd50: toneL = `b;	    12'd51: toneL = `b;
                    12'd52: toneL = `b;	    12'd53: toneL = `b;
                    12'd54: toneL = `b;	    12'd55: toneL = `b;
                    12'd56: toneL = `b;	    12'd57: toneL = `b;
                    12'd58: toneL = `b;	    12'd59: toneL = `b;
                    12'd60: toneL = `b;	    12'd61: toneL = `b;
                    12'd62: toneL = `b;	    12'd63: toneL = `b;

                    12'd64: toneL = `hc;	12'd65: toneL = `hc; // HC (two-beat)
                    12'd66: toneL = `hc;    12'd67: toneL = `hc;
                    12'd68: toneL = `hc;	12'd69: toneL = `hc;
                    12'd70: toneL = `hc;	12'd71: toneL = `hc;
                    12'd72: toneL = `hc;	12'd73: toneL = `hc;
                    12'd74: toneL = `hc;	12'd75: toneL = `hc;
                    12'd76: toneL = `hc;	12'd77: toneL = `hc;
                    12'd78: toneL = `hc;	12'd79: toneL = `hc;

                    12'd80: toneL = `hc;	12'd81: toneL = `hc;
                    12'd82: toneL = `hc;    12'd83: toneL = `hc;
                    12'd84: toneL = `hc;    12'd85: toneL = `hc;
                    12'd86: toneL = `hc;    12'd87: toneL = `hc;
                    12'd88: toneL = `hc;    12'd89: toneL = `hc;
                    12'd90: toneL = `hc;    12'd91: toneL = `hc;
                    12'd92: toneL = `hc;    12'd93: toneL = `hc;
                    12'd94: toneL = `hc;    12'd95: toneL = `hc;

                    12'd96: toneL = `g;	    12'd97: toneL = `g; // G (one-beat)
                    12'd98: toneL = `g; 	12'd99: toneL = `g;
                    12'd100: toneL = `g;	12'd101: toneL = `g;
                    12'd102: toneL = `g;	12'd103: toneL = `g;
                    12'd104: toneL = `g;	12'd105: toneL = `g;
                    12'd106: toneL = `g;	12'd107: toneL = `g;
                    12'd108: toneL = `g;	12'd109: toneL = `g;
                    12'd110: toneL = `g;	12'd111: toneL = `g;

                    12'd112: toneL = `b;	12'd113: toneL = `b; // B (one-beat)
                    12'd114: toneL = `b;	12'd115: toneL = `b;
                    12'd116: toneL = `b;	12'd117: toneL = `b;
                    12'd118: toneL = `b;	12'd119: toneL = `b;
                    12'd120: toneL = `b;	12'd121: toneL = `b;
                    12'd122: toneL = `b;	12'd123: toneL = `b;
                    12'd124: toneL = `b;	12'd125: toneL = `b;
                    12'd126: toneL = `b;	12'd127: toneL = `b;

                    default : toneL = `sil;
                endcase
            end
        end
        else begin
            toneL = `sil;
        end
    end
endmodule

module music_example2 (
	input [11:0] ibeatNum,
	input en,
    input mode,
    input [511:0] key_down,
    input [8:0] last_change,
    input key_valid,
    output reg [31:0] toneR
);  
    reg [4:0] i;
    parameter [8:0] KEY_CODES [0:20] = {
        9'b0_0001_0101, // Q (15)
        9'b0_0001_1100, // A (1C)
        9'b0_0001_1010, // Z (1A) 

        9'b0_0001_1101, // W (1D)
        9'b0_0001_1011, // S (1B)
        9'b0_0010_0010, // X (22) 

        9'b0_0010_0100, // E (24)
        9'b0_0010_0011, // D (23)
        9'b0_0010_0001, // C (21)

        9'b0_0010_1101, // R (2D)
        9'b0_0010_1011, // F (2B)
        9'b0_0010_1010, // V (2A) 

        9'b0_0010_1100, // T (2C)
        9'b0_0011_0100, // G (34)
        9'b0_0011_0010, // B (32)

        9'b0_0011_0101, // Y (35)
        9'b0_0011_0011, // H (33)
        9'b0_0011_0001, // N (31)

        9'b0_0011_1100, // U (3C) 
        9'b0_0011_1011, // J (3B) 
        9'b0_0011_1010 // M (3A) 
        // 9'b0_0001_0010  // left shift (12)
    };
    always @* begin
        if(en == 1 && mode == 0) begin
            case(ibeatNum)
                // --- Measure 1 ---
                12'd0: toneR = `hg;      12'd1: toneR = `hg; // HG (half-beat)
                12'd2: toneR = `hg;      12'd3: toneR = `hg;
                12'd4: toneR = `hg;      12'd5: toneR = `hg;
                12'd6: toneR = `hg;      12'd7: toneR = `hg;
                12'd8: toneR = `he;      12'd9: toneR = `he; // HE (half-beat)
                12'd10: toneR = `he;     12'd11: toneR = `he;
                12'd12: toneR = `he;     12'd13: toneR = `he;
                12'd14: toneR = `he;     12'd15: toneR = `sil; // (Short break for repetitive notes: high E)

                12'd16: toneR = `he;     12'd17: toneR = `he; // HE (one-beat)
                12'd18: toneR = `he;     12'd19: toneR = `he;
                12'd20: toneR = `he;     12'd21: toneR = `he;
                12'd22: toneR = `he;     12'd23: toneR = `he;
                12'd24: toneR = `he;     12'd25: toneR = `he;
                12'd26: toneR = `he;     12'd27: toneR = `he;
                12'd28: toneR = `he;     12'd29: toneR = `he;
                12'd30: toneR = `he;     12'd31: toneR = `he;

                12'd32: toneR = `hf;     12'd33: toneR = `hf; // HF (half-beat)
                12'd34: toneR = `hf;     12'd35: toneR = `hf;
                12'd36: toneR = `hf;     12'd37: toneR = `hf;
                12'd38: toneR = `hf;     12'd39: toneR = `hf;
                12'd40: toneR = `hd;     12'd41: toneR = `hd; // HD (half-beat)
                12'd42: toneR = `hd;     12'd43: toneR = `hd;
                12'd44: toneR = `hd;     12'd45: toneR = `hd;
                12'd46: toneR = `hd;     12'd47: toneR = `sil; // (Short break for repetitive notes: high D)

                12'd48: toneR = `hd;     12'd49: toneR = `hd; // HD (one-beat)
                12'd50: toneR = `hd;     12'd51: toneR = `hd;
                12'd52: toneR = `hd;     12'd53: toneR = `hd;
                12'd54: toneR = `hd;     12'd55: toneR = `hd;
                12'd56: toneR = `hd;     12'd57: toneR = `hd;
                12'd58: toneR = `hd;     12'd59: toneR = `hd;
                12'd60: toneR = `hd;     12'd61: toneR = `hd;
                12'd62: toneR = `hd;     12'd63: toneR = `hd;

                // --- Measure 2 ---
                12'd64: toneR = `hc;     12'd65: toneR = `hc; // HC (half-beat)
                12'd66: toneR = `hc;     12'd67: toneR = `hc;
                12'd68: toneR = `hc;     12'd69: toneR = `hc;
                12'd70: toneR = `hc;     12'd71: toneR = `hc;
                12'd72: toneR = `hd;     12'd73: toneR = `hd; // HD (half-beat)
                12'd74: toneR = `hd;     12'd75: toneR = `hd;
                12'd76: toneR = `hd;     12'd77: toneR = `hd;
                12'd78: toneR = `hd;     12'd79: toneR = `hd;

                12'd80: toneR = `he;     12'd81: toneR = `he; // HE (half-beat)
                12'd82: toneR = `he;     12'd83: toneR = `he;
                12'd84: toneR = `he;     12'd85: toneR = `he;
                12'd86: toneR = `he;     12'd87: toneR = `he;
                12'd88: toneR = `hf;     12'd89: toneR = `hf; // HF (half-beat)
                12'd90: toneR = `hf;     12'd91: toneR = `hf;
                12'd92: toneR = `hf;     12'd93: toneR = `hf;
                12'd94: toneR = `hf;     12'd95: toneR = `hf;

                12'd96: toneR = `hg;     12'd97: toneR = `hg; // HG (half-beat)
                12'd98: toneR = `hg;     12'd99: toneR = `hg;
                12'd100: toneR = `hg;    12'd101: toneR = `hg;
                12'd102: toneR = `hg;    12'd103: toneR = `sil; // (Short break for repetitive notes: high D)
                12'd104: toneR = `hg;    12'd105: toneR = `hg; // HG (half-beat)
                12'd106: toneR = `hg;    12'd107: toneR = `hg;
                12'd108: toneR = `hg;    12'd109: toneR = `hg;
                12'd110: toneR = `hg;    12'd111: toneR = `sil; // (Short break for repetitive notes: high D)

                12'd112: toneR = `hg;    12'd113: toneR = `hg; // HG (one-beat)
                12'd114: toneR = `hg;    12'd115: toneR = `hg;
                12'd116: toneR = `hg;    12'd117: toneR = `hg;
                12'd118: toneR = `hg;    12'd119: toneR = `hg;
                12'd120: toneR = `hg;    12'd121: toneR = `hg;
                12'd122: toneR = `hg;    12'd123: toneR = `hg;
                12'd124: toneR = `hg;    12'd125: toneR = `hg;
                12'd126: toneR = `hg;    12'd127: toneR = `hg;

                // ----Measure 3----
                12'd128: toneR = `hg;    12'd129: toneR = `hg;
                12'd130: toneR = `hg;    12'd131: toneR = `hg;
                12'd132: toneR = `hg;    12'd133: toneR = `hg;
                12'd134: toneR = `hg;    12'd135: toneR = `hg;
                12'd136: toneR = `he;    12'd137: toneR = `he;
                12'd138: toneR = `he;    12'd139: toneR = `he;
                12'd140: toneR = `he;    12'd141: toneR = `he;
                12'd142: toneR = `he;    12'd143: toneR = `sil;

                12'd144: toneR = `he;    12'd145: toneR = `he;
                12'd146: toneR = `he;    12'd147: toneR = `he;
                12'd148: toneR = `he;    12'd149: toneR = `he;
                12'd150: toneR = `he;    12'd151: toneR = `he;
                12'd152: toneR = `he;    12'd153: toneR = `he;
                12'd154: toneR = `he;    12'd155: toneR = `he;
                12'd156: toneR = `he;    12'd157: toneR = `he;
                12'd158: toneR = `he;    12'd159: toneR = `he;

                12'd160: toneR = `hf;    12'd161: toneR = `hf;
                12'd162: toneR = `hf;    12'd163: toneR = `hf;
                12'd164: toneR = `hf;    12'd165: toneR = `hf;
                12'd166: toneR = `hf;    12'd167: toneR = `hf;
                12'd168: toneR = `hd;    12'd169: toneR = `hd;
                12'd170: toneR = `hd;    12'd171: toneR = `hd;
                12'd172: toneR = `hd;    12'd173: toneR = `hd;
                12'd174: toneR = `hd;    12'd175: toneR = `sil;

                12'd176: toneR = `hd;    12'd177: toneR = `hd;
                12'd178: toneR = `hd;    12'd179: toneR = `hd;
                12'd180: toneR = `hd;    12'd181: toneR = `hd;
                12'd182: toneR = `hd;    12'd183: toneR = `hd;
                12'd184: toneR = `hd;    12'd185: toneR = `hd;
                12'd186: toneR = `hd;    12'd187: toneR = `hd;
                12'd188: toneR = `hd;    12'd189: toneR = `hd;
                12'd190: toneR = `hd;    12'd191: toneR = `hd;

                // ----Measure 4----
                12'd192: toneR = `hc;    12'd193: toneR = `hc;
                12'd194: toneR = `hc;    12'd195: toneR = `hc;
                12'd196: toneR = `hc;    12'd197: toneR = `hc;
                12'd198: toneR = `hc;    12'd199: toneR = `hc;
                12'd200: toneR = `he;    12'd201: toneR = `he;
                12'd202: toneR = `he;    12'd203: toneR = `he;
                12'd204: toneR = `he;    12'd205: toneR = `he;
                12'd206: toneR = `he;    12'd207: toneR = `he;

                12'd208: toneR = `hg;    12'd209: toneR = `hg;
                12'd210: toneR = `hg;    12'd211: toneR = `hg;
                12'd212: toneR = `hg;    12'd213: toneR = `hg;
                12'd214: toneR = `hg;    12'd215: toneR = `sil;
                12'd216: toneR = `hg;    12'd217: toneR = `hg;
                12'd218: toneR = `hg;    12'd219: toneR = `hg;
                12'd220: toneR = `hg;    12'd221: toneR = `hg;
                12'd222: toneR = `hg;    12'd223: toneR = `hg;

                12'd224: toneR = `he;    12'd225: toneR = `he;
                12'd226: toneR = `he;    12'd227: toneR = `he;
                12'd228: toneR = `he;    12'd229: toneR = `he;
                12'd230: toneR = `he;    12'd231: toneR = `sil;
                12'd232: toneR = `he;    12'd233: toneR = `he;
                12'd234: toneR = `he;    12'd235: toneR = `he;
                12'd236: toneR = `he;    12'd237: toneR = `he;
                12'd238: toneR = `he;    12'd239: toneR = `sil;

                12'd240: toneR = `he;    12'd241: toneR = `he;
                12'd242: toneR = `he;    12'd243: toneR = `he;
                12'd244: toneR = `he;    12'd245: toneR = `he;
                12'd246: toneR = `he;    12'd247: toneR = `he;
                12'd248: toneR = `he;    12'd249: toneR = `he;
                12'd250: toneR = `he;    12'd251: toneR = `he;
                12'd252: toneR = `he;    12'd253: toneR = `he;
                12'd254: toneR = `he;    12'd255: toneR = `he;

                // ----Measure 5----
                12'd256: toneR = `hd;    12'd257: toneR = `hd;
                12'd258: toneR = `hd;    12'd259: toneR = `hd;
                12'd260: toneR = `hd;    12'd261: toneR = `hd;
                12'd262: toneR = `hd;    12'd263: toneR = `sil;
                12'd264: toneR = `hd;    12'd265: toneR = `hd;
                12'd266: toneR = `hd;    12'd267: toneR = `hd;
                12'd268: toneR = `hd;    12'd269: toneR = `hd;
                12'd270: toneR = `hd;    12'd271: toneR = `sil;

                12'd272: toneR = `hd;    12'd273: toneR = `hd;
                12'd274: toneR = `hd;    12'd275: toneR = `hd;
                12'd276: toneR = `hd;    12'd277: toneR = `hd;
                12'd278: toneR = `hd;    12'd279: toneR = `sil;
                12'd280: toneR = `hd;    12'd281: toneR = `hd;
                12'd282: toneR = `hd;    12'd283: toneR = `hd;
                12'd284: toneR = `hd;    12'd285: toneR = `hd;
                12'd286: toneR = `hd;    12'd287: toneR = `sil;

                12'd288: toneR = `hd;    12'd289: toneR = `hd;
                12'd290: toneR = `hd;    12'd291: toneR = `hd;
                12'd292: toneR = `hd;    12'd293: toneR = `hd;
                12'd294: toneR = `hd;    12'd295: toneR = `hd;
                12'd296: toneR = `he;    12'd297: toneR = `he;
                12'd298: toneR = `he;    12'd299: toneR = `he;
                12'd300: toneR = `he;    12'd301: toneR = `he;
                12'd302: toneR = `he;    12'd303: toneR = `he;

                12'd304: toneR = `hf;    12'd305: toneR = `hf;
                12'd306: toneR = `hf;    12'd307: toneR = `hf;
                12'd308: toneR = `hf;    12'd309: toneR = `hf;
                12'd310: toneR = `hf;    12'd311: toneR = `hf;
                12'd312: toneR = `hf;    12'd313: toneR = `hf;
                12'd314: toneR = `hf;    12'd315: toneR = `hf;
                12'd316: toneR = `hf;    12'd317: toneR = `hf;
                12'd318: toneR = `hf;    12'd319: toneR = `hf;

                // ----Measure 6----
                12'd320: toneR = `he;    12'd321: toneR = `he;
                12'd322: toneR = `he;    12'd323: toneR = `he;
                12'd324: toneR = `he;    12'd325: toneR = `he;
                12'd326: toneR = `he;    12'd327: toneR = `sil;
                12'd328: toneR = `he;    12'd329: toneR = `he;
                12'd330: toneR = `he;    12'd331: toneR = `he;
                12'd332: toneR = `he;    12'd333: toneR = `he;
                12'd334: toneR = `he;    12'd335: toneR = `sil;

                12'd336: toneR = `he;    12'd337: toneR = `he;
                12'd338: toneR = `he;    12'd339: toneR = `he;
                12'd340: toneR = `he;    12'd341: toneR = `he;
                12'd342: toneR = `he;    12'd343: toneR = `sil;
                12'd344: toneR = `he;    12'd345: toneR = `he;
                12'd346: toneR = `he;    12'd347: toneR = `he;
                12'd348: toneR = `he;    12'd349: toneR = `he;
                12'd350: toneR = `he;    12'd351: toneR = `sil;

                12'd352: toneR = `he;    12'd353: toneR = `he;
                12'd354: toneR = `he;    12'd355: toneR = `he;
                12'd356: toneR = `he;    12'd357: toneR = `he;
                12'd358: toneR = `he;    12'd359: toneR = `he;
                12'd360: toneR = `hf;    12'd361: toneR = `hf;
                12'd362: toneR = `hf;    12'd363: toneR = `hf;
                12'd364: toneR = `hf;    12'd365: toneR = `hf;
                12'd366: toneR = `hf;    12'd367: toneR = `hf;

                12'd368: toneR = `hg;    12'd369: toneR = `hg;
                12'd370: toneR = `hg;    12'd371: toneR = `hg;
                12'd372: toneR = `hg;    12'd373: toneR = `hg;
                12'd374: toneR = `hg;    12'd375: toneR = `hg;
                12'd376: toneR = `hg;    12'd377: toneR = `hg;
                12'd378: toneR = `hg;    12'd379: toneR = `hg;
                12'd380: toneR = `hg;    12'd381: toneR = `hg;
                12'd382: toneR = `hg;    12'd383: toneR = `hg;

                // ----Measure 7----
                12'd384: toneR = `hg;    12'd385: toneR = `hg;
                12'd386: toneR = `hg;    12'd387: toneR = `hg;
                12'd388: toneR = `hg;    12'd389: toneR = `hg;
                12'd390: toneR = `hg;    12'd391: toneR = `hg;
                12'd392: toneR = `he;    12'd393: toneR = `he;
                12'd394: toneR = `he;    12'd395: toneR = `he;
                12'd396: toneR = `he;    12'd397: toneR = `he;
                12'd398: toneR = `he;    12'd399: toneR = `sil;

                12'd400: toneR = `he;    12'd401: toneR = `he;
                12'd402: toneR = `he;    12'd403: toneR = `he;
                12'd404: toneR = `he;    12'd405: toneR = `he;
                12'd406: toneR = `he;    12'd407: toneR = `he;
                12'd408: toneR = `he;    12'd409: toneR = `he;
                12'd410: toneR = `he;    12'd411: toneR = `he;
                12'd412: toneR = `he;    12'd413: toneR = `he;
                12'd414: toneR = `he;    12'd415: toneR = `he;

                12'd416: toneR = `hf;    12'd417: toneR = `hf;
                12'd418: toneR = `hf;    12'd419: toneR = `hf;
                12'd420: toneR = `hf;    12'd421: toneR = `hf;
                12'd422: toneR = `hf;    12'd423: toneR = `hf;
                12'd424: toneR = `hd;    12'd425: toneR = `hd;
                12'd426: toneR = `hd;    12'd427: toneR = `hd;
                12'd428: toneR = `hd;    12'd429: toneR = `hd;
                12'd430: toneR = `hd;    12'd431: toneR = `sil;

                12'd432: toneR = `hd;    12'd433: toneR = `hd;
                12'd434: toneR = `hd;    12'd435: toneR = `hd;
                12'd436: toneR = `hd;    12'd437: toneR = `hd;
                12'd438: toneR = `hd;    12'd439: toneR = `hd;
                12'd440: toneR = `hd;    12'd441: toneR = `hd;
                12'd442: toneR = `hd;    12'd443: toneR = `hd;
                12'd444: toneR = `hd;    12'd445: toneR = `hd;
                12'd446: toneR = `hd;    12'd447: toneR = `hd;

                // ----Measure 8----
                12'd448: toneR = `hc;    12'd449: toneR = `hc;
                12'd450: toneR = `hc;    12'd451: toneR = `hc;
                12'd452: toneR = `hc;    12'd453: toneR = `hc;
                12'd454: toneR = `hc;    12'd455: toneR = `hc;
                12'd456: toneR = `he;    12'd457: toneR = `he;
                12'd458: toneR = `he;    12'd459: toneR = `he;
                12'd460: toneR = `he;    12'd461: toneR = `he;
                12'd462: toneR = `he;    12'd463: toneR = `he;

                12'd464: toneR = `hg;    12'd465: toneR = `hg;
                12'd466: toneR = `hg;    12'd467: toneR = `hg;
                12'd468: toneR = `hg;    12'd469: toneR = `hg;
                12'd470: toneR = `hg;    12'd471: toneR = `sil;
                12'd472: toneR = `hg;    12'd473: toneR = `hg;
                12'd474: toneR = `hg;    12'd475: toneR = `hg;
                12'd476: toneR = `hg;    12'd477: toneR = `hg;
                12'd478: toneR = `hg;    12'd479: toneR = `hg;

                12'd480: toneR = `hc;    12'd481: toneR = `hc;
                12'd482: toneR = `hc;    12'd483: toneR = `hc;
                12'd484: toneR = `hc;    12'd485: toneR = `hc;
                12'd486: toneR = `hc;    12'd487: toneR = `hc;
                12'd488: toneR = `hc;    12'd489: toneR = `hc;
                12'd490: toneR = `hc;    12'd491: toneR = `hc;
                12'd492: toneR = `hc;    12'd493: toneR = `hc;
                12'd494: toneR = `hc;    12'd495: toneR = `hc;

                12'd496: toneR = `hc;    12'd497: toneR = `hc;
                12'd498: toneR = `hc;    12'd499: toneR = `hc;
                12'd500: toneR = `hc;    12'd501: toneR = `hc;
                12'd502: toneR = `hc;    12'd503: toneR = `hc;
                12'd504: toneR = `hc;    12'd505: toneR = `hc;
                12'd506: toneR = `hc;    12'd507: toneR = `hc;
                12'd508: toneR = `hc;    12'd509: toneR = `hc;
                12'd510: toneR = `hc;    12'd511: toneR = `hc;

                default: toneR = `sil;
            endcase
        end 
        else begin
            toneR = `sil;
        end
    end
endmodule