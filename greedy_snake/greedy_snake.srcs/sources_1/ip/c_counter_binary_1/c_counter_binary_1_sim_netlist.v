// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Dec  7 03:07:01 2023
// Host        : LAPTOP-FQ5SKUKF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/user/HardwareDesign/greedy_snake/greedy_snake.srcs/sources_1/ip/c_counter_binary_1/c_counter_binary_1_sim_netlist.v
// Design      : c_counter_binary_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_1,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_1
   (CLK,
    CE,
    SCLR,
    SSET,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 sset_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME sset_intf, LAYERED_METADATA undef" *) input SSET;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [15:0]Q;

  wire CE;
  wire CLK;
  wire [15:0]Q;
  wire SCLR;
  wire SSET;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "1" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_1_c_counter_binary_v12_0_14 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(SSET),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "1" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "16" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_1_c_counter_binary_v12_0_14
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [15:0]L;
  output THRESH0;
  output [15:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [15:0]Q;
  wire SCLR;
  wire SSET;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "1" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_1_c_counter_binary_v12_0_14_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(SSET),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
dmmXCzwxW2FLu/vVGpJzoQ/uTl0t/oirVzDN8rGCQ/cshHIr5KZa8hMP1zjDcrW6js/9tSBuCaB1
Ioj63zjqZA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
N9Ijk+dhcsedFOz7GhClRR68iRquy2ZzjVLVhi5GByFuPpr/oGFn021AFcKE54GT1hqizIMvWGS0
qRbWSO/aiWGT8c930WMeayc4xm2b65tzi7UyXSjcZqyZqk5spgPewfSuL0LKD5R4+zccn3yeTyAR
Cpi6LZ2KmpRW5biXvss=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M8NGALCMec7MmW5uPCxfU8HATjWU2XqyPU8phSDe3mtyor4pgfPtg5TJdKOytKhxa+fQwJxytwzI
KPxtYmaRH/KFiGrOvm7jO78NIlt31qN95S7sMYrLxORaZ4bbNMg4RfwEB0haV15qORczgxWEpvBX
6Qukl64ihp4NiBjXt4YYGoDiNMSczgOe3tLn7UWjfPQnsJ8aMxugelO5AciSBxAdohgLMRE3cu6p
gwakO6ytq1vAR8bqHLT8g/Kdsxn72SBHYdpkba0NfEvzzheOlZY7fNuWD48V6QefMjsX1taMkmQH
m38VdXlC6Ocia7H3zT8LvNLtxrpG8zyD+UI+sg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I1BukTJgP0oEpI/mdw6jwrYhUTr7MTzY5G/EvfuPKQfGzYRI1qLG+aEQeclA1P65+tkbstBEIIg8
ZhiouPVaom8KwKZHBX7eLpxvNBcYVFfnJb1ES5wdcph3sgGtaYKSpspp51oYPM6ZD7DmMGdoc/Wg
JVIUuIfRpo8AnEMfkayPkbwuB0VUKpz5BXS50B+5jvgK7cFe2gUp2ckThqzKUjViVB56Swsz+IQe
l7GvtTbuNcSwapfPtNHH0bWSQStfIzPZZm1A2IZ2WCYafRPkj7uibtKNgnKgIZs1197qomgXbb+b
fDx1iikgF8snJsPchukmgxkMSQtLntwbLs6H+w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UNzBll4hVdQjkp7KJChMHZ9agdKjtTu8+3O75Phz7SpwUZ73Z533+9pCfaH7QI/cwqaVREb20HXT
ji2kU1DV7+Cwbshd08hvUBl23F60ITYS+3rluBLIFX3pzXhjjSu8HQpnxXppbCODvCiWrDLqRU/y
lcFf7B+yp5jK6vEY5xuh8is/oxSPNFwip6GSMqDnE45GU6kU+6n8FTk8pAZUNKnh3j0t6YzcwS3J
wYUhnJpEQYd7+0D/NPjEz0YFqzB8WCh70MxBRJzwdXpuRLiFzplysvw+eHjMPVeU/UPKJWuwWuwc
Bfxw0ThSXZit/SSD+BGhxjbEI9T6rh66FpqbTg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
F7AZy6dB5VKzcudhyRSKWKUbVrSs4vS9jtgDkM6KrVPs3ghP3AF2TeIDyl03EesBxeIQxHqq8thx
uVIGQN5wt92jkzGo61VyUoF2dYHY2dkK9PY4bicayI6rppCS18HnyCC5ODrTMKgOpoj+PEmghCZl
j8+i3NFWPAo6M/MAtVI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NQpRHEO/CEh2TWVl2zAKLb4TTDP4G4mQHrGzJeErDNbJ2L2B4iz3unsCjzHkoDagHoU9jeHYNzw1
EdgeGwokAwsWnHc0V18iEu5CZPPLrncpORhuc7qe0zJvoIFW4tgNZuIjFZI6bkrWzgxNYlkitGJ7
wQxgR+6ZenldybAjVF7d1R8FQmrEKWQ9ztmGHKMd9PfWD1VsbOoxbNA1tkQ3Suq2M9HDzUONaPQq
yMnGxLE4+4xTZZFVVFZeizNxqQcM1Y6s2MEUyS89U6rdAH95x9zDN8PGrif1SUWhpoz33cYp/IL8
acGyIWDbmuS0X+xsLC8cWcrO/MxKDk8bj12S7g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W2ZLxVMM2bO/6hqe8KRsBOYby+akb1JiKHhCv9fhS2DK483JVHKKDFtV5ZylpQSPfpmWVI6nDnNm
XtxOYqhOdd9wAHIVXly/nJQ3BORIgR42ZfKk3tkiYQd75XwTJmWjvIda5LTjKISy58Rg+7/yc6kX
SAKkQWzcaHy0VIrsbeLAK7Rz2vPrBQAwZijqUO1uD9pTa1ID2lBqRKOaN/lex50cPJ7PNmyesOUe
aisZi7+ubKWoKmZJmdUy4nKUk4a0FLkIqdFpmX+Bu5UVgWOF47nrEwh3c1MVRxWa1uvngQGGl026
FTa0G+nc1Q9KslAvMQ+fMbz+FbnTF3u/A9gizA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
q6mdFoR4JqRRUVK8nmzyGQpgsQmfai5fAOOojW4as5xCFIMDBf5FJcTthIjAxaSnr9wPBpKXYTGK
yLS7hd+w3Ua/Ci+FDGmvQ58FXc8PjDF/v9MLvPVYvfzirulnJrMNgHLzmeVXesLzqHWddn13B/vt
572nOe9a3UAhooj5AgCYdblMtafgU7JWYFAQa0nmoCy/pAQwg7RVreEK3eFQJEMobI0fTRz2IEU/
mH1cxgIHictkKEngrGpEIOe/oaDZ0XUcoi8HeYbzMb/Cxzuyos5mP2aZb7OwHxrGFwfs5xuUEjMM
XiTHgaqKxbMrBlWXkmGZJL6RiYDGchdSk45NLQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Tk7J5Fvtg2ffnyesiBoWQndCyWVTJa+AaFzuCvsg12doVWjizPZTxs2baICpeaYFCay2x+GfHvDS
Dvu3H0qdnTQ9T+pcTWiRPipt5owfFT8+CMx3CNNRx0KuepSLTTm/CWTeqidcCiaogzTMqKBEX+5o
HyXYZWZNCDRjvdTl3zpMcjR6p3UiqCwDvXYf9b8cLvlGeCZmbRYP2CCAoQRy2R3DQKro+b7J2vFN
ba8RPzN7PW3izA0vMegBDNrPgC9Kxsg8ZaRxGLfiaLpDlvo+3LK9OF5xbDnZXdJLNXxYiBKxwZaU
p+tpu7TrthHQDuNtV83W8tDaggAKWv3d/kMDNg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16384)
`pragma protect data_block
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
+Lr2s10HbsnIRgtYNrhmv2yPVVixqo3ljw==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
