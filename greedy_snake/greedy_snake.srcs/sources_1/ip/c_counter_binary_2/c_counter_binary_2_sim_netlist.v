// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Dec  7 03:02:12 2023
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
  c_counter_binary_2_c_counter_binary_v12_0_14 U0
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
  c_counter_binary_2_c_counter_binary_v12_0_14_viv i_synth
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
bMIET696PH5KQkMHQD9VlJMqVRc+nFUeMAoG
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
