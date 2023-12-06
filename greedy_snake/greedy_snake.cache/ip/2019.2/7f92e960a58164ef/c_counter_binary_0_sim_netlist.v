// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Dec  7 03:02:12 2023
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14 U0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14_viv i_synth
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
DbPwkERsgLu5AtRkwqfkMEeN0xwYwg8hlkhHXEiYpQIw+yTZNQEdQh5NSGMXVShRzL65zPFUU15N
fO5p+BuZgGFOWPgjj+owUepgHjAZM/0FQUjRmW7316mw3P4ha/P52C7GxsXOzS11CsY9RV0A3lpV
k0/S8SOQIUM6MY7pL5QzTE7ZLToqIZeeFQbQ0eX7unE26elMX1nOZ79dZoThlBpINmg9hHhcW+m8
uP5fBUb/Cq3fZUCNC6t1kZmmsKgcJ5mM79+1LspJSFxTHHPP506gauDN5WrzeBX1XPKlgKZikQx7
i5tdhxY46sUPquYwjslNw3S5neTHIJojtEmzxQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GJoBzZymfwWUSThLH5KwXi1KgcfR+KrZSQTTlLEYMnb0p4N94+bwflkKEf7EKQP92vOehq8IP1P2
+wo+DbIWgE28VeEdYkCJ8t2ZnTGzpmfFGE7KWBbM9YSGYGv6RdfMfVhFV+w7Sqsm0ITXQNLVz40w
uamyOseX0EvZ7/J2Ocp2osQMaD+jcmEPESSwIkjeUaLEeIIDByQmgj5SMfVP9k79QWVHarGhEazN
x1tHeH7zk5fdfnB3k8WGmOBAMzDqfdPfwATYD4HbfW4B7yBa75mzzigBAAAV9WUI1KD98ywxgPhn
oDNU2asn4tCadT+qXvCNsiXCmcqdp5DNOSbGSg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10144)
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
