`define sil   32'd50000000 // slience

`define llc   ((32'd262 >> 1) >> 1)   // C2
`define llcP  ((32'd277 >> 1) >> 1)   // C2#
`define lld   ((32'd294 >> 1) >> 1)   // D2
`define lleM  ((32'd311 >> 1) >> 1)   // E2b
`define lle   ((32'd330 >> 1) >> 1)   // E2
`define llf   ((32'd349 >> 1) >> 1)   // F2
`define llfP  ((32'd370 >> 1) >> 1)   // F2#
`define llg   ((32'd392 >> 1) >> 1)   // G2
`define llgP  ((32'd415 >> 1) >> 1)   // G2#
`define lla   ((32'd440 >> 1) >> 1)   // A2
`define llbM  ((32'd466 >> 1) >> 1)   // B2b
`define llb   ((32'd494 >> 1) >> 1)   // B2

`define lc   (32'd262 >> 1)   // C3
`define lcP  (32'd277 >> 1)   // C3#
`define ld   (32'd294 >> 1)   // D3
`define leM  (32'd311 >> 1)   // E3b
`define le   (32'd330 >> 1)   // E3
`define lf   (32'd349 >> 1)   // F3
`define lfP  (32'd370 >> 1)   // F3#
`define lg   (32'd392 >> 1)   // G3
`define lgP  (32'd415 >> 1)   // G3#
`define la   (32'd440 >> 1)   // A3
`define lbM  (32'd466 >> 1)   // B3b
`define lb   (32'd494 >> 1)   // B3

`define c   32'd262   // C4
`define cP  32'd277   // C4#
`define d   32'd294   // D4
`define eM  32'd311   // E4b
`define e   32'd330   // E4
`define f   32'd349   // F4
`define fP  32'd370   // F4#
`define g   32'd392   // G4
`define gP  32'd415   // G4#
`define a   32'd440   // A4
`define bM  32'd466   // B4b
`define b   32'd494   // B4

`define hc   32'd524   // C5
`define hcP  32'd554   // C5#
`define hd   32'd588   // D5
`define heM  32'd622   // E5b
`define he   32'd660   // E5
`define hf   32'd698   // F5
`define hfP  32'd740   // F5#
`define hg   32'd784   // G5
`define hgP  32'd830   // G5#
`define ha   32'd880   // A5
`define hbM  32'd932   // B5b
`define hb   32'd988   // B5

`define hhc   32'd1048   // C6
`define hhcP  32'd1108   // C6#
`define hhd   32'd1176   // D6
`define hheM  32'd1244   // E6b
`define hhe   32'd1320   // E6
`define hhf   32'd1396   // F6
`define hhfP  32'd1480   // F6#
`define hhg   32'd1568   // G6
`define hhgP  32'd1660   // G6#
`define hha   32'd1760   // A6
`define hhbM  32'd1864   // B6b
`define hhb   32'd1976   // B6

module music_example (
	input [11:0] ibeatNum,
	input en,
	output reg [31:0] toneL,
    output reg [31:0] toneR
);

	/* Il Vento D'oro */
    always @* begin
        if(en == 1) begin
            case(ibeatNum)
                // --- Measure 1 ---
                12'd0: toneR = `hfP;      12'd1: toneR = `hfP; 
                12'd2: toneR = `hfP;      12'd3: toneR = `hfP;
                12'd4: toneR = `hfP;      12'd5: toneR = `hfP;
                12'd6: toneR = `hfP;      12'd7: toneR = `hfP;
                12'd8: toneR = `hfP;      12'd9: toneR = `hfP; 
                12'd10: toneR = `hfP;     12'd11: toneR = `hfP;
                12'd12: toneR = `hfP;     12'd13: toneR = `hfP;
                12'd14: toneR = `hfP;     12'd15: toneR = `hfP; 
                12'd16: toneR = `hfP;     12'd17: toneR = `hfP;
                12'd18: toneR = `hfP;     12'd19: toneR = `hfP;
                12'd20: toneR = `hfP;     12'd21: toneR = `hfP;
                12'd22: toneR = `hfP;     12'd23: toneR = `sil;
                
                12'd24: toneR = `hd;     12'd25: toneR = `hd;
                12'd26: toneR = `hd;     12'd27: toneR = `hd;
                12'd28: toneR = `hd;     12'd29: toneR = `hd;
                12'd30: toneR = `hd;     12'd31: toneR = `hd;

                12'd32: toneR = `hd;     12'd33: toneR = `hd; 
                12'd34: toneR = `hd;     12'd35: toneR = `hd;
                12'd36: toneR = `hd;     12'd37: toneR = `hd;
                12'd38: toneR = `hd;     12'd39: toneR = `hd;
                12'd40: toneR = `hd;     12'd41: toneR = `hd; // HD (half-beat)
                12'd42: toneR = `hd;     12'd43: toneR = `hd;
                12'd44: toneR = `hd;     12'd45: toneR = `hd;
                12'd46: toneR = `hd;     12'd47: toneR = `hd; 
                
                12'd48: toneR = `sil;     12'd49: toneR = `sil; // HD (one-beat)
                12'd50: toneR = `sil;     12'd51: toneR = `sil;
                12'd52: toneR = `sil;     12'd53: toneR = `sil;
                12'd54: toneR = `sil;     12'd55: toneR = `sil;
                
                12'd56: toneR = `hd;     12'd57: toneR = `hd;
                12'd58: toneR = `hd;     12'd59: toneR = `hd;
                
                12'd60: toneR = `he;     12'd61: toneR = `he;
                12'd62: toneR = `he;     12'd63: toneR = `he;

                // --- Measure 2 ---
                12'd64: toneR = `hf;     12'd65: toneR = `hf; 
                12'd66: toneR = `hf;     12'd67: toneR = `hf;
                12'd68: toneR = `hf;     12'd69: toneR = `hf;
                12'd70: toneR = `hf;     12'd71: toneR = `hf;
                12'd72: toneR = `hf;     12'd73: toneR = `hf; 
                12'd74: toneR = `hf;     12'd75: toneR = `hf;
                
                12'd76: toneR = `he;     12'd77: toneR = `he;
                12'd78: toneR = `he;     12'd79: toneR = `he;
                
                12'd80: toneR = `he;     12'd81: toneR = `he; 
                12'd82: toneR = `he;     12'd83: toneR = `he;
                12'd84: toneR = `he;     12'd85: toneR = `he;
                12'd86: toneR = `he;     12'd87: toneR = `he;
                
                12'd88: toneR = `hd;     12'd89: toneR = `hd; 
                12'd90: toneR = `hd;     12'd91: toneR = `hd;
                12'd92: toneR = `hd;     12'd93: toneR = `hd;
                12'd94: toneR = `hd;     12'd95: toneR = `hd;

                12'd96: toneR = `hcP;     12'd97: toneR = `hcP; // HG (half-beat)
                12'd98: toneR = `hcP;     12'd99: toneR = `hcP;
                12'd100: toneR = `hcP;    12'd101: toneR = `hcP;
                12'd102: toneR = `hcP;    12'd103: toneR = `hcP; // (Short break for repetitive notes: high D)
                12'd104: toneR = `hcP;    12'd105: toneR = `hcP; // HG (half-beat)
                12'd106: toneR = `hcP;    12'd107: toneR = `hcP;
                
                12'd108: toneR = `hd;    12'd109: toneR = `hd;
                12'd110: toneR = `hd;    12'd111: toneR = `hd; // (Short break for repetitive notes: high D)

                12'd112: toneR = `hd;    12'd113: toneR = `hd; // HG (one-beat)
                12'd114: toneR = `hd;    12'd115: toneR = `hd;
                12'd116: toneR = `hd;    12'd117: toneR = `hd;
                12'd118: toneR = `hd;    12'd119: toneR = `hd;
                
                12'd120: toneR = `he;    12'd121: toneR = `he;
                12'd122: toneR = `he;    12'd123: toneR = `he;
                12'd124: toneR = `he;    12'd125: toneR = `he;
                12'd126: toneR = `he;    12'd127: toneR = `he;
                
                // --- Measure 3 ---
                12'd128: toneR = `hfP;     12'd129: toneR = `hfP; // HC (half-beat)
                12'd130: toneR = `hfP;     12'd131: toneR = `hfP;
                12'd132: toneR = `hfP;     12'd133: toneR = `hfP;
                12'd134: toneR = `hfP;     12'd135: toneR = `hfP;
                12'd136: toneR = `hfP;     12'd137: toneR = `hfP; // HD (half-beat)
                12'd138: toneR = `hfP;     12'd139: toneR = `hfP;
                12'd140: toneR = `hfP;     12'd141: toneR = `hfP;
                12'd142: toneR = `hfP;     12'd143: toneR = `sil;

                12'd144: toneR = `hfP;     12'd145: toneR = `hfP; // HE (half-beat)
                12'd146: toneR = `hfP;     12'd147: toneR = `hfP;
                12'd148: toneR = `hfP;     12'd149: toneR = `hfP;
                12'd150: toneR = `hfP;     12'd151: toneR = `hfP;
                
                12'd152: toneR = `hb;     12'd153: toneR = `hb; // HF (half-beat)
                12'd154: toneR = `hb;     12'd155: toneR = `hb;
                12'd156: toneR = `hb;     12'd157: toneR = `hb;
                12'd158: toneR = `hb;     12'd159: toneR = `hb;

                12'd160: toneR = `hb;    12'd161: toneR = `hb; // HG (half-beat)
                12'd162: toneR = `hb;    12'd163: toneR = `hb;
                12'd164: toneR = `hb;    12'd165: toneR = `hb;
                12'd166: toneR = `hb;    12'd167: toneR = `hb; // (Short break for repetitive notes: high D)
                12'd168: toneR = `hb;    12'd169: toneR = `hb; // HG (half-beat)
                12'd170: toneR = `hb;    12'd171: toneR = `hb;
                12'd172: toneR = `hb;    12'd173: toneR = `hb;
                12'd174: toneR = `hb;    12'd175: toneR = `sil; // (Short break for repetitive notes: high D)

                12'd176: toneR = `b;    12'd177: toneR = `b; // HG (one-beat)
                12'd178: toneR = `b;    12'd179: toneR = `b;
                12'd180: toneR = `b;    12'd181: toneR = `b;
                12'd182: toneR = `b;    12'd183: toneR = `b;
                
                12'd184: toneR = `hcP;    12'd185: toneR = `hcP;
                12'd186: toneR = `hcP;    12'd187: toneR = `hcP;
                12'd188: toneR = `hcP;    12'd189: toneR = `hcP;
                12'd190: toneR = `hcP;    12'd191: toneR = `hcP;
                
                // --- Measure 4 ---
                12'd192: toneR = `hd;     12'd193: toneR = `hd; // HC (half-beat)
                12'd194: toneR = `hd;     12'd195: toneR = `hd;
                12'd196: toneR = `hd;     12'd197: toneR = `hd;
                12'd198: toneR = `hd;     12'd199: toneR = `hd;
                12'd200: toneR = `hd;     12'd201: toneR = `hd; // HD (half-beat)
                12'd202: toneR = `hd;     12'd203: toneR = `hd;
                
                12'd204: toneR = `he;     12'd205: toneR = `he;
                12'd206: toneR = `he;     12'd207: toneR = `he;

                12'd208: toneR = `he;     12'd209: toneR = `he; // HE (half-beat)
                12'd210: toneR = `he;     12'd211: toneR = `he;
                12'd212: toneR = `he;     12'd213: toneR = `he;
                12'd214: toneR = `he;     12'd215: toneR = `he;
                
                12'd216: toneR = `hd;     12'd217: toneR = `hd; // HF (half-beat)
                12'd218: toneR = `hd;     12'd219: toneR = `hd;
                12'd220: toneR = `hd;     12'd221: toneR = `hd;
                12'd222: toneR = `hd;     12'd223: toneR = `hd;

                12'd224: toneR = `hcP;    12'd225: toneR = `hcP; // HG (half-beat)
                12'd226: toneR = `hcP;    12'd227: toneR = `hcP;
                12'd228: toneR = `hcP;    12'd229: toneR = `hcP;
                12'd230: toneR = `hcP;    12'd231: toneR = `hcP; // (Short break for repetitive notes: high D)
                12'd232: toneR = `hcP;    12'd233: toneR = `hcP; // HG (half-beat)
                12'd234: toneR = `hcP;    12'd235: toneR = `hcP;
                
                12'd236: toneR = `ha;    12'd237: toneR = `ha;
                12'd238: toneR = `ha;    12'd239: toneR = `ha; // (Short break for repetitive notes: high D)

                12'd240: toneR = `ha;    12'd241: toneR = `ha; // HG (one-beat)
                12'd242: toneR = `ha;    12'd243: toneR = `ha;
                12'd244: toneR = `ha;    12'd245: toneR = `ha;
                12'd246: toneR = `ha;    12'd247: toneR = `ha;
                
                12'd248: toneR = `hg;    12'd249: toneR = `hg;
                12'd250: toneR = `hg;    12'd251: toneR = `hg;
                12'd252: toneR = `hg;    12'd253: toneR = `hg;
                12'd254: toneR = `hg;    12'd255: toneR = `hg;
                
                // --- Measure 5---
                12'd256: toneR = `hfP;     12'd257: toneR = `hfP; // HC (half-beat)
                12'd258: toneR = `hfP;     12'd259: toneR = `hfP;
                12'd260: toneR = `hfP;     12'd261: toneR = `hfP;
                12'd262: toneR = `hfP;     12'd263: toneR = `hfP;
                12'd264: toneR = `hfP;     12'd265: toneR = `hfP; // HD (half-beat)
                12'd266: toneR = `hfP;     12'd267: toneR = `hfP;
                12'd268: toneR = `hfP;     12'd269: toneR = `hfP;
                12'd270: toneR = `hfP;     12'd271: toneR = `hfP;
                12'd272: toneR = `hfP;     12'd273: toneR = `hfP; // HE (half-beat)
                12'd274: toneR = `hfP;     12'd275: toneR = `hfP;
                12'd276: toneR = `hfP;     12'd277: toneR = `hfP;
                12'd278: toneR = `hfP;     12'd279: toneR = `hfP;
                
                12'd280: toneR = `hd;     12'd281: toneR = `hd; // HF (half-beat)
                12'd282: toneR = `hd;     12'd283: toneR = `hd;
                12'd284: toneR = `hd;     12'd285: toneR = `hd;
                12'd286: toneR = `hd;     12'd287: toneR = `hd;

                12'd288: toneR = `hd;    12'd289: toneR = `hd; // HG (half-beat)
                12'd290: toneR = `hd;    12'd291: toneR = `hd;
                12'd292: toneR = `hd;    12'd293: toneR = `hd;
                12'd294: toneR = `hd;    12'd295: toneR = `hd; // (Short break for repetitive notes: high D)
                12'd296: toneR = `hd;    12'd297: toneR = `hd; // HG (half-beat)
                12'd298: toneR = `hd;    12'd299: toneR = `hd;
                12'd300: toneR = `hd;    12'd301: toneR = `hd;
                12'd302: toneR = `hd;    12'd303: toneR = `hd; // (Short break for repetitive notes: high D)

                12'd304: toneR = `sil;    12'd305: toneR = `sil; // HG (one-beat)
                12'd306: toneR = `sil;    12'd307: toneR = `sil;
                12'd308: toneR = `sil;    12'd309: toneR = `sil;
                12'd310: toneR = `sil;    12'd311: toneR = `sil;
                
                12'd312: toneR = `hd;    12'd313: toneR = `hd;
                12'd314: toneR = `hd;    12'd315: toneR = `hd;
                
                12'd316: toneR = `he;    12'd317: toneR = `he;
                12'd318: toneR = `he;    12'd319: toneR = `he;
                
                // --- Measure 6 ---
                12'd320: toneR = `hf;     12'd321: toneR = `hf; // HC (half-beat)
                12'd322: toneR = `hf;     12'd323: toneR = `hf;
                12'd324: toneR = `hf;     12'd325: toneR = `hf;
                12'd326: toneR = `hf;     12'd327: toneR = `hf;
                12'd328: toneR = `hf;     12'd329: toneR = `hf; // HD (half-beat)
                12'd330: toneR = `hf;     12'd331: toneR = `hf;
                
                12'd332: toneR = `he;     12'd333: toneR = `he;
                12'd334: toneR = `he;     12'd335: toneR = `he;
                
                12'd336: toneR = `he;     12'd337: toneR = `he; // HE (half-beat)
                12'd338: toneR = `he;     12'd339: toneR = `he;
                12'd340: toneR = `he;     12'd341: toneR = `he;
                12'd342: toneR = `he;     12'd343: toneR = `he;
                
                12'd344: toneR = `hd;     12'd345: toneR = `hd; // HF (half-beat)
                12'd346: toneR = `hd;     12'd347: toneR = `hd;
                12'd348: toneR = `hd;     12'd349: toneR = `hd;
                12'd350: toneR = `hd;     12'd351: toneR = `hd;

                12'd352: toneR = `hcP;    12'd353: toneR = `hcP; // HG (half-beat)
                12'd354: toneR = `hcP;    12'd355: toneR = `hcP;
                12'd356: toneR = `hcP;    12'd357: toneR = `hcP;
                12'd358: toneR = `hcP;    12'd359: toneR = `hcP; // (Short break for repetitive notes: high D)
                12'd360: toneR = `hcP;    12'd361: toneR = `hcP; // HG (half-beat)
                12'd362: toneR = `hcP;    12'd363: toneR = `hcP;
                
                12'd364: toneR = `hd;    12'd365: toneR = `hd;
                12'd366: toneR = `hd;    12'd367: toneR = `hd; // (Short break for repetitive notes: high D)

                12'd368: toneR = `hd;    12'd369: toneR = `hd; // HG (one-beat)
                12'd370: toneR = `hd;    12'd371: toneR = `hd;
                12'd372: toneR = `hd;    12'd373: toneR = `hd;
                12'd374: toneR = `hd;    12'd375: toneR = `hd;
                
                12'd376: toneR = `he;    12'd377: toneR = `he;
                12'd378: toneR = `he;    12'd379: toneR = `he;
                12'd380: toneR = `he;    12'd381: toneR = `he;
                12'd382: toneR = `he;    12'd383: toneR = `he;
                
                // --- Measure 7 ---
                12'd384: toneR = `hfP;     12'd385: toneR = `hfP; // HC (half-beat)
                12'd386: toneR = `hfP;     12'd387: toneR = `hfP;
                12'd388: toneR = `hfP;     12'd389: toneR = `hfP;
                12'd390: toneR = `hfP;     12'd391: toneR = `hfP;
                12'd392: toneR = `hfP;     12'd393: toneR = `hfP; // HD (half-beat)
                12'd394: toneR = `hfP;     12'd395: toneR = `hfP;
                12'd396: toneR = `hfP;     12'd397: toneR = `hfP;
                12'd398: toneR = `hfP;     12'd399: toneR = `sil;
                
                12'd400: toneR = `hfP;     12'd401: toneR = `hfP; // HE (half-beat)
                12'd402: toneR = `hfP;     12'd403: toneR = `hfP;
                12'd404: toneR = `hfP;     12'd405: toneR = `hfP;
                12'd406: toneR = `hfP;     12'd407: toneR = `hfP;
                
                12'd408: toneR = `hb;     12'd409: toneR = `hb; // HF (half-beat)
                12'd410: toneR = `hb;     12'd411: toneR = `hb;
                12'd412: toneR = `hb;     12'd413: toneR = `hb;
                12'd414: toneR = `hb;     12'd415: toneR = `hb;

                12'd416: toneR = `hb;    12'd417: toneR = `hb; // HG (half-beat)
                12'd418: toneR = `hb;    12'd419: toneR = `hb;
                12'd420: toneR = `hb;    12'd421: toneR = `hb;
                12'd422: toneR = `hb;    12'd423: toneR = `hb; // (Short break for repetitive notes: high D)
                12'd424: toneR = `hb;    12'd425: toneR = `hb; // HG (half-beat)
                12'd426: toneR = `hb;    12'd427: toneR = `hb;
                12'd428: toneR = `hb;    12'd429: toneR = `hb;
                12'd430: toneR = `hb;    12'd431: toneR = `sil; // (Short break for repetitive notes: high D)

                12'd432: toneR = `hb;    12'd433: toneR = `hb; // HG (one-beat)
                12'd434: toneR = `hb;    12'd435: toneR = `hb;
                12'd436: toneR = `hb;    12'd437: toneR = `hb;
                12'd438: toneR = `hb;    12'd439: toneR = `hb;
                
                12'd440: toneR = `hhcP;    12'd441: toneR = `hhcP;
                12'd442: toneR = `hhcP;    12'd443: toneR = `hhcP;
                12'd444: toneR = `hhcP;    12'd445: toneR = `hhcP;
                12'd446: toneR = `hhcP;    12'd447: toneR = `hhcP;
                
                // --- Measure 8 ---
                12'd448: toneR = `hhd;     12'd449: toneR = `hhd; // HC (half-beat)
                12'd450: toneR = `hhd;     12'd451: toneR = `hhd;
                12'd452: toneR = `hhd;     12'd453: toneR = `hhd;
                12'd454: toneR = `hhd;     12'd455: toneR = `hhd;
                12'd456: toneR = `hhd;     12'd457: toneR = `hhd; // HD (half-beat)
                12'd458: toneR = `hhd;     12'd459: toneR = `hhd;
                
                12'd460: toneR = `hg;     12'd461: toneR = `hg;
                12'd462: toneR = `hg;     12'd463: toneR = `hg;
                
                12'd464: toneR = `hg;     12'd465: toneR = `hg; // HE (half-beat)
                12'd466: toneR = `hg;     12'd467: toneR = `hg;
                12'd468: toneR = `hg;     12'd469: toneR = `hg;
                12'd470: toneR = `hg;     12'd471: toneR = `hg;
                
                12'd472: toneR = `hfP;     12'd473: toneR = `hfP; // HF (half-beat)
                12'd474: toneR = `hfP;     12'd475: toneR = `hfP;
                12'd476: toneR = `hfP;     12'd477: toneR = `hfP;
                12'd478: toneR = `hfP;     12'd479: toneR = `sil;

                12'd480: toneR = `hf;    12'd481: toneR = `hf; // HG (half-beat)
                12'd482: toneR = `hf;    12'd483: toneR = `hf;
                12'd484: toneR = `hf;    12'd485: toneR = `hf;
                12'd486: toneR = `hf;    12'd487: toneR = `hf; // (Short break for repetitive notes: high D)
                12'd488: toneR = `hf;    12'd489: toneR = `hf; // HG (half-beat)
                12'd490: toneR = `hf;    12'd491: toneR = `hf;
                
                12'd492: toneR = `hhd;    12'd493: toneR = `hhd;
                12'd494: toneR = `hhd;    12'd495: toneR = `hhd; // (Short break for repetitive notes: high D)

                12'd496: toneR = `hhd;    12'd497: toneR = `hhd; // HG (one-beat)
                12'd498: toneR = `hhd;    12'd499: toneR = `hhd;
                12'd500: toneR = `hhd;    12'd501: toneR = `hhd;
                12'd502: toneR = `hhd;    12'd503: toneR = `hhd;
                
                12'd504: toneR = `hhe;    12'd505: toneR = `hhe;
                12'd506: toneR = `hhe;    12'd507: toneR = `hhe;
                12'd508: toneR = `hhe;    12'd509: toneR = `hhe;
                12'd510: toneR = `hhe;    12'd511: toneR = `hhe;
                
                default: toneR = `sil;
            endcase
        end else begin
            toneR = `sil;
        end
    end

    always @(*) begin
        if(en == 1)begin
            case(ibeatNum)
                // --- Measure 1 ---
                12'd0: toneL = `llb;  	12'd1: toneL = `llb; // HC (two-beat)
                12'd2: toneL = `llb;  	12'd3: toneL = `llb;
                12'd4: toneL = `llb;	    12'd5: toneL = `llb;
                12'd6: toneL = `llb;  	12'd7: toneL = `llb;
                12'd8: toneL = `llb;	    12'd9: toneL = `llb;
                12'd10: toneL = `llb;	12'd11: toneL = `llb;
                12'd12: toneL = `llb;	12'd13: toneL = `llb;
                12'd14: toneL = `llb;	12'd15: toneL = `llb;
                12'd16: toneL = `llb;	12'd17: toneL = `llb;
                12'd18: toneL = `llb;	12'd19: toneL = `llb;
                12'd20: toneL = `llb;	12'd21: toneL = `llb;
                12'd22: toneL = `llb;	12'd23: toneL = `llb;
                
                12'd24: toneL = `llgP;	12'd25: toneL = `llgP;
                12'd26: toneL = `llgP;	12'd27: toneL = `llgP;
                12'd28: toneL = `llgP;	12'd29: toneL = `llgP;
                12'd30: toneL = `llgP;	12'd31: toneL = `sil;

                12'd32: toneL = `llgP;	    12'd33: toneL = `llgP; // G (one-beat)
                12'd34: toneL = `llgP;	    12'd35: toneL = `llgP;
                12'd36: toneL = `llgP;	    12'd37: toneL = `llgP;
                12'd38: toneL = `llgP;	    12'd39: toneL = `llgP;
                12'd40: toneL = `llgP;	    12'd41: toneL = `llgP;
                12'd42: toneL = `llgP;	    12'd43: toneL = `llgP;
                12'd44: toneL = `llgP;	    12'd45: toneL = `llgP;
                12'd46: toneL = `llgP;	    12'd47: toneL = `llgP;
                12'd48: toneL = `llgP;	    12'd49: toneL = `llgP; // B (one-beat)
                12'd50: toneL = `llgP;	    12'd51: toneL = `llgP;
                12'd52: toneL = `llgP;	    12'd53: toneL = `llgP;
                12'd54: toneL = `llgP;	    12'd55: toneL = `llgP;
                12'd56: toneL = `llgP;	    12'd57: toneL = `llgP;
                12'd58: toneL = `llgP;	    12'd59: toneL = `llgP;
                12'd60: toneL = `llgP;	    12'd61: toneL = `llgP;
                12'd62: toneL = `llgP;	    12'd63: toneL = `llgP;

                // --- Measure 2 ---
                12'd64: toneL = `lcP;	 12'd65: toneL = `lcP; // HC (two-beat)
                12'd66: toneL = `lcP;    12'd67: toneL = `lcP;
                12'd68: toneL = `lcP;	 12'd69: toneL = `lcP;
                12'd70: toneL = `lcP;	 12'd71: toneL = `lcP;
                12'd72: toneL = `lcP;	 12'd73: toneL = `lcP;
                12'd74: toneL = `lcP;	 12'd75: toneL = `lcP;
                12'd76: toneL = `lcP;	 12'd77: toneL = `lcP;
                12'd78: toneL = `lcP;	 12'd79: toneL = `lcP;
                12'd80: toneL = `lcP;	 12'd81: toneL = `lcP;
                12'd82: toneL = `lcP;    12'd83: toneL = `lcP;
                12'd84: toneL = `lcP;    12'd85: toneL = `lcP;
                12'd86: toneL = `lcP;    12'd87: toneL = `lcP;
                12'd88: toneL = `lcP;    12'd89: toneL = `lcP;
                12'd90: toneL = `lcP;    12'd91: toneL = `lcP;
                12'd92: toneL = `lcP;    12'd93: toneL = `lcP;
                12'd94: toneL = `lcP;    12'd95: toneL = `lcP;

                12'd96: toneL = `llfP;	    12'd97: toneL = `llfP; // G (one-beat)
                12'd98: toneL = `llfP; 	    12'd99: toneL = `llfP;
                12'd100: toneL = `llfP;	    12'd101: toneL = `llfP;
                12'd102: toneL = `llfP;	    12'd103: toneL = `llfP;
                12'd104: toneL = `llfP;	    12'd105: toneL = `llfP;
                12'd106: toneL = `llfP;	    12'd107: toneL = `llfP;
                12'd108: toneL = `llfP;	    12'd109: toneL = `llfP;
                12'd110: toneL = `llfP;	    12'd111: toneL = `llfP;
                12'd112: toneL = `llfP;	    12'd113: toneL = `llfP; // B (one-beat)
                12'd114: toneL = `llfP;	    12'd115: toneL = `llfP;
                12'd116: toneL = `llfP;	    12'd117: toneL = `llfP;
                12'd118: toneL = `llfP;	    12'd119: toneL = `llfP;
                12'd120: toneL = `llfP;	    12'd121: toneL = `llfP;
                12'd122: toneL = `llfP;	    12'd123: toneL = `llfP;
                12'd124: toneL = `llfP;	    12'd125: toneL = `llfP;
                12'd126: toneL = `llfP;	    12'd127: toneL = `llfP;
                
                // --- Measure 3 ---
                12'd128: toneL = `llb;     12'd129: toneL = `llb; // HC (half-beat)
                12'd130: toneL = `llb;     12'd131: toneL = `llb;
                12'd132: toneL = `llb;     12'd133: toneL = `llb;
                12'd134: toneL = `llb;     12'd135: toneL = `llb;
                12'd136: toneL = `llb;     12'd137: toneL = `llb; // HD (half-beat)
                12'd138: toneL = `llb;     12'd139: toneL = `llb;
                12'd140: toneL = `llb;     12'd141: toneL = `llb;
                12'd142: toneL = `llb;     12'd143: toneL = `llb;
                12'd144: toneL = `llb;     12'd145: toneL = `llb; // HE (half-beat)
                12'd146: toneL = `llb;     12'd147: toneL = `llb;
                12'd148: toneL = `llb;     12'd149: toneL = `llb;
                12'd150: toneL = `llb;     12'd151: toneL = `llb;
                
                12'd152: toneL = `llgP;     12'd153: toneL = `llgP; // HF (half-beat)
                12'd154: toneL = `llgP;     12'd155: toneL = `llgP;
                12'd156: toneL = `llgP;     12'd157: toneL = `llgP;
                12'd158: toneL = `llgP;     12'd159: toneL = `sil;

                12'd160: toneL = `llgP;    12'd161: toneL = `llgP; // HG (half-beat)
                12'd162: toneL = `llgP;    12'd163: toneL = `llgP;
                12'd164: toneL = `llgP;    12'd165: toneL = `llgP;
                12'd166: toneL = `llgP;    12'd167: toneL = `llgP; // (Short break for repetitive notes: high D)
                12'd168: toneL = `llgP;    12'd169: toneL = `llgP; // HG (half-beat)
                12'd170: toneL = `llgP;    12'd171: toneL = `llgP;
                12'd172: toneL = `llgP;    12'd173: toneL = `llgP;
                12'd174: toneL = `llgP;    12'd175: toneL = `llgP; // (Short break for repetitive notes: high D)
                12'd176: toneL = `llgP;    12'd177: toneL = `llgP; // HG (one-beat)
                12'd178: toneL = `llgP;    12'd179: toneL = `llgP;
                12'd180: toneL = `llgP;    12'd181: toneL = `llgP;
                12'd182: toneL = `llgP;    12'd183: toneL = `llgP;
                12'd184: toneL = `llgP;    12'd185: toneL = `llgP;
                12'd186: toneL = `llgP;    12'd187: toneL = `llgP;
                12'd188: toneL = `llgP;    12'd189: toneL = `llgP;
                12'd190: toneL = `llgP;    12'd191: toneL = `llgP;
                
                // --- Measure 4 ---
                12'd192: toneL = `lcP;     12'd193: toneL = `lcP; // HC (half-beat)
                12'd194: toneL = `lcP;     12'd195: toneL = `lcP;
                12'd196: toneL = `lcP;     12'd197: toneL = `lcP;
                12'd198: toneL = `lcP;     12'd199: toneL = `lcP;
                12'd200: toneL = `lcP;     12'd201: toneL = `lcP; // HD (half-beat)
                12'd202: toneL = `lcP;     12'd203: toneL = `lcP;
                12'd204: toneL = `lcP;     12'd205: toneL = `lcP;
                12'd206: toneL = `lcP;     12'd207: toneL = `lcP;
                12'd208: toneL = `lcP;     12'd209: toneL = `lcP; // HE (half-beat)
                12'd210: toneL = `lcP;     12'd211: toneL = `lcP;
                12'd212: toneL = `lcP;     12'd213: toneL = `lcP;
                12'd214: toneL = `lcP;     12'd215: toneL = `lcP;
                12'd216: toneL = `lcP;     12'd217: toneL = `lcP; // HF (half-beat)
                12'd218: toneL = `lcP;     12'd219: toneL = `lcP;
                12'd220: toneL = `lcP;     12'd221: toneL = `lcP;
                12'd222: toneL = `lcP;     12'd223: toneL = `lcP;

                12'd224: toneL = `llfP;    12'd225: toneL = `llfP; // HG (half-beat)
                12'd226: toneL = `llfP;    12'd227: toneL = `llfP;
                12'd228: toneL = `llfP;    12'd229: toneL = `llfP;
                12'd230: toneL = `llfP;    12'd231: toneL = `llfP; // (Short break for repetitive notes: high D)
                12'd232: toneL = `llfP;    12'd233: toneL = `llfP; // HG (half-beat)
                12'd234: toneL = `llfP;    12'd235: toneL = `llfP;
                12'd236: toneL = `llfP;    12'd237: toneL = `llfP;
                12'd238: toneL = `llfP;    12'd239: toneL = `llfP; 
                12'd240: toneL = `llfP;    12'd241: toneL = `llfP; // HG (one-beat)
                12'd242: toneL = `llfP;    12'd243: toneL = `llfP;
                12'd244: toneL = `llfP;    12'd245: toneL = `llfP;
                12'd246: toneL = `llfP;    12'd247: toneL = `llfP;
                12'd248: toneL = `llfP;    12'd249: toneL = `llfP;
                12'd250: toneL = `llfP;    12'd251: toneL = `llfP;
                12'd252: toneL = `llfP;    12'd253: toneL = `llfP;
                12'd254: toneL = `llfP;    12'd255: toneL = `llfP;
                
                // --- Measure 5---
                12'd256: toneL = `llb;     12'd257: toneL = `llb; // HC (half-beat)
                12'd258: toneL = `llb;     12'd259: toneL = `llb;
                12'd260: toneL = `llb;     12'd261: toneL = `llb;
                12'd262: toneL = `llb;     12'd263: toneL = `llb;
                12'd264: toneL = `llb;     12'd265: toneL = `llb; // HD (half-beat)
                12'd266: toneL = `llb;     12'd267: toneL = `llb;
                12'd268: toneL = `llb;     12'd269: toneL = `llb;
                12'd270: toneL = `llb;     12'd271: toneL = `sil;
                
                12'd272: toneL = `llb;     12'd273: toneL = `llb; // HE (half-beat)
                12'd274: toneL = `llb;     12'd275: toneL = `llb;
                12'd276: toneL = `llb;     12'd277: toneL = `llb;
                12'd278: toneL = `llb;     12'd279: toneL = `llb;
                
                12'd280: toneL = `llgP;     12'd281: toneL = `llgP; // HF (half-beat)
                12'd282: toneL = `llgP;     12'd283: toneL = `llgP;
                12'd284: toneL = `llgP;     12'd285: toneL = `llgP;
                12'd286: toneL = `llgP;     12'd287: toneL = `sil;

                12'd288: toneL = `llgP;    12'd289: toneL = `llgP; // HG (half-beat)
                12'd290: toneL = `llgP;    12'd291: toneL = `llgP;
                12'd292: toneL = `llgP;    12'd293: toneL = `llgP;
                12'd294: toneL = `llgP;    12'd295: toneL = `llgP; // (Short break for repetitive notes: high D)
                12'd296: toneL = `llgP;    12'd297: toneL = `llgP; // HG (half-beat)
                12'd298: toneL = `llgP;    12'd299: toneL = `llgP;
                12'd300: toneL = `llgP;    12'd301: toneL = `llgP;
                12'd302: toneL = `llgP;    12'd303: toneL = `sil; // (Short break for repetitive notes: high D)

                12'd304: toneL = `llgP;    12'd305: toneL = `llgP; // HG (one-beat)
                12'd306: toneL = `llgP;    12'd307: toneL = `llgP;
                12'd308: toneL = `llgP;    12'd309: toneL = `llgP;
                12'd310: toneL = `llgP;    12'd311: toneL = `llgP;
                12'd312: toneL = `llgP;    12'd313: toneL = `llgP;
                12'd314: toneL = `llgP;    12'd315: toneL = `llgP;
                12'd316: toneL = `llgP;    12'd317: toneL = `llgP;
                12'd318: toneL = `llgP;    12'd319: toneL = `llgP;
                
                // --- Measure 6 ---
                12'd320: toneL = `lcP;     12'd321: toneL = `lcP; // HC (half-beat)
                12'd322: toneL = `lcP;     12'd323: toneL = `lcP;
                12'd324: toneL = `lcP;     12'd325: toneL = `lcP;
                12'd326: toneL = `lcP;     12'd327: toneL = `lcP;
                12'd328: toneL = `lcP;     12'd329: toneL = `lcP; // HD (half-beat)
                12'd330: toneL = `lcP;     12'd331: toneL = `lcP;
                12'd332: toneL = `lcP;     12'd333: toneL = `lcP;
                12'd334: toneL = `lcP;     12'd335: toneL = `sil;
                
                12'd336: toneL = `lcP;     12'd337: toneL = `lcP; // HE (half-beat)
                12'd338: toneL = `lcP;     12'd339: toneL = `lcP;
                12'd340: toneL = `lcP;     12'd341: toneL = `lcP;
                12'd342: toneL = `lcP;     12'd343: toneL = `lcP;
                12'd344: toneL = `lcP;     12'd345: toneL = `lcP; // HF (half-beat)
                12'd346: toneL = `lcP;     12'd347: toneL = `lcP;
                12'd348: toneL = `lcP;     12'd349: toneL = `lcP;
                12'd350: toneL = `lcP;     12'd351: toneL = `sil;

                12'd352: toneL = `llfP;    12'd353: toneL = `llfP; // HG (half-beat)
                12'd354: toneL = `llfP;    12'd355: toneL = `llfP;
                12'd356: toneL = `llfP;    12'd357: toneL = `llfP;
                12'd358: toneL = `llfP;    12'd359: toneL = `llfP; // (Short break for repetitive notes: high D)
                12'd360: toneL = `llfP;    12'd361: toneL = `llfP; // HG (half-beat)
                12'd362: toneL = `llfP;    12'd363: toneL = `llfP;
                12'd364: toneL = `llfP;    12'd365: toneL = `llfP;
                12'd366: toneL = `llfP;    12'd367: toneL = `sil; // (Short break for repetitive notes: high D)

                12'd368: toneL = `llfP;    12'd369: toneL = `llfP; // HG (one-beat)
                12'd370: toneL = `llfP;    12'd371: toneL = `llfP;
                12'd372: toneL = `llfP;    12'd373: toneL = `llfP;
                12'd374: toneL = `llfP;    12'd375: toneL = `llfP;
                12'd376: toneL = `llfP;    12'd377: toneL = `llfP;
                12'd378: toneL = `llfP;    12'd379: toneL = `llfP;
                12'd380: toneL = `llfP;    12'd381: toneL = `llfP;
                12'd382: toneL = `llfP;    12'd383: toneL = `sil;
                
                // --- Measure 7 ---
                12'd384: toneL = `llb;     12'd385: toneL = `llb; // HC (half-beat)
                12'd386: toneL = `llb;     12'd387: toneL = `llb;
                12'd388: toneL = `llb;     12'd389: toneL = `llb;
                12'd390: toneL = `llb;     12'd391: toneL = `llb;
                12'd392: toneL = `llb;     12'd393: toneL = `llb; // HD (half-beat)
                12'd394: toneL = `llb;     12'd395: toneL = `llb;
                12'd396: toneL = `llb;     12'd397: toneL = `llb;
                12'd398: toneL = `llb;     12'd399: toneL = `sil;
                
                12'd400: toneL = `llb;     12'd401: toneL = `llb; // HE (half-beat)
                12'd402: toneL = `llb;     12'd403: toneL = `llb;
                12'd404: toneL = `llb;     12'd405: toneL = `llb;
                12'd406: toneL = `llb;     12'd407: toneL = `sil;
                
                12'd408: toneL = `llgP;     12'd409: toneL = `llgP; // HF (half-beat)
                12'd410: toneL = `llgP;     12'd411: toneL = `llgP;
                12'd412: toneL = `llgP;     12'd413: toneL = `llgP;
                12'd414: toneL = `llgP;     12'd415: toneL = `sil;

                12'd416: toneL = `llgP;    12'd417: toneL = `llgP; // HG (half-beat)
                12'd418: toneL = `llgP;    12'd419: toneL = `llgP;
                12'd420: toneL = `llgP;    12'd421: toneL = `llgP;
                12'd422: toneL = `llgP;    12'd423: toneL = `llgP; // (Short break for repetitive notes: high D)
                12'd424: toneL = `llgP;    12'd425: toneL = `llgP; // HG (half-beat)
                12'd426: toneL = `llgP;    12'd427: toneL = `llgP;
                12'd428: toneL = `llgP;    12'd429: toneL = `llgP;
                12'd430: toneL = `llgP;    12'd431: toneL = `sil; // (Short break for repetitive notes: high D)

                12'd432: toneL = `llgP;    12'd433: toneL = `llgP; // HG (one-beat)
                12'd434: toneL = `llgP;    12'd435: toneL = `llgP;
                12'd436: toneL = `llgP;    12'd437: toneL = `llgP;
                12'd438: toneL = `llgP;    12'd439: toneL = `llgP;                
                12'd440: toneL = `llgP;    12'd441: toneL = `llgP;
                12'd442: toneL = `llgP;    12'd443: toneL = `llgP;
                12'd444: toneL = `llgP;    12'd445: toneL = `llgP;
                12'd446: toneL = `llgP;    12'd447: toneL = `sil;
                
                // --- Measure 8 ---
                12'd448: toneL = `lcP;     12'd449: toneL = `lcP; // HC (half-beat)
                12'd450: toneL = `lcP;     12'd451: toneL = `lcP;
                12'd452: toneL = `lcP;     12'd453: toneL = `lcP;
                12'd454: toneL = `lcP;     12'd455: toneL = `lcP;
                12'd456: toneL = `lcP;     12'd457: toneL = `lcP; // HD (half-beat)
                12'd458: toneL = `lcP;     12'd459: toneL = `lcP;
                12'd460: toneL = `lcP;     12'd461: toneL = `lcP;
                12'd462: toneL = `lcP;     12'd463: toneL = `sil;
                
                12'd464: toneL = `lcP;     12'd465: toneL = `lcP; // HE (half-beat)
                12'd466: toneL = `lcP;     12'd467: toneL = `lcP;
                12'd468: toneL = `lcP;     12'd469: toneL = `lcP;
                12'd470: toneL = `lcP;     12'd471: toneL = `lcP;
                12'd472: toneL = `lcP;     12'd473: toneL = `lcP; // HF (half-beat)
                12'd474: toneL = `lcP;     12'd475: toneL = `lcP;
                12'd476: toneL = `lcP;     12'd477: toneL = `lcP;
                12'd478: toneL = `lcP;     12'd479: toneL = `lcP;

                12'd480: toneL = `llfP;    12'd481: toneL = `llfP; // HG (half-beat)
                12'd482: toneL = `llfP;    12'd483: toneL = `llfP;
                12'd484: toneL = `llfP;    12'd485: toneL = `llfP;
                12'd486: toneL = `llfP;    12'd487: toneL = `llfP; // (Short break for repetitive notes: high D)
                12'd488: toneL = `llfP;    12'd489: toneL = `llfP; // HG (half-beat)
                12'd490: toneL = `llfP;    12'd491: toneL = `llfP;
                12'd492: toneL = `llfP;    12'd493: toneL = `llfP;
                12'd494: toneL = `llfP;    12'd495: toneL = `sil; 
                
                12'd496: toneL = `llbM;    12'd497: toneL = `llbM; // HG (one-beat)
                12'd498: toneL = `llbM;    12'd499: toneL = `llbM;
                12'd500: toneL = `llbM;    12'd501: toneL = `llbM;
                12'd502: toneL = `llbM;    12'd503: toneL = `llbM;
                12'd504: toneL = `llbM;    12'd505: toneL = `llbM;
                12'd506: toneL = `llbM;    12'd507: toneL = `llbM;
                12'd508: toneL = `llbM;    12'd509: toneL = `llbM;
                12'd510: toneL = `llbM;    12'd511: toneL = `llbM;
				
                default : toneL = `sil;
            endcase
        end
        else begin
            toneL = `sil;
        end
    end
endmodule