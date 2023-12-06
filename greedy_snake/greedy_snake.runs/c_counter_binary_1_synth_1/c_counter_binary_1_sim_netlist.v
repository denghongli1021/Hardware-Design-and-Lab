// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Dec  7 03:07:00 2023
// Host        : LAPTOP-FQ5SKUKF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_1_sim_netlist.v
// Design      : c_counter_binary_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_1,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2" *) 
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
paS015doju8aWheKfnGfxgcAkgeoaVA6hcGSrvkQOJgGALGiZ4ER4Y1bxB90ADXx5H74QQ01YVnt
LwjL5S/nnAqobuY0IkKzRYPg4HgZxtT2NqI5iZzowypWFlNMGEHAQpuZP8WsCmUpE2p9lfAsWYIQ
gK+V+ti/vDwTylT02Wuibh8oROtwom2kjAl5XR0aQr8DDdVMLynE8Tzt8GDL/anJkzvW1oc80mIl
BeBXxrOOUE1avL0AWDJ3mAXJhu6nLpjVS3sZO8PewVaAlUBIfDcTl1CIJ2eOc5Ad0ljlbVeWYWSQ
PyW/LVMDJCNx5v7PSVlsaVARI4jZURZhiGKQqQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a0UsWbawydj3SLy9vxCtL9q6s75bD9kmJSN940FGm/rMk3ReybWyKFedWpm8cB+66cVI25pyDQp5
4ScddopuPRDWIoT/dv1hiItWIDSKBgi5Ioc0xnrudaSp1YHhTnELgZwU3P1yN7YmiRwAo9WdUD1P
AKRlE3VS1G7JMNSHXjFRZUGbd+oxFcpx4IlEAmN2Hu/n0LMXiPUDGBbdgBvP/05iGc8ZfK32Tmlh
+OtW077uEFXvS02FDoPJNV3x8f5Ows3H05ErXjSm2tUBQgN62p8Y//BbhriZK+9YIX3qL2F8fxyg
BwUM6CDpcUWPyhyPgVIQSdqZgdcMq8dYkSOa2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16320)
`pragma protect data_block
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
ADxb5d8SVoCFUapxjVR4Xar7
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
