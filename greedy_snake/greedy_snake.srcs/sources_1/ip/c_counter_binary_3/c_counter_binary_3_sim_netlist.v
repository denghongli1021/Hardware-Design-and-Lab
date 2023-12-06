// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Dec  7 03:02:12 2023
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
  c_counter_binary_3_c_counter_binary_v12_0_14 U0
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
  c_counter_binary_3_c_counter_binary_v12_0_14_viv i_synth
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
0MXo1PBS5m7YMVej3rngXhUs0GGbe1OOuTYi
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
