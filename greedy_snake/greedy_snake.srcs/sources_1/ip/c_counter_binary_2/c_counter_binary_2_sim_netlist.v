// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Dec  7 03:06:38 2023
// Host        : LAPTOP-FQ5SKUKF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top c_counter_binary_2 -prefix
//               c_counter_binary_2_ c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_2
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
  c_counter_binary_2_c_counter_binary_v12_0_14 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_2_c_counter_binary_v12_0_14
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
  c_counter_binary_2_c_counter_binary_v12_0_14_viv i_synth
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
LBSxyoR17dA0bWVLAIxEySv691oYvjbgF7/cc+2d9Ib04pA97mtXpoZ70VjpQLql4cKmnFuTu8KJ
ccRPHhZrOKaD2ofnybwgFHpo/n0xAMPf/SUZVQxc4UL1mlILFjllE4wG+hmnW68nOx2+TImohDPt
v8lbZVJLv7GiPq6eURAVdFKQE5It06y/dtVnqYMgPveXHMYPZJHa12h4F23YJRUeSZw/TTI+4Oua
eDL/Ko/yAW/N2lIHadxV2K9vHn2ntzl8QQZywIzBDIl4LQB9j/I8v9HrrWYeNmnSfuXNoOIfB5vl
f5u7Qr7ODPeJuRjhR+xDXg9UEKCOLAgZu+8OYg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
2PCCgEptb58/AeJysJedkeOf4oR2+bW2Y0DPiMUnQ1jlnO+ktkVzI4yPTTM5O+ZdetBiJU65ofMQ
Ws2l2IokBhZnANjq1UR+7nKwbPOjJds3vuIePsodO3lStxkF19kL2uBW4/aI6KWlZAm8X2lnQSjT
xvEEzq1VV+2PERtq+UEKy5WuIEWdDhADHn5EcEheV4iU3ExCGFENWXzmhDAjIgGjFUgkIOmYzN+j
vx3ISaFXPXMW/PYGrbJ/+AskliZQZyvVzaCddiRoAfZao8Nzg2fFRbv+6S3oz4dtSdVrdRZBKIt9
l652uLyJGFjgqiq6BqBoT/BNOVA7tElR0AlNJQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16320)
`pragma protect data_block
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
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
