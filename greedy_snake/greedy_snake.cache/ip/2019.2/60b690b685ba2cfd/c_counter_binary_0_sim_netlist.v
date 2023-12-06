// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Dec  7 03:06:38 2023
// Host        : LAPTOP-FQ5SKUKF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14 U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14_viv i_synth
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
waznlp4mL7FfxEqXCpms6enG
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
