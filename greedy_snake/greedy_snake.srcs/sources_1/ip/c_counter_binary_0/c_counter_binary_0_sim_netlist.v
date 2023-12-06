// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Dec  7 03:02:13 2023
// Host        : LAPTOP-FQ5SKUKF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/user/HardwareDesign/greedy_snake/greedy_snake.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [15:0]Q;

  wire CLK;
  wire [15:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
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
  c_counter_binary_0_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "16" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_0_c_counter_binary_v12_0_14
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
  wire CLK;
  wire [15:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
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
  c_counter_binary_0_c_counter_binary_v12_0_14_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
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
m4Ce3b6Jma2g13uduFUspNSYPRdofTZsIa9Kq8mQCmqMJmUM7kRY6P0OsZJ1OYKtFcQ+hbTLmHSP
laRRjjU0clc+S9afMCXZ/cff3LZLpjA3tJLkvXp1ed6jXZsfUBkk7JN25/3yy3h3OBc/KlgLfyDm
ztwge7tdFTw7AcipV9zmTPQa3MRaF9Og5gU6HibIGqC4TcytOftKQ1zazc0Jo6xw1GOTPEvj+lIO
jN4hAwl7MxOYCERd7lWEFhJ7aHRCxiFFqYgtjO1UZ/wjh9Bq7tx4GhKwiStQ8q6q8kxbtI58gvER
5FKQkUV0ffqXQxFRIzrpaT4BZYcIsfuo1mCHuA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
5KbY+zrfERYGFSo5HmLEK1k3Zn5uoJ621H6Xgf8VmsPELALWkymFWX9Jgw8wg21xKkBLIpiYFsGO
VCfE6Cal3IfUtnBdOX5h/6OPDgQiAk8xlCWSVr4TsWQpOJO/c0q70TG6otuNBW4cwRcRYGBGKZBo
MqXG668qhSNMFFbpQS2IqFcdNJVaKOQzdVMUJq2rcF1FrvKEfzP21ARCHzIYLARMPSjZShVpMlOV
MrAe+Kcsla6adLgAq22z0/cjb8zfKIdaxRP98lTqSY6h8jkqV3TqvzmqCllo1ghGMuKNvGuYTcPF
YffT5eBhs6Ek2qvfDfdtvor1nUz7XH/huYXRUA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10208)
`pragma protect data_block
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
X1R/sDw=
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
