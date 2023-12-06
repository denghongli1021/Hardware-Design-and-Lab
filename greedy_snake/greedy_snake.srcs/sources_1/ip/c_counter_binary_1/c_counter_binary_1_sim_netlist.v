// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Dec  7 03:02:12 2023
// Host        : LAPTOP-FQ5SKUKF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top c_counter_binary_1 -prefix
//               c_counter_binary_1_ c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_1
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
  c_counter_binary_1_c_counter_binary_v12_0_14 U0
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
  c_counter_binary_1_c_counter_binary_v12_0_14_viv i_synth
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
i2IJsOXutCBUkbCGzCuPsobtu643cL3m9764
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
