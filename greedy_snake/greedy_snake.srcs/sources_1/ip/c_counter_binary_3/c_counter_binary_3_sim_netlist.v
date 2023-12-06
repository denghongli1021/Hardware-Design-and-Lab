// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Dec  7 03:06:38 2023
// Host        : LAPTOP-FQ5SKUKF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top c_counter_binary_3 -prefix
//               c_counter_binary_3_ c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_3
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
  c_counter_binary_3_c_counter_binary_v12_0_14 U0
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
module c_counter_binary_3_c_counter_binary_v12_0_14
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
  c_counter_binary_3_c_counter_binary_v12_0_14_viv i_synth
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
