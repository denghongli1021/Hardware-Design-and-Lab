// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Dec  7 03:06:38 2023
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
  c_counter_binary_0_c_counter_binary_v12_0_14 U0
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
  c_counter_binary_0_c_counter_binary_v12_0_14_viv i_synth
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
lhnjLYRk5PXVStS+cWYVGYmqJirJOrSBMzsaeDcI6pnGXewyVAQWsdBGIWlurEhxRd9nKE90ehce
mwyp4vzBuNeh61diw/L4wJEiG9zihG3n6OGidydw9EtUhGl83eLdEBaU1Zfh9SJGoIvy+6tWUU+f
sQhMs9HORSBPoKru+LrXXkyd2HEBfbAN+8sMr9z7pww+UHKiJWvbtIff5gIgYsT118QYSMh0h24+
gJMpYaHXZZnoeH3gVX4vtZuxxz3/QbOZO59dj9nieMVTwwSMrghyzIvPs9KqvmLDDiNf8seGYvpR
aVttlQ+qa/zUAVcY7yaRNdowIiAxgvplAdZo2Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gtUD0SM2nNglh3Zgy6InXobKotYnv5k1gCVZxxMfyE62sZ4LfyJzFo14Usz8NdUQ/t3uZ3KPNNGL
7mAw9zjWo+Xxb9HhM8O3kAddpmmwWKeBZEqNxbr3dXBGv+XKxJ/pDs97cO0z+1kjU4lOxwvvHoUV
udZl05wENmAvQEy+1ZXP79hZ66nj/PrIRXomKoV+lHjahjXWp5cmq57EhZdWbKrV3GksIDhm7aA7
oEkYYJ1SW3ZBMSlTFTXdtlNRvjk4GQ9svazq+wo/QPfg8tVC933nwKGX4J/OnWW/IlCx+XcdYxm4
H3iZCPbsLKSzRe10cmGtb6gPUEbr8VCerGkyFw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16384)
`pragma protect data_block
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
xof8vfa1fvMClO1n1Ge5PP+aOPIABcKjaQ==
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
