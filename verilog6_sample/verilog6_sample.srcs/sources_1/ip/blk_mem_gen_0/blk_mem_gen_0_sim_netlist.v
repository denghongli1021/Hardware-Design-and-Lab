// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Nov  2 15:54:44 2023
// Host        : LAPTOP-FQ5SKUKF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_0 -prefix
//               blk_mem_gen_0_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [16:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [11:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [16:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [16:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [16:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "17" *) 
  (* C_ADDRB_WIDTH = "17" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "26" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     9.042558 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "76800" *) 
  (* C_READ_DEPTH_B = "76800" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "76800" *) 
  (* C_WRITE_DEPTH_B = "76800" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[16:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[16:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

module blk_mem_gen_0_bindec
   (ena_array,
    addra);
  output [17:0]ena_array;
  input [4:0]addra;

  wire [4:0]addra;
  wire [17:0]ena_array;

  LUT5 #(
    .INIT(32'h00000001)) 
    ENOUT
       (.I0(addra[3]),
        .I1(addra[4]),
        .I2(addra[0]),
        .I3(addra[1]),
        .I4(addra[2]),
        .O(ena_array[0]));
  LUT5 #(
    .INIT(32'h00000010)) 
    ENOUT__0
       (.I0(addra[3]),
        .I1(addra[4]),
        .I2(addra[0]),
        .I3(addra[1]),
        .I4(addra[2]),
        .O(ena_array[1]));
  LUT5 #(
    .INIT(32'h00000010)) 
    ENOUT__1
       (.I0(addra[3]),
        .I1(addra[4]),
        .I2(addra[1]),
        .I3(addra[0]),
        .I4(addra[2]),
        .O(ena_array[2]));
  LUT5 #(
    .INIT(32'h01000000)) 
    ENOUT__10
       (.I0(addra[4]),
        .I1(addra[1]),
        .I2(addra[0]),
        .I3(addra[2]),
        .I4(addra[3]),
        .O(ena_array[11]));
  LUT5 #(
    .INIT(32'h10000000)) 
    ENOUT__11
       (.I0(addra[4]),
        .I1(addra[1]),
        .I2(addra[3]),
        .I3(addra[0]),
        .I4(addra[2]),
        .O(ena_array[12]));
  LUT5 #(
    .INIT(32'h10000000)) 
    ENOUT__12
       (.I0(addra[4]),
        .I1(addra[0]),
        .I2(addra[3]),
        .I3(addra[1]),
        .I4(addra[2]),
        .O(ena_array[13]));
  LUT5 #(
    .INIT(32'h40000000)) 
    ENOUT__13
       (.I0(addra[4]),
        .I1(addra[3]),
        .I2(addra[2]),
        .I3(addra[0]),
        .I4(addra[1]),
        .O(ena_array[14]));
  LUT5 #(
    .INIT(32'h00000010)) 
    ENOUT__14
       (.I0(addra[3]),
        .I1(addra[2]),
        .I2(addra[4]),
        .I3(addra[0]),
        .I4(addra[1]),
        .O(ena_array[15]));
  LUT5 #(
    .INIT(32'h01000000)) 
    ENOUT__15
       (.I0(addra[3]),
        .I1(addra[2]),
        .I2(addra[1]),
        .I3(addra[0]),
        .I4(addra[4]),
        .O(ena_array[16]));
  LUT5 #(
    .INIT(32'h01000000)) 
    ENOUT__16
       (.I0(addra[3]),
        .I1(addra[2]),
        .I2(addra[0]),
        .I3(addra[1]),
        .I4(addra[4]),
        .O(ena_array[17]));
  LUT5 #(
    .INIT(32'h01000000)) 
    ENOUT__2
       (.I0(addra[3]),
        .I1(addra[4]),
        .I2(addra[2]),
        .I3(addra[0]),
        .I4(addra[1]),
        .O(ena_array[3]));
  LUT5 #(
    .INIT(32'h00000010)) 
    ENOUT__3
       (.I0(addra[3]),
        .I1(addra[4]),
        .I2(addra[2]),
        .I3(addra[0]),
        .I4(addra[1]),
        .O(ena_array[4]));
  LUT5 #(
    .INIT(32'h01000000)) 
    ENOUT__4
       (.I0(addra[3]),
        .I1(addra[4]),
        .I2(addra[1]),
        .I3(addra[0]),
        .I4(addra[2]),
        .O(ena_array[5]));
  LUT5 #(
    .INIT(32'h01000000)) 
    ENOUT__5
       (.I0(addra[3]),
        .I1(addra[4]),
        .I2(addra[0]),
        .I3(addra[1]),
        .I4(addra[2]),
        .O(ena_array[6]));
  LUT5 #(
    .INIT(32'h00000010)) 
    ENOUT__6
       (.I0(addra[4]),
        .I1(addra[2]),
        .I2(addra[3]),
        .I3(addra[0]),
        .I4(addra[1]),
        .O(ena_array[7]));
  LUT5 #(
    .INIT(32'h01000000)) 
    ENOUT__7
       (.I0(addra[4]),
        .I1(addra[2]),
        .I2(addra[1]),
        .I3(addra[0]),
        .I4(addra[3]),
        .O(ena_array[8]));
  LUT5 #(
    .INIT(32'h01000000)) 
    ENOUT__8
       (.I0(addra[4]),
        .I1(addra[2]),
        .I2(addra[0]),
        .I3(addra[1]),
        .I4(addra[3]),
        .O(ena_array[9]));
  LUT5 #(
    .INIT(32'h10000000)) 
    ENOUT__9
       (.I0(addra[4]),
        .I1(addra[2]),
        .I2(addra[3]),
        .I3(addra[0]),
        .I4(addra[1]),
        .O(ena_array[10]));
endmodule

module blk_mem_gen_0_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [11:0]douta;
  input clka;
  input [16:0]addra;
  input [11:0]dina;
  input [0:0]wea;

  wire [16:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [18:0]ena_array;
  wire ram_douta;
  wire ram_ena__1;
  wire ram_ena_n_0;
  wire \ramloop[10].ram.r_n_0 ;
  wire \ramloop[10].ram.r_n_1 ;
  wire \ramloop[10].ram.r_n_2 ;
  wire \ramloop[10].ram.r_n_3 ;
  wire \ramloop[10].ram.r_n_4 ;
  wire \ramloop[10].ram.r_n_5 ;
  wire \ramloop[10].ram.r_n_6 ;
  wire \ramloop[10].ram.r_n_7 ;
  wire \ramloop[10].ram.r_n_8 ;
  wire \ramloop[11].ram.r_n_0 ;
  wire \ramloop[11].ram.r_n_1 ;
  wire \ramloop[11].ram.r_n_2 ;
  wire \ramloop[11].ram.r_n_3 ;
  wire \ramloop[11].ram.r_n_4 ;
  wire \ramloop[11].ram.r_n_5 ;
  wire \ramloop[11].ram.r_n_6 ;
  wire \ramloop[11].ram.r_n_7 ;
  wire \ramloop[11].ram.r_n_8 ;
  wire \ramloop[12].ram.r_n_0 ;
  wire \ramloop[12].ram.r_n_1 ;
  wire \ramloop[12].ram.r_n_2 ;
  wire \ramloop[12].ram.r_n_3 ;
  wire \ramloop[12].ram.r_n_4 ;
  wire \ramloop[12].ram.r_n_5 ;
  wire \ramloop[12].ram.r_n_6 ;
  wire \ramloop[12].ram.r_n_7 ;
  wire \ramloop[12].ram.r_n_8 ;
  wire \ramloop[13].ram.r_n_0 ;
  wire \ramloop[13].ram.r_n_1 ;
  wire \ramloop[13].ram.r_n_2 ;
  wire \ramloop[13].ram.r_n_3 ;
  wire \ramloop[13].ram.r_n_4 ;
  wire \ramloop[13].ram.r_n_5 ;
  wire \ramloop[13].ram.r_n_6 ;
  wire \ramloop[13].ram.r_n_7 ;
  wire \ramloop[13].ram.r_n_8 ;
  wire \ramloop[14].ram.r_n_0 ;
  wire \ramloop[14].ram.r_n_1 ;
  wire \ramloop[14].ram.r_n_2 ;
  wire \ramloop[14].ram.r_n_3 ;
  wire \ramloop[14].ram.r_n_4 ;
  wire \ramloop[14].ram.r_n_5 ;
  wire \ramloop[14].ram.r_n_6 ;
  wire \ramloop[14].ram.r_n_7 ;
  wire \ramloop[14].ram.r_n_8 ;
  wire \ramloop[15].ram.r_n_0 ;
  wire \ramloop[15].ram.r_n_1 ;
  wire \ramloop[15].ram.r_n_2 ;
  wire \ramloop[15].ram.r_n_3 ;
  wire \ramloop[15].ram.r_n_4 ;
  wire \ramloop[15].ram.r_n_5 ;
  wire \ramloop[15].ram.r_n_6 ;
  wire \ramloop[15].ram.r_n_7 ;
  wire \ramloop[15].ram.r_n_8 ;
  wire \ramloop[16].ram.r_n_0 ;
  wire \ramloop[16].ram.r_n_1 ;
  wire \ramloop[16].ram.r_n_2 ;
  wire \ramloop[16].ram.r_n_3 ;
  wire \ramloop[16].ram.r_n_4 ;
  wire \ramloop[16].ram.r_n_5 ;
  wire \ramloop[16].ram.r_n_6 ;
  wire \ramloop[16].ram.r_n_7 ;
  wire \ramloop[16].ram.r_n_8 ;
  wire \ramloop[17].ram.r_n_0 ;
  wire \ramloop[17].ram.r_n_1 ;
  wire \ramloop[17].ram.r_n_2 ;
  wire \ramloop[17].ram.r_n_3 ;
  wire \ramloop[17].ram.r_n_4 ;
  wire \ramloop[17].ram.r_n_5 ;
  wire \ramloop[17].ram.r_n_6 ;
  wire \ramloop[17].ram.r_n_7 ;
  wire \ramloop[17].ram.r_n_8 ;
  wire \ramloop[18].ram.r_n_0 ;
  wire \ramloop[18].ram.r_n_1 ;
  wire \ramloop[18].ram.r_n_2 ;
  wire \ramloop[18].ram.r_n_3 ;
  wire \ramloop[18].ram.r_n_4 ;
  wire \ramloop[18].ram.r_n_5 ;
  wire \ramloop[18].ram.r_n_6 ;
  wire \ramloop[18].ram.r_n_7 ;
  wire \ramloop[18].ram.r_n_8 ;
  wire \ramloop[19].ram.r_n_0 ;
  wire \ramloop[19].ram.r_n_1 ;
  wire \ramloop[19].ram.r_n_2 ;
  wire \ramloop[19].ram.r_n_3 ;
  wire \ramloop[19].ram.r_n_4 ;
  wire \ramloop[19].ram.r_n_5 ;
  wire \ramloop[19].ram.r_n_6 ;
  wire \ramloop[19].ram.r_n_7 ;
  wire \ramloop[19].ram.r_n_8 ;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[20].ram.r_n_0 ;
  wire \ramloop[20].ram.r_n_1 ;
  wire \ramloop[20].ram.r_n_2 ;
  wire \ramloop[20].ram.r_n_3 ;
  wire \ramloop[20].ram.r_n_4 ;
  wire \ramloop[20].ram.r_n_5 ;
  wire \ramloop[20].ram.r_n_6 ;
  wire \ramloop[20].ram.r_n_7 ;
  wire \ramloop[20].ram.r_n_8 ;
  wire \ramloop[21].ram.r_n_0 ;
  wire \ramloop[21].ram.r_n_1 ;
  wire \ramloop[21].ram.r_n_2 ;
  wire \ramloop[21].ram.r_n_3 ;
  wire \ramloop[21].ram.r_n_4 ;
  wire \ramloop[21].ram.r_n_5 ;
  wire \ramloop[21].ram.r_n_6 ;
  wire \ramloop[21].ram.r_n_7 ;
  wire \ramloop[21].ram.r_n_8 ;
  wire \ramloop[22].ram.r_n_0 ;
  wire \ramloop[22].ram.r_n_1 ;
  wire \ramloop[22].ram.r_n_2 ;
  wire \ramloop[22].ram.r_n_3 ;
  wire \ramloop[22].ram.r_n_4 ;
  wire \ramloop[22].ram.r_n_5 ;
  wire \ramloop[22].ram.r_n_6 ;
  wire \ramloop[22].ram.r_n_7 ;
  wire \ramloop[22].ram.r_n_8 ;
  wire \ramloop[23].ram.r_n_0 ;
  wire \ramloop[23].ram.r_n_1 ;
  wire \ramloop[23].ram.r_n_2 ;
  wire \ramloop[23].ram.r_n_3 ;
  wire \ramloop[23].ram.r_n_4 ;
  wire \ramloop[23].ram.r_n_5 ;
  wire \ramloop[23].ram.r_n_6 ;
  wire \ramloop[23].ram.r_n_7 ;
  wire \ramloop[23].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_1 ;
  wire \ramloop[5].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_3 ;
  wire \ramloop[5].ram.r_n_4 ;
  wire \ramloop[5].ram.r_n_5 ;
  wire \ramloop[5].ram.r_n_6 ;
  wire \ramloop[5].ram.r_n_7 ;
  wire \ramloop[5].ram.r_n_8 ;
  wire \ramloop[6].ram.r_n_0 ;
  wire \ramloop[6].ram.r_n_1 ;
  wire \ramloop[6].ram.r_n_2 ;
  wire \ramloop[6].ram.r_n_3 ;
  wire \ramloop[6].ram.r_n_4 ;
  wire \ramloop[6].ram.r_n_5 ;
  wire \ramloop[6].ram.r_n_6 ;
  wire \ramloop[6].ram.r_n_7 ;
  wire \ramloop[6].ram.r_n_8 ;
  wire \ramloop[7].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_1 ;
  wire \ramloop[7].ram.r_n_2 ;
  wire \ramloop[7].ram.r_n_3 ;
  wire \ramloop[7].ram.r_n_4 ;
  wire \ramloop[7].ram.r_n_5 ;
  wire \ramloop[7].ram.r_n_6 ;
  wire \ramloop[7].ram.r_n_7 ;
  wire \ramloop[7].ram.r_n_8 ;
  wire \ramloop[8].ram.r_n_0 ;
  wire \ramloop[8].ram.r_n_1 ;
  wire \ramloop[8].ram.r_n_2 ;
  wire \ramloop[8].ram.r_n_3 ;
  wire \ramloop[8].ram.r_n_4 ;
  wire \ramloop[8].ram.r_n_5 ;
  wire \ramloop[8].ram.r_n_6 ;
  wire \ramloop[8].ram.r_n_7 ;
  wire \ramloop[8].ram.r_n_8 ;
  wire \ramloop[9].ram.r_n_0 ;
  wire \ramloop[9].ram.r_n_1 ;
  wire \ramloop[9].ram.r_n_2 ;
  wire \ramloop[9].ram.r_n_3 ;
  wire \ramloop[9].ram.r_n_4 ;
  wire \ramloop[9].ram.r_n_5 ;
  wire \ramloop[9].ram.r_n_6 ;
  wire \ramloop[9].ram.r_n_7 ;
  wire \ramloop[9].ram.r_n_8 ;
  wire [0:0]wea;

  blk_mem_gen_0_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[16:12]),
        .ena_array({ena_array[18:8],ena_array[6:0]}));
  blk_mem_gen_0_blk_mem_gen_mux \has_mux_a.A 
       (.DOADO({\ramloop[21].ram.r_n_0 ,\ramloop[21].ram.r_n_1 ,\ramloop[21].ram.r_n_2 ,\ramloop[21].ram.r_n_3 ,\ramloop[21].ram.r_n_4 ,\ramloop[21].ram.r_n_5 ,\ramloop[21].ram.r_n_6 ,\ramloop[21].ram.r_n_7 }),
        .DOPADOP(\ramloop[21].ram.r_n_8 ),
        .DOUTA(ram_douta),
        .addra(addra[16:12]),
        .clka(clka),
        .douta(douta),
        .\douta[0] (\ramloop[1].ram.r_n_0 ),
        .\douta[10] ({\ramloop[22].ram.r_n_0 ,\ramloop[22].ram.r_n_1 ,\ramloop[22].ram.r_n_2 ,\ramloop[22].ram.r_n_3 ,\ramloop[22].ram.r_n_4 ,\ramloop[22].ram.r_n_5 ,\ramloop[22].ram.r_n_6 ,\ramloop[22].ram.r_n_7 }),
        .\douta[10]_0 ({\ramloop[23].ram.r_n_0 ,\ramloop[23].ram.r_n_1 ,\ramloop[23].ram.r_n_2 ,\ramloop[23].ram.r_n_3 ,\ramloop[23].ram.r_n_4 ,\ramloop[23].ram.r_n_5 ,\ramloop[23].ram.r_n_6 ,\ramloop[23].ram.r_n_7 }),
        .\douta[10]_INST_0_i_2_0 ({\ramloop[16].ram.r_n_0 ,\ramloop[16].ram.r_n_1 ,\ramloop[16].ram.r_n_2 ,\ramloop[16].ram.r_n_3 ,\ramloop[16].ram.r_n_4 ,\ramloop[16].ram.r_n_5 ,\ramloop[16].ram.r_n_6 ,\ramloop[16].ram.r_n_7 }),
        .\douta[10]_INST_0_i_2_1 ({\ramloop[15].ram.r_n_0 ,\ramloop[15].ram.r_n_1 ,\ramloop[15].ram.r_n_2 ,\ramloop[15].ram.r_n_3 ,\ramloop[15].ram.r_n_4 ,\ramloop[15].ram.r_n_5 ,\ramloop[15].ram.r_n_6 ,\ramloop[15].ram.r_n_7 }),
        .\douta[10]_INST_0_i_2_2 ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .\douta[10]_INST_0_i_2_3 ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .\douta[10]_INST_0_i_2_4 ({\ramloop[20].ram.r_n_0 ,\ramloop[20].ram.r_n_1 ,\ramloop[20].ram.r_n_2 ,\ramloop[20].ram.r_n_3 ,\ramloop[20].ram.r_n_4 ,\ramloop[20].ram.r_n_5 ,\ramloop[20].ram.r_n_6 ,\ramloop[20].ram.r_n_7 }),
        .\douta[10]_INST_0_i_2_5 ({\ramloop[19].ram.r_n_0 ,\ramloop[19].ram.r_n_1 ,\ramloop[19].ram.r_n_2 ,\ramloop[19].ram.r_n_3 ,\ramloop[19].ram.r_n_4 ,\ramloop[19].ram.r_n_5 ,\ramloop[19].ram.r_n_6 ,\ramloop[19].ram.r_n_7 }),
        .\douta[10]_INST_0_i_2_6 ({\ramloop[18].ram.r_n_0 ,\ramloop[18].ram.r_n_1 ,\ramloop[18].ram.r_n_2 ,\ramloop[18].ram.r_n_3 ,\ramloop[18].ram.r_n_4 ,\ramloop[18].ram.r_n_5 ,\ramloop[18].ram.r_n_6 ,\ramloop[18].ram.r_n_7 }),
        .\douta[10]_INST_0_i_2_7 ({\ramloop[17].ram.r_n_0 ,\ramloop[17].ram.r_n_1 ,\ramloop[17].ram.r_n_2 ,\ramloop[17].ram.r_n_3 ,\ramloop[17].ram.r_n_4 ,\ramloop[17].ram.r_n_5 ,\ramloop[17].ram.r_n_6 ,\ramloop[17].ram.r_n_7 }),
        .\douta[10]_INST_0_i_3_0 ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .\douta[10]_INST_0_i_3_1 ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\douta[10]_INST_0_i_3_2 ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .\douta[10]_INST_0_i_3_3 ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\douta[10]_INST_0_i_3_4 ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .\douta[10]_INST_0_i_3_5 ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\douta[10]_INST_0_i_3_6 ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 }),
        .\douta[10]_INST_0_i_3_7 ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\douta[11] (\ramloop[22].ram.r_n_8 ),
        .\douta[11]_0 (\ramloop[23].ram.r_n_8 ),
        .\douta[11]_INST_0_i_2_0 (\ramloop[16].ram.r_n_8 ),
        .\douta[11]_INST_0_i_2_1 (\ramloop[15].ram.r_n_8 ),
        .\douta[11]_INST_0_i_2_2 (\ramloop[14].ram.r_n_8 ),
        .\douta[11]_INST_0_i_2_3 (\ramloop[13].ram.r_n_8 ),
        .\douta[11]_INST_0_i_2_4 (\ramloop[20].ram.r_n_8 ),
        .\douta[11]_INST_0_i_2_5 (\ramloop[19].ram.r_n_8 ),
        .\douta[11]_INST_0_i_2_6 (\ramloop[18].ram.r_n_8 ),
        .\douta[11]_INST_0_i_2_7 (\ramloop[17].ram.r_n_8 ),
        .\douta[11]_INST_0_i_3_0 (\ramloop[8].ram.r_n_8 ),
        .\douta[11]_INST_0_i_3_1 (\ramloop[7].ram.r_n_8 ),
        .\douta[11]_INST_0_i_3_2 (\ramloop[6].ram.r_n_8 ),
        .\douta[11]_INST_0_i_3_3 (\ramloop[5].ram.r_n_8 ),
        .\douta[11]_INST_0_i_3_4 (\ramloop[12].ram.r_n_8 ),
        .\douta[11]_INST_0_i_3_5 (\ramloop[11].ram.r_n_8 ),
        .\douta[11]_INST_0_i_3_6 (\ramloop[10].ram.r_n_8 ),
        .\douta[11]_INST_0_i_3_7 (\ramloop[9].ram.r_n_8 ),
        .\douta[1] (\ramloop[2].ram.r_n_0 ),
        .\douta[2] ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 }),
        .\douta[2]_0 (\ramloop[4].ram.r_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    ram_ena
       (.I0(addra[16]),
        .O(ram_ena_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    ram_ena__0
       (.I0(addra[15]),
        .I1(addra[14]),
        .I2(addra[16]),
        .O(ram_ena__1));
  blk_mem_gen_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.DOUTA(ram_douta),
        .ENA(ram_ena_n_0),
        .addra(addra[15:0]),
        .clka(clka),
        .dina(dina[0]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[10].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[5]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[11].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[6]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[12].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[11:3]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[13].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[8]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[14].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[9]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized14 \ramloop[15].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[15].ram.r_n_0 ,\ramloop[15].ram.r_n_1 ,\ramloop[15].ram.r_n_2 ,\ramloop[15].ram.r_n_3 ,\ramloop[15].ram.r_n_4 ,\ramloop[15].ram.r_n_5 ,\ramloop[15].ram.r_n_6 ,\ramloop[15].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[15].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[10]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized15 \ramloop[16].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[16].ram.r_n_0 ,\ramloop[16].ram.r_n_1 ,\ramloop[16].ram.r_n_2 ,\ramloop[16].ram.r_n_3 ,\ramloop[16].ram.r_n_4 ,\ramloop[16].ram.r_n_5 ,\ramloop[16].ram.r_n_6 ,\ramloop[16].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[16].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[11]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized16 \ramloop[17].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[17].ram.r_n_0 ,\ramloop[17].ram.r_n_1 ,\ramloop[17].ram.r_n_2 ,\ramloop[17].ram.r_n_3 ,\ramloop[17].ram.r_n_4 ,\ramloop[17].ram.r_n_5 ,\ramloop[17].ram.r_n_6 ,\ramloop[17].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[17].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[12]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized17 \ramloop[18].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[18].ram.r_n_0 ,\ramloop[18].ram.r_n_1 ,\ramloop[18].ram.r_n_2 ,\ramloop[18].ram.r_n_3 ,\ramloop[18].ram.r_n_4 ,\ramloop[18].ram.r_n_5 ,\ramloop[18].ram.r_n_6 ,\ramloop[18].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[18].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[13]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized18 \ramloop[19].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[19].ram.r_n_0 ,\ramloop[19].ram.r_n_1 ,\ramloop[19].ram.r_n_2 ,\ramloop[19].ram.r_n_3 ,\ramloop[19].ram.r_n_4 ,\ramloop[19].ram.r_n_5 ,\ramloop[19].ram.r_n_6 ,\ramloop[19].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[19].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[14]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram (\ramloop[1].ram.r_n_0 ),
        .addra(addra[13:0]),
        .clka(clka),
        .dina(dina[0]),
        .ram_ena(ram_ena__1),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized19 \ramloop[20].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[20].ram.r_n_0 ,\ramloop[20].ram.r_n_1 ,\ramloop[20].ram.r_n_2 ,\ramloop[20].ram.r_n_3 ,\ramloop[20].ram.r_n_4 ,\ramloop[20].ram.r_n_5 ,\ramloop[20].ram.r_n_6 ,\ramloop[20].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[20].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[15]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized20 \ramloop[21].ram.r 
       (.DOADO({\ramloop[21].ram.r_n_0 ,\ramloop[21].ram.r_n_1 ,\ramloop[21].ram.r_n_2 ,\ramloop[21].ram.r_n_3 ,\ramloop[21].ram.r_n_4 ,\ramloop[21].ram.r_n_5 ,\ramloop[21].ram.r_n_6 ,\ramloop[21].ram.r_n_7 }),
        .DOPADOP(\ramloop[21].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[16]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized21 \ramloop[22].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[22].ram.r_n_0 ,\ramloop[22].ram.r_n_1 ,\ramloop[22].ram.r_n_2 ,\ramloop[22].ram.r_n_3 ,\ramloop[22].ram.r_n_4 ,\ramloop[22].ram.r_n_5 ,\ramloop[22].ram.r_n_6 ,\ramloop[22].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[22].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[17]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized22 \ramloop[23].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[23].ram.r_n_0 ,\ramloop[23].ram.r_n_1 ,\ramloop[23].ram.r_n_2 ,\ramloop[23].ram.r_n_3 ,\ramloop[23].ram.r_n_4 ,\ramloop[23].ram.r_n_5 ,\ramloop[23].ram.r_n_6 ,\ramloop[23].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[23].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[18]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.DOUTA(\ramloop[2].ram.r_n_0 ),
        .ENA(ram_ena_n_0),
        .addra(addra[15:0]),
        .clka(clka),
        .dina(dina[1]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 }),
        .addra(addra[13:0]),
        .clka(clka),
        .dina(dina[2:1]),
        .ram_ena(ram_ena__1),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.DOUTA(\ramloop[4].ram.r_n_0 ),
        .ENA(ram_ena_n_0),
        .addra(addra[15:0]),
        .clka(clka),
        .dina(dina[2]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[5].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[0]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[6].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[1]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[7].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[2]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[8].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[3]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[9].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[4]),
        .wea(wea));
endmodule

module blk_mem_gen_0_blk_mem_gen_mux
   (douta,
    DOADO,
    \douta[10] ,
    \douta[10]_0 ,
    DOPADOP,
    \douta[11] ,
    \douta[11]_0 ,
    addra,
    clka,
    \douta[0] ,
    DOUTA,
    \douta[2] ,
    \douta[1] ,
    \douta[2]_0 ,
    \douta[10]_INST_0_i_3_0 ,
    \douta[10]_INST_0_i_3_1 ,
    \douta[10]_INST_0_i_3_2 ,
    \douta[10]_INST_0_i_3_3 ,
    \douta[10]_INST_0_i_3_4 ,
    \douta[10]_INST_0_i_3_5 ,
    \douta[10]_INST_0_i_3_6 ,
    \douta[10]_INST_0_i_3_7 ,
    \douta[10]_INST_0_i_2_0 ,
    \douta[10]_INST_0_i_2_1 ,
    \douta[10]_INST_0_i_2_2 ,
    \douta[10]_INST_0_i_2_3 ,
    \douta[10]_INST_0_i_2_4 ,
    \douta[10]_INST_0_i_2_5 ,
    \douta[10]_INST_0_i_2_6 ,
    \douta[10]_INST_0_i_2_7 ,
    \douta[11]_INST_0_i_3_0 ,
    \douta[11]_INST_0_i_3_1 ,
    \douta[11]_INST_0_i_3_2 ,
    \douta[11]_INST_0_i_3_3 ,
    \douta[11]_INST_0_i_3_4 ,
    \douta[11]_INST_0_i_3_5 ,
    \douta[11]_INST_0_i_3_6 ,
    \douta[11]_INST_0_i_3_7 ,
    \douta[11]_INST_0_i_2_0 ,
    \douta[11]_INST_0_i_2_1 ,
    \douta[11]_INST_0_i_2_2 ,
    \douta[11]_INST_0_i_2_3 ,
    \douta[11]_INST_0_i_2_4 ,
    \douta[11]_INST_0_i_2_5 ,
    \douta[11]_INST_0_i_2_6 ,
    \douta[11]_INST_0_i_2_7 );
  output [11:0]douta;
  input [7:0]DOADO;
  input [7:0]\douta[10] ;
  input [7:0]\douta[10]_0 ;
  input [0:0]DOPADOP;
  input [0:0]\douta[11] ;
  input [0:0]\douta[11]_0 ;
  input [4:0]addra;
  input clka;
  input [0:0]\douta[0] ;
  input [0:0]DOUTA;
  input [1:0]\douta[2] ;
  input [0:0]\douta[1] ;
  input [0:0]\douta[2]_0 ;
  input [7:0]\douta[10]_INST_0_i_3_0 ;
  input [7:0]\douta[10]_INST_0_i_3_1 ;
  input [7:0]\douta[10]_INST_0_i_3_2 ;
  input [7:0]\douta[10]_INST_0_i_3_3 ;
  input [7:0]\douta[10]_INST_0_i_3_4 ;
  input [7:0]\douta[10]_INST_0_i_3_5 ;
  input [7:0]\douta[10]_INST_0_i_3_6 ;
  input [7:0]\douta[10]_INST_0_i_3_7 ;
  input [7:0]\douta[10]_INST_0_i_2_0 ;
  input [7:0]\douta[10]_INST_0_i_2_1 ;
  input [7:0]\douta[10]_INST_0_i_2_2 ;
  input [7:0]\douta[10]_INST_0_i_2_3 ;
  input [7:0]\douta[10]_INST_0_i_2_4 ;
  input [7:0]\douta[10]_INST_0_i_2_5 ;
  input [7:0]\douta[10]_INST_0_i_2_6 ;
  input [7:0]\douta[10]_INST_0_i_2_7 ;
  input [0:0]\douta[11]_INST_0_i_3_0 ;
  input [0:0]\douta[11]_INST_0_i_3_1 ;
  input [0:0]\douta[11]_INST_0_i_3_2 ;
  input [0:0]\douta[11]_INST_0_i_3_3 ;
  input [0:0]\douta[11]_INST_0_i_3_4 ;
  input [0:0]\douta[11]_INST_0_i_3_5 ;
  input [0:0]\douta[11]_INST_0_i_3_6 ;
  input [0:0]\douta[11]_INST_0_i_3_7 ;
  input [0:0]\douta[11]_INST_0_i_2_0 ;
  input [0:0]\douta[11]_INST_0_i_2_1 ;
  input [0:0]\douta[11]_INST_0_i_2_2 ;
  input [0:0]\douta[11]_INST_0_i_2_3 ;
  input [0:0]\douta[11]_INST_0_i_2_4 ;
  input [0:0]\douta[11]_INST_0_i_2_5 ;
  input [0:0]\douta[11]_INST_0_i_2_6 ;
  input [0:0]\douta[11]_INST_0_i_2_7 ;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [0:0]DOUTA;
  wire [4:0]addra;
  wire clka;
  wire [11:0]douta;
  wire [0:0]\douta[0] ;
  wire [7:0]\douta[10] ;
  wire [7:0]\douta[10]_0 ;
  wire \douta[10]_INST_0_i_1_n_0 ;
  wire [7:0]\douta[10]_INST_0_i_2_0 ;
  wire [7:0]\douta[10]_INST_0_i_2_1 ;
  wire [7:0]\douta[10]_INST_0_i_2_2 ;
  wire [7:0]\douta[10]_INST_0_i_2_3 ;
  wire [7:0]\douta[10]_INST_0_i_2_4 ;
  wire [7:0]\douta[10]_INST_0_i_2_5 ;
  wire [7:0]\douta[10]_INST_0_i_2_6 ;
  wire [7:0]\douta[10]_INST_0_i_2_7 ;
  wire \douta[10]_INST_0_i_2_n_0 ;
  wire [7:0]\douta[10]_INST_0_i_3_0 ;
  wire [7:0]\douta[10]_INST_0_i_3_1 ;
  wire [7:0]\douta[10]_INST_0_i_3_2 ;
  wire [7:0]\douta[10]_INST_0_i_3_3 ;
  wire [7:0]\douta[10]_INST_0_i_3_4 ;
  wire [7:0]\douta[10]_INST_0_i_3_5 ;
  wire [7:0]\douta[10]_INST_0_i_3_6 ;
  wire [7:0]\douta[10]_INST_0_i_3_7 ;
  wire \douta[10]_INST_0_i_3_n_0 ;
  wire \douta[10]_INST_0_i_4_n_0 ;
  wire \douta[10]_INST_0_i_5_n_0 ;
  wire \douta[10]_INST_0_i_6_n_0 ;
  wire \douta[10]_INST_0_i_7_n_0 ;
  wire [0:0]\douta[11] ;
  wire [0:0]\douta[11]_0 ;
  wire \douta[11]_INST_0_i_1_n_0 ;
  wire [0:0]\douta[11]_INST_0_i_2_0 ;
  wire [0:0]\douta[11]_INST_0_i_2_1 ;
  wire [0:0]\douta[11]_INST_0_i_2_2 ;
  wire [0:0]\douta[11]_INST_0_i_2_3 ;
  wire [0:0]\douta[11]_INST_0_i_2_4 ;
  wire [0:0]\douta[11]_INST_0_i_2_5 ;
  wire [0:0]\douta[11]_INST_0_i_2_6 ;
  wire [0:0]\douta[11]_INST_0_i_2_7 ;
  wire \douta[11]_INST_0_i_2_n_0 ;
  wire [0:0]\douta[11]_INST_0_i_3_0 ;
  wire [0:0]\douta[11]_INST_0_i_3_1 ;
  wire [0:0]\douta[11]_INST_0_i_3_2 ;
  wire [0:0]\douta[11]_INST_0_i_3_3 ;
  wire [0:0]\douta[11]_INST_0_i_3_4 ;
  wire [0:0]\douta[11]_INST_0_i_3_5 ;
  wire [0:0]\douta[11]_INST_0_i_3_6 ;
  wire [0:0]\douta[11]_INST_0_i_3_7 ;
  wire \douta[11]_INST_0_i_3_n_0 ;
  wire \douta[11]_INST_0_i_4_n_0 ;
  wire \douta[11]_INST_0_i_5_n_0 ;
  wire \douta[11]_INST_0_i_6_n_0 ;
  wire \douta[11]_INST_0_i_7_n_0 ;
  wire [0:0]\douta[1] ;
  wire [1:0]\douta[2] ;
  wire [0:0]\douta[2]_0 ;
  wire \douta[3]_INST_0_i_1_n_0 ;
  wire \douta[3]_INST_0_i_2_n_0 ;
  wire \douta[3]_INST_0_i_3_n_0 ;
  wire \douta[3]_INST_0_i_4_n_0 ;
  wire \douta[3]_INST_0_i_5_n_0 ;
  wire \douta[3]_INST_0_i_6_n_0 ;
  wire \douta[3]_INST_0_i_7_n_0 ;
  wire \douta[4]_INST_0_i_1_n_0 ;
  wire \douta[4]_INST_0_i_2_n_0 ;
  wire \douta[4]_INST_0_i_3_n_0 ;
  wire \douta[4]_INST_0_i_4_n_0 ;
  wire \douta[4]_INST_0_i_5_n_0 ;
  wire \douta[4]_INST_0_i_6_n_0 ;
  wire \douta[4]_INST_0_i_7_n_0 ;
  wire \douta[5]_INST_0_i_1_n_0 ;
  wire \douta[5]_INST_0_i_2_n_0 ;
  wire \douta[5]_INST_0_i_3_n_0 ;
  wire \douta[5]_INST_0_i_4_n_0 ;
  wire \douta[5]_INST_0_i_5_n_0 ;
  wire \douta[5]_INST_0_i_6_n_0 ;
  wire \douta[5]_INST_0_i_7_n_0 ;
  wire \douta[6]_INST_0_i_1_n_0 ;
  wire \douta[6]_INST_0_i_2_n_0 ;
  wire \douta[6]_INST_0_i_3_n_0 ;
  wire \douta[6]_INST_0_i_4_n_0 ;
  wire \douta[6]_INST_0_i_5_n_0 ;
  wire \douta[6]_INST_0_i_6_n_0 ;
  wire \douta[6]_INST_0_i_7_n_0 ;
  wire \douta[7]_INST_0_i_1_n_0 ;
  wire \douta[7]_INST_0_i_2_n_0 ;
  wire \douta[7]_INST_0_i_3_n_0 ;
  wire \douta[7]_INST_0_i_4_n_0 ;
  wire \douta[7]_INST_0_i_5_n_0 ;
  wire \douta[7]_INST_0_i_6_n_0 ;
  wire \douta[7]_INST_0_i_7_n_0 ;
  wire \douta[8]_INST_0_i_1_n_0 ;
  wire \douta[8]_INST_0_i_2_n_0 ;
  wire \douta[8]_INST_0_i_3_n_0 ;
  wire \douta[8]_INST_0_i_4_n_0 ;
  wire \douta[8]_INST_0_i_5_n_0 ;
  wire \douta[8]_INST_0_i_6_n_0 ;
  wire \douta[8]_INST_0_i_7_n_0 ;
  wire \douta[9]_INST_0_i_1_n_0 ;
  wire \douta[9]_INST_0_i_2_n_0 ;
  wire \douta[9]_INST_0_i_3_n_0 ;
  wire \douta[9]_INST_0_i_4_n_0 ;
  wire \douta[9]_INST_0_i_5_n_0 ;
  wire \douta[9]_INST_0_i_6_n_0 ;
  wire \douta[9]_INST_0_i_7_n_0 ;
  wire [4:0]sel_pipe;
  wire [4:0]sel_pipe_d1;

  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[0]_INST_0 
       (.I0(sel_pipe_d1[2]),
        .I1(\douta[0] ),
        .I2(sel_pipe_d1[3]),
        .I3(sel_pipe_d1[4]),
        .I4(DOUTA),
        .O(douta[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[10]_INST_0 
       (.I0(\douta[10]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[4]),
        .I2(\douta[10]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[10]_INST_0_i_3_n_0 ),
        .O(douta[10]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[10]_INST_0_i_1 
       (.I0(DOADO[7]),
        .I1(sel_pipe_d1[0]),
        .I2(\douta[10] [7]),
        .I3(sel_pipe_d1[1]),
        .I4(\douta[10]_0 [7]),
        .I5(sel_pipe_d1[2]),
        .O(\douta[10]_INST_0_i_1_n_0 ));
  MUXF7 \douta[10]_INST_0_i_2 
       (.I0(\douta[10]_INST_0_i_4_n_0 ),
        .I1(\douta[10]_INST_0_i_5_n_0 ),
        .O(\douta[10]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[2]));
  MUXF7 \douta[10]_INST_0_i_3 
       (.I0(\douta[10]_INST_0_i_6_n_0 ),
        .I1(\douta[10]_INST_0_i_7_n_0 ),
        .O(\douta[10]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[10]_INST_0_i_4 
       (.I0(\douta[10]_INST_0_i_2_0 [7]),
        .I1(\douta[10]_INST_0_i_2_1 [7]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_2 [7]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_3 [7]),
        .O(\douta[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[10]_INST_0_i_5 
       (.I0(\douta[10]_INST_0_i_2_4 [7]),
        .I1(\douta[10]_INST_0_i_2_5 [7]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_6 [7]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_7 [7]),
        .O(\douta[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[10]_INST_0_i_6 
       (.I0(\douta[10]_INST_0_i_3_0 [7]),
        .I1(\douta[10]_INST_0_i_3_1 [7]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_2 [7]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_3 [7]),
        .O(\douta[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[10]_INST_0_i_7 
       (.I0(\douta[10]_INST_0_i_3_4 [7]),
        .I1(\douta[10]_INST_0_i_3_5 [7]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_6 [7]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_7 [7]),
        .O(\douta[10]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[11]_INST_0 
       (.I0(\douta[11]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[4]),
        .I2(\douta[11]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[11]_INST_0_i_3_n_0 ),
        .O(douta[11]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[11]_INST_0_i_1 
       (.I0(DOPADOP),
        .I1(sel_pipe_d1[0]),
        .I2(\douta[11] ),
        .I3(sel_pipe_d1[1]),
        .I4(\douta[11]_0 ),
        .I5(sel_pipe_d1[2]),
        .O(\douta[11]_INST_0_i_1_n_0 ));
  MUXF7 \douta[11]_INST_0_i_2 
       (.I0(\douta[11]_INST_0_i_4_n_0 ),
        .I1(\douta[11]_INST_0_i_5_n_0 ),
        .O(\douta[11]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[2]));
  MUXF7 \douta[11]_INST_0_i_3 
       (.I0(\douta[11]_INST_0_i_6_n_0 ),
        .I1(\douta[11]_INST_0_i_7_n_0 ),
        .O(\douta[11]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[11]_INST_0_i_4 
       (.I0(\douta[11]_INST_0_i_2_0 ),
        .I1(\douta[11]_INST_0_i_2_1 ),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[11]_INST_0_i_2_2 ),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[11]_INST_0_i_2_3 ),
        .O(\douta[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[11]_INST_0_i_5 
       (.I0(\douta[11]_INST_0_i_2_4 ),
        .I1(\douta[11]_INST_0_i_2_5 ),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[11]_INST_0_i_2_6 ),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[11]_INST_0_i_2_7 ),
        .O(\douta[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[11]_INST_0_i_6 
       (.I0(\douta[11]_INST_0_i_3_0 ),
        .I1(\douta[11]_INST_0_i_3_1 ),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[11]_INST_0_i_3_2 ),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[11]_INST_0_i_3_3 ),
        .O(\douta[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[11]_INST_0_i_7 
       (.I0(\douta[11]_INST_0_i_3_4 ),
        .I1(\douta[11]_INST_0_i_3_5 ),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[11]_INST_0_i_3_6 ),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[11]_INST_0_i_3_7 ),
        .O(\douta[11]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[1]_INST_0 
       (.I0(sel_pipe_d1[2]),
        .I1(\douta[2] [0]),
        .I2(sel_pipe_d1[3]),
        .I3(sel_pipe_d1[4]),
        .I4(\douta[1] ),
        .O(douta[1]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[2]_INST_0 
       (.I0(sel_pipe_d1[2]),
        .I1(\douta[2] [1]),
        .I2(sel_pipe_d1[3]),
        .I3(sel_pipe_d1[4]),
        .I4(\douta[2]_0 ),
        .O(douta[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[3]_INST_0 
       (.I0(\douta[3]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[4]),
        .I2(\douta[3]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[3]_INST_0_i_3_n_0 ),
        .O(douta[3]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[3]_INST_0_i_1 
       (.I0(DOADO[0]),
        .I1(sel_pipe_d1[0]),
        .I2(\douta[10] [0]),
        .I3(sel_pipe_d1[1]),
        .I4(\douta[10]_0 [0]),
        .I5(sel_pipe_d1[2]),
        .O(\douta[3]_INST_0_i_1_n_0 ));
  MUXF7 \douta[3]_INST_0_i_2 
       (.I0(\douta[3]_INST_0_i_4_n_0 ),
        .I1(\douta[3]_INST_0_i_5_n_0 ),
        .O(\douta[3]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[2]));
  MUXF7 \douta[3]_INST_0_i_3 
       (.I0(\douta[3]_INST_0_i_6_n_0 ),
        .I1(\douta[3]_INST_0_i_7_n_0 ),
        .O(\douta[3]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_4 
       (.I0(\douta[10]_INST_0_i_2_0 [0]),
        .I1(\douta[10]_INST_0_i_2_1 [0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_2 [0]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_3 [0]),
        .O(\douta[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_5 
       (.I0(\douta[10]_INST_0_i_2_4 [0]),
        .I1(\douta[10]_INST_0_i_2_5 [0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_6 [0]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_7 [0]),
        .O(\douta[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_6 
       (.I0(\douta[10]_INST_0_i_3_0 [0]),
        .I1(\douta[10]_INST_0_i_3_1 [0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_2 [0]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_3 [0]),
        .O(\douta[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_7 
       (.I0(\douta[10]_INST_0_i_3_4 [0]),
        .I1(\douta[10]_INST_0_i_3_5 [0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_6 [0]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_7 [0]),
        .O(\douta[3]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[4]_INST_0 
       (.I0(\douta[4]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[4]),
        .I2(\douta[4]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[4]_INST_0_i_3_n_0 ),
        .O(douta[4]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[4]_INST_0_i_1 
       (.I0(DOADO[1]),
        .I1(sel_pipe_d1[0]),
        .I2(\douta[10] [1]),
        .I3(sel_pipe_d1[1]),
        .I4(\douta[10]_0 [1]),
        .I5(sel_pipe_d1[2]),
        .O(\douta[4]_INST_0_i_1_n_0 ));
  MUXF7 \douta[4]_INST_0_i_2 
       (.I0(\douta[4]_INST_0_i_4_n_0 ),
        .I1(\douta[4]_INST_0_i_5_n_0 ),
        .O(\douta[4]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[2]));
  MUXF7 \douta[4]_INST_0_i_3 
       (.I0(\douta[4]_INST_0_i_6_n_0 ),
        .I1(\douta[4]_INST_0_i_7_n_0 ),
        .O(\douta[4]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_4 
       (.I0(\douta[10]_INST_0_i_2_0 [1]),
        .I1(\douta[10]_INST_0_i_2_1 [1]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_2 [1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_3 [1]),
        .O(\douta[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_5 
       (.I0(\douta[10]_INST_0_i_2_4 [1]),
        .I1(\douta[10]_INST_0_i_2_5 [1]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_6 [1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_7 [1]),
        .O(\douta[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_6 
       (.I0(\douta[10]_INST_0_i_3_0 [1]),
        .I1(\douta[10]_INST_0_i_3_1 [1]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_2 [1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_3 [1]),
        .O(\douta[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_7 
       (.I0(\douta[10]_INST_0_i_3_4 [1]),
        .I1(\douta[10]_INST_0_i_3_5 [1]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_6 [1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_7 [1]),
        .O(\douta[4]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[5]_INST_0 
       (.I0(\douta[5]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[4]),
        .I2(\douta[5]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[5]_INST_0_i_3_n_0 ),
        .O(douta[5]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[5]_INST_0_i_1 
       (.I0(DOADO[2]),
        .I1(sel_pipe_d1[0]),
        .I2(\douta[10] [2]),
        .I3(sel_pipe_d1[1]),
        .I4(\douta[10]_0 [2]),
        .I5(sel_pipe_d1[2]),
        .O(\douta[5]_INST_0_i_1_n_0 ));
  MUXF7 \douta[5]_INST_0_i_2 
       (.I0(\douta[5]_INST_0_i_4_n_0 ),
        .I1(\douta[5]_INST_0_i_5_n_0 ),
        .O(\douta[5]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[2]));
  MUXF7 \douta[5]_INST_0_i_3 
       (.I0(\douta[5]_INST_0_i_6_n_0 ),
        .I1(\douta[5]_INST_0_i_7_n_0 ),
        .O(\douta[5]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_4 
       (.I0(\douta[10]_INST_0_i_2_0 [2]),
        .I1(\douta[10]_INST_0_i_2_1 [2]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_2 [2]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_3 [2]),
        .O(\douta[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_5 
       (.I0(\douta[10]_INST_0_i_2_4 [2]),
        .I1(\douta[10]_INST_0_i_2_5 [2]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_6 [2]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_7 [2]),
        .O(\douta[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_6 
       (.I0(\douta[10]_INST_0_i_3_0 [2]),
        .I1(\douta[10]_INST_0_i_3_1 [2]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_2 [2]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_3 [2]),
        .O(\douta[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_7 
       (.I0(\douta[10]_INST_0_i_3_4 [2]),
        .I1(\douta[10]_INST_0_i_3_5 [2]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_6 [2]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_7 [2]),
        .O(\douta[5]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[6]_INST_0 
       (.I0(\douta[6]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[4]),
        .I2(\douta[6]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[6]_INST_0_i_3_n_0 ),
        .O(douta[6]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[6]_INST_0_i_1 
       (.I0(DOADO[3]),
        .I1(sel_pipe_d1[0]),
        .I2(\douta[10] [3]),
        .I3(sel_pipe_d1[1]),
        .I4(\douta[10]_0 [3]),
        .I5(sel_pipe_d1[2]),
        .O(\douta[6]_INST_0_i_1_n_0 ));
  MUXF7 \douta[6]_INST_0_i_2 
       (.I0(\douta[6]_INST_0_i_4_n_0 ),
        .I1(\douta[6]_INST_0_i_5_n_0 ),
        .O(\douta[6]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[2]));
  MUXF7 \douta[6]_INST_0_i_3 
       (.I0(\douta[6]_INST_0_i_6_n_0 ),
        .I1(\douta[6]_INST_0_i_7_n_0 ),
        .O(\douta[6]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_4 
       (.I0(\douta[10]_INST_0_i_2_0 [3]),
        .I1(\douta[10]_INST_0_i_2_1 [3]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_2 [3]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_3 [3]),
        .O(\douta[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_5 
       (.I0(\douta[10]_INST_0_i_2_4 [3]),
        .I1(\douta[10]_INST_0_i_2_5 [3]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_6 [3]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_7 [3]),
        .O(\douta[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_6 
       (.I0(\douta[10]_INST_0_i_3_0 [3]),
        .I1(\douta[10]_INST_0_i_3_1 [3]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_2 [3]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_3 [3]),
        .O(\douta[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_7 
       (.I0(\douta[10]_INST_0_i_3_4 [3]),
        .I1(\douta[10]_INST_0_i_3_5 [3]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_6 [3]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_7 [3]),
        .O(\douta[6]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[7]_INST_0 
       (.I0(\douta[7]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[4]),
        .I2(\douta[7]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[7]_INST_0_i_3_n_0 ),
        .O(douta[7]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[7]_INST_0_i_1 
       (.I0(DOADO[4]),
        .I1(sel_pipe_d1[0]),
        .I2(\douta[10] [4]),
        .I3(sel_pipe_d1[1]),
        .I4(\douta[10]_0 [4]),
        .I5(sel_pipe_d1[2]),
        .O(\douta[7]_INST_0_i_1_n_0 ));
  MUXF7 \douta[7]_INST_0_i_2 
       (.I0(\douta[7]_INST_0_i_4_n_0 ),
        .I1(\douta[7]_INST_0_i_5_n_0 ),
        .O(\douta[7]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[2]));
  MUXF7 \douta[7]_INST_0_i_3 
       (.I0(\douta[7]_INST_0_i_6_n_0 ),
        .I1(\douta[7]_INST_0_i_7_n_0 ),
        .O(\douta[7]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_4 
       (.I0(\douta[10]_INST_0_i_2_0 [4]),
        .I1(\douta[10]_INST_0_i_2_1 [4]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_2 [4]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_3 [4]),
        .O(\douta[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_5 
       (.I0(\douta[10]_INST_0_i_2_4 [4]),
        .I1(\douta[10]_INST_0_i_2_5 [4]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_6 [4]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_7 [4]),
        .O(\douta[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_6 
       (.I0(\douta[10]_INST_0_i_3_0 [4]),
        .I1(\douta[10]_INST_0_i_3_1 [4]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_2 [4]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_3 [4]),
        .O(\douta[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_7 
       (.I0(\douta[10]_INST_0_i_3_4 [4]),
        .I1(\douta[10]_INST_0_i_3_5 [4]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_6 [4]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_7 [4]),
        .O(\douta[7]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[8]_INST_0 
       (.I0(\douta[8]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[4]),
        .I2(\douta[8]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[8]_INST_0_i_3_n_0 ),
        .O(douta[8]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[8]_INST_0_i_1 
       (.I0(DOADO[5]),
        .I1(sel_pipe_d1[0]),
        .I2(\douta[10] [5]),
        .I3(sel_pipe_d1[1]),
        .I4(\douta[10]_0 [5]),
        .I5(sel_pipe_d1[2]),
        .O(\douta[8]_INST_0_i_1_n_0 ));
  MUXF7 \douta[8]_INST_0_i_2 
       (.I0(\douta[8]_INST_0_i_4_n_0 ),
        .I1(\douta[8]_INST_0_i_5_n_0 ),
        .O(\douta[8]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[2]));
  MUXF7 \douta[8]_INST_0_i_3 
       (.I0(\douta[8]_INST_0_i_6_n_0 ),
        .I1(\douta[8]_INST_0_i_7_n_0 ),
        .O(\douta[8]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_4 
       (.I0(\douta[10]_INST_0_i_2_0 [5]),
        .I1(\douta[10]_INST_0_i_2_1 [5]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_2 [5]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_3 [5]),
        .O(\douta[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_5 
       (.I0(\douta[10]_INST_0_i_2_4 [5]),
        .I1(\douta[10]_INST_0_i_2_5 [5]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_6 [5]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_7 [5]),
        .O(\douta[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_6 
       (.I0(\douta[10]_INST_0_i_3_0 [5]),
        .I1(\douta[10]_INST_0_i_3_1 [5]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_2 [5]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_3 [5]),
        .O(\douta[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_7 
       (.I0(\douta[10]_INST_0_i_3_4 [5]),
        .I1(\douta[10]_INST_0_i_3_5 [5]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_6 [5]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_7 [5]),
        .O(\douta[8]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[9]_INST_0 
       (.I0(\douta[9]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[4]),
        .I2(\douta[9]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[9]_INST_0_i_3_n_0 ),
        .O(douta[9]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[9]_INST_0_i_1 
       (.I0(DOADO[6]),
        .I1(sel_pipe_d1[0]),
        .I2(\douta[10] [6]),
        .I3(sel_pipe_d1[1]),
        .I4(\douta[10]_0 [6]),
        .I5(sel_pipe_d1[2]),
        .O(\douta[9]_INST_0_i_1_n_0 ));
  MUXF7 \douta[9]_INST_0_i_2 
       (.I0(\douta[9]_INST_0_i_4_n_0 ),
        .I1(\douta[9]_INST_0_i_5_n_0 ),
        .O(\douta[9]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[2]));
  MUXF7 \douta[9]_INST_0_i_3 
       (.I0(\douta[9]_INST_0_i_6_n_0 ),
        .I1(\douta[9]_INST_0_i_7_n_0 ),
        .O(\douta[9]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_4 
       (.I0(\douta[10]_INST_0_i_2_0 [6]),
        .I1(\douta[10]_INST_0_i_2_1 [6]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_2 [6]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_3 [6]),
        .O(\douta[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_5 
       (.I0(\douta[10]_INST_0_i_2_4 [6]),
        .I1(\douta[10]_INST_0_i_2_5 [6]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_2_6 [6]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_2_7 [6]),
        .O(\douta[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_6 
       (.I0(\douta[10]_INST_0_i_3_0 [6]),
        .I1(\douta[10]_INST_0_i_3_1 [6]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_2 [6]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_3 [6]),
        .O(\douta[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_7 
       (.I0(\douta[10]_INST_0_i_3_4 [6]),
        .I1(\douta[10]_INST_0_i_3_5 [6]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_INST_0_i_3_6 [6]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_INST_0_i_3_7 [6]),
        .O(\douta[9]_INST_0_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[2]),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[3]),
        .Q(sel_pipe_d1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[4] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[4]),
        .Q(sel_pipe_d1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[3]),
        .Q(sel_pipe[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[4] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[4]),
        .Q(sel_pipe[4]),
        .R(1'b0));
endmodule

module blk_mem_gen_0_blk_mem_gen_prim_width
   (DOUTA,
    clka,
    ENA,
    addra,
    dina,
    wea);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input [15:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.DOUTA(DOUTA),
        .ENA(ENA),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input clka;
  input ram_ena;
  input [13:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [13:0]addra;
  wire clka;
  wire [0:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1
   (DOUTA,
    clka,
    ENA,
    addra,
    dina,
    wea);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input [15:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.DOUTA(DOUTA),
        .ENA(ENA),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized10
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized11
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized12
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized12 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized13
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized13 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized14
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized14 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized15
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized15 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized16
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized16 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized17
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized17 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized18
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized18 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized19
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized19 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input ram_ena;
  input [13:0]addra;
  input [1:0]dina;
  input [0:0]wea;

  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [13:0]addra;
  wire clka;
  wire [1:0]dina;
  wire ram_ena;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ram_ena(ram_ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized20
   (DOADO,
    DOPADOP,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized20 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized21
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized21 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized22
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized22 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3
   (DOUTA,
    clka,
    ENA,
    addra,
    dina,
    wea);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input [15:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.DOUTA(DOUTA),
        .ENA(ENA),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized5
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized9
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init
   (DOUTA,
    clka,
    ENA,
    addra,
    dina,
    wea);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input [15:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire CASCADEINA;
  wire CASCADEINB;
  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0AC5022410C22FC0763800000001BFFF741A21FFC1F50F3616E4922A9963EFC0),
    .INIT_01(256'h838FE03FFFB45C000A220000715EFDFBEE183B804E73FC0081FF001C48561900),
    .INIT_02(256'h20C600007DCAE3C2F7E17B00E2FE1403FFFFF3E03027CE813E785A8C0078A007),
    .INIT_03(256'hE07008F84DF017C8FFF303F88D71F173D248479E03356B7FF71CC003FFB4C004),
    .INIT_04(256'hFE200FE07FB7881F204869CC00A6F5FFB2900000FE0060005FD21FFFF1FD74ED),
    .INIT_05(256'h496051F001D245FFA5C000007A020012A64A33A0F04D2BF3FCA1EF3D1077FF81),
    .INIT_06(256'hF14FFF81FFE600004D862380F86D25E9E7AF9EFEE7E1FCA17C07FC1D90A63F13),
    .INIT_07(256'hF43623C0FE543BE944BE0FFFC653FC8300F8206122B5B7A06B90E091C0E92C00),
    .INIT_08(256'h227C3FFE2F38D00307F8003C8704AC8D166FA6B1E444F6FF5D4FFFFEC1B98400),
    .INIT_09(256'hFC7380FFC8B37712E090012FE00453C0CCFA000F0E11F09FC4D670003F4323F3),
    .INIT_0A(256'h68FFF8DFFF079FAFD60023FFEF0601C1F8B260003FA2FBFEB4BB7FFD67AAF001),
    .INIT_0B(256'h5F1E03BFE70000A1876970003F8CD30FF033FBFCE10A70010007F9FFEE70527E),
    .INIT_0C(256'hF99960003FFC4FEF95375FFD02AD50030007F1FFEDDBE27A5D7FFF3FFE2DE7C0),
    .INIT_0D(256'hAF87F7FF4B553003FC07EDFFF28534DA08FFFFFFFFA202200600000F0038001F),
    .INIT_0E(256'hFE67FFFFF7E296B788FFFFFFFFBB20008F87FFFFFF00044E77A9618007F80E54),
    .INIT_0F(256'hF37FFFFFFFA3C7FF8F9FFFFFFFFFFFEFF731200007FE2FB1E566BEFFCE8C2001),
    .INIT_10(256'h8FFFFFFFFFFFFFFFF749000081FB97370DCF9D7FF0042003FFE7FFCFFDFEFF91),
    .INIT_11(256'hF665183601F2379DB82FF97F37E30003FFE7FD08FDC29DB7C0FFFFFFFFE0C3FF),
    .INIT_12(256'hA067FCFFC3F10002FFFFFD2C7E3E8A97D3FFFFFFFFF89FFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'hFFFFFC4AFFC7CDFFDFFFFFFFFF989FFFFFFFFFFFFFFFFFFFF865388A0183A9E6),
    .INIT_14(256'hEFFFFFFFFF989FFFFFFFFFFFFFFFFFFFF9E138B13B8011FCEBD7F7FFCFF80000),
    .INIT_15(256'hFFFFFFFFFFFFFFFFD961968D7BF00DFC79A7FDFFCBFC0002FFFFFE537FA84FFF),
    .INIT_16(256'hF841EB7F9DF309D2C88FFF331FFC1C00FFFFFF41FFC48CCFFFFFFFFFFF98DFFF),
    .INIT_17(256'h01F77E1CD7FC1E02FFFFFE00FFE8FDDFFFFFFFFFFF981FFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFF4BFF85FE4FFFFFFFFFFFE81FFFFFFFFFFFFFFFFFFFF061848FFC790BED),
    .INIT_19(256'hFFFFFFFFFFA81FFF1FFFFFFFFFFFFFFFFD61642FF59805F2FB74AF0A3FFFDE03),
    .INIT_1A(256'hEFFFFFFFFFFFFFFFFCF21CA3F79B33F57DDC060EC3FFDF03FFFFFFAEFFB4BF8F),
    .INIT_1B(256'hFCBBCAD4FFFECBFFFF3FD8DF63C7F803FFFFFFDBFE2BBFFFFF5FFFFFFF863FF0),
    .INIT_1C(256'h279A0AEECFCFD003FFFFFFE7FED7FE7FFF9FFFFFFC063FE3FA7FFFFFFEFFFFFF),
    .INIT_1D(256'hFFFFFFFFFEEFFEBFF55FF9FFFD8A3FEC031F37FFFEFFFFFFFEBA1DACFFFE0FFF),
    .INIT_1E(256'hF0FF7DFBFF883F9801B0E3FFFA3E7FFFF8EA8886FFFFE3FF0B53EEDB5BDF8003),
    .INIT_1F(256'h606E1F8FFFFFFFFFFF0A402E7FFF5FFF63C7FE30C3FFFC07FFFFFFFFFEEFFD57),
    .INIT_20(256'hF30AC4FE7FFF6DFFC7E7F70E2FFFFC07FFFFFFFFFF4FFD27FB777DFBFFAA01F0),
    .INIT_21(256'h6DFFFFC4C7FFFE07FFFFFFFFFFEFFF1FFE777DFBFEEA7E403CB7D5F7FF9FFF63),
    .INIT_22(256'hFFFFFFFFFFFFFF7FFD7FFBFBFE4881003DBFCB0BFF0FFF7BEB0C281A7FFF1FFF),
    .INIT_23(256'h9FFBFBFEFEB8FF84072C970CF9247FFB37CC1E1F7FFFF5FFF7EFF9FEC7FFFC07),
    .INIT_24(256'h10396500504BEC4E5F76F148CFAFFFFFFEDE5FEA3FFFFB00FFFFFFFFFFFFFC3F),
    .INIT_25(256'h2932FEC0BB8FFFFFEE7FDFFD77FFFE00FFFF5FFFFFFFFE7FDFFBFDF85FA26F86),
    .INIT_26(256'hFBAE1F37DF7FFF00FFFFFFFFFFFFFEBF5FF1FEFEBFB27F870C3CF098A9BE6533),
    .INIT_27(256'hFFFF6FFE7FFFFFFF7FF3EAFEBFF21FC0187DC599EBFACC8C9A3630C3EB8FFFFF),
    .INIT_28(256'hFF9242F76FD807F01078DBB9C7008E84059210C255DFFFFFF1DE9FF9BEF3FD80),
    .INIT_29(256'h143005804F6351FFE19380941FBFFFFFF02F9F3FBE0D99C0FFFF0FFDFFFFFFFF),
    .INIT_2A(256'hC387600DC64BFFFFF35FFFFFFF99C4E6FFF3FFF37FFFFFFFFF966D3607D923BE),
    .INIT_2B(256'hF8FFFFFFFFFD0BE0FFFFFFE4FFFFFFFEFF94215F9A79C01D00004D882E325375),
    .INIT_2C(256'h7FF7FFD33FFFFFFD7F94BAA4E879F00360045976EE44CC78A3444019D91FFFFF),
    .INIT_2D(256'h3FF418B6ABF881F7306CB28B351AC23D4ED3EC1918BC03CFB9B7FFFFFEEF4E32),
    .INIT_2E(256'hE9177D192F13A388BBE53A8646B29127FE16FFFFFEE39D90BFFFF3E43FFFFFFD),
    .INIT_2F(256'hE7D4584970D9AECF7D23FFFFFED3C9BC7FFFF227FFFFFFFCBFE6CB32AD98F0F0),
    .INIT_30(256'h112BFFFFFB17CDE1FFFF0F7FFFFFFFFE7FAED2CF28E0F720EE244C8CF81E8CC6),
    .INIT_31(256'hFFFFF37F9FFFFFFFFF2CB3D07EB1D020E26DA25FC2FFB957FF557B9F68AD5FA2),
    .INIT_32(256'hFF1CAFD2FCB1FD66A5FEA58A0BB79AEBB5976E0711278F873003BFFF3A07CDD8),
    .INIT_33(256'h0413BA4D0F838B1519975485866F409EB603FFFF1C1FEDEBFFFF497FCFFFFFFF),
    .INIT_34(256'h6997C5F7022F06BC579BFFFFBE9FCDFDFFFFD8BFFFFFFFFFFF9C85E8FAB23C31),
    .INIT_35(256'hFDD7FFFFFE7F43E9FFFFC9BF3FFFFFFFFFEC65E670B7BBCE867E7DCD2324720C),
    .INIT_36(256'hFFFFC3FFBFFFFFFFFFFCCC4B4D9FBC185A3F8D3161B030FD174A9767058F138E),
    .INIT_37(256'hFFFC0C505D97C6795603389B19FD95C40E7A8C874698115384B6FFFF9FB99AE7),
    .INIT_38(256'h63F97395753E683F4AF9256F80B8D176B0F7BFFF39F0D0B5FFFFE7FF7FFFFC7F),
    .INIT_39(256'hE6F9AB32D3B8912CE571FFF89BF475EDFFFFFFFFFFFFFF7FFFFC0DC9DC871775),
    .INIT_3A(256'h60359FFDA4EB07FEFFFFDFFFFEFFF3BFFFFCCDC8CF0D057F84DB558328B9E65E),
    .INIT_3B(256'hFFFFFFFFF3FF925FFFFC0DE83DA6568E287102F61A00F3548B68F44A86B0E070),
    .INIT_3C(256'hFFFF0C793E16DCC4FBAC179E50C9EC542ACD3802813A80063BDDFFF92AF7CE23),
    .INIT_3D(256'h0594DCCF4CEA6349DB74024A30A20017F44EFFFE98F297BFFFFFFFFFFFFC775F),
    .INIT_3E(256'hE95442F6F0A32463F7C3BFFCD5E946E4FFFFFFFFFFFB54D7F8F30C799E99D366),
    .INIT_3F(256'hA0437FFE398C9ADBB0FFFFFFDCF2FD9FFA700C7D8E39A1BAE42CF7C243459F30),
    .INIT_40(256'h517FF1E7DFE4E79FF0248D7CCC39C179D0287799AEA8376A00D470C2E2E3E62B),
    .INIT_41(256'hF65C0FDF9C2B8603710EE71CDE5DD104D384EE174BE7E73FBB953D7FDF1B77E2),
    .INIT_42(256'h28A2B35DF0CE9147D854A40947E7E66F8114B3FFD60E87D0977FFBFFDFF68F9F),
    .INIT_43(256'h59053C8EFEF3F0EFADA4957CFF9D055ACF7FFF7FFFF68F9FECD485FB9ABBDD0E),
    .INIT_44(256'hA40F0279EEC8F31EBFF1FFFFFCF4DF9FDA1C9DFB989EF726F1D378565D8A0379),
    .INIT_45(256'h2FFFFFFD5F74FF9FE3C5D9FB929BCD504E19BD5B5253408A2205345DFFB7B04B),
    .INIT_46(256'h758CF9FB826A2350847F830F3262DF66CDDB940EFD97FB4EC59F6CFC2D13AAA6),
    .INIT_47(256'h0570F85E0CD627C9B99E5440E5D7DF3708667BFEEB847EE13FF9FFE7AD64BF9F),
    .INIT_48(256'h9BCCB4D3E374FBF54D4DAFFFFFB62C33FFFCFFB3EFE31F9F1D4AF5FB84EA3645),
    .INIT_49(256'h46AD2FFFFDC70109FFC4F9CC27F45F507875CEE8B1A905800FCFD8F3641717E3),
    .INIT_4A(256'hFFD69B1F06766F5C654D6ECAF1E912011F88C2C054A77E6DB18FB68D81FCFE63),
    .INIT_4B(256'h2E656ECE35991631BFDF36CE7F694F96013C6B5401CCEC2C32CF0FFFFE27126C),
    .INIT_4C(256'hFF103FD6948E9042CD79F24D8FDC7E5468749FFFFEC357691F2DD3E996B3BF7F),
    .INIT_4D(256'hF37666A184DCEB7056063FFFFFFC470A6E5CCAC4D6993F7F362C66EEAD1BC605),
    .INIT_4E(256'h781E7FFFFBCE35582CC45E4F8344EF5FA8B862EE3DBBD716FAE0221946C61D61),
    .INIT_4F(256'h1CC0BC1E313D8BDE785F60EF3533C363DA59E039D13EEDD85D575269809CE608),
    .INIT_50(256'h02FB61DF32F3D2379E72C1AF6A1214E82A4738F20E9E492463FECFDFFDA44B37),
    .INIT_51(256'hAA7F8B08E14813F800C7B06D6EB7272B76F465E77B10789B3915E401DCE72A9C),
    .INIT_52(256'hA3A462D76EA28FB7BD15042FF7F3E84141CCD140DE2CDF85411024EBBD43DB28),
    .INIT_53(256'hE76360D08A1A246841B58A7FB4DEBC9756ED24FF9C03D371601377A458BFFFD9),
    .INIT_54(256'hDA396CB05FD6753F5D6724FFBC03BC5E2B177BCB0D97FE43F7E14A757D823E3F),
    .INIT_55(256'h7F7D44ECBC85CDD26D1171C1FD07D943CADE21B37DC13E24EC14D1C215C7A52A),
    .INIT_56(256'h34CAF4607FD6A0C44CCED8B56A672FD00E29223DE7BEEBF336B86767AD9255BF),
    .INIT_57(256'hEC73E4AE2EF7CD8E78A86EE2C29FE8C54F40218343D954BF60FFD0AFBEA37A04),
    .INIT_58(256'h40B9D81D505D244A6872001F1EB472BF523970BFBCE27FCD3EC2CC2FBE50D845),
    .INIT_59(256'hE63DE70B1C91AC9B2D7710BEBD22AB20F7C8C452E7D0B6CC92FA2279AA6E0CD1),
    .INIT_5A(256'h2EC70BBE1D638D23BC33A119BCB17942DE2557E22CC718924072C723A50268C2),
    .INIT_5B(256'h6AA2B100CF7F92B9E4366F6D6EB71CAE3467F841F1D31D10B29F5DFB6C1ACE40),
    .INIT_5C(256'h5B50039DEE0B1A7C24D5D39D4854D085F4E354B89FDB061C301ADA7E33C284B3),
    .INIT_5D(256'h42E5D11DE50CA95F3852C00A159142D82974D95AB2C2A1DA50BD4DB796DA31CD),
    .INIT_5E(256'h6E0455C8E1D86D032FA81F5B3F4232DB0D3CBEEEBE4AEF9D3873001AA5721FF0),
    .INIT_5F(256'h0DA619D93F774F76A37A9BCF0ED6DFD0F3767811E2D21EA539ACB441D11D78C3),
    .INIT_60(256'h90478BBEBE993B30E4F56ADF21161FD67CB53729D13C003B29B4571F91B8368B),
    .INIT_61(256'h188D1B01B7361DB9ACDD3E3A937B676639F16B9B1835C1B0FB21301A2D745248),
    .INIT_62(256'h3984B99A81189826DE8F99B27D95F6B315010A186D5511662CC0475CF94198E7),
    .INIT_63(256'h1C0E0F39FC60B08C5E2A0B1F6DAF63ADAB35A664754E8D4F3907E4A0AF561EB3),
    .INIT_64(256'h1E37A85F7F2E7B9854DE15F7399AD2F56417F5A03DE41C298B217B775F0480D8),
    .INIT_65(256'hCD2E9FC7EEC346C8E70A2E5858A40F5192248A654DD89D791E8267F87D79F86C),
    .INIT_66(256'h38876D7E61043C1D4C21E36080607EAB7470AE2703BE47F25F0C22DF0B081B07),
    .INIT_67(256'h49A63D649313DB8ED379733B5FB46FC228DBF452C03699EC66C6CAAAFFA633DB),
    .INIT_68(256'hE5747D525FFA20664867ECB004EE4B05A6E0D32A689D892AA3D99B96AF340A9D),
    .INIT_69(256'h6FC50A21343C862EC8E5246C8E43EA6AF7F406BE2B642BFC7CDF22C075FAD3D8),
    .INIT_6A(256'hBF17DAB597A17182B0293AAF08942ADE76E40865807B4BCD0B84C8571B79F32D),
    .INIT_6B(256'h4EF865BA8214390C5FF980C062DD011AD3FF29D6F53FEE6A8A8A5A2B766F0FDA),
    .INIT_6C(256'h270DDEDCD5B347DC8C0BA3E618002D40CA1AC5BD229E95853A29E6870C3D39FE),
    .INIT_6D(256'hBE18E9A9E5F48EBE2BAC181CE3F6D2F3DB6A9F37B981E696B6A4802BD0543D6C),
    .INIT_6E(256'h6FB035FCE7CEC27956BF32FBDA83EA265B9784D4593471BC0CDD7198C3686665),
    .INIT_6F(256'h181B647232CB03C5E0AFFC2D976A73B02EE137450B687DECE428DC851E111F4D),
    .INIT_70(256'h470ECD3587FAFBC02E04F6F651B63A1CE1C814E9DBEFD96732B53B1B8DE864F2),
    .INIT_71(256'h5D5BC962A4968DB3A7DFB4DE70170A015464456CE77E7AA24EB66038A661F7E5),
    .INIT_72(256'hC5CD3DA944FC0B02542F4CF93A3D24FD965C66522F11993241E6DC3E0BF2ED91),
    .INIT_73(256'hDCB7A3F33DA87B26681EECEAA48A12E276C0FDE8D4990A723AA5BF419F8557A3),
    .INIT_74(256'h464ECCE05B7FA5DCC289EF92B45A11A2E7DAE820F9871A8D3A61280620FC0078),
    .INIT_75(256'h1DF5ADA0DEFDC3094FA15241120597D39EB7F3E4AE58E056AF16ABE411D1E5FB),
    .INIT_76(256'hFDBFE0F3EB5D732A3CCE85079830FE83AABDAECAC64FC1AEE0251F60CD310CCE),
    .INIT_77(256'h41B9EDD7F83CF75DBAFB368EDA63FE8C0E45A3568D17149C05EA6EE8FE9FC695),
    .INIT_78(256'hBDDB3B60D60DA58C9227948C98A6C522669DB7E6FF348CE8F4B2D2331D9E3E8E),
    .INIT_79(256'h3772954FF32F7B4316E4AD61FE9DC95C154F3B73E826E039D476D928CC3D617E),
    .INIT_7A(256'hCD30CC783EE7E3959C4C30404EA2F80025BD04DD101C01D10FADB1B4FF66B660),
    .INIT_7B(256'hC494B4101F34D811528ABE3E201810E94EC378A4058DE59D02B049790E9C3E08),
    .INIT_7C(256'hBF2967C83F181258CF2DF8335165F2F355D7801B7D626CF8F3F8D0443B179B92),
    .INIT_7D(256'hFD41C1A8430C40E5CCE9F347B436CDF98CE9ECB7F872D9AA0A17A1871217CA95),
    .INIT_7E(256'hA93DFD5220C29A8042DA40F7F8086863B8DE8582AE8F006C5E4E84F9A7181A47),
    .INIT_7F(256'h6A6717328F244607C114412B5C0F879A0004F401C3388C028EABF7F5417EF8E9),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h82DBEF65FC032E6B102BA50C88B08491FAEFE95285730C7BE40E683D0DC45214),
    .INIT_01(256'h001C9887321882AECBBADB4BA03F0490C048FCC1521DFEFE99C695008E57FA13),
    .INIT_02(256'hFF83E815E1140C39240B47DBC9245C72C01DF8899DDCE3478D389CD36003325D),
    .INIT_03(256'hC3883B54E7C0E133E46E505E8F5C38CF60C4A343740F695C0380195CC09802A1),
    .INIT_04(256'h077B73E88DCB02FCCAB18A958ECD7FDF0301E884290006B26517B8D58BFF0FBA),
    .INIT_05(256'h97D879D26939FF9FE002FF06B3388C0F77DBA3305A75392E9550398215E68761),
    .INIT_06(256'hE00728672468D804BD5359A5610BE4B13FCD81E201F963E124F2539F9A39D3EF),
    .INIT_07(256'hFC4BCC059CC51B94144A1F0841FEF1E09F4CC383C47985D001F90CB71B286BBC),
    .INIT_08(256'hF27381C02CF4D2C0BADD2CA088E0175317BA2520715180FCFC001CBFF934F8AE),
    .INIT_09(256'h4FF3A1AC88B51765E9A62F7B060E03179C8218DEBCDCF823AE074F79F926F2FF),
    .INIT_0A(256'h0778BAC979EB8381F4E3373FD664382F91916DA7589B2DB38D7690642FF42BC0),
    .INIT_0B(256'h17057203F754F810976380928E96E437B977976DBEEA2F407C1137C410CDFF0E),
    .INIT_0C(256'hB161CFB2A28BC19065F455FC8F3DA240886BDA84F44CFB05063701D84A879E1E),
    .INIT_0D(256'h9C9288224CF5F7000CC369F8EEC85B8B3246A5005A36DFBB7F01030F92C8E809),
    .INIT_0E(256'hF5C24BF070C437E8252CAE61FF1A62B4BDC9D87B9CC1F1E0DA0AFBCA1883576D),
    .INIT_0F(256'hCE273D721FFDBDD4B9DBE83D05D3F9A5A0BBEBFA22F017FD910FCD03D4B5E6C1),
    .INIT_10(256'hD0FE393C6F37FD943300FDF71972BFFB59A5378CA4A246A149C466BF4DD5CBAF),
    .INIT_11(256'hEA2B3DB04436EF4F152418DB54C765635B686EFDE0DD08529C4D7F9BEE834D74),
    .INIT_12(256'hBC631059946F76631034765DD9CF80E0FC1BDC1FCCBC10D738ECBE4C8F3DE70F),
    .INIT_13(256'h92E96FC1F759BC0D74AE6F578E108C50E0CD08912714CF0B927548DB35B2DD5E),
    .INIT_14(256'h4DF2D01F1C0F0718651B56E789FEDF425AC828B429F30CA3EE64840D97ECCA63),
    .INIT_15(256'hF16F77BC35D17F01B585D0A0D942BB52507C37D767A6BFC111BE354207F15C38),
    .INIT_16(256'h2C75E88F0F0B7FEFC890E24BA8B6576E2DFAC436CC339DFD7F9D42893C68C578),
    .INIT_17(256'hD94ABACE2DE424EE70B99304CDADDA30757256068CCC8173E913FE2E52F9DB13),
    .INIT_18(256'h6F2D24845EBD5AED6B4337B088A553B3F5DDC2860D4D51832BD26CD9789ADF43),
    .INIT_19(256'h786167085CB9D92CAED93FE7FE4D418319051EF9FB9C7B9CA8290BB523D9D06C),
    .INIT_1A(256'h8BAA8BA0B3D3423236B64558AEE8C4DEB6D5154D1A1E979F604B17C19D1D2762),
    .INIT_1B(256'h2B2CD89F236871438E8D67FFDF5E1648F042F1D186F1CFF08B3FDA9C061AAC44),
    .INIT_1C(256'hC2DBCB00EAE0B4C9653ED86042DE83116A3F8905BC42605D8E713240A7B380F3),
    .INIT_1D(256'h9F13800107D68453A79FAAEDF01B2A583942CE2CC091A0373943F71FDBE0CB8A),
    .INIT_1E(256'hC75FBA71F1595197342A992868942E36FEA8E9EFAA8FB91ADDCB5C7FEBAE686E),
    .INIT_1F(256'h63B5815DECCC0EFEE4DAB1D169E49022CDE96F66E01FDBF235040F051BF180EA),
    .INIT_20(256'h03E536CC5718AC6F7AC2EE02C002C1B2F18A1039F4B9E8AEDA879DDAF9A678F7),
    .INIT_21(256'h6A23F20792D5063CD25C4179C7661C5E4E0F9A187EF37AB746811D839C4C0FFF),
    .INIT_22(256'h6872CF725174BCA82735DC420ABDBF330A19EF2EE44B8E6F217C10FDABF67237),
    .INIT_23(256'h2A5D86767881AFC7A7C521BB877BCF9F03AB37869E34FC62E6C2898F1FCB237E),
    .INIT_24(256'h0CBFA7738D79C9C433E3FBC105BFD4323A102BD02383557F707036E8523031D3),
    .INIT_25(256'h02C526FB69E222061A5FED910A03909B78F8DBC0ABD7DA1DFF07339B81592583),
    .INIT_26(256'h121AF00C48FE12563DFA16D23DDF09C50E256D100126C810D7DD301FBB31C9E0),
    .INIT_27(256'h37BE4F44C90F699A267D97E0148FDDF13576C011FEA8CAE02046E09E60C3C614),
    .INIT_28(256'h5E64820026AED688A1D004116828E5F76354856FB0C1378F00F26429F326ECAC),
    .INIT_29(256'h24077C865910E4FF674A63C18CE0FFA8622CC4BFF94224221E3FEB2C6A8789D5),
    .INIT_2A(256'h6D50D302A8FDE61D47C64330E3E9EC00481D2E2E5557EFF83004A3039297414C),
    .INIT_2B(256'h547777D9135A9B564B3FEE48440BCC9D1E048C81C9FC0B3C221DCAABB8A8329F),
    .INIT_2C(256'h3DEE507AA0580EF0693C206193F4BDDCDD02CEA8B5E8329EFEB91BA94BE1F831),
    .INIT_2D(256'h410C63778381CC5E413F8FBD33783D8EFC3937EE81F40D7BAA3D1DCFA63808E9),
    .INIT_2E(256'h7C30DA39D4F81D87FEEF502C0679E59C9990621916A25B659C4DEF7FD2B5B2AB),
    .INIT_2F(256'hFCB09D3E9679346AC2CF116E735831DB4F84FC7CD60C128A429EEE3747006A9F),
    .INIT_30(256'h2AD410EC0F340E451C184EEC02EF723B1336E662233A2F1FF1ED4CBEFDD80D87),
    .INIT_31(256'h6EA391971823D9D930EB0FE3267A7F9F2D3873333F401887FE15A79A14FDD8F2),
    .INIT_32(256'h25ADE47D2E727EFFC485488C07402C06F9F0822915F9D3594133B1715DB00361),
    .INIT_33(256'hC787BF8A0140E406F26608B119E9E77A8DFA3F1EB8C011B5AF8F0C96AC343F83),
    .INIT_34(256'hF7BA052A1443DFB7448F8E2EFA5C48B55F87CF2276B6F9EA4A64B8B41F7027FF),
    .INIT_35(256'hD58CBB6C716C83117C9434D2EA451CEC95B8AFDE1F3007FFF08F47CA2FD08C03),
    .INIT_36(256'hACB05AA83BC014DE67C5FCCD36681FFF1C9EF5EBAE009C03F6B17A219E61FFBC),
    .INIT_37(256'h49D7ACF320E0A7FF7C2FDD6B3328FF82F6AFFF771C71FFF80D63089C3CED0316),
    .INIT_38(256'hD38FDCE99728FE23D6BDF8037079E7E896380C86C1A8189F18E463FA2909B34A),
    .INIT_39(256'hF592141C9007EC985E351801E3668D8B9C423EC9FB06F7396933224A21D2E77F),
    .INIT_3A(256'hF59D9F1659924524E40360F2751E4FB79A696A1BC3F7FC3F6BA3E4CEFF2CF5F4),
    .INIT_3B(256'hB4018EBE1953362C34A470149FEFFC3FD789C0FB0E7C3EC5EDBA0B0017C7F834),
    .INIT_3C(256'hCB18500C3E6FFC1FE5C851777FB40EC3E910C381BF87F024F370697F7FD48B70),
    .INIT_3D(256'hDFE1DE3536301EF3E31A5EF9EFB9FB9C82C94CFD81C28F8872455DBEB897C87E),
    .INIT_3E(256'hE3991EF9EFC1F50F5FB8F3FD369FC36A6C75F99587B490901C96101BF45CF81C),
    .INIT_3F(256'h604B1DBD3A0858B9C2806ABD70B665ADA9EED0031C3CF01F23FFCD54A1301EF8),
    .INIT_40(256'h9B4066D93F1C883311B59C22383C701C43E7CC1A4A38142AF397CBF899E5FE7F),
    .INIT_41(256'h52443E082038301C1787C6B2BA20144ABF0D83F9F866E78FAFC3D4F911B20B19),
    .INIT_42(256'h2184C7FB55681C909F18A2FFAB9F3E1AF94742FA34D2783980AFCF12E3E1B399),
    .INIT_43(256'h9F1952F77F818DE7C8CFBE34320BF2A94A33F040345001DFD0647C3860381000),
    .INIT_44(256'hAE04AC747EBF6BA8387395B9619C484BBB2EFC3861381008D9CC163EE63016D1),
    .INIT_45(256'h6888CF5293A11AF35FCFF03FC15D103C103E77A1FFD011DA9F1448873FF04BC0),
    .INIT_46(256'hF3B6FDFF803C00267D9613A14198E0639F1400C6E77CED06C661FFF0D9304E2C),
    .INIT_47(256'hEF1F38C581EB8893EC8E86D8FFEC11A561F46EB8D99D79850D0916A05159A433),
    .INIT_48(256'hCDCEA6118D1E1EAB71E496E0E4AD97D8786A35CFCC501851A0FFF821007C0030),
    .INIT_49(256'h120116C1F60551CCA25F355AE46E9E13950DE000207C00326B9F3DD84FF989C3),
    .INIT_4A(256'h0442E5AC81790FD786E1C00760F8003FF1873F10E1FD814DC9CDD3F1EFE637F1),
    .INIT_4B(256'h16B0000FE0F8002DFBCBFF9535180132686FFAD7EF0BBB51A289CC510C7DFF68),
    .INIT_4C(256'hF5F7E2194D88092BE86F7617ED87F198684825C22F246118FEE9E55B001FEF8E),
    .INIT_4D(256'hCC6ED9B1CB8C58F2A9C93D14EC209B1979292D7C091CE3951950001FCFF8002A),
    .INIT_4E(256'hF44FD0D0BEAD7B3DDF2A6603090BD47B29B8EFFFC7E800280188F999FF81C8EC),
    .INIT_4F(256'h2024D1341DC4C706E2083EFFFF00803201B4458BB80788C08A4CD7F4E426EBA7),
    .INIT_50(256'hF3AEFFFFFF8080193B3A6F80C2311191E0862934E59FC4FB841965FCD529DE3B),
    .INIT_51(256'hB6460FC12BE839A0E1C5B914F517C7F082304E0E1A0C0371856FD13F1AC224AB),
    .INIT_52(256'hE3CE6C59C316CFFCF308A7B44C0AA992F44F633F30FE1435F9EF17FFFF00C00B),
    .INIT_53(256'hFF3C895D8C13DCF987C3677F041E851DFD2257FFF380800966A10F85FC9802E8),
    .INIT_54(256'h4701B43C043F95AC78089FFFFCF900093181A782120003F4C3CF6FD9CEAE1FFF),
    .INIT_55(256'h39128F7FFDD90029C9CD5783A00A03D660E6AFA359EF1BFFFEA6E4F2D306C31E),
    .INIT_56(256'hACEFF0C0C940021862671FA38694FAF81F44EBBD9EAB1E202851C17F047308A4),
    .INIT_57(256'h66351B8ACA8C7BC01B4BED75D5E98DAC4724607E04F036619905E7FFCFD9002F),
    .INIT_58(256'h31C9F7A3FA4048809890433001F801BF1302B47DD3FC004EB26DD3F0FE550269),
    .INIT_59(256'h959C533011F85FD770F33F2C487C004A892FC126AF5C0EE06037FFC6622C3382),
    .INIT_5A(256'hC865803EC87C006B0C883105A1C30E43C033F7CFDC61FE950587E3CF8B3040E6),
    .INIT_5B(256'h0C71917254FF107F80339FFFE0E1DE7F03056EE2A850524CE154381001905FCC),
    .INIT_5C(256'h30388A387F30FE319B030FADFC6A1203EE7C38300190980AD8C83931E06C002E),
    .INIT_5D(256'hDE9B93C8F4BA1C0DD2926EE01FB8F01E6A2A0BE08FFC60200F3C60B9696A95B2),
    .INIT_5E(256'hC19274870E38102AF5E147090DFFE0250781C010F7678073E0F8DBC07A747F09),
    .INIT_5F(256'hCB730F172FFFE02CCDE139A0182D207CA3F8DBD03E3F0FCFFF9C1ADDE90E0AD3),
    .INIT_60(256'h8EFD21503D57007D07F8EBD43F08F7FFFFACCBAFD410822D598AD5C000180029),
    .INIT_61(256'h40C07FC47F823AF6BF44A8B0C0E990E3FA8AB88000380021A5011F6DFFC7A01A),
    .INIT_62(256'h800038F336166D32FC8ADB0004F80730C33DCFA3FFC7E0151FFF1F706C4641BC),
    .INIT_63(256'h1A4A030000FC0338CF6025233FFFE02B1EFFC0FFDA0350C860C67F443FE3F1F2),
    .INIT_64(256'h8DC55023FFFFE0083EFFD79CB09E10E040C67FC01FC3E065160580F2E64DA8C4),
    .INIT_65(256'h7DFBAC1F51F8003240861DE01B82001457281FAA4F9ACF9E594FC40103FC1E80),
    .INIT_66(256'h60005E60FF000A4DE0CAAF2EC1131CB058FFCF8306F81780568A9F86FFFFE04F),
    .INIT_67(256'h11A2A01832C085E94C76DF8307E81FC148D18338FFFFFFA767FFBF3E1DDD8007),
    .INIT_68(256'h2E8E939E0738018308499929FFFFFFB1E79FFDFE29990436E007967EFFC8096C),
    .INIT_69(256'hA206474AFFFFF7BBF7C7DFFEDE69A627B457967FFFF8011B3BC1CB09975AA82E),
    .INIT_6A(256'hFFD7EFFE994E2E7AF4806C7FFFFC008B1E117739977061255F26125817280187),
    .INIT_6B(256'hB0006FBFDFC01B2B1A5CEE302DC8902C0FFE0478670800029D03BBC5FF7FE5A9),
    .INIT_6C(256'h11601A98B0C83047B7FD8FF0C70C00672A8BD3B3E7FF61D4FFC3EA5EC3151C78),
    .INIT_6D(256'hBFF8C3C7CF000069C148D01FE7FF6130FFE7FF3AC4ED900038079FF9DFEC1E2B),
    .INIT_6E(256'h00715C7FE3FFF1271CE7FDAAF4F9400138000FF17FFC0E27008B0218F00850CF),
    .INIT_6F(256'h1E27FFEF8EF9C0C07C602772BFD85E37048CC040504BC723F739C0CFFC000019),
    .INIT_70(256'h7C029FF2FFF8DE16007802E210494693D85C4F7BF82007E60082507BE11FF35F),
    .INIT_71(256'h001E08B007438307DF888F13FB000ECD060B80E6031AF2BBFE27FFF8B6C17F70),
    .INIT_72(256'hAA038087FB8009FD1A1101F803FBF055FE7FFFFE698596670C071FF3FFFFEC0E),
    .INIT_73(256'h1F80FCC0010B1185FE7FC4FF12CC056FD08F87F9F467F822E02D99304742B1C9),
    .INIT_74(256'h1FFCFE674D5285B64A1C8FF87FFFB90802C612C2F116FA883803000D5E03FFF8),
    .INIT_75(256'h2B2FFFF8FF6EFF0F82C1072573F7ECB0000D8E0DC60398001FFF204F000184D6),
    .INIT_76(256'h87006374736FC511A0EC4E0FE5C310001F8B030E8071FC520DFB833F86DB11A5),
    .INIT_77(256'hD097863FFDC310061C250F0F80F9F8D5000FEFFF9F424ABDEE00DFFF3F0EFE07),
    .INIT_78(256'hFE765F9A8C81F8E2001E5FFF98979A23E504DFFE3FFFFF43E40073A242D76638),
    .INIT_79(256'h11FEDFFF1DCCCF676C86DFBC9BFF1F1390036BC5536FF7DFC0FA623FFDC31C7E),
    .INIT_7A(256'h80871F9E1D601F3DDEEF664470FBFEFFBF73833FF6000000C10E9F9DCE031070),
    .INIT_7B(256'h611040EBE10EB7DF1F01871CF26020000032A03DCE3EFEF4E470004F40E18D21),
    .INIT_7C(256'hFF8087FC100000060200FEEDFFFC1E1F1B84E4F8FE7D6F9F40BFFF91EFFF5FCB),
    .INIT_7D(256'h49871ECFFEDF1807E7FFFF321E0082000E00002C0E0000003EF6FF8E03C347FF),
    .INIT_7E(256'hE7FF0F688BEE6910B950400000D98F8060FFFF80FC04C30059FF13AF807E0380),
    .INIT_7F(256'hF87C130000003F80FEFFFFF000000200013E407700710001F4006D7DFE900003),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:1],DOUTA}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input clka;
  input ram_ena;
  input [13:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [13:0]addra;
  wire clka;
  wire [0:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFECFFFC0006201806C7E84310471000781870477FB01D003E7FF0F0F83FF36F7),
    .INIT_01(256'h60C41018006100004081254ED8B8C400E7D006329FFF1F3AE7F7717EE0005F80),
    .INIT_02(256'h23C02060E080C400E7D180461A1C118020FBD03400017F00FE77FFFC01F01180),
    .INIT_03(256'hE78101E2000605F48234C01800007C003EFAFFFF7FF030001C49200C94230018),
    .INIT_04(256'h0000001D005398007E7EFFFFFFF544003F0F015AE0670048051E2848F12CB000),
    .INIT_05(256'hDF9E082FFFF19364E15B826901030541B591258E2A0CE600E38600E60C021877),
    .INIT_06(256'h77F70012416B8102501F2158C7312C10E07200FC03AA45F88AF911511FE0FD06),
    .INIT_07(256'hD2C830A4FCA3A430E1BD2EE439FC455F53CFC12D9004F40006776803FFFC7FBA),
    .INIT_08(256'hE1EDF0F1F27067858AEAB53720008B4044740800FBAA876C1AFCE5CD822E0642),
    .INIT_09(256'h990DF81540387D81A49E0900E2161121EAE74D27C51D8605EE477416E8EE83B0),
    .INIT_0A(256'h59540803E041EE7A6A371C07E3D2EF837FDB3912C3F146D0E3B458E7A73195B1),
    .INIT_0B(256'h1894CC778E024BC5FB053939D5E61910C349FAD00A7057F806368CE8080113D0),
    .INIT_0C(256'hCC1C336E131EB090C32D0C603918BB754173C622C80003C0F2EC0007E16D348E),
    .INIT_0D(256'hC1ECA9F6B1708991E020C080880202D0051C1003C1FAA81EA806E4A733A5F765),
    .INIT_0E(256'h213A9820011E4281CBFFF000019DFCFE58C805975C8873B12178F24F833C50C0),
    .INIT_0F(256'h8351408003A63E7EC50B7455580961757F07E33DE20F918000A96AE4F17810D9),
    .INIT_10(256'h68144634500F712A7B0DE390013D180000364B167298CEE1E5570C70093F5241),
    .INIT_11(256'h97DDE3860C342100027E5E84810848F5E53A0C740B3ED610025671C00207EEBE),
    .INIT_12(256'h0382331AFAD0416D4420CCF00B1CB62102A670F8FC36697E5C71D4AEFD8434B2),
    .INIT_13(256'hC014E87C0B1B266C0230787F81B4679B494952632B084167E19E619B5C0D8900),
    .INIT_14(256'h001A7C3FCF66E7B035785897168820240B77E1E271E19A000011AB93EAD12851),
    .INIT_15(256'hB75A535B9E88A570736FE1BDA10F17800249A0C541C3AD01421DA86C0B13A559),
    .INIT_16(256'h20F5F049930766800085402EBD9D94936219E86E0B1E802C03545C7C049353F8),
    .INIT_17(256'h10DAE86681F882ACC19ED02E0B1D3E0106281E38020A602B43B74C5B25810722),
    .INIT_18(256'h52100800090D060092901C0013F8EE3EF61C7AB4D27DCE38D0992276AB277980),
    .INIT_19(256'h3F081F801BDCD26DDADE2ACE527F954DC003274BDE22740017DFF41A3B2733F4),
    .INIT_1A(256'hC14CD6AF5846FE153C012B40A248CC800FEDA5F092A84E4604E4C200931E3E00),
    .INIT_1B(256'hA603B76CF42FAA0018FB910D1AF1A0B810770402121D3641D28D8D001183D7F0),
    .INIT_1C(256'h025544A0E122C6141C7F0702B31D6FD040024C00540B9F889C07425F456EB020),
    .INIT_1D(256'h008F0402831D27E0100080003A0990819254DE6101647B40C56395CBFF10A200),
    .INIT_1E(256'h960D903F8804470065AF850813400A00ACE3F4BBBFF0C8B808ABE6363FF62F1C),
    .INIT_1F(256'h6D81A81DA003009837224EE8207978B8004D931E879F2BE4738EAE025F0C2AE0),
    .INIT_20(256'h000000000000000001014C3D726B850FB71E2300430C1A10C533003FC2005100),
    .INIT_21(256'h040FF73F7FB08000000000000000100000000000040000000000000000000000),
    .INIT_22(256'h0000000000000800000000000800000000000000000000000000000000000000),
    .INIT_23(256'h00000000080000000000000000000000000000000000000000391C7F1073C000),
    .INIT_24(256'h0000000000000000000000000000000000FAFBFFFE6EE0000000000000000000),
    .INIT_25(256'h000000000000000000010AA5EE2D000000000000000000000000000000000000),
    .INIT_26(256'h0001000118010000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000810000000),
    .INIT_29(256'h0000000000000000000000000000000000000014000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1
   (DOUTA,
    clka,
    ENA,
    addra,
    dina,
    wea);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input [15:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire CASCADEINA;
  wire CASCADEINB;
  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFAC41AE3EF056C00006800000001BFFF6401DE0001FC7CFFF8F8FC39609C103F),
    .INIT_01(256'h7D400000000000000E01FFFF8162D2F7F01E7F07E18C03FFFFFFE01C0877FEFF),
    .INIT_02(256'h3FC1FFFF81D10EF1E7E0FF135D0003FFFFFFF0002027FFFEFE787AA3FF8FF3F8),
    .INIT_03(256'hF571FF1F90000037FFF30000E07F817DB27868D1FC2460800920000000000000),
    .INIT_04(256'hFE20000090F9D01D10786F43FF2CEC002CC00000000000006031E00001E2ADF3),
    .INIT_05(256'hE06011EFFE1E3C0028E0000000000012C039CC5F005AD9FFF1D01FFFE3B0007F),
    .INIT_06(256'hF13FFFFFFFFFFFFF8D85DC7F004AC3FBFFD88FFFF842035F7C0003E2EEE9D012),
    .INIT_07(256'hFBCDDC3F006BC7FB98FB8FFFFA1C037F0007DFFE1C8650E01000008FFF00DC00),
    .INIT_08(256'h28028FFFDBBD2FFF0007FFFF7B7830FCF990408FFFAEF000838000013E460400),
    .INIT_09(256'h038FFFFFFC7D9BE0FFFFFE1FFF8FD000F305FFFFFFEE009FFB0D8FFFC068DFFF),
    .INIT_0A(256'hC7FFFF3FFFBE7FBF00000000000001FE01CD9FFFC03E07FF04463FFE1B250FFF),
    .INIT_0B(256'hFFFFFFFFFFFFFF7E78248FFFC00E0FFF20CC7FFE1D858FFFFFFFFFFFFEFFC240),
    .INIT_0C(256'h02D49FFFC0009F19F8FFEFFEFCC6AFFFFFFFFFFFFCFD81C062FFFFFFFFCD1FFF),
    .INIT_0D(256'hF57FCFFFFC6ACFFFFFFFFFFFF07F957CE47FFFFFFFCF1FDFFFFFFFFFFFFFFFE0),
    .INIT_0E(256'hFFFFFFFFF9BC159BCC7FFFFFFFD31FFFFFFFFFFFFFFFFFFFF8C49E7FF807FF4F),
    .INIT_0F(256'hC8FFFFFFFFE33FFFFFFFFFFFFFFFFFFFF84CDFFFF8011F065637DFFF1907DFFF),
    .INIT_10(256'hFFFFFFFFFFFFFFFFF87CFFFF7E04EF8FD1CFFDFF19FFDFFFFFFFFFFFFE43DC3F),
    .INIT_11(256'hF97CFFFFFE0C4FE85F67FDFFF9FFFFFFFFFFFEC7FF3B9E7FE7FFFFFFFFE83FFF),
    .INIT_12(256'h5FF7FFFFEFFFFFFFFFFFFF38FF4787FFE7FFFFFFFFD87FFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'hFFFFFE197FBFDFFFE7FFFFFFFFE87FFFFFFFFFFFFFFFFFFFFF7CFFF7FE7C27FD),
    .INIT_14(256'hFFFFFFFFFFE87FFFFFFFFFFFFFFFFFFFFEFCFFC27C7FEFFEB40FFFFFD7FFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFE7C79F3BC0FF3E3E667FE7FD7FFFFFFFFFFFF91FFC95BFF),
    .INIT_16(256'hFF7C10FE7E0FF7E1E70FFD3CF7FFFFFFFFFFFF80FFF49FFFFFFFFFFFFFE83FFF),
    .INIT_17(256'hE6162B630FFFFFFFFFFFFF83FFF09F8FFFFFFFFFFFE8FFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFF81FFF87F9FFFFFFFFFFFC8FFFFFFFFFFFFFFFFFFFFFF7C1BFFFF87FBF0),
    .INIT_19(256'hFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFE7C9BDFFFE7E3FC60168FF73FFFFFFF),
    .INIT_1A(256'h1FFFFFFFFFFFFFFFFF7DDC1FFFFFCBFEF42E0F303FFFFFFFFFFFFFC7FF587FFF),
    .INIT_1B(256'hFF3D0633FFFF37FFF8F606AC9FFFFFFFFFFFFFE6FFA47FFFFFBFFFFFFFE8FFFF),
    .INIT_1C(256'hCFAFC4D60BFFFFFFFFFFFFF9FE3FFFFFFF3FFFFDFFD8FFFC07FFFFFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFFE5FFF7FFBBFFFFDFE0CFFF000FFFFFFFFFFFFFFFF3D1F99FFFFF3FF),
    .INIT_1E(256'hFBFB3BFDFE0EFFE0000F17FFFFFFFFFFFF6D9FFBFFFFBFFFB7AFCCD31FFFFFFF),
    .INIT_1F(256'h606003FFFFFFFFFFFF8DDFDBFFFFCFFFD7D7F97C0FFFFFFFFFFFFFFFFFBFFE2F),
    .INIT_20(256'hFC0DDB1BFFFFBBFFAFFFF998AFFFFFFFFFFFFFFFFFFFFF9FFCFB3BFDFF0CFE00),
    .INIT_21(256'hDFFFF9FD2FFFFFFFFFFFFFFFFFFFFDBFFCFBFBFDFF0C80003C87020FFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFD7FFEFBFFFDFF8E01003D8F0807FF9FFF8BF30F1FFBFFFFFDFF),
    .INIT_23(256'hFFFFFFFAFF9E7F84070C3D83FE27FF75FB0F3FFAFFFFFDFFFFFFFFEC2FFFFFFF),
    .INIT_24(256'h1038A29FFF8813C5FC953FBA7FDFFFFFFFFF3FFA3FFFFDFFFFFFFFFFFFFFFE7F),
    .INIT_25(256'hDCD53F3A7FDFFFFFFFFE7FF49FFFFDFFFFFF7FFFFFFFFE7FBFFFFBFCFFBC7F86),
    .INIT_26(256'hFF7EBFF9FFFFFCFFFFFF9FFFFFFFFF7FBFFBFBFB7FAC7F87003D2E0757C11975),
    .INIT_27(256'hFFFF5FFFFFFFFFFFFFFFF9FBDFBC1FC0007C1A061781F71B02D53F3A7FDFFFFF),
    .INIT_28(256'hFFFDFAFBFF8607F00078000613FFD30307753F3BFB9FFFFFFB3F7F3FFF3FFE7F),
    .INIT_29(256'h043007BF939D64000376BF7FF1DFFFFFFF9FFFFFFF33FE3FFFFFFFFFBFFFFFFF),
    .INIT_2A(256'h037ADFFEF1C7FFFFFB8FFFFFFF33999FFFFFFFFCFFFFFFFFFFFB16FBCF8723BE),
    .INIT_2B(256'hF22FFFFFFF53A0DFFFF3FFF57FFFFFFFFFFA17BBE7A7001F0000D03FD1C4EF04),
    .INIT_2C(256'hFFFBFFECBFFFFFFEFFFBEFF8FFF710030000CF8901959FF8233D7FFA67F5FFFF),
    .INIT_2D(256'h7FFBE74AD176600710609B9A3A86EFFD0E381FEA77C0FFFFF24FFFFFFFD3A7CF),
    .INIT_2E(256'h00093F2594F08FF8AF1C189A2BC890FFF4A7FFFFFFE7C60F7FFFFDE3FFFFFFFF),
    .INIT_2F(256'hE73E3D2B9B81419FD517FFFFFDD7F667FFFFE9FFFFFFFFFE7FFB37F2D9E60000),
    .INIT_30(256'hF577FFFFFC17F207FFFFF8BFFFFFFFFFFFDB3E27D7FE0310001FFF8D91010CF3),
    .INIT_31(256'hFFFF10FFFFFFFFFFFF937F3D83FE200000107D87060021F7FF3F1FEF912DFFBF),
    .INIT_32(256'hFF9B733F03FE020102037814E80003EFBD7F0E0683E7FF96751DFFFFFC3FF237),
    .INIT_33(256'h7BEE427EE800031D197F118607AFBFA7733DFFFFFE3FF217FFFFABFFFFFFFFFF),
    .INIT_34(256'h017F1607032FF9EF7395FFFFFE3FF61BFFFFE77FFFFFFFFFFFD3731F01FE0330),
    .INIT_35(256'h19C1FFFFFFBCF413FFFFE77FFFFFFFFFFFF3931B81FE06F883FE06E7A403920C),
    .INIT_36(256'hFFFFFFFF7FFFFFFFFFF33BB28CDE02E1DBFF88D6E65FD0FC072A51F705AFFC9F),
    .INIT_37(256'hFFF3FBA99CDE38805DFFC6F3F81E653C0E2A746F463FFECC38A07FFF3FFC6C0F),
    .INIT_38(256'hEC00F7EEC680109F0E29F03F821FFEAD6CE0FFFF43F82C62FFFFFFFFFFFFFFFF),
    .INIT_39(256'hA629E763139FFE9E39E49FFB01E08045FFFFFFFFFFFFFFFFFFF3FA311CDEE787),
    .INIT_3A(256'h80227FFBD9F2005DFFFFFFFFFFFFFC7FFFF33A310EDEBC89881F1E7C48465AA3),
    .INIT_3B(256'hFFFFFFFFFFFFE47FFFF3FA11BDEFD96F787203B2870C03097F29946F879FFFDE),
    .INIT_3C(256'hFFF0FB80BEDF700471E1180323ABE3EED7894A2F811DFFCF5A61FFFCCFFB2870),
    .INIT_3D(256'hA6F17323CE5DF087F720748F801DFFE7C9F0FFFE0DFCF971FFFFFFFFFFFFA7BF),
    .INIT_3E(256'h99003207801CDFE7D9737FFC73FBF82AFFFFFFFFFFFD9CBFFFFCFB801ED8BCA6),
    .INIT_3F(256'hDF70BFFF89EB7C1C7FFFFFFFFFF8FDFFFCFFFB840EF880C22E6EF83B241B6011),
    .INIT_40(256'h2EFFFFFFFFFCFFFFFA7B7A840CF880FE9F947879717FB1FBF9800003001C1FE7),
    .INIT_41(256'hFFA3F8041CE8803FE6E378FD32EED1FF2A10967680181FE7FCE73FFF9ED09C3C),
    .INIT_42(256'hFDA138FC12EF71ABD450967F80181FF7E6E69AFFE8C0102E88FFF0FFFFFEFFFF),
    .INIT_43(256'h4F105F2D001C0FE7EB74BDFE7E040CA4D0FFF0FFFFFEFFFFF3EB7A0018F899CE),
    .INIT_44(256'hEAFD3EFCF34D03E027FFFFFFFFFCFFFFFD837A0018D89DE9F19830C6A2EC6396),
    .INIT_45(256'hDFFFFFFEFCFCFFFFFC5A3E0010D89DA7F29832DBAF6D40F1FC90587C01180FD7),
    .INIT_46(256'hE8731E000028B3BFFBFE0B0FCF7E2063251467F8011804E7AA795FFE7392CCF9),
    .INIT_47(256'hFE9D0C86DADC3809DC97E7B5011820B7AFFCFFFFFFCF3F7EFFFFFFFC5EFCBFFF),
    .INIT_48(256'hE416C61423980083CE415FFFFFCE9C0C3FF5FFE79FF81FFFE0071A000428BBBF),
    .INIT_49(256'hC7393FFFFFB21E66FFF3FFE95FF89F7FE853381030689A7FF03226239C3FF801),
    .INIT_4A(256'hFFE07CE767FBCF7FE04B9831702883FEE07524227EA6818CCC1797280190017F),
    .INIT_4B(256'hE47B9835B4489FCE402400326C108012009603A001901307829B1FFFFFC29DE7),
    .INIT_4C(256'h00E8001885301031031066300F90028F805F7FFFFF44D8A6FFC84C0B77645F7F),
    .INIT_4D(256'h021DD6140590042FB0297FFFFFC7CB7C9F9119143770DF7FEA6298143CC89FFB),
    .INIT_4E(256'hB839BFFFFDFF94BDDF0B21D967E80F7FC2FA9C143CF8971904781DF507001F1F),
    .INIT_4F(256'hFF105FD8C3D08FFFAC779E1434F8830424381FF510FEEF78141E028401900007),
    .INIT_50(256'h98E79E24303883806191324801CEFE00460778E41F900243AFDE7FFFFABE24CA),
    .INIT_51(256'h5790A8F11F3000042391F35C7FB800A0A11C5FFFFFF63811F6076BFE0521EFFF),
    .INIT_52(256'h70B39D707FBC001A041C32DFFF140846AD7FF4FF1E00BFFFED09DA103CB88B2C),
    .INIT_53(256'hF9FE4CABF545047F8EFE7900365F9FFFF9A6DA041CB8937E9FF3002698000005),
    .INIT_54(256'h68F99C707D47CCBFF3BCDA043CB8DFC7FFF70402C200000378B287377D9C003E),
    .INIT_55(256'hDB569A173C3CF1A47DF00E00020001035D90C6E07DDE007B212AFDC5F860E53E),
    .INIT_56(256'h3CFA0B80001020C7218326E4787C000FD4B73ED8C7F15FFD58387F1FD103B37F),
    .INIT_57(256'hCA0B5367387400728F37E01E38109FF9107FFF8F824FA27FC7760E143E187BE8),
    .INIT_58(256'h24BE5800A17CA7FCEF81FFF01F0BFC7FED498E043C197FF8380233C08190D846),
    .INIT_59(256'h69C3F8FB1F1FFD7FBEC7EE043C99D0DF0FFF33ECE010977F9700B1D338E50047),
    .INIT_5A(256'h9383FE041CD8DD097E33D31C3C46197E75173BA0BC1000619C7F4022867CA3FA),
    .INIT_5B(256'hAE22D3070F3813BF6F0D18493E500049DFBE07BDFEAC811D32FFCD077F3BBEBF),
    .INIT_5C(256'h28350C143EDC001B9F0E6C6E96AEAE066CA0C707FFFCFF43A7673F843058DC9B),
    .INIT_5D(256'h7F73AFFE3FFEFA9FE6682D15F5F8BFD7A61F3EA03158FAC0BFBF8C7707FA3248),
    .INIT_5E(256'h0A7CB227E1F19308C197FE203CD87BB1F2BF22DFC075FC7F0E01101B7CAC0013),
    .INIT_5F(256'h7D21FC203CCC4B895EFB2BDBFF19FFF0052C10983F7C006F3E40CFD7DFFFE978),
    .INIT_60(256'h0FC73BE77F613F3011BF0B1F3C58001ABF5ACF25DFFFE6B8AFFFA11791332187),
    .INIT_61(256'hF39F127B2C9802467F4ACFD9DFBB0E803FFE947B183B00736300F5E22CCC667E),
    .INIT_62(256'h7F3A4FFCFFF868586E0FFF6B7C7B7F4AFD30FFE06CCC23E77FF77FBC79BF9FE0),
    .INIT_63(256'h100E6FC1FA1780FDFE90FEE36C44419ADA68EFE38FB08EC0E3FDF66A3C98012F),
    .INIT_64(256'hFF08DDE37EC4588070B10CF0500103F4E47B082D3C9801D07F9B0FF083F0B1FE),
    .INIT_65(256'hFF39023820C086FE69232E4F59D800866F9D7DE193F5A03E1F0667C1F3E9F865),
    .INIT_66(256'hF4347D07E0F8037F9398DDE38FED121AF47F2FC7CFF299F63F83D5E20AC4F907),
    .INIT_67(256'h901C7F63870E3CFECF0263DFDFFB80399F94CFFE01E3618FE7CCD08F9EE73FDF),
    .INIT_68(256'h30F381BEEFFA9782B761DFBD00461A27FF9FEAC1EE9DB90A7B721B777FD80437),
    .INIT_69(256'hB403C104CB94DF59FDFA4AA41281FE7BEFF5211BC39804D78C3DCEC6050631B0),
    .INIT_6A(256'h7ED8A0370E41E7DCC7563EE4751805EF9E228CE3E0872CA16B83C79F87FE13FF),
    .INIT_6B(256'h99E09A785FD8072F9F25A7C3E185253497FFE7DE53FC07F5B6206BD595B2118E),
    .INIT_6C(256'hC714F6C347CB2A53A7FFDFBE5BFE800BB501FED24A66890C5C6F4C7B11DDFA4E),
    .INIT_6D(256'h9BEFF9ABBC07814D3485E00CA726DD88E156C7CFCF0DCFDF3CB7001683D8028F),
    .INIT_6E(256'h178C0A21262EDECBAAA64B075F0E3DC636F8000A01980C5FECD46806DBF8286A),
    .INIT_6F(256'h933D5FFE6BC2DC1D9CB00013C2AC0AEFCEF8318B4FF833EBEFF7DCA71DE78178),
    .INIT_70(256'hFCF03002F39C0B7FCE1C9098EFFF33FBF7B7DCCDFFF0021202A4FEA41899FFD9),
    .INIT_71(256'h9D00A61A7BFFA7F5B0AFFCC27FE000784501F8B6401BF3DB8D10AFF823C76D6E),
    .INIT_72(256'hF2BF7DE99F000155B2A940CE097CEBECD63FFFB33E76E30E76002001ED4B18EF),
    .INIT_73(256'h2A4B1F8C28483DC350E7FFF93903E07D2500000112CDE58F3FA4F037CBFE3575),
    .INIT_74(256'h6C4D7FE07407DEF6E700106002841C9CF9FE38E2D3FE77AEB92368E0CF000046),
    .INIT_75(256'hCC02004003667B71B18BF3FFF7FD62AC5D6260F32F80E08784AB5FFF133DE90D),
    .INIT_76(256'h03904C3FFEBEB2F4A39FFDF8DFC0F03F85040F4A05F0D015ED6FFFE0F1846297),
    .INIT_77(256'h9F9FFDD45FC0F0C295B97E0F015849B571AFC01012226E3DFA07811000953AA6),
    .INIT_78(256'hBB80F8EF096A29A8A95EF20D1EE594739949CFF800B5E20C0D83707FFE7F8A50),
    .INIT_79(256'h0F4DFD4E72AC1C1E0A13BEFE00962B18F16A44FFFF7F7AD1142EC1884FC160C1),
    .INIT_7A(256'h42844807C05C3B18806AD5FFFF2B76EBC5E2885957E0006F35D8FCBF1140BDF7),
    .INIT_7B(256'h382741EFFF9F6AEA9C709E01A3E000641058F9BCA091F4832FDFF0C2E75C7375),
    .INIT_7C(256'hC0BC200EBFE0026030F2F1282051F2D929ECBC40E3876A76DC675983C04A301E),
    .INIT_7D(256'h12A9FDBFF07847662FF7EE2441F74E660E10AA200028E039F000EE7FFF9B7A62),
    .INIT_7E(256'h65324786523B05CF1D5C3FD0003AD8484048DC8F4807920A80FC0028AFE01263),
    .INIT_7F(256'h1F42400A001FB83000416E40200B5D93003F4401E7C0005480CBF5C2F200E593),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h02A03DBE1802A4730014D70CC8C0009D20C9E8E9341C02C75C4E533BA62D2D6B),
    .INIT_01(256'h00002F8813E000A6119BE894001C1AE5A2E9C27D73F61E012E424235000BE08C),
    .INIT_02(256'h8193FC04E32402FC49EC4EE7C3D640C13EB087F4021269380D83924DF001A861),
    .INIT_03(256'h64F48BBAF81538C018A0638F061A59307D4751B370033B6000002EDF416000B1),
    .INIT_04(256'h982E200706143200F771C8B6FE0368E00001CF8169F800A98103E131DFEF0FF3),
    .INIT_05(256'hE330DDF3BD04E960E003FF01F3F00022801FA5932C6003E721DC882468197780),
    .INIT_06(256'hE007387375500038403FADE627E158F1A4E6F8227803B400EB132060044E120F),
    .INIT_07(256'h003F3F173D21E0EBABA468F77802C3004E62C3FC080E741FE3159C786214B983),
    .INIT_08(256'hAF74F63E300A810067F1583F0012D49CF5109CF00F8D52C3FC001CCAF8E80084),
    .INIT_09(256'h2AF30833104EDC86DD07B3A41B80FEC0FC021C8B7818000110F77F603A6732ED),
    .INIT_0A(256'hDFB5381784D94561FC033BC3D038000E0E873D94FFCFE46FD733765530089E00),
    .INIT_0B(256'h1F017DEFD05800230DD751A2CFCFDCFE72F270D9B105440000760078900244F3),
    .INIT_0C(256'h8DDEDC5AE309F57E107BE2C040C4A900647439F8080210F9DD38E024A5512361),
    .INIT_0D(256'h669E7F01430774006430E0001C07D073DB79140C24F406C37F01FC9FB0E01028),
    .INIT_0E(256'h4C31BB80140B380FCEC44C4C00B912C7FFC9FFFF74E00000414E483033105798),
    .INIT_0F(256'h0241D50DC12872A77FDBEFE307E00000603E581B93309F08691A3BB9CB067800),
    .INIT_10(256'h3FFFFFE37FE00010329FDC0759B17F0C3B37C87F4B0D4000FEB97DC0280A6830),
    .INIT_11(256'h94145C53E4B737983700E044DB23F800BD5D31F82902E86F43FAD3441123D287),
    .INIT_12(256'h9E32EDBB5B837800BC089AF83011B0F1079C51C0300D82079FFFF9D2BFE00003),
    .INIT_13(256'h3D50CD780097B00194A0ED88703AEE801FFF6FB737E100031B905824C4B2A78A),
    .INIT_14(256'h8E8C7E00E02C3C879AEFF7D9F90100025513380848B1770BC635FA0058078C80),
    .INIT_15(256'h0FDF78244D208001A2E8885E51832F2A703C7F3F697CB0003E105D9C001C2006),
    .INIT_16(256'hC4B098714782A32BA0EB7FB6EF77780013956F98000E41FA9E06BE86C0191284),
    .INIT_17(256'h7188C7CFFA7F62018F89F398021E43CC8E0161E0603EFA8807EDF0C70F000003),
    .INIT_18(256'h5EFB249880634313840043A06474E4C80FE4E35352308003C8AE1C302303A00C),
    .INIT_19(256'hB71E00F020694C4401E7D89053308003D5751E003C05E07FCDB797B4F45BE682),
    .INIT_1A(256'h016A7CB48F3C8033F1F07400A96338FFDA6B8FCCFD43B4015C190738C07C2183),
    .INIT_1B(256'hFAAAE8003C6046FFC43A9FFFB812D307CDFEFE20C1E5C0F8270030E83873D903),
    .INIT_1C(256'hC04C77FF1C45BD06FDE100008A0780014600347800FA191D00080BCC837C00F3),
    .INIT_1D(256'h61F00000EA360453A900171B00DB8B1F060391F8E37C2037E5F3FF0065E1DB7F),
    .INIT_1E(256'h6F80362700C9C2580B132A7087782E37FFB6F7E0337F486DC574D3801C62E281),
    .INIT_1F(256'h0CB4362783300EFFFEC730314214218DD53EE0981FC27581E7FC1000606880E2),
    .INIT_20(256'hFCE9BE3986F47CD8DFD770FC3FE7D2411FF30000358880E769001A8500A61658),
    .INIT_21(256'hCCCFD4FF73E5F9C027E180006A4E007F1A9016818013F21864920A3C03300FFF),
    .INIT_22(256'h9FFC108036F0217B6CC00F81F00EB79CAA1ED9B163338E7FDE331B052F881FC4),
    .INIT_23(256'h7180160180D7E72844B45EA001A3CFFFFDD841781E091777CC1EA7FFFFDAFDCC),
    .INIT_24(256'hD71849E00C89CFFFFDF2BD3E1F809E92C99F65B7E39DC9DC9FFCE11095F00D37),
    .INIT_25(256'hFDA8BA847FDDBFF6E9D883F6C30DAE9A87FE1C30AED7C4FD6A00C3E00058A52C),
    .INIT_26(256'hE07BAFFFC3FEE19BCBFF28600ADFE6FDA402ACE00010C43F213C58EC0E81CFFF),
    .INIT_27(256'hC1FF10E0780F9AE68802AC000817C0DF037F5EE40F00CDFFFCDD82E067DC7FA2),
    .INIT_28(256'hEA033000181443D7253FA8648980E7FFFF4EA57027E14FC8F11097FFF338CE0B),
    .INIT_29(256'h1DFBF3779880E7FFFF8C07FE0BEF007AC08CA77FF97F00B3C3FF74C0040704A3),
    .INIT_2A(256'hFF8287FF0FEE1824C29607F3E3AF127C86FF81C0FB477A88AE0380806C0CD293),
    .INIT_2B(256'hC8B36FFEF35C83A0865DB98147EFFE98CB030080301489A31EA592F23980339F),
    .INIT_2C(256'hC29DD781606E7DF9EC031620600EBC63C3A846DA3180339FFFE8F9DE3FE1FF4A),
    .INIT_2D(256'h7503DEE0607EFE61412187483000318FFD51B8FC0FF7F3D15AB84BF073F80F9C),
    .INIT_2E(256'h7D59D3CE08C01187FF352BEE1FFE1BEB7E4243E0F38DDFBC239D5F8070328D32),
    .INIT_2F(256'hFF1BAFFF97FE0F85AAE7F871E3BC71C0311D9E80F00B4EF3118390C0E0FFFDE0),
    .INIT_30(256'h805FFA739E28027F63FEED90220B6EA2B24334C0C0FDF8E07DDA438F20000187),
    .INIT_31(256'hF17AA648F802C722D9C66CCC01FDF8602E3A770C24000087FDB7F63307FE3FBD),
    .INIT_32(256'hC082278E01FDF8000E85008006401007FF7FE24D17FE3CD798FBDAFF6F200150),
    .INIT_33(256'h0D87858207401807FC7FF8711FFE389674069C9EF0A000BE707D37697C022765),
    .INIT_34(256'hF9FFFC101FFC204E42276D8F4130001A8073735FBFA6C35CB0CCCAEE00FFF800),
    .INIT_35(256'hFDAE3CEF0250604A806E68CF13A5E9422848AE1C00FFF800198FC7C229501003),
    .INIT_36(256'h704E34C244C1F0A3C4607F6809EFF000099FF7E3A1800003F9F7FE701FFE0043),
    .INIT_37(256'hB2E0EFE81FEF5800733FDF6330A80183F9EFFF071C7E0000FAE12712CB201321),
    .INIT_38(256'hCBFFDFE334A80023D9EDF803707E181077303C7C0E12D211400759AE9BCE79D7),
    .INIT_39(256'hFBF5FC1F93F810002F0D95EE0C976E4EE80124C6461E71771FE0C7D01FDD1800),
    .INIT_3A(256'h1AAC9E801D39BE66A000EEC1B406A78D52E68FD03FF80000B3DFFFC6B5AC02F7),
    .INIT_3B(256'h880111A80B7F342FF378DFE37FF00000A7FFFFFF057C00C7F3F1F70017F80008),
    .INIT_3C(256'hC00EDFF3FFF0000087FFFEFFFCF400C3F7F7BF81BFF800181C9788003E5F7427),
    .INIT_3D(256'h17FFFFBD14F000F3FFF7BFF9FFC600005D1287012E7F7023D40048A8E1997F0D),
    .INIT_3E(256'hFFF5FFF9FFFE02000005FB0139E3E091D600E08A4B8801CCCBB85FE7F7E00000),
    .INIT_3F(256'h002287413DDFE7C1C600EE82B38BC92807D19FFF1FC00000D3FFFDDC13F000F0),
    .INIT_40(256'hE5001942FC83A1CC2FE41FDE3FC00000F3FFFCD781F80822EFF1FFF8FFFA0000),
    .INIT_41(256'h11A43FF83FC00000EFFFFEFCA9E00802FFFBFFF9FFF918704F80A6011EADFCE1),
    .INIT_42(256'hF3FFFF9375A80050FFFADFFFFFE061E06D4C8B0238C49000AD3F8BA84AE3C287),
    .INIT_43(256'hEFFFFFFF7FFE120009F565043AC30100AF3044C98073F1A7EE447FF87FC00000),
    .INIT_44(256'h0BFF8F047EAE07C10D7F928F007EF0D7F94EFFF87FC0000000FFEE5144F00011),
    .INIT_45(256'hCAF7FC41635E201DDD8FFFFFFFA0000009FF8F9F4D90001BEFFAF7873FFF8600),
    .INIT_46(256'h7136FE7FFFC000004DFFFFAA61380183FFFBFFBBE7FF8CF8038D6D00DF8D81C1),
    .INIT_47(256'h0FFFFEDA70D80103FF7AFD40FFEFC466000D2D40DD6D042047F3ECE1216638CB),
    .INIT_48(256'hFE3BD0C01D9C2374051DB480EEFB00248391CCCEB06F1CED23FFFFFFFF800000),
    .INIT_49(256'h02F8CA01FE7EE6200B80CC18383F1CE102FFFFFFDF8000006FFFFFD237F80002),
    .INIT_4A(256'h008C1C067E020E09011FFFF89F000000FFFFFF1EE6FC0090FE3FF2700FF91FFE),
    .INIT_4B(256'h13CFFFF01F000001F7FBFF82F2D800D07F9DFDE017FD70CEC0F83E111C453380),
    .INIT_4C(256'hFDF2FE0630A800C0FF9D7A701A76C07760780F023E1767600D861C3EFE370F19),
    .INIT_4D(256'hFF9C4CE03B7C800E70F912042C05DD2083461C03F609069019AFFFE030000001),
    .INIT_4E(256'h08FFD6403A93812005451E3DF604F5DA2CE71000380000038182E38688A00000),
    .INIT_4F(256'h02530F0BE20010E0FE67C000000000028186FB80DB600020FDBC5C9D14EF1440),
    .INIT_50(256'hFF0100000000000083206F83FBB00011FF7EB92C0C383B000077C2F462A177C0),
    .INIT_51(256'h660E0FC3CBA82000FE3E792C13683800007FD5B851E0040217800F00E5018B51),
    .INIT_52(256'hFC3C2C7802993000004F6A44017404011E809F00CF000FEDFEDEE80000000001),
    .INIT_53(256'h002F730DC1F62D007D809F00FBE00BC3FEDDA80000000003A6D10F83DD280200),
    .INIT_54(256'h88004D03FBC002AFFFF4A00000000001F181A7803E700308FC3DEFC80101E000),
    .INIT_55(256'hFFEF008000000003F9CD57813732032A7F1F2F830650E40000071D6A02A33FC2),
    .INIT_56(256'hBCEFF0C0013802EC7D9FFF83802B0500009717B408ECFFC290000800FB8010F2),
    .INIT_57(256'h79CDFF82CAF38400008A12C383DF8A40C6D80801FB00081E7FDA100000000003),
    .INIT_58(256'h00000078C527000B566C284FFE003E0B74DC0C0000000003BE6FD3F1FF38028D),
    .INIT_59(256'h5160284FFE00200DE0BD0322000000078F27C1E7FEB802047FCFFFC603F3CC00),
    .INIT_5A(256'hBCF987EA800000070F8031C7F47402957FCFFFCFDFFE010000051030FE31F00F),
    .INIT_5B(256'h0DC191C2571E008D3FCF9FFFFFFE018000019108AE64000C3920006FFE60200F),
    .INIT_5C(256'h3FC78FF87F3F01CE0003F019504C00163700004FFE606002C7B03FE100000001),
    .INIT_5D(256'h0001F01294C0002E2B000A1FE0400020E0F23417C00000010FE0608030EB0548),
    .INIT_5E(256'hBE000278F1C000120C1068104000000107F8000018D7000C7F07DFC07BFF80F6),
    .INIT_5F(256'hB7007008C00000030DFF018011E920073C07DFC03FFFF030000171056DDE045E),
    .INIT_60(256'h0EFEE110362C00031807EFC43FFFF8000010F002B2250CB22600343FFFE00011),
    .INIT_61(256'h5F3FFFC47FFDFC0140B830024DC50CF12700697FFFC00018DB00006200000007),
    .INIT_62(256'h7FFE10010CCF9160230050FFFF000008FC2C3024000000041FFFFF3077EE0181),
    .INIT_63(256'h2180A0FFFF000000F190D827000000011FFFFFFFEDD710D77F3FFFC43FFC1E01),
    .INIT_64(256'h702420E2000000033FFFFF9FE7EB10DF7F3FFFC01FFC1F90FFFC2801B88652E2),
    .INIT_65(256'h7DFBAC1FEEC9001B7F7FFFE01FFDFFFFBFF9C841BA4A03626080C3FEFC000100),
    .INIT_66(256'h7FFFFFE0FFFFFDBDE0FA14C1994045446000807CF90000002B7B7F7000000013),
    .INIT_67(256'hF3A2C3E1C8D2BA146001807CF80000003F3C9FF10000000F7FFFBF3FCE498012),
    .INIT_68(256'h30018061F80000003FB887E40000000FFFFFFFFF8E5B84117FFFF7FEFFFFFF83),
    .INIT_69(256'h1DFDC14800000007FFFFFFFF1029660EBBAFF7FFFFFFFFE7FBC1E3F0EDDA7DD5),
    .INIT_6A(256'hFFEFFFFF392E6E10BB7FFFFFFFFFFFE71801E5C0ECC011DA900181A7F8000000),
    .INIT_6B(256'h3FFFFFFFFFFFFFF71980F0C0D6424057D0018387F80000004E8079E000800013),
    .INIT_6C(256'h108013E04B42C07FC003800F38000000C38039201800003DFFFFFE5FE33BBC00),
    .INIT_6D(256'hC0068038300000060508360018000018FFFFFF3FE41350003FFFFFF9FFFFFFF7),
    .INIT_6E(256'h0300D1001C0000581CFFFFBF300760013FFFFFF17FFFFFFF006809600BC2806F),
    .INIT_6F(256'h1E3FFFFF2007C0C07FFFFFF3FFFFFFFF046C057C0BCF027318C6803000000006),
    .INIT_70(256'h7FFF7FF3FFFFFFFE000000FC0BCE05531FFE000000000018005E76041EE00070),
    .INIT_71(256'h00000A7E0DC103A31E7880000000013000084019FCE50074FE3FFFFF088FC070),
    .INIT_72(256'h5804800000000600000E0007FC0400EAFE7FFFFFCE8FA9800FFFFFF3FFFFFFFE),
    .INIT_73(256'h0000033FFEF400B8FE7FFFFFE78F28F0077FFFF9F7E7FFD6E0078A7E0DCC8321),
    .INIT_74(256'h1FFFFFE7E22FAA6693FFFFF87FFFFFFF00C0132C0F0FC2A1CC01000020000000),
    .INIT_75(256'h23DFFFF8FFFFFFFF80C107861DFF8051E8188000380000000000DFB0FFFE002B),
    .INIT_76(256'h840003871D67E836502E00001A000000007CFFF17FFE002E0DFFFFFFF7273E5C),
    .INIT_77(256'hE09E40000200000003F8FFF07FFE002C000FFFFFE7B676C3F3F8DFFF3FFFFEFF),
    .INIT_78(256'h01F9BFE473FE000C001FDFFFE703FA3CF9FCDFFE3FFFFFBFE40003C33DFFE807),
    .INIT_79(256'h11FFDFFFE3FC35E768FEDFFC9FFFFFEFF00313E9BD2FF000013A800002000000),
    .INIT_7A(256'hECFF1FFE1FFFFFC3FFEF07A36307F000408080000000000000F17FE231FC000F),
    .INIT_7B(256'h9EFFFF09E1B6BFDF1E0160000000200000015FC231C0008BFFFFFFFF807F905F),
    .INIT_7C(256'hFFFFC000000000000200001200000000E47B1B070000E01F5300000010000000),
    .INIT_7D(256'h08000100000000000000000100007FFFB000002C000000000009000FFFC347FF),
    .INIT_7E(256'h00000004000016EF005000000000000000000000FC04C10059FF001000000000),
    .INIT_7F(256'h00000000000000000000000000000000013E0000000100000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:1],DOUTA}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized10
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFCFBFFFFFFFFFFFE00001FFFFFFF0FFFCFFFFFFFFF004FFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFE00040FFFFFFF0FFFEFFFFFFFFF806FFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFF80EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFF871FFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFF163FFFFFFFFFFFE00000FFFFFFE1),
    .INITP_04(256'hFFBFFFFFFFFFFFFF9FCFF3FFFFFFFFFFFF000010FFFFFFC3FFFFFFFFFFFFF800),
    .INITP_05(256'h88CFFFFFFFFFFFFFFB01FFF8FFFFFFC7FFFFFFFFFFFFF800FFFFFFFFFFFFFFFF),
    .INITP_06(256'hF78FFFFFFFFFFFCFFFFFBFFFFFFFF800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFBFFFFFFFFC20FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3A333FFFFF3FFFFB),
    .INITP_08(256'hFFFFFFFFFFFEFFFFFFDFF8FFFFFFCEFD00803FFFFF7FFFFFFF9FFFFFFFFFFFCF),
    .INITP_09(256'hFFFFC0FFFFFFE6FFC380FFFFFFFFFFEFEF7FFFFFFFFFFFCFFFFFDFFFFFFFF000),
    .INITP_0A(256'hF3B0FFFFFFFFFFE1E7FFFFFFFFFFFFCFFFFFEFFFFFFFF000FFFFFFFFFFFFFFFF),
    .INITP_0B(256'h97FF987FFFFFFFCFFFFFFFFFFFFFF000FFFFFFFFFFFFFFFFFFFEC03FFFFFE1FF),
    .INITP_0C(256'hFFFFFFFFFFFFFC00FFFFFFFFFFFFFFFFFFF9803FFFFFE07FE7B0FFFFFDFFFE7F),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFE7C03FFFFFE07FFFC1FFFFF0BFFFFF33F80037FFFFFFDF),
    .INITP_0E(256'hFFEC005FFFFFE3FFFFC3FE03F032FFFF33F00001FFFFFFDFFFFFFFFFFFFFFC00),
    .INITP_0F(256'hFFC7F0003837FF7F676000003FFFFFDFFFFFFFFFFFFFFC00FFFFFFFFFFFFFFCF),
    .INIT_00(256'h4E6F716E9191B190D1B18C8E6C4A8C6C6A6E6E9292B4D4D6F6F9D9D9DBDBDBBB),
    .INIT_01(256'hB99392D3D28E8EB0AE8EAEAE8EAEAE8E8E8EB06C4C4E6E92D7D7B5F9B5706E4C),
    .INIT_02(256'hFDFBF588A8C6C8EAC8C6C8C8A688CEAEAE8C280BC9CDEDEDE8E6E4E6E608E8E8),
    .INIT_03(256'h0CDBFFFFFFFFFFFFDD99B7B49270C8A652D9D9D9FDDFFDFBF58C686A6CF9B7FD),
    .INIT_04(256'h2AACCAC8EAA8A8ACF1AC8A8ACAC8E6E6E6E8C6E8E6E8E6C6C684888EC482C660),
    .INIT_05(256'h7755555599BB9957599D39288EB08E2828282828264A088EF7F54A284644EC2C),
    .INIT_06(256'h559999B9B99B9997757799977575755275755230101030525553303053555555),
    .INIT_07(256'h55333375757777757799B9BBBB9999975531EEEE1033323210EE107575301010),
    .INIT_08(256'hCCEAEAEAC8CACCAAF5B06C6EF9FBDDBB99797533337599BBB999757597977531),
    .INIT_09(256'hDFFFFFDDFDD94EE80A4C8E8E8C8CACCCEEEEEECCCFF3CFACCEEEECCCACD3D0AC),
    .INIT_0A(256'h4F4F6F6E6E91919191916E6E4C4C8E8E6C6E6E707092929090B4B4B4D9B9BB99),
    .INIT_0B(256'hFB737090908E6C8EAE8EAE8C8C8C8C6C8C8C8C8E6C4E2C4E4E6E4EF9F9914C4C),
    .INIT_0C(256'hFBFBD388A8C6E8EAC8A6C8E8A6A8D0B0D16A4A2D0DCDCFCDA6C8E8E6E80808E8),
    .INIT_0D(256'h53FDFFFFFFFFFFFFDDDB9772B6D972A852FBD9DBFDFDFDF9D088888A4AD5D9DB),
    .INIT_0E(256'h4AACCAA8C8CACCACF5D1ACAACAE8E8C6E6E8C6E6E6E6E8C686668C2A62848462),
    .INIT_0F(256'h9777777799793557597B7B8EB0B08E28282828264A4A2A8ED537AE464688CAA4),
    .INIT_10(256'h5599999999B9BB99777597979797975252555332301010305252525375777777),
    .INIT_11(256'h33EE0E7797977777779775779975557511EEEEEEEE101210EECCEE1030303333),
    .INIT_12(256'hCAEAEAECCACACCACF5B08C8EF9FBDDBD99997553313375B975979799B9979975),
    .INIT_13(256'hFFFFFFFFFDFDB92E0A2A8EB08C8CACACEEEECECCAEF3AEACCEEEECCCAED3D3AA),
    .INIT_14(256'h6F4E4C6E6E6E51737395934E2C4C6C8E6CB2B4B694B6B4B49292927094B9DBFD),
    .INIT_15(256'hDBB7B5936E6E8EB1B1B1AFAFAEACAEAEAE8C8EAE8E4C2C702C4C6EFBB5916E4C),
    .INIT_16(256'hFBF9AE66A6C6E8EAC8A6C8C8A8AAF1D1F58C4A6F31CFAFCF89A8C8EA0A0A08C6),
    .INIT_17(256'hBBDDFFFFFFFFFFFFDDDDB97496DBFD0E50D9D9D9FDFBF9B28AA8A8886A90FBB9),
    .INIT_18(256'h6AACCAC8C8CACC8AF7F3ACAACAE8E8C6C6E6E6E6E6E6C6C8868A28848464862E),
    .INIT_19(256'h997777999B793579373737AE8EB06C28262626066A48286C8ED0F28A46886462),
    .INIT_1A(256'h5555555377777797777575977575975352535355525232103052535377777777),
    .INIT_1B(256'h10ECCC5577997753B977103375533333EEEEEE11CE1010EEEEF0103133557577),
    .INIT_1C(256'hCACACAECCACACCAEF58E8C8EF9DBDDBB97753331313355991033537577555555),
    .INIT_1D(256'hFFFFFFFFFFFDFDB72C084C8E8C6A8C8AEECECECEAED3AE8ACEEEEEAC8ED5D28A),
    .INIT_1E(256'h4E4E2E2C2C7195B9B9DBB973512C6C6C8EB5F9FBD9FBF9F9D6B4B4B4B6FDFDFF),
    .INIT_1F(256'hB9B9D9B793939191918F8FAFAEACAED1D18C8CB18E6E4C6E4C4C91FB918F8F6C),
    .INIT_20(256'hF9F78C86A6C8EAEAC8C8A6A6A8CAF1D1F5B14A9153CF8DD3CF8886CAEAEAEAC8),
    .INIT_21(256'hDDDDFFFFFFFFFFFFFFDDBB9696DBFD942EB7D9D9FDFBB46A88AACAAA8A8EF9D9),
    .INIT_22(256'h6AACCAE8C8C8AA8CF7F5ACAAEAE8E8C6C6C6E6E6E6C6A4C88848C484428831DB),
    .INIT_23(256'h7777577957357979F3B0AEB0AE8C48488A8CACACD0AE8CCEAE8AF033CC4420A4),
    .INIT_24(256'hBB77531053331153555353535353759775555377777552325252303053525355),
    .INIT_25(256'h31EECC0E313331117753ECEE3353335511111133CEF0135577797799BBDBDDDD),
    .INIT_26(256'hEAEACCCCCACAAAAEF78E8E6EF9DBDDBB9775530E0E3355551011113333113133),
    .INIT_27(256'hFFDDFFFFFFFDFDFD51E82A4C8C8C8C8ACECEACAC8ED5B1ACCEEECCAC8CD5D0AA),
    .INIT_28(256'h2C2E2E0C53B9DBDDDDDDDFBB9771916E909094B6B6D9F9FBF9F8F8FBFDFDFFFF),
    .INIT_29(256'hB9B9D9B9B7D7B7B593918F8F8F6C8C8F8F8C8EB18F6E6E6E6E4C91F9B1AFAF6C),
    .INIT_2A(256'hF9F58AA8A8A8E8EAC8C8A6A6CACCF1D3F78F286F75F18FB1D18D88AAAACACAA8),
    .INIT_2B(256'hDDDFDDDDFDFFFFFFFFFDB97496B8DBFB5070D9D9FBFB8E6A8ACAA8AA8A8CD5FB),
    .INIT_2C(256'h4A8ACAC8C8CAAA8CF9F7AEA8EAE8E8C6C6C6E6E6E6E6C6A68826A284A875DDDD),
    .INIT_2D(256'h5577575713F37B59F36C266A8E8CF057BBBBBBDDBBBBBBDDBB99BBDD79EE86C8),
    .INIT_2E(256'hBDBB9731555555330E0E31513151737397753375755252755452300E300E0E33),
    .INIT_2F(256'h0EEECCEC0EEECCEE110FEEEC0E31535533111133335599BDBDBDDDFDFDDBDDBD),
    .INIT_30(256'hEAECCCCCCACAAAAEF7B08C8EF9DBDD997555550E0E315310313131110F0E0E0E),
    .INIT_31(256'hDBDBFFFFFFFDFDFD970A0A2A6C6C8C8CAEAE8C8E91D5B16AAEEECCAE8CD5D0CC),
    .INIT_32(256'h2C0C0F779B9BBDDFBFBDBFDFDB936EB16C6E4E90929092D6D6D6D6F8FBFBFDFD),
    .INIT_33(256'h95B7B7B9B9B7D9D9D7D7D5B3B3D5B5B3916F6E916E4C4C4C4C4C91F98F8EAE6E),
    .INIT_34(256'hF9D388CAC8A8C8C8A8A8A8AAECCAADD1F78F282A75F16D6DD3D38D488AADAA68),
    .INIT_35(256'hFFDDBBFFFDDDFFFFFFFDB97696DBB9DB72EAB7FBFBF98E6A88AAA8CA8A6A8EF9),
    .INIT_36(256'h8E6A88CACAA8AA8CF7F7D088EAE8E8C6C6C6E6E6E6C6C8A6CC26C4C697FFDD99),
    .INIT_37(256'h53555737F3157B5B156A26481399DDFDFBDBD9D9D9FBFBFBFBFDFDFFFFBBDBD7),
    .INIT_38(256'h79DDDD9999999953EEEC0E315130300E53533030103052525252533210EE0E10),
    .INIT_39(256'hCAEE0E0F11EE0ECAEEEC0F0FCCEE310FEEEE1155BD9BBD9B799BBBB997757777),
    .INIT_3A(256'hECECCCCCCACACCAEF7AE6A8ED5B7BB7531335553533133100E5353310E0EECCC),
    .INIT_3B(256'h99DBDDFFFFFDFDFDD90C0A0A4C6C6C6A8EAED3B3B3B5932A4AAEACD0AEF5CECA),
    .INIT_3C(256'h2E1079BF9D9F9DBFBF9DBDDFDD732A4C6C4C4C4C6E6E4E706E70B2B4B4D9D9D9),
    .INIT_3D(256'h4E5051759795B7B7B7D9D9D9D7D7FBF9D7D7D7B3714F4E2C4C4C91F76E8EAE90),
    .INIT_3E(256'hF7D18ACCCAA8C8C8CAAACACCECAAAAAFF791282A31158F076DF515AF6A6A68AD),
    .INIT_3F(256'hFFDDBBFFFFDDDDDDFFFDB9747696DBB7B7EA0CFBFDFB908ACCAACACAAAAC8EF7),
    .INIT_40(256'hF7B06A688AA86848F7F7AEAAEAE8C6C6C6E6E6C4E6E8C684CC6AE4C6D9FFDDFF),
    .INIT_41(256'h31335715175B3959176AD09BDFFDB997B7B5B592B4B59292D5D7D9FBFDDBFDF9),
    .INIT_42(256'h5779799B99795713F011312E2E30513030310E0E305353525355775310311031),
    .INIT_43(256'hECECEECCECEEEECC0ECAAAECCCCCCCCCECEE55BBDF9B9B577977555373517557),
    .INIT_44(256'hCACCACAAAACA88F1F3D08C6CF7F9D9533111F1EC0E310ECC31B9FDB7310CEC0E),
    .INIT_45(256'h97DDFFFFDDFDFFFDFB50EA0C2C4C2A6E6C6E930C0CECEAEA4C91AEAE8EF5D1CC),
    .INIT_46(256'hB7999D7B9F7F9F9FBFBFBFBFDFB94EE64A4A6C6EB16C6E6E6E4C4C4E4E7094B7),
    .INIT_47(256'hB393500C5173717173959595B7F9FBFBFDFBF9FBF9D9B7B7B5B3B3F56C8EB091),
    .INIT_48(256'hF9D38ACCCAC8EAA8CACACAAAAAAA8A8DF9B34A0AEBF1AF4D4DB1D3AF6B8B6B8B),
    .INIT_49(256'hDDDDDDFFDDDDDDDDFFFDDB969698DBFDFB72A62EF9FBB28CACAACACACAEEAEB3),
    .INIT_4A(256'hF9F9F7F5AEAC6828D7D5ACAAEAE8C6C6C6E6E6C6E8E8A686AA48C4C6D9FFDFDD),
    .INIT_4B(256'h555557F315395B7BF010BBDB75729570B5D5906E4C6E6E906E4C709494B9FBF9),
    .INIT_4C(256'h573535775737797977333133535353300E302E0EB7973053531010EC0E310E53),
    .INIT_4D(256'h970ECAECEEEC31750EECEECCCCAACCAA1177DDBB77BD57137955305195503335),
    .INIT_4E(256'hCECEACACCCAAACF5F5D38E2AD5F99371957511ECEC0E0EEC3175DBFB95515173),
    .INIT_4F(256'hB975B9FFDBB7DBFDFD950A2C2C2C4C6E2C0AA686866666A82F4FB1D3B1F5D18A),
    .INIT_50(256'h97BB7B7B7D7F9F9F9FBFBFBFDDDD73082A4A6CAEB1B1908E6C6E90709292D9FB),
    .INIT_51(256'h91D7B75350514E4E4E51515151719395B5D7F9FBFBFDFDFDFBF9F9F76C8E8E90),
    .INIT_52(256'hF9F58CAACAC8EACAECCCAAAAAAAAAC6CF7B16C4DC8ADAF8F2B8FB38F6B8B8B68),
    .INIT_53(256'hDDDDDDDDBBDFDDDDFFFDDB9999BBDDFFDB970CA692FBD58C68AACACACAECCEB0),
    .INIT_54(256'hB5D9D9F9F7D08C8ED5D3ACCAEAE8C6C6C6C6E6C4E8E8A6A86828C6EAFDFDFFDF),
    .INIT_55(256'h553313F3F339595755B9974E4E70706E6C4A2A2A2A2A4C4C2A2A6C6E7094D7D9),
    .INIT_56(256'h35353357577B599D9B5755333131532E0E0E2E73D9970E10100E31EEECECCC0F),
    .INIT_57(256'hDB550E0EEEEE77BB55EC310EECAACAAA77BBDF57559B57353533305073500E10),
    .INIT_58(256'hCEAC8CD0F1AED3F5D5D5B270F7D3AEB1D7B50FCACACACA0E0E51B7F9B59395B7),
    .INIT_59(256'hB97597FDDB95B7D9FDD94E0A2C2C0CE84F0CA8888A8D8C8AA8EA93D5B1B1D1AE),
    .INIT_5A(256'h73999B577B7D7F9F9FBFBFBFBDDDD99328284A286C8E8E6E6E6E6E4E95B9FDFF),
    .INIT_5B(256'h7095DBB9734E6E6E7070707070504E4E4E4E6E9393B3B5D5F7F7F7F76C8E8E91),
    .INIT_5C(256'hD5F7AE8ACAC8CAECEECA88AAAACCAD6CF7B16C6DEBCD8DD36D6DB16D498B8B69),
    .INIT_5D(256'hFFDDDDBDDDFFDDDDFDFDDDB999DDFFDDDD75722E97FBF9B08AAACAEACAAAAE8C),
    .INIT_5E(256'hD7D7957090B0D2F7F7AEACEAC8E8C6C6C6C6C6C6E8C8A8AA8A4AA4A6FDFFDFFF),
    .INIT_5F(256'h33F1CF15D0353557B9B9704C2C2C2A2A08E6E6080AE8E8E6E6284A4C2A4C70B5),
    .INIT_60(256'h353535573737F537573533100E2E510C0C0C2EB7B7510EECEC0E53550E0E0E0F),
    .INIT_61(256'hB77531EEEE75DBBBB9EC0E11EECCACEEBBDFBB11799B5535357797B795730E10),
    .INIT_62(256'hB16C6CD3F5B1F791B3D5F7D7F5AEAE8FD5B52DC8EACAA8EECA2FB7D79395B7D9),
    .INIT_63(256'hB99797FDFBB59395D9FB730A0AEAEA0C0EECAA68684A4848AACA73B59391D3B3),
    .INIT_64(256'h73979B57597B9D9F9FBFBFBDBDDDFBD74A284A486A6A4A4CB3B5717197BBFDFF),
    .INIT_65(256'h7273D9FDB7706E6E6E4E4E4E704E4E4E6E4C4C6C6C6C6C6C8EAFD3D36CAEAEB1),
    .INIT_66(256'hD3F7D18AAAA8ECEEECCCAAAAAAEFAC6CF7B16A6D4F138DAFAF6D8F6D4B6B8B8B),
    .INIT_67(256'hFFFFFFFFFFFFDDDDDBDDDDB999FFFFFFDB545296D9FBFBD38AAACAECCCAC8C6C),
    .INIT_68(256'h90D7B54E2C4C90F7F7D0AACAEAC8A6A6C6C6C6C6C6A6A8468E2A620FFFFFDFFF),
    .INIT_69(256'hEFCF1337AEF055BBB773704E2AE8E6C6C4828282A4A482A2A2C40606E6082A4C),
    .INIT_6A(256'h99775735F2B0B0D013F313310C0C2F0C0C2E73F9932E2E0C2E0E319775959553),
    .INIT_6B(256'h9575555353B9DBB7B90EAACCAACCEE79DFDD9B35557979797975737395979797),
    .INIT_6C(256'hD7934E91F7D5F770B3D3F7D5D1CEAEB1D5B52FEAC8CAA8CAEC51D9D993B7D9D9),
    .INIT_6D(256'hDBDB99FDFBB59393D9FB75CACA0E31533313F1AFAF8D8D8DAFEF317395B5F9F9),
    .INIT_6E(256'h7075995755779B9BBBBDBDBB999795B38E2848486A6A6A8ED5D7737397B9FDFF),
    .INIT_6F(256'h909397FBFBD7906E6E4E4E2E706E6E6E8E8E8E8C8EAFAF8C8CAFF38F8ED1AEB0),
    .INIT_70(256'hF7F7AF8CACAAEEEECCEECEACCCEFAD8FF7B16A6D5113D16F6D6D6D8F6D6B8D6B),
    .INIT_71(256'hFFFFFFFFFDFDFFDDDBBBDDDB99DFFFFFDD7474B9DBFDFBF78CAACACCCCAE8CB1),
    .INIT_72(256'h0A4C93D74E2C2C92F9F5ACC8C8C8C6C6C6C6C6C6C6A8ACAED54E6277FFDFDFFF),
    .INIT_73(256'hEDEF7B358AECB9954E4C4C08E6A4A282828260626282626282A2A2C4C6C4C60A),
    .INIT_74(256'h55779B59D0AED08EF3F11333ECEA0CE87193D7B54E2C0A2C0C0C73B7B7B5952F),
    .INIT_75(256'h9553755375DBB9D9B931ECAA88EE57BB99BBBBBB775510F0CCCCCACAECEC0E10),
    .INIT_76(256'hFBD9B571D9D7F9B5D3B3F7B1B0CEAE8FD5932DEAEAEA0C2F5195D9F9B7B7FBB7),
    .INIT_77(256'hDBFDFDFDFBD7D7D7D7D975CA5555F1F1CFAFD1D1D3B1D1D1D111EE31D9DBB9FB),
    .INIT_78(256'h917131303030555575977573510C2C6C6A48486A8A6A8CB2B550ECEC0E53B9FB),
    .INIT_79(256'h92929495D9FBF76E6E6E6E4E4C6E6E8C8EAED1ACACAECFCFACADF18FB18E8C8E),
    .INIT_7A(256'hF7D58FAFAEACEECCCCEECEACCCCDAF8FF9B16A4C2F13F54D4D4D4D8F8F6B8B8B),
    .INIT_7B(256'hFFFFFFDDDDFDFDDDDBDBDBBBBBDFFFFDFD7574FDFDFDFDF9B0ACAAACCE8C8EF7),
    .INIT_7C(256'hC6C60AD5B5502A6EF9F7D0AAC8C8C6C6C6E4E4A2C6CAF0F5F92CA6DBDDDFFFFF),
    .INIT_7D(256'hEC1199AACC95730AE82806C4A2A282826082606242424042424262848482A4C6),
    .INIT_7E(256'hAACC105537F3D0AED0CE1313EC512E0893B5F94C4C2A0A0CCA51B793934E510C),
    .INIT_7F(256'hB773753075DB9597D931CAECCC33BB5577FFBB77EEA8868888A8A8888686A8AA),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized11
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [7:7]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h6E0000000FFFFFBFFFFFFFFFFFFFFE00FFFFFFFFFFFFFF83FFF8003FFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFC00FFFFFFFFFFFFFFC7FFF000F82FFFFFFFFFCFE0000C3EFB7E),
    .INITP_02(256'hFFFFFFFFFFFFFFDFFFE801F003FFFFFFFFCF8000003FFFFCCC0000000FFFFFBF),
    .INITP_03(256'hFFE907E003FFFFFFFFFF00030317FEFFD800000007FFFFBFFFFFFFFFFFFFFC00),
    .INITP_04(256'hFFFE003F8107FFFBDA00180003FFFFFFFFFFFFFFFFFFF800FFFFFFFFFFFFFFFF),
    .INITP_05(256'hBE003E0003FFFFFFFFFFFFFFFFFFF800FFFFFFFFFFFFFFFFFFF80F8001FFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFF800FFFFFFFFFFFFFFFFFFF81F0601FFFFFFFFFE037F8007FFFF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFF83E0700FFFFEFFFFE0FFFE003FFFFF001FF0001FFFFFF),
    .INITP_08(256'hFFB07C07807FFFE7FFFC1FFFE003FFFFF007FFC000FFFFFFFFFFFFFFFFFFF800),
    .INITP_09(256'hFFFC0FFFEC03FFFFB01DFFC000FFFFFFFFFFFFFFFFFFFC00FFFFFFFFFFFFFFFF),
    .INITP_0A(256'hB018FC00007FFFFFFFFFFFFFFFFFFC00FFFFFCFFFFFFFFFFFFF0F807C07FFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFC00FFFFE01FFFFFFFFFFFF0F86F807FFFFFFFFC03FFC001FFFF),
    .INITP_0C(256'hF9FFC007FFFFFFEFFFF1F8EF803FFDFFFFFE0CFFE001FFFF2023FF80003FFFFF),
    .INITP_0D(256'hBF71F07FE03FFCFFFFFE9FFFF801FFFE700FFFE0003FFFFFFFFFFFFFFFFFFC00),
    .INITP_0E(256'hFFFFBFFFDE01FFFF7071FFD8003FFFFFFFFFFFFFFFF9FC00007F8003FFFFFFFF),
    .INITP_0F(256'hF873FF06001FFFFFFFFFFFFFFFFDFC00001FC007FFFFFFFC9F3BF0FFF03FFE7F),
    .INIT_00(256'h3197B97597D9FBB38EB3B36E8ED1B14CB34C2C0A0A0C737193B5FBD795D7F9B5),
    .INIT_01(256'hF9FBFBFBD9D7D7D7B7D9B75579AE486A6A6C6C8C6A6A8C488AF155BBBB553133),
    .INIT_02(256'h8E6E2C4E4E2C2E2E2E4E4E2C0A2A284A6A6A6AAAAA68ACF595ECAACC88CA95FB),
    .INIT_03(256'h90929270D7FBF990906C8C6C6C8C8C8CACACCFCCAACEEFEFCCACF18F6E6CB18E),
    .INIT_04(256'hB5D5B3D18C8CACCCCCCACCCCAACC8CB3F78F8C4C2D1317B32B2B4D6F8F6B8B8B),
    .INIT_05(256'hFFFFFFDDDDDDDDFDDDDDDDBBBBDDFDFDFB97B9FDFDFDFDFBB08CACF0AE6CD3F9),
    .INIT_06(256'hC6C4C6E8B5702C4CB4F7F5F0A8C8A6A4C6C4C4A2A6AAD0F9B5A60EFFDFDFDFDF),
    .INIT_07(256'hEC77352275B70AC4E6E4C4A4828282606082626262424042202242424062A482),
    .INIT_08(256'hCCA866AA1335CECEAED0131353B72EE6B3D7D74A4CE60A2EEA95B56F4A4E2CEA),
    .INIT_09(256'hD7B7957372D97575DB31A8EC11999997DDBB0EA8868688888688A888A8A8A8A8),
    .INIT_0A(256'h68CC11F10FB9FBB5B1D5B57090D3F5B3B54C4CB5714FB3B3B3B5F9B595FBD7B7),
    .INIT_0B(256'hF9D7F9F9F9D7B7FBB9DBDB33F16A286C4A6C4A6C6A484668139BDDDD11CCAA66),
    .INIT_0C(256'h916C6E6C6C4C2C2C4C4C4A4A2848486868688888CA88ACF3B50EECCCEC51D7F9),
    .INIT_0D(256'h92B59090D7F9F9D7B08CAC6AAEAEACAECEACEECCACCCEFEFCEACCFD3B3B3F58F),
    .INIT_0E(256'h93B3D3D3D1D1ACCCECCACCCCAACC8CD3F58F6A6D2D11F5B54F2B4D6DAF6B6BAD),
    .INIT_0F(256'hFFFFDDDDDDDDFFDDDBFDDBB999FFFFFFFBB9DBFDFDFFFDFDB36C8C8C8EB3F791),
    .INIT_10(256'hA4A4C4820A90704C7092D5F5CCCAC8C6A4A4A4A4A6AAD3D56EA475BDDFDFDFFF),
    .INIT_11(256'h5377CCCCB94EC6C4A2A2A26260606060606082826040404042224242426262A4),
    .INIT_12(256'hA8A8A84466EEF0AC68AE377933974E2A6ED5D54A6C082A2E4FD791B14C4CC8CA),
    .INIT_13(256'hFBD9957093FBD9FBB753CCEC55DDDDDDDDEC866686A8A8A8868686A8C8C8A686),
    .INIT_14(256'h4646686844EFD9B591D5D7D9D7F7F9F993B3D5F7B391B1D3D5D5D793D7D771B5),
    .INIT_15(256'hD391D5D5F9FBFBB973B9758A59D34A6E918EAFB16A68CF57BDDF9911ACAA8A68),
    .INIT_16(256'hB3B1B18C6C8C6C4C4A4A6A6A6868686868688A88AAA8AAD0D54ECA0E71B5B1D3),
    .INIT_17(256'h70909090B7D9FBD9B08CAC8CAEAE8AACCFACEECECCCCEFEECCACACB1D7D7F7D5),
    .INIT_18(256'hB5916FB1F5D1ACCCECCACACCAAAC8CB3F7B1484A2D0FD3F7712D4D6DAF6D6BAF),
    .INIT_19(256'hDDDDDBDBDBDBDDBBBBFDDB7577FDFFFFDBD9FDFBFDFDFDFB934C6C6C91D7B52C),
    .INIT_1A(256'h848482E8826EB26E2A6ED5F5CECECCCA868666A8AAACD16C4CE8DBBBDFDFFFDD),
    .INIT_1B(256'hB95566DD51E8C4E4C4A260606260608082A2C2C2A28282826282624062624084),
    .INIT_1C(256'hEAC88666644411378C48D113CC73706E4CD5D56A4A080AC671D56C6C6C4E0C0E),
    .INIT_1D(256'hFBD9B750B7FBFBFB97955331BBFFFFDDEE66668486A6A6A6A6C6C6C6C6E80A2C),
    .INIT_1E(256'h66462468248A99D971B57373D7F9F9D77191F5F5F5D5B1D5D3B39373F9B570B5),
    .INIT_1F(256'hD3D3F5B3D7FBFDB9B9DB338A9DD18E15D3B1D18C8A13BDDFDF9B1188888A6688),
    .INIT_20(256'hB3B3B1AF6C8C8C6C4A4A6A8A886866688888AAAAA8A8888CD3902CB5D58E8EB1),
    .INIT_21(256'h9571909294B9DBFBD58CAEAFD1AF6AAED1ACCCEFCCCFD1CFACAC8CB1F9FBF9D7),
    .INIT_22(256'hB5B56F4CB18F8CAECCCCAAAAACAC8CB3F7D56A4A2DEDAFB5B54F4B078D8F8D6B),
    .INIT_23(256'hDDBBBBDBBB9999BBBBBBB77274FBFDFBB7B7FBD9D9FBFBD94E4CD7F9F9F995D7),
    .INIT_24(256'h6262628482C6906E084EB3F58CCEACAAAA8A8AD0AC8CD1486C71DBDDFFDFDFDD),
    .INIT_25(256'hB90EECFB0AE608E682604040626262A2C2C2E40404E4C2C2A2C4C6A460606242),
    .INIT_26(256'h0AC8A6A664644435F36C8C8CCC50909090D5B38E8E6E2C0AD5D56C8E4CE82EDB),
    .INIT_27(256'hFBF9D793D9FB9573FBD9B999FFDDBBCC42666484C6C6A4C6C6E6062828080808),
    .INIT_28(256'h686868464646AAFBD9DBFD9795FBD7B5D56C8CD1F5D3B1F5B3939395D7B7B5F9),
    .INIT_29(256'hAED1D1B1B3B7FBDBFBB753139DD18C6A4A6A6A8A35BDFFDF57CEAAAAAACCAAAA),
    .INIT_2A(256'h71916E8F8EAEAE8C6C6A486888888868666688AAA8A8AA8AD0F7D5F7D3D2D2AE),
    .INIT_2B(256'hDB9593929496DBFDF98EB0F3B1D18CD1F1ACACD1CFD1F3D3AE8C8CD3F9FBFB93),
    .INIT_2C(256'hDBFDFBB5D7B56E8C8AACACACACACB1F7B3B5B3080DCDAF9193712B07496D6B8D),
    .INIT_2D(256'hBBBBB9DBB99999DDBBFD959572B7F9F94E92F9B22AB3D9B72EB7FDFDFDFDFFFF),
    .INIT_2E(256'h4242628284A408904E2AB0F56CD0AE8CACD0F7F78ED1AE8E91B5FDFFDFDDDFDD),
    .INIT_2F(256'h97EC51B3080628A2826242624082C4C4E4E22404242604E4E4E4C4A282626242),
    .INIT_30(256'h08E6A6A682624266AED16A6A882E934CB3F7D5B36ED5D591F7D3D18E6E92DB97),
    .INIT_31(256'hF9F9F9FBD7D9B550B5D7B7B9DDFD5564426484A6E6E60808E6284A4A6A484A2A),
    .INIT_32(256'hCAAA888846446631DBFDFDFDDBFBFBF9F7AE68ACF1D191939371932E95D993B7),
    .INIT_33(256'hB0D1F3B1B3B5FBFDD9B7B9797BAC48484A486A59DDDDDF1368ACCDEFEC0F0EA6),
    .INIT_34(256'hD7B38F8E8EACACAA8C8C6A686888888868686866CACCCCACD0F5B0B0B0D2F2D2),
    .INIT_35(256'hFDFBD9B7B9DBFDDBFBB591F5F5F5F5D3F5F3D3D3D5F5F7F7D5F3D3B3B5FBFBFB),
    .INIT_36(256'hFFFFFFDBFDFBD9B36C6A8CCECECEF5B3D593D7B50FAB8F7173712B29274B6B6B),
    .INIT_37(256'hBBBB99B99999BBDDBBFDB7927070F7D56CB0D54A068E937375FDFDFFDDDDFFFF),
    .INIT_38(256'h4242426484A4A42A904A4AD28CAEF3D0F3F5F7F78ED38E286EFBFFFFDDDDDDBD),
    .INIT_39(256'h970EB56EE4E4C4826042404062A4E6062626464666484626E4E4C4C4A4826242),
    .INIT_3A(256'h4C2A0AA4A48264228AD18C8AAAEA704CB3F7D5F78EB2F7B1F3D1AED2D4B495B7),
    .INIT_3B(256'hB5F9F7F7D7D7F990904CB5B9FDFF5364866482E82A4A6E6C6CAEAE8C8EAE8E6C),
    .INIT_3C(256'hEACAA8AA8A6666A877FDDBFD957193D3F3CEAAAAEEF3D5D7D9732EA40CD9FBB7),
    .INIT_3D(256'hD0D1D18CB3D5FBFDD77195DD35466AAE488C57DFBDDF576668CDCDEFCA0C0E0C),
    .INIT_3E(256'hF9D5B16C8EACAAAAAC8A8A8A8888886868688888CACACCCEF0F48CAEAEAED08C),
    .INIT_3F(256'hFFFDFDDBFDFDFDFDF99393D7D5B3D3D5F5F5D5B3B5D7F7D7B5D5F5D56FB7FBFB),
    .INIT_40(256'hDFDFDFDFFFFFFDFBB56C8CCEACACAE6CD59193D975CF8F4F4F714D2907296B69),
    .INIT_41(256'hBB9B9999BBDDDDBBDBFDD9504E6ED2AE6AD0AE486A4A2C73DBFDFFFFDDDDDFDF),
    .INIT_42(256'h4242426484A484A46E4A48D06AAEF3ACAE8E6EB3B5D36E0A95FDFFFDFDDDBB9B),
    .INIT_43(256'h970CB56EE6C2A28242422042C82A08286A688888888A8A6A2806E6C6C4846242),
    .INIT_44(256'h8E4C2AE8E6C4842066ACAE6888A60C6E90D5B3F7D5D2D3F3D18C6AD08E4C92B7),
    .INIT_45(256'hB2D590D770B5F7B28E08B3B5FDFDEC228686A6082A6EB08EB0B0B0B0AE8CAED2),
    .INIT_46(256'h0CECAAAAAA888822EFDBFBD9502C4C8C8AAAA8C8EEF59350D9F9B5EAC695F993),
    .INIT_47(256'hD0D3AE8C8EB3B5D74EE85199F1486A6A8C35BFDFDF77AA88AACCCCEDEC0C2E2E),
    .INIT_48(256'hF9D5918FAEACCACACAAA8A8A8A886866888888A8CAAACACEF0F28EAEACAC8C8C),
    .INIT_49(256'hFFFDFDFDFDFDFDFDD995B5F9B3B3D5F7D5D5D7D9D7B7B79593B5D5D593B7F9F9),
    .INIT_4A(256'hDFFFDFDDDFDFFFFDFBD58E8CACAEAC6AD36E4E95DB136D4F51514F2B07274948),
    .INIT_4B(256'hBBBBBBBBDDFFDFBBDDFBD94E4C8ED08C6AAC6A8C6C6EB5FBFDFFFFFDDDDDDDDF),
    .INIT_4C(256'h424242646484A480084A6AD08CD0AE8A8C6C8EB3F9B34E50FDFFDDFDFDDBBB9B),
    .INIT_4D(256'h53EA934CE6A2E6404220420C712AE4268AACCAAAAAAA48260608E6C4A4A48462),
    .INIT_4E(256'h6E2A08E60806C4626468CE6866880CB5B3D5D5B2B2B0AEF3F18C8AF04828B2B7),
    .INIT_4F(256'hD54C6EF790B2D4D26C28B393FBDDAA6486A6C8E8084A6E6CB0B0D2D2B08C6C8E),
    .INIT_50(256'h0C0CEA86A88888448675DB510A4C6C8A88C8A6A8CCAED597B7D7D7D771B5D76E),
    .INIT_51(256'hD1B18C8C4A6E4C90084C7153CE6A488C59BDDFDFBBAC6688CCEFEEECEC2E2E4E),
    .INIT_52(256'hF7B36F8EAFACAACACAAAAAAA8A88686888A8AACACAC8CACED0F2D08CACACACAC),
    .INIT_53(256'hFFFDFDFDDBDBDBB7977395D76F6F916F93B79597530FEDED2F73957393D9D7B7),
    .INIT_54(256'hDDDFDDDDDFDFDFDDDBF9D7B18CAF8C6AF38E6E4ED9778D6F4F4F4F4D09070626),
    .INIT_55(256'hDDDDDDDDFFFFDDDDFFFDFB6E4CB0D08ACEAE8C8E91D7FBFDFFFFFDDDDBDDDDDD),
    .INIT_56(256'h424242426284A482C4286CAEAED08CACAC8CB0F7F7B370D9FFFFFFFFDBBB999B),
    .INIT_57(256'h2EC8930AC4A4A4626220AA9308C2C0E224AACCCCAA68E2C2C4A2A2A2A2A4A484),
    .INIT_58(256'h2806E6A2A2E4E6A46466F1AE4666EA93937090B08EAC8ACEF3AECEEE46486CF7),
    .INIT_59(256'hB54CB0D38EB2D4B24A08B5D9FDDDEC4486A8C6C6C6E406286CB0F4F4D2B04A26),
    .INIT_5A(256'h2CEAECA888886688640FB90C2A4A6A88A8C8A6848A2891FDB77191B393B5D570),
    .INIT_5B(256'h8F28288C6A6C4CB14C6E7195CC6A6AF3DDDFDFFF576866AACC0F0EEC0C507173),
    .INIT_5C(256'hB3916C91D1D1ACCCCCCACAAA8A88888888AACACAA8CACAECCEF4D26C8C8CD1D1),
    .INIT_5D(256'hDBB99797755533313151514F4F4D4F2D959531CCAAAAAAABCDEDEF0F2FB9D993),
    .INIT_5E(256'hDDDDBBFFDFDFDDFFDDB9FDF96E8E8C8AD18C6C91B5738B6D4F51514F2B070424),
    .INIT_5F(256'hDFDFDFDFDFDDBDDFFFFDD9706E6A6866ACAE6CB5FBFDDBFFFDDDDDDDDDDDDDDD),
    .INIT_60(256'h624242626262A4A4A2E64A8C8E6C6AAC8C8C8EF9D59395FDFFFFDFDDBBBBBBDD),
    .INIT_61(256'hE8E8B5E6C4C6828240642EE8A2E4042424A8ECCA8824022606C4A28080A2A482),
    .INIT_62(256'h282828C2A0C0C4C48444ACD14646882E930828F5D2AC688AF3D0F0A8648848B3),
    .INIT_63(256'hB56C8EF58E6ED5B22A2AD7FBFDFD3342A8CAA6C60606E4E4066AB0F2D08C2604),
    .INIT_64(256'h71EAECCA8686668866ECDB93916C6A88A8A6C8A68828C671B7D7B36E4C91B570),
    .INIT_65(256'hB1284A6C6C6C6C4A6C6C4EB7CC68AC9BFFFDFFFF116668AA110F0EEA0C7195B5),
    .INIT_66(256'hB36F6E6E6EB0AEAEACCACAAA8A686888A8C8C8CAC8C8C8CCCEF4B2E64CB1B18F),
    .INIT_67(256'h533311110FEFEF0F3173712F714F2D2F950FAAADADCFCFCFCFCFADEDCA53DBB7),
    .INIT_68(256'hDDDDDDFFDDBDDFBDBDBBBBD92E2A8E8CF38C6CD3B30DCD6B2D2F514F4D290426),
    .INIT_69(256'hDFDFFFDDBDBDDDDDFDFDB7706E262444888E70FBFDFDFFDDDBFDFDFDFFFFFFFF),
    .INIT_6A(256'h6262426242408282A2C4286E8E4A6C8C6A6A90D7B573DBFDFFDFBDBBBDBDDFFF),
    .INIT_6B(256'hE608B308E6E6A46062CAEAA22848688A6666A8ECAA66466A6C4A08C480A2A262),
    .INIT_6C(256'h6C8E4A4A28C2A0E4A66466CE48468850D7082AF5F28A68ACF3CEEE62848666E4),
    .INIT_6D(256'hD54C8ED3B0B2F7F70A92F9B7FDFD75A650E8E84C6E8E482604268AAEAC8A2626),
    .INIT_6E(256'hB54E0CEA8686888866CADBFB6E4A6AAAA8A6C8A8686CC4A40AD7F7B1B3F7D5D5),
    .INIT_6F(256'h6FE6088C4A6C6C4AE62A4C73EC68F1DDFDFFDDDDCC4488EEEE0F300C50B5B5B5),
    .INIT_70(256'hD76F6E916E6E90B0ACAACAAA88686888A8C8C8A6EAC8C8CCACF4B24EB5B54E4C),
    .INIT_71(256'hEFEDCBCDCDCDCDCBED512F2F51712F9597CBABADADAFAD8DADADACEFCAEDB7D9),
    .INIT_72(256'hDBDDBB99DD9B79799B9999B973C6E690F5D1D3F56F0DED8D4B2D314F4B490602),
    .INIT_73(256'hDFFFDDDDDFBDBDDDFFFDD7704C284644662673FFFFFFB95397D9D9DBFDFDFFFD),
    .INIT_74(256'h8262424242406282A2A2089092B5F7D5B0B2D7D77073FDFFFFBD995799DDFFFF),
    .INIT_75(256'hC04C914AE4C4A2A46230516EE4E4C068884486A8886846262806E40608A2A2A2),
    .INIT_76(256'h6A26E4066A6804C2C48466ACAC6888B7B54CD5F58C4826F0F0CEA862C6A68646),
    .INIT_77(256'hD36C8ED3D5D571F9D5B59250FDDB755393E84C6E6E4A286A48488CD0CE6A6A8C),
    .INIT_78(256'hD7702C0CA686A886668ABBD9934A8AA8A6A88688686A08C4C62AB3F5D3B3D5F7),
    .INIT_79(256'h0CC4E6282A2A4C0AC6A40A730E8877DDFFFDFF7788668AEE0E0E739393D5D7D7),
    .INIT_7A(256'hB74E4CB1914E6E8E8AAAAA8888686888CAC8C8E8EACACACACCD2F7D9950EEAC8),
    .INIT_7B(256'hABABABABABABABABABCBED0F0F7131319733CBCDAB8AAD8D8D8DADCDED0FB7B7),
    .INIT_7C(256'hD97397BB9B9B7979999999B9970AC66ED3AEF38C2A0CCBAB290B2D2D29272626),
    .INIT_7D(256'hDDDDBBDDDFDDBDFFFDFDD9726E2602462226B5BBDD750E7595D9B79395F9FBFB),
    .INIT_7E(256'hA262424242426282A2A2E670F9FBF9F7F9F7F9D93097FFDDDFDD9B9BDDFFFFDF),
    .INIT_7F(256'h024AD54A06C4C6A4604EFB0880C226242266428664442604A0C2E4C4E62A06A2),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h10000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[15]),
        .I1(addra[16]),
        .I2(addra[14]),
        .I3(addra[12]),
        .I4(addra[13]),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized12
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFBFFFFFDFC000006C007FFFFFFFD9E1BF07FF03FFF3FFFFFFBFFEF01FFFF),
    .INITP_01(256'h00003077FFFFFFF98017E1FFE03FFF1FFFFFFFFFF701FFFFF862FF36001FFFFF),
    .INITP_02(256'h0007E7FFFE1FFF3FFFFF6FFFFF81FFFFF877FFFE001FFFFFFFFFF7FFFFFEFC00),
    .INITP_03(256'hFFFFFFFFFF81FFFFF87FFFFF001FFFFFFFFFF7FFFFFFFC0000003FFFFFFFFFF8),
    .INITP_04(256'hF8FFFFFF001FFFFFFFFFEFFFEFFFFC0000003FFFFEFFFFFC0007EFFFFF1FFE3D),
    .INITP_05(256'hFFFFEFFFE7FFFC00000007FFFC7FFFFE0007CFFFFB1FFC1DFFFFFFFFFF83FFFF),
    .INITP_06(256'h000007FFE07FFFFE0007DFFFF99FFF1DFFFFFFFFFF83FFFFFEFFFFFF001FDFFF),
    .INITP_07(256'h00079FFFFF9FDF07FFFFFFFFFF83FFFFFEFFFFFF001FFFFFFFFFFCFFE7FFFC00),
    .INITP_08(256'hFFFFFFFFFFC3E7FFFFFFFFFF001FFFFFFFFFFFFEC3FFFC000000038FC0FFFFFE),
    .INITP_09(256'hFAFFFFFF001FFFFFFFFEFFFF99FFFC000000038FC07FFFFF004F9FFFFFBFE50F),
    .INITP_0A(256'hFFFEFEFFB5FFF800000003CFC01FFFFF00EF9FFFFFF9F9FFFFFFFFFFFFEBFFFF),
    .INITP_0B(256'hF00001EFC00FFFFF80FF3FFFFFF07BFFFFFFFFFFFFE7FFFFF8FFFFFF801FFFFF),
    .INITP_0C(256'h803F3FFFFFF03FFFFFFFFFFFFFF7FFFFECFFFFFF001FFFFFFFFF79FFE4FF0000),
    .INITP_0D(256'hFFFFFFFFFFE7FFFFE4FFFFFE001FFFFFFFFF7DFF64FF0000F80005EFF00FFFFF),
    .INITP_0E(256'hC7FBFFFF001FFFFFFFE77FEFFC7F0000F8003FFFF807FFFF833F3FFFFFE03FFF),
    .INITP_0F(256'hFFE3FFFFFE3E0000F8003FFFF807FFFFC3DF3FFFFFC03FFFFFFFFFFFFFE7FFFF),
    .INIT_00(256'h486A06C004464604E4A46488AC6688B7B36E90F5AE4826D08ACE8684C6A68466),
    .INIT_01(256'hD58E4CF7F76E91F9D390B395B9B997D771086E2A06C206488CAC8AACAC686A8C),
    .INIT_02(256'hB5B32C2CA6848688688899FDB56C68AAA8A8AA6848486A06A4E64CD3D38CD7F7),
    .INIT_03(256'h51C8A60A2A080CCAA6A6EC510EAA9BDFFFFFFD0F6688A8CAEC0E0C0C2E93D590),
    .INIT_04(256'hB7B38F8F6E6F71918EACAA8888686888AAC8C8E8EAEACACACCB0F7942E0CA80C),
    .INIT_05(256'hABABABABABABABABABABCDEDED2F0FEF330FEDEFCDACACACADADCFEDEA0CB7D9),
    .INIT_06(256'hB3930C30999B9979999999B9B971C62A6CD3F26A4A2CEBCD49090B0B09272828),
    .INIT_07(256'hDFBDBDDDDDDDBDFFFDDB9492906C0624044AF9FF2EA695FBD9D7D4B090B28E4C),
    .INIT_08(256'hA262424242426462A2C4C24CF9D5B2D2D4B494D795FDFFDD9BDDDDDFFFFFDFDF),
    .INIT_09(256'h446AF74C06E4C482824EF9A0A0E246E04466426444464624E2E22828C20628E6),
    .INIT_0A(256'h8C6A4868E0026626E4A664668A666693D56E6EB2B24C6C8EAECC84A4A4A4A486),
    .INIT_0B(256'hD7B36ED5B3B3D5B1B0D08E91D7D9B9FB4C08062826064804488C88888A8AAC8C),
    .INIT_0C(256'hF7B32AE8C8A8A866686811FFD78E8AAAA8A8A8AC8A684A08E6E6E66AD18E91D5),
    .INIT_0D(256'h31A886EAEAC8CA886688AA0EEE11DDDDFFFFDBCA86A8CA517373714E2C6ED5D5),
    .INIT_0E(256'hD9D7916C8F914C2A4A8CAAAA88686888AAC8E8EAEAEAECCAACAEF6B72EC88631),
    .INIT_0F(256'h8B8B8B8B8B8B8BADABABABCDCBEDCDEDEFED0F0FECECECECEC0D0F0DEA4FD9FB),
    .INIT_10(256'h26086E0C51999999999B9999B9B70AE68EF36A8C6C4DEDCD6B29090929492928),
    .INIT_11(256'hDFDFDDDDBBDDDDDDFDD9729290D5B02626B1F9B7842CD7B5D7D4B0D0F2B08E48),
    .INIT_12(256'hA462424242428482A2E4C22AF7F7B08E8EB2B4B7D9FDFFBBDDDFFFFFFFDFDDDF),
    .INIT_13(256'h648CF76C06E6A460A471D508E42604248A446464446668486A48686804486AE4),
    .INIT_14(256'h8A8C8CAC4622664606C662448A668673B30A2A4EF9F9F76CD08884A6A4A4A4A6),
    .INIT_15(256'hF7D5B5B390D5B38EAED0AE91B7FDF9F9E60604E44A6A6A488CAC88888888ACAC),
    .INIT_16(256'hB290909371510C866666CAD9F7AE68888886664646484A08C4C40628AE8E2A93),
    .INIT_17(256'hCC868888AAAAAA66668886AAEF97FFDFDFFD9762A60C5151717171B59190D3F5),
    .INIT_18(256'hD9B56F6F6F6F4F0A086A6A8888886888AAC8C8EAEAEAECCCACB0F6FBB7EAA8EC),
    .INIT_19(256'h8B8B8B8B8B8BADADADABABABCBCBCDEDEDED312F0E0E2E0C2C4E4F2C0A95DBFB),
    .INIT_1A(256'h6A26066E51759999999B9999BBFB2E08D3AE6ACEB04FEDAB8D29090929494949),
    .INIT_1B(256'hDFDDBDBBBBDDFFDBDBB670906EB2F76E4AB5FB2CE8B3D5B2B0B0AC8ACEAC8A68),
    .INIT_1C(256'hC68442424284A6A2A2E4E228B08E4A06062A7094FDFDFD99DFFFFFFFFFFFDFDF),
    .INIT_1D(256'h86ACF58E06E68280C4B5906A264848CEAC88666444446888686846468A6A4806),
    .INIT_1E(256'hAC8CAC8A8866644404C462648866CAB5B32C70F9F9D770AECEA8A6C6C4C4C4A4),
    .INIT_1F(256'hF9D7B5B3D5906E8ED0D08EB5DBFDD7D74C4A26288C8C6AAC8C8AAAAA886888CE),
    .INIT_20(256'hB08EB36E6E4E4E4E86648493F7AE686888886646240204E4C4C406266AB1E62C),
    .INIT_21(256'hAA888868688A684666686688EFB9FFDFDFFD0E620A71712C0A0A4C6EB1F5D3D2),
    .INIT_22(256'hB7934C714E2F0FEA0A2A4A8A88666868AACAC8EAEAECECCCACAEF6F9F995EACA),
    .INIT_23(256'h8B8B8B8B8B8BADAD8D8BABABABCBCBCACACA0F0F0E2E5050707151512FDB99DD),
    .INIT_24(256'h684404E64E509799BBBD9B99BBDB936EF36A8CCE9051CD476B4B2B092929294B),
    .INIT_25(256'hDDBDBBBBBBBBFFFDDBB6706E6E4CB3F94EB5D9E86ED5F7F7D2AC8AAACCAA6844),
    .INIT_26(256'hC48442424286A482A2E4E2268C6A484828060850FDFDBBDDDFFFFFFFDFFFDFFF),
    .INIT_27(256'hA6AAF3AE06C4C4A228D54A286A8AACD08ACE884444448888888A886688684828),
    .INIT_28(256'hCEACAC8A8886644404C4826486640CD7B54ED7F9B5B24CF28886A4C4C4C4C4A4),
    .INIT_29(256'hFBD7B5D7B56ED3B0AEB0B3D9DDFDB9F9D54A28488CAEAED06A488ACEAC8A68CE),
    .INIT_2A(256'h6C8E8E4C08C60A6FE884A62AB18C6A8C68486A6A2804E2E4C4C4E6284A8EE60C),
    .INIT_2B(256'hAA88686A688A8A8888886846CCDDFFDFDF99A8E8714C2A6E4C082A6CB1B18E8E),
    .INIT_2C(256'h75752E0C2F11ECCACA0A6C8C66666668AACAEAEAECECCACAACAEF4F7F9D72EA8),
    .INIT_2D(256'h8A8A8A8B8B8B8D8D8B8B8B8BABABAAA8CACACACCEE3070707173535353DBBBBB),
    .INIT_2E(256'h442446E4E62E5177BBBBBDBDBBDBD9B3D08A8CD09051AD04274B4B2B292B2929),
    .INIT_2F(256'hBDBDBBBB99BBFFFDFB924C6EB06E2CFBB5B793C870906C6A6A8A8AACCC8A6866),
    .INIT_30(256'hC484424464848482A2E4E4046A6A8A8A6A28E672FDFDBBDFDFFFFFDDDDDDDDDF),
    .INIT_31(256'hA686CEF3260406E46C6C288CAEAE8C688AAC66664444AAAAACCCAC88A8884626),
    .INIT_32(256'hF0AEACCCCA86646624C2A28484644EF9D7B5FBF7D5B28ECE84A4C4C4C4C4C4C4),
    .INIT_33(256'hFBB7B7B5D5B2D5F5B090D7B9DBFDFBF990286A6A8CAED0F06A6A8CCEAEAC8CCE),
    .INIT_34(256'h4A6C90B32AE6C46E2AA4C4284A6A6C904A064A4A4A482606C4A4C4062808E8B7),
    .INIT_35(256'hAAAA8A6A6A8A88AA88A8AA44CCDDDFDFDF53842C8E4C286E8E6E6CB1B18E8E6C),
    .INIT_36(256'h99750EECF1CECF8AEF95916A68666668AACAEAEAEAEAEACAAAAEF4F4F4F951A8),
    .INIT_37(256'hAAAAAAAB8B8B8B8D8B8B8B8B8B8AA8A8CBCBAAAACC3151737130100E31BBFF57),
    .INIT_38(256'h022424E4C20A2E75BB9BBDBDBBDBD9918CAE8ACE900FAD262427292909292929),
    .INIT_39(256'hBBBBDDBBBBB9FDFDD9702A6EB2B22C70B7D9512E9028C2E224468A8A68242422),
    .INIT_3A(256'hE6A4624286626260A2E4E4268AAAAA8A6A4A2AD9FDDDDDFFFFFFDDBBBBBDBDBD),
    .INIT_3B(256'hA484AAF5482806E44A6A6AB0D2D04802688824024446ACCED0AECCCCCAA86624),
    .INIT_3C(256'hF0D0CEEECC88646424E4A2A2A4A470FBF9F9B54C4C6CCEA884A4C4C4C4C4C4A4),
    .INIT_3D(256'hFBB79595F7B5F7D56EB5B799BBDDDBFB2A4A6A6AAEF2F2D08C6A6C6A486A8C8C),
    .INIT_3E(256'h8C4A8EB09090282C0AC4C4284A6C93704E2CC4082A282828C4A4A4A2A40A95FB),
    .INIT_3F(256'hAAAA8A6A688A8888A8CACC64EEDDDFDFBBCAA44C8E8E6C8CD3B18F6CB1AE8EB0),
    .INIT_40(256'h7777EECEAEAFADCF13532C288A686668AACAEAEAEAEAEACAAAACF2F2F2F4B5CA),
    .INIT_41(256'hA8AAAAAA888A8B8B8B8B6B8B8B8BABCBCBCDCDACCCEE31734EECCAEC0EBBFF99),
    .INIT_42(256'h0002E2E2E4E62C3077BD9BBBBBDBD96E6AAE8CAE910FCD492426492B29292929),
    .INIT_43(256'hBBDBDDB8DBB8DBFDD94E0A90B2F74E0AB7F995D76E2A4A0444448846240200E0),
    .INIT_44(256'hE4A4626264426262A4E4E426ACCCAA888C6C6EFDFDDDFFFFFFDDBDBB9BBBBB9B),
    .INIT_45(256'hC48488F56C262804486A8AD0F2F08C6A8A4624468A68D0F0F2D0CECCAAA88848),
    .INIT_46(256'hF2F2F0CECCAA66644404C2E4E8C66EFBF9B70AC4C26ACE86A4C4C4C4C4C4C4C4),
    .INIT_47(256'hFDD9B795D7D5D7D593D9B999BB7593B5286A8AACD0F2F4D04A4A6A6A486A6A48),
    .INIT_48(256'hD36C28B0B0B14C4C08E4064828064E9775934EC6E808E406A4A4A6EA2E95FBFD),
    .INIT_49(256'hC888888A8A88A8A8EC0EEE6611FFDFDF9986A66EB0AEAEAED1B08ED3D3B1D3F5),
    .INIT_4A(256'h9B55CEAE8E918D8DD1112F4C6C686868AACAEAEAEAEAEACAAAACF0F0D0AED54E),
    .INIT_4B(256'hC8C8A8AAA8AAAD8B8D8B8B8B8B8BAACBCBCDCDCCACCC31512EECCACA30DBFFDD),
    .INIT_4C(256'h00E0E00404C2E60C77BB9999B9B9FB916CAE8E6E9311CF6B0404292929270707),
    .INIT_4D(256'hDBDDDB96BA96B9FDD94E0A8E8ED4B2C64EF9D9D7D7F7B0482444884644464424),
    .INIT_4E(256'hE4A2608462426262A4E6E4248ACCCC888C6CD7FDDBDDFFFFFFDFDDDDDDDDBB9B),
    .INIT_4F(256'hA48444D1B0C228E248688CCED0CEAC8ACEACAC246846CEF2F4F2CECCAA886846),
    .INIT_50(256'hD0F2F0CEAAAA8886440404E608C4B5FBD9732C8E28D08A64A4C4C4C4C4C4C4C4),
    .INIT_51(256'hFDFBD7B5B3D7B3D7D9FBB977BB514E6E268AACCEF0F4F4AE288CD0F28C8AAE8A),
    .INIT_52(256'hF7B06C8EB08E6E6C2806484A06A2A60E7575B7510CC6E891737597D9FDFDFDFD),
    .INIT_53(256'hC888688AAACAEAE82E3131CA33FFDDDF3364E88EB0D0D1B0D0D3D3F5B1B0D3F5),
    .INIT_54(256'hDF57D1AE8F8F8F8DAFEFEC0A4A684868AACAEAEAEAEAEAEAAAAAF0F0CE8CD2B5),
    .INIT_55(256'hEAEAEAEAA8AAABAD8D8D8D8D8B8B88A8CDCDCACCCCCA0E2E0C0CEACA53DDFFFF),
    .INIT_56(256'h24E20202E204800A9799BB7577B9FB4E4A6C287197EF8B8F6B04042729292704),
    .INIT_57(256'hBBDD99969630B8FDFB704C4C28B0D7E84CFBF9D9904A04C00224AA8846664666),
    .INIT_58(256'h06A282C84042426282C4E4026688AA88486EF9D999DDFFFFFFFFFFFFFFFFDDBB),
    .INIT_59(256'hA486244AB5C4A0C26A688AACCE8A8ACECCACCECEAC6868F2F2CECCCCAA884604),
    .INIT_5A(256'hAEF0F0CE8AAAA888442404E4E408D5D7FBD7D5D36CD0668482C4C4C4C4C4C4C4),
    .INIT_5B(256'hD9FBB7D791F793D9FB979797B7936E4C268AACCCCEF2D0B04A6CD0F2F2AE8C8C),
    .INIT_5C(256'h908ED3D3AEAEAE8C4826484AC4A48422CE97DBFD73A64FD9FDFDFDFDFDFDFDD9),
    .INIT_5D(256'h0CA88888CAECE8A60C50530E53FFFFFFCA862C90D1D1D1AED0D3F5F5B1B18ED3),
    .INIT_5E(256'hDF79F38E6D6F8FAF8DAC86842A4A4868AACAEAEAEAEAEAEACAAAF0EECECEB0F7),
    .INIT_5F(256'h2D2D2D0CCAAAAA8A8B6B6B8B8BADABAACDECECECEAEAEA0C2E2C0AC895FDFFFF),
    .INIT_60(256'h240204C0E206C2C67577B975B9DBFB4EA280A4C8EF8B8D6D4904020202020404),
    .INIT_61(256'hBBDDB996963074FDD74E4C4A286EF74CE6D7D7B32AC2C20402ACCE4644662202),
    .INIT_62(256'hE6C4A482A684626262A4C2046888AACC2890FB9497FDFFFFFFFFFFFFFFFFDDBD),
    .INIT_63(256'hA6862480B54E80806A88AA8A688A68482626466A8AAC68ACCEACACCCAA664604),
    .INIT_64(256'h6A8CF0F0AA88A88866460406E408B3FBF9B3B04AAE8A64C6A4C4C4C4C4C4C4C4),
    .INIT_65(256'hB7D9F9B56F93D7D9B975979775734C0648AAAA8ACED06A284A4A8E8CAEAEAEAE),
    .INIT_66(256'h906EAED3D3D1D0CE8A684808C4A6A84646CE5575B975B9FFDBFDFDFDDBDBDBB7),
    .INIT_67(256'h70A8AAAACAEAC8C6A6C895B795FDFDBB66A62A90D0AEF3F3F5F7F5F7F5B18EB1),
    .INIT_68(256'hDF9D5759B18FB18D6AACAAA60A284868AACAE8EAEAEAEAEACAAACECCACAC8CF7),
    .INIT_69(256'h4F2C2C2C0CCAAAAA8B8B8B8B8BADABAAAACAEAEAEA0AE80A2C4F4FEAB9FFFFFF),
    .INIT_6A(256'hE00204E2E204E4A20C7597979999FD518060404044468D492602000202020202),
    .INIT_6B(256'hDDDDDB96965250FFD94C2A06066CF58EE4B3D58EB148E2046AF1680244440000),
    .INIT_6C(256'hC4C4A2A4C8C6626062A2C20488A8886828B4B774B9FFFFFFFFFFFFFFFFFFDDDD),
    .INIT_6D(256'h84860460EAB7EA806A4688AA462626AE8EAEB048248CAC688AAAAACAA86626E4),
    .INIT_6E(256'hAEACEEF0AA88A888662404E6C408D7D72C28484AF38884A4A2C4C4C4C4C4C4C4),
    .INIT_6F(256'hD9FBFB9391D7FB977577977553734E2A2668AAAAAC6A4A486C4A6C4C6C6C8ED0),
    .INIT_70(256'hD3D36CB0F5F3D0EE8A6806A4A686888868440F9797FFFFFFDDB9D9FBFDB9B7D9),
    .INIT_71(256'hD5C8A8CCCAC80A2CEAA60C93D9FDFF9762C64C8ED0D1F3F3F5F5F5F5D3B3D5B1),
    .INIT_72(256'hDD999B9D158EAF8D8CACAA88C82A488ACACAE8EAC8C8EAECECAACCAAAAAAACD3),
    .INIT_73(256'h4C2A4C4E2CECAAAA8A8A8B8B8AABABAACAEA0C0C0C0A0A0C0C2C2E2E97FFFFFF),
    .INIT_74(256'h020402020404E4C4A65375959999DB2E6040424020678B252402000200000002),
    .INIT_75(256'hDDBBDBB996300EFBB42A06C2E206D3B1E48EF5D1B048046AD3B004E044442222),
    .INIT_76(256'hA2C4A2E6E8A6626062A2C224888888464CD79496DBFFFFFFFFFFDFDDDDBDBDBD),
    .INIT_77(256'hA666C262640E532A8C44A8AA46E48EF7D5B3B3D5AE6A8AACCCAAA8A888682606),
    .INIT_78(256'h8CACEEF0A888AAAA442404E4C408D7932A4846AECE64A4A2C4C4C4C4C4C4C4A4),
    .INIT_79(256'hD9FBFB93B5D9B9557979793375534E4C06688AAAAC466A4A8ED5F7F7F7D58E4A),
    .INIT_7A(256'hF5B16CB0D3F3F0F0AC4AC684866466468AEF97FDDDDFDFDDB9D9D9D9FDD9B7D9),
    .INIT_7B(256'hD72EA8CACAC80A0A2C0CEA70D7FDFF3162C64E8EB0D1F3F3F5F5D5909091906E),
    .INIT_7C(256'hDB77997957D08C6A8A8C8AAACA0A4A8ACACAE8EAEACACAECCAAAAA88AACCAC8E),
    .INIT_7D(256'h2A2A4E4E0CEAAAAA8A8AABAC8AABAAAACCEC0C4F2C0A0A0C0A0A2E5375DDDFFF),
    .INIT_7E(256'h44240224240204E682EA307397DBD9EA62828462426769252402220202020200),
    .INIT_7F(256'hBBBBB9D9940C30D9904A06C0C2C26C90068EF5D08C486AD0F38C042444444244),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized13
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hF8007FFFFC07FFFFC47E3FFFFFC07FFFFFFFFFFFFFEFFFFFC3FB9FFF101FFFFF),
    .INITP_01(256'hEFFE3FFFFFC07FFFFFFFFFFFFFEFFFFF81FDE3FE101FFFFFFFFBFFFFFE0E0000),
    .INITP_02(256'hFFFFFFFFFFCFFFFF80FDFFFE001FFFFFFFFC7FFFFC076000B8007FFFFE03FFFF),
    .INITP_03(256'h80FDFFFC001FFFFFFFF4FFDFFE03E0009800FFFFFE03FFFFFFFE3FFFFF817FFF),
    .INITP_04(256'hFFFEFF9FFE13F000DE01FFFFFF03FFFFFFFE3FFFFF81BFFFFFFFFFFFFFDFFFFF),
    .INITP_05(256'h0FC1FC7FFF01FFFFFFCE7FFFFF80FFFFFFFFFFFFFFFFFFFF00FFFFFE001FFFFF),
    .INITP_06(256'hFF867FFFFF80FFFFFFFFFFFFFF7FFFFF00DFFFFC001FFFFFFFFFFF8FFE0BF800),
    .INITP_07(256'hFFFFFFFFFE7FFFFF80DFFFF8001FFFFFFFFFF7E7FE06F0000FC3FFFFFF01FFFF),
    .INITP_08(256'h80FFFFF8003FFFFFFFFFF3F07E26F0000FC3E3FFFF01FFFFFFFC7FFFFF80FFFF),
    .INITP_09(256'hFFFFF0E07C6FF0000FC759FFFF01FFFFFFFC3FFFFF807FFFFFFFFFFFFC7FFFFF),
    .INITP_0A(256'h0AEF3FFFFF01FFFFFFFE1FFFFF80FFFFFFFFFFFFFC7FFFFFC0FFFFF000FFFFFF),
    .INITP_0B(256'hFEFE1FFFFF01F7FFFFFFFFFFF87FFFFFC1EFFFE001FFFFFFEFFFF1F83E7FF000),
    .INITP_0C(256'hFFFFFFFFF83FE7FFE3F3FC0005FFFFFFEFFFF3F83EFEF0000E4F8FFFFF01FFFF),
    .INITP_0D(256'hE3F800000FFFFFFFEFFFF7FBFCFEF0001F5F97FFFF01FFFFFFFE0FFFFE03E7FF),
    .INITP_0E(256'hEFFFFFE7F9FFF0000F3FCFFFFF00FFFFFFF60FFFFC07CFFFFFFFF7FF001FE7FF),
    .INITP_0F(256'h0F3FCFFFFF00FFFFFFFE07FFFC0FFEFFFFFFF698000FC3FFE7F800003FFFFFFE),
    .INIT_00(256'hA2A2C40AC68260626082A0268888884690B67497DDFFFFDFDFDFBDBB9B9BBBBB),
    .INIT_01(256'h8644A26264440E93B046A8CA68E44A6E28E6E64C6C480468CCCAAACAAA884606),
    .INIT_02(256'h266ACEEEAA88AAAA440406C2086EB5B58F268AF3A884A4C4C4C4C4C4C4C4C4A4),
    .INIT_03(256'hB7D9FBD7D7B75355995757559997B590286A688AAC4848268C908E8E90909048),
    .INIT_04(256'h936EB3D0D0F5F3D0AE2AC6846464862288BBFDFDFDFFFFFFBBD9D7D9FDDBD9F9),
    .INIT_05(256'hD5B5EAC8EA08E8C4E82C0A4EB7FDDDEC86C64CB0D0D0F3F5F5D5D3B3918E6E6E),
    .INIT_06(256'hDD9698765632D0AC6A8AACAAC80A4AAACACAEAEAEACACACAAA888A88AACCAA8A),
    .INIT_07(256'h0A0A2C4E2CEACAAAAA8A8A8A8AAAAAAACC0C2C4C4C2A082C0C0A2C7555DDFFFF),
    .INIT_08(256'h22444488440202E4A282A6EA73D9B7A6A4C8C862646969250202242402000000),
    .INIT_09(256'h99BBB9FB920CB6B64C6A482628E4046C06B0F5F2AEACD0D0AE48242244644442),
    .INIT_0A(256'hA2A2E60AA46060846282A04688888828B4947699DDFFDFDFDDBDBBBBBBDDDFBD),
    .INIT_0B(256'h66E280624444442ED36866ACAC26C2064A4A08C4C2E20468CCCECCEEEE8826E4),
    .INIT_0C(256'h266AACAA8866AA8A462426A22AD5D7F74A06B0AC6684C4E6A2C4C4C4C4C4A4A4),
    .INIT_0D(256'hB5B7FBD7D997537777799999B9D9FB93288A8A8A8A462604264A6C6C6C280606),
    .INIT_0E(256'hB7706CF3F5F2F3F38E2AA6646444AA888899FDDBDBFFFFFDDBD7B7FBFDD9D7D7),
    .INIT_0F(256'hD2D750E82C6E6E4C2C4C4C4E95FDB9CAA8C64CB0D0F0F3F3D5F5D590B3B3D5B7),
    .INIT_10(256'hDBB9B898965210CE8C8AAAAAC8EA2A8AA8CAEAC8CACACAA8A8888888CACAAA8A),
    .INIT_11(256'h0CE80A4E2CEAEACAAC8A8A88AAAAAAAAEC0A4C4C4C08080A0C2E2F9575DDFFDD),
    .INIT_12(256'h446688886624E0C2A2828484C82ED92CC60A0A62624769250002222402000000),
    .INIT_13(256'h99B9B9F9924ED64E6A8CAC6A4826E4E2E4B0F3F2AEAE6AD0AE46022444426464),
    .INIT_14(256'hC4A4C6E8826040626262A2486868466CD65076BBFFFFDFDFBDDDBBBBDFFFDFBB),
    .INIT_15(256'h66C06264444422C8B368668A8A26E26AB08E6C9028068CCEACCECCEECE6806E6),
    .INIT_16(256'hAED0CEAA88888A8A4804E4C44ED5F7F72848D04686A4C4C2C2C4C4C4C4A4A484),
    .INIT_17(256'h95B7FBB7D9977577779BDFDDB9B9D7D5286AAC8A8C8CAE4848AED0D2D26C286A),
    .INIT_18(256'hB7D74C8CF3D2D3D36EE886646664CA77CA33DDB9B9FDDDFDDBD9B7D9FDB995B5),
    .INIT_19(256'hAEF7B52C70D3B290904E4E5053DB97CAA8E82CB0D0F3F3F3D5D36C4CD5F7D5B5),
    .INIT_1A(256'h97B9DAB8B97410EEAC8A8A88A8EA2A8ACACAEAE8C8CAC8A8A8886888CACAAAAA),
    .INIT_1B(256'h0AE8E82C2AE8EACAEEACAA88AAAAAACA2F0C2C6F4C2A0A2C2E2F73B9BBFFFFBB),
    .INIT_1C(256'h64A8CAA8662402A08082C6E8C6C6B5F970706EEA644669252202022202000000),
    .INIT_1D(256'h9999DBB6704E702A8EAC6804E202E2C004F2D28C484804D0B006E22444426464),
    .INIT_1E(256'hA4A4A4A4626262626260A24A486A48D4B62E76FDFFFFDFDFDFDDDDDFFFFFDDBB),
    .INIT_1F(256'h24806244244444849148468A6804E406284A8E8E6C8CF2CEACCEACCEAC48E4E4),
    .INIT_20(256'hCEF0ACAC8A6646462604E42CD590F7F7288CF30286A6C4A2E6A4A4A4A4A4A486),
    .INIT_21(256'hB5B7FBD995B997999799DFDDB9D993F96A6AACACACD0F0AC8AACAC8CAEAEAECE),
    .INIT_22(256'h0A4E4C4AD2F5D3D570EA66466644665577CC55FDD9FDFDDDD9B7F9B7DB9795B5),
    .INIT_23(256'hACF4F72C4E909090704E2C2E95B975CAA8EA2A8ED0F3F3F3F5B36C4C8E6C2A2A),
    .INIT_24(256'h5496B8B8B8995510AA6A8A88AAEA2A8CCAC8C8EAEAC8C8C8A8888888AACACAAC),
    .INIT_25(256'h0C0AEA0A0A080AC8EAAAAA88AA8AAA53712C2A4C6F4E2E0C2E97D9FDFFFDDDBB),
    .INIT_26(256'h86A8A8A8864402C0A282C608E6C671FDFBB570D7CA6869472200002202022404),
    .INIT_27(256'hBB99B9D72C4E4C4A8C464424242402E004F0AE482648B0F36AE2E00224446464),
    .INIT_28(256'h82824262424062624260A44A6A4A6EF94E52DDFFFFFFDFFFDFDFFFFFFFFFFFDD),
    .INIT_29(256'hE2806444444444429128268A4848488C8ED2D08E8CD0F2F0CE8A68AE8C4A06A2),
    .INIT_2A(256'hAC8AACCE68462648040690F7D790F54C6A8AF0886484C4C4A4A48282A4A48444),
    .INIT_2B(256'hB5B7FDB753B9999997BBFFFFB9722AD58E6AAEAE8CCEAC8A66688A8A6A8AACAC),
    .INIT_2C(256'h2A0828B0F5D5D5B22CCA884646664422BB110ED9FDFBFDFD97D7FBD9FBB995D7),
    .INIT_2D(256'hAAAEF4F94E90B2902A08E8EA2E7531AAA60A2A6CAEF3F3F5F7F9D56E6E6E6C28),
    .INIT_2E(256'h9796969696967510AA8A8A8A88A8E86AAACAEAEAEAC8C8C8A8886888A8A8CACA),
    .INIT_2F(256'hEAEAEAEA0A2C0A4C0A0CAAAAACAACCDB2D2A4E4C2C0CEAEAEAB7FFDBFDBBDDDD),
    .INIT_30(256'h66A8A8A8864402C0A0A2C4E406E62F75FDB7B7B911AD6B270200000202020505),
    .INIT_31(256'hDB99B9942C4E6E4A684422242466442246AC46482404D0F548E2E2E002446644),
    .INIT_32(256'h82824042424040402040C48EB0B2B4D730DBFFFFFFFFDFDFDFDFDDBBBBFFFFFF),
    .INIT_33(256'hC282622222222264B52AE46A486AD0F2D08C6A48AEF0CECEAE6868AC6A08E480),
    .INIT_34(256'hAA8AACAC8A482606E46EF9F99390B24A8C68CEF06686A4A482C6A4A4A6A88644),
    .INIT_35(256'h95D9FD5173DBB9B997DBFDFDB72C28B0B08CAC8CACACCEAC8888AAAC68ACAC68),
    .INIT_36(256'hB16E2AD3F7B2B2904ECA68686846644275FD97D9D9B9FDFDD9D9B5B7FDDB9595),
    .INIT_37(256'hAAACD2F7704E6E6C08E6E8E8EA7511A8A60C4C8EAEF3F3F3F7F7F9F7D5F5D390),
    .INIT_38(256'h9772527496767410AC8A8A8A8AA8EA4AAACAE8EAE8C8C8A8A86868AACAC8CAAA),
    .INIT_39(256'hE8C8E8C8082A4C6C2A0ACAAAAA880FFD0C2A2C4C0A0A73B995FDDDB9FDBBBBB9),
    .INIT_3A(256'h24688886644402C0A0C2E4E2E42C31F199995030CA8B6B270202020202252707),
    .INIT_3B(256'hDDB9D9500A4C6C48466644220000426622884604E2028A8C262624E0E0242402),
    .INIT_3C(256'h82824222224062624262C44A6CB2D9B7B7FDFFFFFFDFBDBDBDBDBB99BBDDFFFF),
    .INIT_3D(256'h06A46242242424429591E4266AAEAE8C8C6A8CCEF0F2AEAEAC46446A28E4A280),
    .INIT_3E(256'h8A8A8A48482606E4E690F9B74E90B26AAC4668F38A66A684A6A68686A8A88868),
    .INIT_3F(256'hD9FDFB2E73D9DBB795FBFBFD924C6E8EAE6A6A8A8ACCEEECECCCEEF0CCACCEAA),
    .INIT_40(256'hD3D5B28EF7B5908E2CC866686866666410FDFFD9D9DBDBB9B7D9B7B7FDDBD9D9),
    .INIT_41(256'hA8AAD0F7B44E906E4A4C4E2C0E75EE66A60C2C6EAED0F1F3F7F7F9F9D7B3D3D5),
    .INIT_42(256'hB97252969674520EAC8A8A8AAAAAE82AAACAEAEAC8C8C8CAAA8868A8CACACACA),
    .INIT_43(256'hEAC8EAEA2A4C4A6C4C2CEAAA88CC97D90A0C0AE8E8EA3097DBFFB975BB75DBDB),
    .INIT_44(256'hE2466844644402A0C0E206E4E67377F157BB520E664649270402020202272727),
    .INIT_45(256'hDDBBD92E0A4C4A4A466644222242426642664604C0E22626266A4602E0E2E2C0),
    .INIT_46(256'h828242222240406064A62A28284EDBDBFDDDDFFFDFDDBB9B9B9BBBBDBBBBDDFF),
    .INIT_47(256'h4AE682644444442273B506266ACEF28CAED0AEF0CEACCECE8C46244808C48260),
    .INIT_48(256'h8A686A486A28E6E4E670FBD770B3B28E8C68268CD36866648686868688888A8C),
    .INIT_49(256'hFDFBFB514EB7DB9597FBFBD94C8EB08E8C26688A88AACEEEEEEECECECECEEEF0),
    .INIT_4A(256'hF7F5B2D2D2B26E6E2CA8666868448664EEB9B99373D9D9D9D9FBFBFDFDFDFDFD),
    .INIT_4B(256'hCAAACEF4F9924E2A4A6E4E4C5175EF6486EA0A8EB0D0D0F3D5F7D7D7D5B3B3D5),
    .INIT_4C(256'hB9967296745474108A8A8A8A8AAAE82AACCAEACAC8A8AAAAAA886888A8CACACA),
    .INIT_4D(256'hE8C6E8E80A2A2A4A4C4EEAA8AA53DB75EA0CEA4E4EEAEA53FFDD5577DB77B9B9),
    .INIT_4E(256'hA00446444422E2C0C00426C22C95773533BB950C644447272502020202242705),
    .INIT_4F(256'hDDB9B62C0A4C4C6C48686666648484844446AC6AC0C0E2C0040606E4C2C0A0A0),
    .INIT_50(256'hA48420424240408473702A6C4A92FDFDFDDDBDDDDDFFFFBDBB9B9B99999998DD),
    .INIT_51(256'h6A288284442466F1B9930806488CD08CD0D0D0F0CE8A8A8A48262628E6826080),
    .INIT_52(256'h6A4848484A06E4E6A24EF99595D5D46C8C6A8E28D3D0AC66666466868686888A),
    .INIT_53(256'hFDFDFB2E2E75DB5597FBD94E0804488E8C4646668AACACCCCECECECECECECED0),
    .INIT_54(256'hB2D5D2F5F2906E702C8644466666CAEC53FBB72E2E95D9D9FDFDFBFDFDFDFDFD),
    .INIT_55(256'hC8AAACF6F9F96E08084C6E6E51B90F4486A6C64EB3B0F3F5D3D5D5D7F7D5D5D5),
    .INIT_56(256'h94B75272747474308A8A8AAAAACAC82A8CCACAC8A8AAAAAA68686686A8C8C8C8),
    .INIT_57(256'hC8C6C6C608E608E6080A2CA80E97770FCAEA0A0C2C2C73FDFFDB32B9FDB997B7),
    .INIT_58(256'hA0E04466662202E0E02406087177573510B9B72C624447492702020200222402),
    .INIT_59(256'hBBB994E80A4C6C8C46466686848484848466D0D2E4A0C2086E6C6C4A06C2A0A0),
    .INIT_5A(256'hA48442224264822EF9B24C286ED9FBBBBBBDDFDFFFFFFFDFBDDDDD76769999B9),
    .INIT_5B(256'h6848C4604224F1BDDD972CC406284A8C8E8E8C8C6A484828060606C684626082),
    .INIT_5C(256'h6A26262828C4C4A4A40CDBB973D7D48E4AAEB1082AF5D06622666666A8AA8888),
    .INIT_5D(256'hFFFFDB5195D9FF5597DBD9704A266A6A8C6A4868688A8C8C8C8CAC8CACAE8C8C),
    .INIT_5E(256'hD5D3D2D0D0B04E2CEA8666668886A831DBD7932AEA2EB7FBFDFDDBDBDBDDFDFF),
    .INIT_5F(256'hC8AAACF4F4F9B4E6082A6E7195B933666688A62C90D3D3D3D5D5D5F5F7F5D5D5),
    .INIT_60(256'hB6B7723050525230AC8C8AACAACAE82A8AAACAA8A8A8888868484686A8C8C8C8),
    .INIT_61(256'hE8C6C6E6080A08E8E80AEAEA75B9315331A8CAE80C51B7FDFFB97575DBDBB7B7),
    .INIT_62(256'hE0E04464642202E02246064E957757F13397952C422247694702020200202200),
    .INIT_63(256'hB9B672E80A4C8EAE264466648484A4848644D0B0E4E428B3F9D7F5D54CC2A0C0),
    .INIT_64(256'hA4844242A80CEA93D7706E2890F9B997BBDDDFDFDFDDDFDFDDDDFFBB9999B996),
    .INIT_65(256'h886A26A2424479FFFFFDB70AC2E40628062626260404E4E4E4E6C48262628282),
    .INIT_66(256'h2604040606C4A48284C873DBD9D7D5B24AB370E8C690D14624666464A8A8A886),
    .INIT_67(256'hFFFFB973D9DBFF5577DBFBD7B06A6A6A6A8CD02604486A4A4A4A4A4A4A6A4848),
    .INIT_68(256'hF7D2D08EAEB02ECAA886868888A851B5D9700AC6E80A50D9FBFDDDDBFDFDFDDD),
    .INIT_69(256'hC8A8ACF0D0D2F72A08086E4C519753AC2466A8C84E90B0D0D3D3F5F5F7F7F5F7),
    .INIT_6A(256'h96B672303030300E8A8A8AAAAAAAC8086A88A8A8A888888868684886A8C8C8C8),
    .INIT_6B(256'hC6C6E8080A2A2A0AE80AC82FB9B90E5597CAC80CC873DBFDFFB9525274D9B7B9),
    .INIT_6C(256'h022264644402E0E024042AB9999957F01073932F420024896902020222202000),
    .INIT_6D(256'h96D92CC62AB0908C462444868484A4A48444CEB0E46E8E4CB3D5B36C06E20446),
    .INIT_6E(256'hA4A6A8EC525072D9D7702C4ED7DBDBDBFFDFDFDFDFBDDDDDDDDDFFDD9997760E),
    .INIT_6F(256'h666828A442AA9BDFDFFDFDD90A82C4C4E4E4E4E4E4C2C4C4A4A48262626282A4),
    .INIT_70(256'hE4E4E4E6E6C4A2828484A631FD9592D590F94EC882086E6A4666666686868688),
    .INIT_71(256'hFFFFB975FBB9DD9977B9D9708E8A8A8C8C8CF348E40628280806062626060606),
    .INIT_72(256'hF5D3D08E8E4CEAA886868686A82ED9FBD770E6E62A2C0A93D9FDFDDBFFFDBBFF),
    .INIT_73(256'hC8CACAACAC8CD4922A2A904EEA5333CF246868860C4E8EB0B0B0D2F5F5F5F5F5),
    .INIT_74(256'h947472505272520E8A8A8AAA88A8A8E84A8AA8A88888888868484866A8C8C8C8),
    .INIT_75(256'hC6C8E8E82A0A2C2CE8E80CB7FBB91077DB2FEACA0CB9FDFDFBD9747272D9D9D9),
    .INIT_76(256'h4464646422E2C0022408B5FD999B99323050732F640022696902020222202000),
    .INIT_77(256'h72D62AE62A6C4A6846444286A684A4A484648A6C06B0D24A2A6C28E2E2244466),
    .INIT_78(256'h82C650B7D9D9F9D9D9B42C72FBFDFDFFDDDFDFDDDFDDDDDDDDBDDDFF999996C8),
    .INIT_79(256'h88886AC4CA77DDFFDDDDFDFDB7C68080A2A2C2E6E6C6C4A48282626284A4A2A4),
    .INIT_7A(256'hE4E4C4C4C4A48284848420AAFD9570D5D7D9EC8662A42AB06A466666666466A8),
    .INIT_7B(256'hFFFFBB95FBB9DBBB97B992086CACAE8C6C6CD26AE40606E606E4E60606E6E4C4),
    .INIT_7C(256'hD5B06C4A4C0CC886848484A60C7093B56E6C2A8E6C4C2CC6B7FBDDBBFDFDDBDD),
    .INIT_7D(256'hC8C8CAAAAA8CB2D72A2A2A2C0C7555F148686888CA0A4A8C8E8E8EB2D3D3D3B0),
    .INIT_7E(256'hD8947472725052108A8A6A8A88AAA8E84A8AA8A88866668868464666A8C8C8C8),
    .INIT_7F(256'hA8C8C8C60A0A0A0AE8EA50B9DB9931DBFB51EAEC99FDFFFF97D9947272B6B6B6),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized14
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFF03FFF80FFEFFFFFFFEFC000FC1FFFFFC00007FFFFFFEFFFFFFFFF8FFE000),
    .INITP_01(256'hFFFFFFFF000EC1FFFFFF00007FFFFFFF7FFFFFFFF8FFE0007E7FFFFFFF00FFFF),
    .INITP_02(256'hFFFF60007FFFFFFF7FFFFFFFF8FFC0007FFFFFFFFF00FFFFFFFF07FFF07FFE7F),
    .INITP_03(256'h7FFFFFFFF07FC0003F7FF7FFFF007FFFFFFFE7FFE1FFFCFFFFFFFFFF000781FF),
    .INITP_04(256'h7FFFF7FFFF007FFFFFFFFFFFE1FFF07FFFFFFFFC000701FFFFFFF8006FFFFFFF),
    .INITP_05(256'hFFF9FFFFE1FFE03FFFFFFFFC000200FFFFFFF8207FFFFFFF7FFFFFFFF03F8000),
    .INITP_06(256'hFFFFFFFE000000FFFFFFC0607FFFFFFFC7FFFFF8301F800037FFFFFFFF003FFF),
    .INITP_07(256'hFFFFC0E07FFFFFFFC7FFF7E0781F00001FFFFFFFFF003FFFFFF1FFFFF9FFC03F),
    .INITP_08(256'hC6FFE000F81E00001FFFFFFFFF001FFFFFF3FFFFFFFFC07FFFFFFFFF0000003F),
    .INITP_09(256'h3FFFFFFFFE001FFFFFFEFFFFFBFF007FFFFFFFFF0001FF3FFFFFE1E06FFFFFFF),
    .INITP_0A(256'hFFFF7FFFFFFF887FFFFFFFFF801FFFEFFFFFE1C0FFFFFFFEFFFFC381F81C0000),
    .INITP_0B(256'hFFFFFFFF803FFFF7FFFFF1C0FFFFFFFFEFFF03C0F00000007FFFFFFFFD000FFF),
    .INITP_0C(256'hFEFFF8C0FFFFFFFFC7FF01F0E00000003EFFFFFFED000FFFFFFFFFFFFFFFFF3D),
    .INITP_0D(256'hC3FF01FEC00000001CFF7FFFE98007FFFFFFFFFFF3FFFFFFFFFFFFFF80FFFFFF),
    .INITP_0E(256'h017FFEFFFB8003FFFFFFFFFFE7FFFFFFFFFFFEFFC0F07FFFFFFFFC80FFFBFFFF),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFE7FC1F01FFFFFFEFE00FFFDFFBF83FF11FE40000000),
    .INIT_00(256'h6464646424E2A0A00693DBBB9B97B975739573CA642200476924020000202000),
    .INIT_01(256'h0A4C2A2A6E6E2646442220648484A4A48464466A8CAEAE8C4804020224666486),
    .INIT_02(256'hC42CD9FDD9B6D972B4D750D9FDFDDDFFDDFFFFDDFFFFDFDFDDBDDDFFBB7696EC),
    .INIT_03(256'h6666262A97FDDDFFFFDDFFFFFD53C6A4808080A282826060606082A4A4C4C2C4),
    .INIT_04(256'hE4C4C4C4C6A4848484846488BB955050FBB9AA644240C6D58C46666666646688),
    .INIT_05(256'hFFFFBB99DBB9DBDB94B46E4AD0AED0AC6A6CD2B0062806E4040406060806E4C4),
    .INIT_06(256'h6E4C4C4C0AC8A884A4C6C6EA4E702C4C082A6CB04C2C4C824ED9FD97B9FDDDBD),
    .INIT_07(256'hC8C8C8CAAA8AD2FB4C2A2A2C2E7579156A48466886E82A6C8E8E90B0B2F5B36E),
    .INIT_08(256'h96749496745072308A8A6A8A8A8AAAC8286AA8A8A886666668484666A6C8C8C8),
    .INIT_09(256'hA80C75B7D7D72AE8E80A73D9BB9975DBD9510F99DDBBFFFF50B79494B6B69494),
    .INIT_0A(256'hA684644402C2A2600AFDDD799999B9DBD9D70C20424702256927020200000000),
    .INIT_0B(256'hE82A6E2C4E904A8A442244A6A684A4A4A464248CAEF26A022402224444646486),
    .INIT_0C(256'hC492F9B79492B6502E94D9FFBBDBDBDDFFDDDDDDFFFFFFFFFFDDBBDDFD96962E),
    .INIT_0D(256'h88686A6EFDFDFFDDDDFFDFDDFDFD510CA4A26060604062626080A2A2C2A2C2E4),
    .INIT_0E(256'hC4C4C4E6E8C8A6648666642213B973C8959744666442844C8E48466668664666),
    .INIT_0F(256'hDFFFBBBBB9B9B9B9B4D4B2D0AECEF0D0AE6AAED2064A28042626060606080808),
    .INIT_10(256'h2C0A080AC8A6C6C6E82A4C4C6E6E4C6E6E90B06C080808E8C6B7FD9753D9FDDD),
    .INIT_11(256'hC6A6A8C8A8AAF4FB4E082A0A2C75BB9BD1486868640A6EB0B08E6E6E6EB04C08),
    .INIT_12(256'hB6745274725072308A8A6A8A886888A60868AAA8A886668888684666A6C8C8C8),
    .INIT_13(256'hEA3175B7B5F96E082A0C95DBBBFFFD53B72E53DB779BDDDB52D9D8B694B694B6),
    .INIT_14(256'h8484646604A080600CDDDDBB77979795D9718220224602026947020002222200),
    .INIT_15(256'hE82A6E08B2D4AE4466888684848684A6A66624AEF4F4D2AE4622204264648484),
    .INIT_16(256'hA42EDB9650B49450FBFDFDDBFFFFFFFFFFDDBBFFFFFFDDBB99BBDDDDFDB9962E),
    .INIT_17(256'h8A884890FBFDDDDDDDDFDFDFFFFDFD51E82A08C6C6848482A2A2C2C4A2C2E4C2),
    .INIT_18(256'hC6C6C6E8C6A686846466684688BBB97375EE6644426462708E48AE26488A6644),
    .INIT_19(256'hFFFFDBBB97DBB9B994B4B28CACACD0D2B08EB0F32648686A6A28262628060608),
    .INIT_1A(256'h4C2C2CE8E8E8E80A2A4A6C6C704E4E90908E8E4A0608C4C60AD9DBD90A4EDBFF),
    .INIT_1B(256'hC6C8C8C8C8AAD2F8B60A6E6E7071B97B591713CCA80AD5D290B0B0B08E6E6E4C),
    .INIT_1C(256'hB696747252725052CC688A688A8888A6E6288888886666686646666686C8C8C8),
    .INIT_1D(256'hC6EA5151514E2C4CE82ED9B9DDFFB953B975DBDBCC77FF9772D9D894B69294B6),
    .INIT_1E(256'h44444424E2A06040A897DBDD9795B7D9D90A6220222404024747242202020000),
    .INIT_1F(256'hE82C6E2A92D5AE6666666486A686A4A4842204D0F7F4F4F36822426464444464),
    .INIT_20(256'hE8B775EC0E925072FBFBFDDDFFDDDDDDFDFFFFFFFFFFDD997799BBDBFDDBB62E),
    .INIT_21(256'hAA88684AD9FDDDDDDFDFDFDFDDDDB9D92C4C904C0A84A2C4A2A0E2E4C4C2C2A0),
    .INIT_22(256'hC6C6C8C8C8A88666666648264677DB97CC6686224442202E4E288E2828684466),
    .INIT_23(256'hFFFFDBBB99DBB994B692908C8A8CAEB0B0B0D0F32448488A8A26264A4A06E6C4),
    .INIT_24(256'h2C2C0AC6C6E8E808284A8C6C6E4E4E70B28E4C2AE6C6A482C87395922C2A70FB),
    .INIT_25(256'hC6C8C8C8C8AAF2F8D84E2C6E9351779B377B79972E2ED5D2B08EB0B0B0B0906E),
    .INIT_26(256'hB6949472300E2E0EEE68688866888886C6066868664646666666666686A8A8C8),
    .INIT_27(256'hE80A5195734E4C4C2C2CB7DBBBDBDBDBDB97DBBBEE55FDDB72B6D6949494B6B6),
    .INIT_28(256'h02020202C2A06062428653FF957393B595A84222022427042747242402020000),
    .INIT_29(256'hE84E4C082A8E6A44646484A6A484A4848666248ED3F5F0686644444444240402),
    .INIT_2A(256'hE8DBBB75304E74B9FBFDFFDDFDDDDDDDDBDDFDFFFFFFDDBB999999BBFDFBB92E),
    .INIT_2B(256'hA8886826B7FDDDDDDDDFBFBFDFBFDDD9732A080608E6C2C2C0E204E4C2A2C280),
    .INIT_2C(256'hC6C6C8CAAA8A66446646484824CA538666664424464444A84E934C08B0F36866),
    .INIT_2D(256'hFDFDFDDBB9FDB794B64E708C8C8A6C6C8E8E8CF32646688A8A46486A6A08E6C4),
    .INIT_2E(256'h2A2A0AE8E8E8E60828486C8E8E6E6E70904C08E6A484C6A4A6A62E4E2A2870FB),
    .INIT_2F(256'hA6C8C8C8C8AAF0F4F6920A2C50ECF17B177B99972E4CB2D5D0AE8E8E8E908E6C),
    .INIT_30(256'h969696742E0C0C0EEE68686866688886A6E64868464624466666666686A8A8A8),
    .INIT_31(256'hC8C80A0AE80A2C6E4C2EB9DBBBBBBBDDBB77DD990E33DDFD5274B69472729494),
    .INIT_32(256'hC2E20204E2A260404020CAFDD995B5950E642402022447270527240202220202),
    .INIT_33(256'h0A4EE8A4E6282402446486A68484A68464ACB0B3B0D08A224444222402E2C2C0),
    .INIT_34(256'hEADBDDDD99759977BBDDFDDBFDDDDDDDBBBBBBDDFFFFFFDDBBB99999BBDBB72E),
    .INIT_35(256'hA8A8682690FBFDDDDDDFBFBFBFBDDFDDB76FC4C2E4E4C2C0E22626E4A2A2A2A2),
    .INIT_36(256'hC6C6C8AAAA8A2626464646464466862264444444222222640CB59370D7F56888),
    .INIT_37(256'hFDFDFDDDBBFDD7D7F9B4B26C8CB0B08E8E90B0F54648686868686848482808E6),
    .INIT_38(256'h4A2A2A2C2AE6E6062626488C8E6E6E6E6E2AE6A4A484A684A6C897B52C4CD7FB),
    .INIT_39(256'hA8C8C8C8C8CAEED0F4D6700CCAA8AC15593575732C2C90F5F2D0B08E8E8E8E6C),
    .INIT_3A(256'h969694722E0C0C30CC66884688686886A6C42668482624466866666686A6A8A8),
    .INIT_3B(256'hC6C8E80A082A6C902C72DBDDB9BBB99977BBDB970E30DBFF5274949472507294),
    .INIT_3C(256'hC002022604A260204220A8FDFBF9D95086222424240247490424020202220202),
    .INIT_3D(256'h0C4EC460C46C0400426486868484866466D3D52CE6260424220202E2C0C0A0A0),
    .INIT_3E(256'hEA97775777BB9955BBDDFDFDFDFFFFFFBB9999BBDDFFFFFFBB999999B9DB9650),
    .INIT_3F(256'h86C888484A93FBFDFDDDBFBFBFBFDFDDB973E8C4C2E2E2E2244624E2A2A4A282),
    .INIT_40(256'hE6C6A686686848486866462464646444A8A8ECAAAAAA664262EA95DBF9D52866),
    .INIT_41(256'hFDFDFDDDBBDB9572D7F9F9D48ED0F4D24C6EF5F76A6A68666888884648060606),
    .INIT_42(256'h6C4C2A6C2A060626264626484A4A2A282A08C4A484A6A6A6A62EFBFB904CB7FD),
    .INIT_43(256'hA8C8C8C8C8CACCCCB0F6F974CCCC10359B55B9B54C2A6CF4F5F2D2B0B0B0B08E),
    .INIT_44(256'hB69672502E0E0E10CC6668668866668686A4E64A482604466666668686A8A8C8),
    .INIT_45(256'hE8E8E6082A6CB1902CD9DBDBB9B9B99999DD9977303097FF77527496742E5294),
    .INIT_46(256'h0222444606A260204220CAFDDBD975CA42222426020426690402020202020200),
    .INIT_47(256'h2C2CC682E6D548E022446464628486648AB12C8460A2E2E2E2E0C0C0A0A0C0C0),
    .INIT_48(256'hCA5533F11355BD9BDDBDDDFFFFFFFFFFBB999999BBDDFFFFBB99B9B997D9942E),
    .INIT_49(256'h66888666264AB5FDFDDDDFBFBFBFBDDFBB970E82A2E2E202464602C2C2C48262),
    .INIT_4A(256'hE6C6A686666848488886666486A8EC529797B79797B9950CA6EA5099FBB32A46),
    .INIT_4B(256'hFDFFDBBBBBFD9795D9B7F9F76E8ED0D28E90F7D56C4868666668686848260606),
    .INIT_4C(256'h8E4A4A4A28E606264626264806060404E4C4A4A4A4A4A4A4A42EF9F9902A4ED9),
    .INIT_4D(256'hA8CAC8C8C8CACACC8CD2FBFB967410CC77B9D9F78E2A4AD2F4D2D2D0D0D0D0AE),
    .INIT_4E(256'h9472502E0C0C0EEEEE6666686666666686A4C408282826264688888686A8A8C8),
    .INIT_4F(256'hE8E82A6E8E8EB36E70D9B9B9B997BBBBBBBB5274503074DBB952969674303094),
    .INIT_50(256'h2244662404A26020422086B9DD97EC42422422460202266B2402020000000000),
    .INIT_51(256'h2C4C700A2CF7B0042222224242848664262A624240824C6C06E2C0C0A0C0E000),
    .INIT_52(256'h0E995757371357599B9BBDFFFFFFFFFFBB98987698BBFDFFDB99B9B996B952E8),
    .INIT_53(256'h4666666646064CF7FDDDDFBFBFBD9DBDBD7933A862A2E2244626E2C0C4A48462),
    .INIT_54(256'h06E6C6A8886A48466664C873727294B672725092707292B797B930A8B7D74C04),
    .INIT_55(256'hFDFFBBBBDBFDB995D9B7B5708EAEB0D0B090D5D54A2668686666686868480604),
    .INIT_56(256'h8C4A8E4A280806264646486A2646260404E6E6E606E4E4C2A22CF9D56E280893),
    .INIT_57(256'hA8C8C8C8C8CAC8CC8CD2F9FDDBDB7430EC72F7B08E4A6CD2D2D2D0D2D2F2F2B0),
    .INIT_58(256'h72502E0C0C0EEC0EEE6868668866686666A6A4E6082826244688888886A8A8C8),
    .INIT_59(256'hC80A2A8E8E6C902C72B7D99797BBFD5252B9307472300E97DD52967674520E72),
    .INIT_5A(256'h22244626C260402022222266AAEE880022444424020204462402000000020000),
    .INIT_5B(256'h2A70738270D5D0682222422244648666C2802020426208D3B24AE2C0C0C0C0E0),
    .INIT_5C(256'h53999B9B7B5735353757795734BBFF9896989898BA98DBFFDB99B998B694720A),
    .INIT_5D(256'h284666666646484CFBFDBDDFBDBD79DFBD7B37358482C2262602E0C2C28262A6),
    .INIT_5E(256'h06E4A4866868464642C895949272727050504E929272707094DBDB30ECB5D74C),
    .INIT_5F(256'hFDFDB97597FBFB73B5B5920A6ED2B0D0B06C2AF7AE484A48686A686868462604),
    .INIT_60(256'h6C6E8E8E2806282646264668688A6A684828282A48464826C4E8D56E8E4AE693),
    .INIT_61(256'hC8C8C8C6C8C8CAAAACF4F6B4F8FBFBFDB6B4D48E6A8CAED2F2D2B0D0F2D0D08E),
    .INIT_62(256'h72500CEA0C0EEC30EE88686688666666668686A6082826246688888888A8A8C8),
    .INIT_63(256'hC6C60A4C2A2A4EE850975295B9DBFF750E963052722E0E30DB545496B8500C2E),
    .INIT_64(256'h022426E480404222222200002224220024442222020202442402000000022000),
    .INIT_65(256'h2A92E840E86E6C482242424464648646A06222228884C6B3D5AE6802E0E0E0E0),
    .INIT_66(256'h739777997979797B7B7959371212BB99329898B8989652DBDD7496969672722C),
    .INIT_67(256'hB04886A6866668E470FDDDBDDFBD799B9D9F59571184C2E40604C0C2A28282A6),
    .INIT_68(256'h04E6C686886A46460ED9B42C2E4E4E4E4E4E4E6E6E7070507294FDFD7270B5F7),
    .INIT_69(256'hFBFDDB752E4FB5F9B593700A4CD4D0F2B04A0426D06C06286A68466666464624),
    .INIT_6A(256'h6CD3B32AE6E6062646464668686866664648284826246668282AD5288CD3D5F9),
    .INIT_6B(256'hC8C8C8C6C8C8CAA8CEF4D46EB4FBFBD8D6F9F66C488E8E8ED2F4F4D2F2F28E6C),
    .INIT_6C(256'h2E2E0CEA0CEAEC55118888886666466666668686E808262446888888A8A8C6C6),
    .INIT_6D(256'hC6A6E80A0A0AEAC80E75729795FDFF74EA30525274300E0EB9745274B8523050),
    .INIT_6E(256'h0406E48240202202222222222200020024240002020200222202000000020020),
    .INIT_6F(256'h4E0AA68460E66E8A4462646466668646E4A622CCCA62C6D3B06A8A44000202E2),
    .INIT_70(256'h7397557777799B9B9D7B7B7935EE10BB10527498B89652DBB93096B8B672502C),
    .INIT_71(256'hF78C88A6A8A888480895DDDFDFBD5735599D5B35550CC4E606E2C2A2A2828284),
    .INIT_72(256'h4A06C6A8888846CEDBB77250ECEAC8E8EA0C2C2C4E709294723050FDFD944EF7),
    .INIT_73(256'hFBFDFDB72C2A4A9191D5B34C4C908CF2CE8C46228A6A08E62668688886666668),
    .INIT_74(256'hD3B12AE6C40606262646486866666644444626464664668A6A8EF76C6A8EF7D7),
    .INIT_75(256'hC8C8C8C6C6C8A888CEF2AE6CD2F6D49090D2D4AE264A8E6E90B2D2F5D2D2B04C),
    .INIT_76(256'h4E500C2E2EEC339955AC68886646666666666666C8E80624468888A8A8A8C8C6),
    .INIT_77(256'hA886A6C8C8C8C80EEC3097DBB9DDFD520C2E725274520EEC72725274B8747250),
    .INIT_78(256'hE406C44020222222222222202222020202222200020000002200000000000000),
    .INIT_79(256'h4EA6E884628290D08864648486668624E6EAA853864082B3D0686644222202E2),
    .INIT_7A(256'h3097555757797979797B9B7B7935EE32300E5276B87496970CEC94B8B694702C),
    .INIT_7B(256'hF7AE88A8C8A8888A082CDBFDBBBD57F33759593555950CE8C4C2C2A2A2A26040),
    .INIT_7C(256'h4A0AEACAA8686899D9722E2EECC86284A6C6E80C4E70949494949494FBB77292),
    .INIT_7D(256'hD9FDFDD9916D4A6D6CF56C286ED28EAC8C8888A866482AC4C268A8A8A8A8AA8A),
    .INIT_7E(256'h6E0A08080808060626466866666666644444444466A8A888488CF58C48486CF7),
    .INIT_7F(256'hC8C8C8C6C8C88888F0CE8AAEF4D08C8C8EAEF2D04A286C907090B2B290B0906E),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized15
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFC7FC1E003FFFFFF7F007FFEFF3F81FF01FE00000000013FFEFFDBC001FF),
    .INITP_01(256'hFFFF7F003FFC3FBF00FF01FE0000000003C7FFFFC78001FFFFFFFFFFFBFFFFFF),
    .INITP_02(256'h407F00FE0000000003FFFFFFE78000FFFFFFFFFE0FFFFFFFFFFFFC7F83E001FF),
    .INITP_03(256'hF7FFFFFF838000FFFFFFFFF007FFFFFFFFFFFC7F03C000FFFFEFFF803FFD9F9F),
    .INITP_04(256'hFFFFFFF02FFFFFFFFFFFF87C03C0007FFFFFFFC00FFDDD1D407F00FC00000000),
    .INITP_05(256'hFFFFF8300380007FFFFFBFE007FFF801801F007C00000000E7FFFFFE038000FF),
    .INITP_06(256'hFFFF3FF0031EE302801C007800000000EFFFFFFC0780007FFFFFFFF0FFFFFFFF),
    .INITP_07(256'h80100030000000007FFFFFFC1F80007FFFFFFFE0FFFFFFFFFFFF78000301F33F),
    .INITP_08(256'h3FFFFFFCBF80007FFFFFFFFFFFFFFFFFFFFF4000023BFB1FFFFFBFDC0D37F000),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFE0600027FFFCFFFFFFFFF0730F0610000003000000000),
    .INITP_0A(256'hFFFC060003FFFFE7FFFFFFFFFF98F8E080000000000000003FFFFEFC7F80007F),
    .INITP_0B(256'hFFFFFFFFFEFF33C0C000000000000000BFFFFEF07F80003FFFFFFFFFFFFFFFFF),
    .INITP_0C(256'hC0000000000000009FFFFEE0FF80003FFFFFFFFFFFFFFFFFFFFF000003FFFFF7),
    .INITP_0D(256'h1FFFFF60FF80003FFFFFFFFFFFFFFFFFFFFFF00003FFFFFBDFFFFFFFF1FFB0C0),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFF80003FFFFFBCFFFFFFFFBFDFC20C000000000000000),
    .INITP_0F(256'hEFFFF00003FFFFF9CFFFFFEFC3FCCE0080000000000000001FFFFF60FF80003F),
    .INIT_00(256'h5050EA0E0CECB9BB991168686846666666666666A8C8E606466888AAA8A8C6C6),
    .INIT_01(256'hA8A6A6A6A6A6EA30CCEC10505277B9505050725274540EEC0C307496B8967472),
    .INIT_02(256'hE4C4824020000202022022222200000202220200020000000000000000000000),
    .INIT_03(256'h0A82A6A66060E86C8A66848664666624A2C8EEA86442400AB08A6642222202E2),
    .INIT_04(256'hC8315577575757577B9B9B79573510AA0E0E307496747497CAA80E96B894500A),
    .INIT_05(256'hF7D26686A8A8AA88480850D9779D9D37F3157B575555530CC682A2A2A2806060),
    .INIT_06(256'h2A0CEC66666688FF974E2ECAC8A6626262406284A6E82E929494722EB4B4944E),
    .INIT_07(256'hD7FBFBD7714B6F4B8FF38F6C6CD2D08C8A88A8CA664AE680E468A8888888886A),
    .INIT_08(256'h0A08082A08E606264648466688888684646486A8A8C8A6A888ACF28A686A268E),
    .INIT_09(256'hC8C8C8C8C8A68688F0CEACCED0ACACCCCCAAACF28C28064CD5936E70B3B36E4C),
    .INIT_0A(256'h2E2EEAECEC0EBB9979F146464646466666686888A8A8E606266888AAA8A6A6A6),
    .INIT_0B(256'hA6A6A6C8A6A82E0E0E0EECECEC0E74305050503052740E0E3050747496745030),
    .INIT_0C(256'hA282422020020222220000002202000200220200220000000000000000000000),
    .INIT_0D(256'hEAC862A6624060C428464464666666008062CA644242220CD28A4442666424E2),
    .INIT_0E(256'hA6EC75773557575779799B797711EECCCCEC3052525252DB2EA80C94B6722C0A),
    .INIT_0F(256'hB4F4686688A8A8AA4628084E759BBD59F5157B7B59355553C8826080A2808282),
    .INIT_10(256'h0CCA88468A8A10DB504E2CA662424062624262606062C62E9292706E90707094),
    .INIT_11(256'h8ED5FBFB734D4D6F91B16C6C4CD3D26A8C6A88AA482AC682E46888888868482A),
    .INIT_12(256'hE8E8E8E60806062848686666888686848484A6C8C8C8C6A6A8AAAA8A686A4848),
    .INIT_13(256'hC8C8A8A8A6A686AAEECCCCCEACACCCCCCCAAAAEECE6A280893D59371704C08E8),
    .INIT_14(256'h0C0E0CEACA1077BB77CE68684646666668686888A8A8C6E6264888A8C8A8A6A6),
    .INIT_15(256'hE8E8E8EAA6E8500C0C2E300E100E302E50727250525252303052527474520E0C),
    .INIT_16(256'h6040402022022220000000000002020200220200220022000020000000000000),
    .INIT_17(256'hC82E64C8A6624060E646222264444400A0406444222222868EAC6644886804C2),
    .INIT_18(256'h84861057575757575757799B7933CC3153ECCC30305230D90EA8EA72742E0A2C),
    .INIT_19(256'hB2D26A6888AAA888664828E850779B9D37377B7B7B57355531EA8260A2A2A2A4),
    .INIT_1A(256'hAA686A6ACEAC55750A70E8624240406062626262606082C64EB292904C4E2C94),
    .INIT_1B(256'hAC8ED5FBD9932D4F71910808B3D5904CB28E488A4A0A8684E6486A684848280A),
    .INIT_1C(256'hE8E8E8E6E606284848686666888686848484C8E8E8E8C6C6A686668A686C6AAC),
    .INIT_1D(256'hC6A8A8A6A6A686CCECCACCACACCCECCAEACACACACCAC6A482AB5B72EE8E8C8C6),
    .INIT_1E(256'h0CECECCCAACC35DF79CC6646686666666868688AA8A8A6C6284888A8C8A8A8A6),
    .INIT_1F(256'h080A0A0AC60A502C2E5050303030303030507252520E522E3052525474300E0C),
    .INIT_20(256'h4020202002022200000000000000020200000200000000000020000000000000),
    .INIT_21(256'hC80C8462CAA64040A204020266666626A24264642022222008D08A668868E460),
    .INIT_22(256'h846286F0575735135759579B7955EE319932EE757553EC30ECCAC80C500CC80C),
    .INIT_23(256'hD4B08C4888AAA888866648062C5357BF39155B7B7B7B59577553C88282A4C6A4),
    .INIT_24(256'h466AAEAED0AC772E0C2EA6A6626260826082606082828282E690B2B26E4C4E0A),
    .INIT_25(256'hAC6A2A93F9F9932D6F6F2A4F93707094F990286A2AE88686C6284A4A0808C8A8),
    .INIT_26(256'hE8E808E6062848486688866686868684A4A4E6E6E6C6C6C6C6A686688A8CACCE),
    .INIT_27(256'hA6A6A6A6868686CAECCACCCCCECACACAC8EAEACACAA88A6A086F710CE8C8EAC8),
    .INIT_28(256'hECECCCCA88CC33DF9BCE4646686666666866688A88A8A6C6084868A8C8C8A8A8),
    .INIT_29(256'h080A2CE8E84E4E0C4E727272525250502E2E5250520E30303050525274300CEC),
    .INIT_2A(256'h2020200002020200000000200000000000000000000000000000000000000000),
    .INIT_2B(256'h0CCA644264CAA86260C2E202688846068264884200022242A26C8C8A8A268040),
    .INIT_2C(256'h62624446AA115735131315799B77110E555555550EAA88CCCCCAC8C6EAE8E80C),
    .INIT_2D(256'hD2B2B02868AAA8A8A8866626084E555939F515599B9B7B7955550FA88282A4A4),
    .INIT_2E(256'h8CB0B0B08C8C990E0CEA6264626280C2E4E6C4A28080C4C4800890B26E2C4E2A),
    .INIT_2F(256'hAC6A26284CD7F9B52C71934F4E50B9FDB9B52A280AA86486A6E6080AEAA88868),
    .INIT_30(256'h080828284848686888A8A88686A8A8A6C6C6E6E6E6C6E8C6C6C68666688A8AAC),
    .INIT_31(256'hA6A6A6A6868686CAECECECCECECACAEAC8EAEAEAC8A88868282A4C0AC8C8EAEA),
    .INIT_32(256'hECECAACCEE5555DDBBCF4646666666666868688A8A8886A6E82868A8C8C8C8C6),
    .INIT_33(256'h08080AE82C702E0C509472727274725050505030502E0E30303030527230ECEC),
    .INIT_34(256'h2020200002000000000020220000002200000022000000000000000000000000),
    .INIT_35(256'h95A642202064CA4260C4C4284828E4A4648868000000024282068E8A68C24042),
    .INIT_36(256'h4064422222CC3333F0F0F113799911CC555557EE88A80F11A884C8C8E8C80AC8),
    .INIT_37(256'hB2B2D46A488AA8A8A8866626286E9711F1F31335799B7B795733312FCAA66240),
    .INIT_38(256'hB2B28EB06ACE7910EE64A6A884A2E2268C6A4A06A0A20608A2A00890904C4E6E),
    .INIT_39(256'h8A8A6826284AD5FBB7305053B9DBDDBBEE95702C2CA8868684CAECAA66486A8E),
    .INIT_3A(256'h284848686AAAACCECCCCCACACACAC8C8C6C6E8E8E8E8E8E8C6C6A68666466868),
    .INIT_3B(256'hA6A6A6A6866686CAECCAECEEACACCAEAEAEAEAEAEAC8AA6828280AE8E8E8E8E6),
    .INIT_3C(256'hEEEECC3255DD57DDBDF1466646666668686868888A8888A6E6286888A8C8C8A6),
    .INIT_3D(256'hE8080A2C92722E2E72947272749494725072725030300E3050303050722EEACA),
    .INIT_3E(256'h2020200202000000000022220000002200000022000000000000000020202020),
    .INIT_3F(256'h2ECA42422200442062A48208C4A4846468AD46000000002282C48E6CE4804020),
    .INIT_40(256'h442022441033EE10EECE1313EE55553333557777CC88A86664C8EAC8C8E8E8A6),
    .INIT_41(256'h92B4F78E4866888888866626062AD9B933F0133313797B595711EE539753EC86),
    .INIT_42(256'h90908E8C48D079CCECAA75970CC448CEAA8AAE6A06E2264AE4C2C22AB24C6E90),
    .INIT_43(256'h688A688A6A4806D7FB7352BBFDBBBD57CE10CAC8EAA8ECAA646868686A8CB2F7),
    .INIT_44(256'h4868688ACCCCCEEEEEECECECECCAC8C8C8E8E8E8E8E8E8E8E8C6A6A886444646),
    .INIT_45(256'hA6A6A686666686CAECCAEEF0ACAACCCAEAEAEAEAEAEACAAA6A2808080A0A2828),
    .INIT_46(256'h0EEC10BB55BB57BDDDF14668466666686888888A888888A6E8284888A8C8C8C8),
    .INIT_47(256'hE8E82C72B492507274727272949494747272725050300C0E302E2E30520ECACA),
    .INIT_48(256'h2020000000000000000022220000002200000000200000000000000000000000),
    .INIT_49(256'hEACA4220422222448886428442A989698B8B02222200020042824F4CA4404200),
    .INIT_4A(256'hF1EEAAACEE105410CCCC5557CCCECEF113577757EFAA8864A82E70E8A4C6C650),
    .INIT_4B(256'h70B4B2F76A8A88888886664626066EDB9977325513357B7B59771111BBBBBB99),
    .INIT_4C(256'h908E8E8C68F0DFCCEEDDFDD9D54A8ACCAACCACAE6A4848262606A0C44C4E6ED4),
    .INIT_4D(256'h466888668868480695FD97979799358C8CCEEECA84305588686A4AB0D2D4D2B0),
    .INIT_4E(256'h8AACCCAACCECCCCCCAEAEAEAEAC8C8C8E8E8E8E8E8E8C8E8E8C6A6A6A6644424),
    .INIT_4F(256'hA6A68666464688ECECECCCAEAED0CC86A8C8C8CAC8C8CACA8A6A482828284846),
    .INIT_50(256'hCC10DBBB0EBB779BDDF1466646666668686888886888AAA8C6064686A8A6A6A6),
    .INIT_51(256'hC6C62C949494949474727274947494949494525030500EEC0E303030500CEAEC),
    .INIT_52(256'h2020200200000000000022200000022200000000220000000000000000000000),
    .INIT_53(256'h73EA86226624000246464689AB8B69476B492422220002022040A6A642202200),
    .INIT_54(256'h9D9B7910333277320EEECC5533CECED13513357911CCEEEE0E510C82A4E8A4C8),
    .INIT_55(256'h92924CF78E6868888886664626260892B6B896555715377B7B7933139979799D),
    .INIT_56(256'h8E8E8C6A68F0BD3273FBD992B28C68AACCAAAC8A688A6846262828A0C44C2C92),
    .INIT_57(256'h686868AC886668042AB5D9B77452CECE8CCEEECCCA3232466A8EB0B2B0B0B28E),
    .INIT_58(256'hCCEEEECCEECCECECECECEAEAEAC8C8E8E8E8E8E8C6C6C6C6C8C6C8C8C8866446),
    .INIT_59(256'hA6868646464688CCECECCCACAEF5AC66C8C8CAA8A6A6C8CAAAAA8A8A8C8CACAC),
    .INIT_5A(256'hEC77FF7710DB7779BDF04646464666666868688868688888A6E84888C8C8A6C8),
    .INIT_5B(256'h0AC80C949494949694747494969494949494725230300EEC0C2E0C0CECCACAEA),
    .INIT_5C(256'h2020220202020000000022020000022200000000202000000000000000000000),
    .INIT_5D(256'h9573CC00022424046B698B696B4747458B462222220202022220204220000200),
    .INIT_5E(256'h375979359B5532EE1074301057353757F1F15777EFEE11113353A662C8E8A4A4),
    .INIT_5F(256'h909208F7B0466888888666462626066EB6967476775715377B9B5733577B5959),
    .INIT_60(256'h8C8E6A8A68F0BB77FBD7B34C4A8C8AAAACCCCCAC888A886A48466A06C2082A4C),
    .INIT_61(256'h6848488A8A886626286ED9B62E523010F0F0F0CECCEEAC488EB2B2B2D2B0B08E),
    .INIT_62(256'hECEEEECCCCECECECECEAE8E8E8E8C8C8E8E8E8C6C6C6C6C8C8C6E8E8C8A66446),
    .INIT_63(256'hA68866464666AACACAECCCAC8EF7AE66C8A8C8C8A6C6C8C8CACAAAAAACACCCCC),
    .INIT_64(256'h30DBBB5432BD777799CC4646464646666668686888686888A6E84888A8C8A6C8),
    .INIT_65(256'h0CC8EA729494949494947474949494947294727250302EEC0C2E0CEACACACACA),
    .INIT_66(256'h2022220202020000002222000000020200000000002200000000000000000000),
    .INIT_67(256'h2E75CD0204496B498D8D8D270402002569440222020202022020202200000200),
    .INIT_68(256'h37155755EECCF054769777105513153715F05555EECCCCCC1153EC84A6C684A6),
    .INIT_69(256'h4E70E892D54A4868888866444646284CD4B4B8967679353557795713579B5937),
    .INIT_6A(256'h8E8C486A68CE9B77FBF76E286A6A8CACAACCCCCC886666684824488C04C42A2C),
    .INIT_6B(256'h6868266A6A8A686A260870B494DBDB9999575757F0AC6A6AB0B2D2B2D2D28E6A),
    .INIT_6C(256'hCCECECCCECECEAECECEAC8C8C8E8E8E8E8E8E8E8C6C6E8E8C8A6C6C6C6846444),
    .INIT_6D(256'hA88846264668AACACAECCCAC8EF7CE66A8A6C8C8C8C8E8C8C8C8A8A8AACCCCCC),
    .INIT_6E(256'h55DD773455DD793577AC4646464646664668686888686888A8E62666A8C8C8C8),
    .INIT_6F(256'hC8C6A62E949494949474947494949494949472745250300CEC2E0CECCACAECCA),
    .INIT_70(256'h2222220424020000002202000002020000000000000000000000000000000000),
    .INIT_71(256'h7553AD24264B4B4B6B8D49040202004567240202020202000020200002020000),
    .INIT_72(256'h7B15113310EE3454769797775515F313351333333111AAEEEEEC31ECA6A460C8),
    .INIT_73(256'h4E4EE8E8F7B24C48486868664646266AB2D4B4B87477555577797913359B9B59),
    .INIT_74(256'h6C6A486848CE5799B74C060628468ACCEEEECA88444444466646246826C2084E),
    .INIT_75(256'h444804284A4A686A28062A94B6B6DBDBBBBB9BBD12CE8C8EB2B2B2D2B2B08E6C),
    .INIT_76(256'hECECECEAEAEAEAEAEAEAE8E8E8EAEAC8C8EAC8E8C6E8E8E8A6A4A4C4A4A48666),
    .INIT_77(256'hA86646264688CACAECECCCAC8CF7D166A8A6C8C8C8C6E8C8C8C8C8CAAACCEEEC),
    .INIT_78(256'h77FF771077DF991257CC4624466668466668686868686868A6E62666A8C8C8A8),
    .INIT_79(256'hC8C8A60C729494949494949494949494B69472727252502EEA0C0CECA8A8CACA),
    .INIT_7A(256'h4222220404020002022200000202020000000000000000000000000000000000),
    .INIT_7B(256'h11CD44494B4B4B4B6B6B47020202222424020202020200000000202202000000),
    .INIT_7C(256'hBD9BEE88CCCC1034547797775735F2F01232EEAA0E5331EECCA888A8A8624042),
    .INIT_7D(256'h4E4EC6A495FBD4B06C4A6A482628262890B4B4B650765455777979F113799B7B),
    .INIT_7E(256'h6A6A484848F07797932A28286A68688ACCEEAA66666646464646444604C2E64E),
    .INIT_7F(256'h444626C4082A284A4A4C4E94D8B8D8B9B9BBBD79F28E4A8EB2B4B2B2B2906C4A),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized16
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hCFFFFFFFC1FC020000000000000000000FFFFFA0EF80007FFFFFFFFFFFFFFFFF),
    .INITP_01(256'h00000000000000000FFFFFA1EF80007FFFFFFFFFFFFFFFFFFFFFE00003DFFEF9),
    .INITP_02(256'h03FFFF83FF80007FFFFFFFFFFFFFFFFFFFFF8000039FF838CFFFFE3F81FF0000),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFC000038BFFF8CFFFFE0FC1FF80000000000000000000),
    .INITP_04(256'hFFFFC00003FFFFF8CFFFFFFF01FFC000000000000000000033FFFFD3DF80007F),
    .INITP_05(256'hCFFFFFFF01FFE00000000000000000003BFFFFC7DFC000FFFFFFFFFFFFFFFFFF),
    .INITP_06(256'h0000000000000000FFFFFFE7FFC001FFFFFFFFFFFFFFFFFFFFFFE00003FFFFFC),
    .INITP_07(256'hFFFFFFE7FFE001FFFFFFFFFFFFFFFFFFFFFFE00003FFFFFCC7FFFFFF00FFF800),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFF00003FFFFFC07FFFFFF207FFC000000000000000000),
    .INITP_09(256'hFFFFF00007FFFFFC07FFFFFE387FFE000000000000000000FFFFFFE7FFE001FF),
    .INITP_0A(256'h0FFFFF7E7C3FFE000000000000000000FFFFFFF7FFE001FFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'h0000000000000000FFFFFFFBFFC001FFFFFFFDFFFFF9FFFFFFFFF80007FFFFFC),
    .INITP_0C(256'hFFFFFFFFFFC001FFFFFFFBFFFF4FFFFFFFFFFC000FFFFFFE0FFFFF06FE1FFF00),
    .INITP_0D(256'hFFFFFFFFFF0FFFFFFFFFFC000FFFFFFE0FFFFF03FE0FFF0000C0000000000000),
    .INITP_0E(256'hFFFFFE001FFFFFFE0FFFFFBFFF07FF8001C0000000000001FFFEFBFF9F8000FF),
    .INITP_0F(256'h0FFFFFFFFF01FFC000C0000000000001FFFEFFFFDF8000FF3FFFF7FFFFF7FFFF),
    .INIT_00(256'hECECECECEAC8C8EAEAEAEAE8EAE8E8E8C8EAC8C8E8E8C8A6C6C6C6C6C6A68686),
    .INIT_01(256'h884646044688CAECEAEACAAA8AD5F366A8C8C8C6C6C6C8E8C8C8C8C8CACCEEEE),
    .INIT_02(256'h99FF55CE99DF791057AC4646464668464668686888666866A8082666A8C8A8C8),
    .INIT_03(256'hC6C8C8EA50729294949494927296B69494947272727272500CEA2EEAA6A8CAEE),
    .INIT_04(256'h2222020202020022222200000202020000000000000000000000000000000000),
    .INIT_05(256'h4424246B6D4B4B4B6B6924022200020202020202000000000000000202000000),
    .INIT_06(256'hBD55EE88A8AAEE10547799775735F2F0ACEEAA4286CA31EE6664444266642020),
    .INIT_07(256'h4E2CE8A630FBFBF8B46E4A28284A28084C707072307430103335591311799B9B),
    .INIT_08(256'h6A6A684846EE7775B771E60648682468AAAAAA88684602E20424464606A0C44E),
    .INIT_09(256'h8668B06E7090B2B2B4D6B6B8DADAB8DB525579D0B08E4A90B2929292906E4C4A),
    .INIT_0A(256'hEAEAEAEAEAC8C8CACAEAEAE8E8C8C8EACACAC8EAEAE8C6C8C8E8E8E8C6A6A686),
    .INIT_0B(256'h6646264668A8CAEAEAEACAAA6AD3F566A8A6C8C6C6C6C8C8C8E8E8C8CAECEEEC),
    .INIT_0C(256'hBBDD32F0BDDD571057AC4648464668464868686888686666C82A4866A8A8A8A8),
    .INIT_0D(256'hA6C6C8C80C507294949292729494949494947252507252502EEA0CECA8A8EE33),
    .INIT_0E(256'h0002020000000022220200000200000000000000200000000000000000000000),
    .INIT_0F(256'h2224692449272949494702002200000002020202022000000000222222222222),
    .INIT_10(256'h9BEEEAA864AAAA107676767757571254EECCAAA86464A8EA8642204442444222),
    .INIT_11(256'h2C4EE86252FDDBFAF8D8B4B2D4B6B49294702E2E749810ACCEF1131333797979),
    .INIT_12(256'h6A68484646CCDBD9B7C6A004042626AC6888688A26E2C0C0C0E0244806A082E8),
    .INIT_13(256'hA88AD4FBD8F8F8F6D8D8DAFAB8BAB8DD52EECEACD28E6CB2B2909090906C4A4A),
    .INIT_14(256'hCACACACACAC8EAEAEAC8C8C8C6C6C8C8A6CAEEC8CAA8A8EAEAE8E8C8C6A6A6A6),
    .INIT_15(256'h6626044888A8CAEACACACAAA6AB1F58888A6C6C6C6C6C8C8C8C8E8C8CACCECEC),
    .INIT_16(256'hBBBB1032DFBD5510558A4448464646466868686868688686E84C486688A8A8A8),
    .INIT_17(256'hA6C8EAEAC8EA50729494727294949494949472725272505030EAC8EC86EC3210),
    .INIT_18(256'h0002020000000022220200020200000000000000200000000000000000000000),
    .INIT_19(256'h6666240404040427272400000202020202020202020000000000220222442222),
    .INIT_1A(256'h550F62EA4064CA55977676567757325656EECCCA866462C8A664642222242200),
    .INIT_1B(256'h9070E86272FDDAFAFAFAFAFAFAFCFCFCFCB87272B8DC76F0F0F0F1CF33795713),
    .INIT_1C(256'h4A48466666CAB9FB2CC4C2E404E46AF246466846240426260402242626C282E8),
    .INIT_1D(256'hA8688EF9D8D6F8D8FAD8B8DAB8DADADABB32ACD0B06C90B2909090906E4A4A4A),
    .INIT_1E(256'hECEACACACAEAEAEAEAC8C8E8C8C6C8A8A8EEEECAA8A8CAC8CACAC8A6A8C8C8A6),
    .INIT_1F(256'h4626040488C8CAEACACACAAA688EF54866C8C6E6C6C6C8A8A8C8C8C8AACACCEA),
    .INIT_20(256'hFDBBEE55DDBB773357AC46464646464646464668466686A6E84A486686A8A888),
    .INIT_21(256'hA6A62E50E8A60A4E94949494949494727272725072725072500CC80C86EE750E),
    .INIT_22(256'h0002020000000022020002020000000000000000202000000000000000000000),
    .INIT_23(256'h6846000000020226270202020000000000020202020200000000220222222200),
    .INIT_24(256'hF1CA60606240CA97B9767656565434327632EEECC884626284A6406422000268),
    .INIT_25(256'h4C2CC6C674FDFDFCFCFCFCFCFCFCFCFCFAFCFCDAFCFCBA3412131311579B9B35),
    .INIT_26(256'h484648686688B9FB70B3B08C6A4AD28E2444666646688AAA8846464648E2A0E6),
    .INIT_27(256'hC8444890F8F8F8FAFADADADAFAD8FAB8FF99AACE8C2890B26E90706E4C4A4A4A),
    .INIT_28(256'hECEACACACAEAEAEAEAE8E8E8C6A6C8A8A8EECC6688CCCCA8CACAA886A6A8C6A4),
    .INIT_29(256'h4606040486C8EAEACACACAAA688CF56866C8C6E6C4C6A888A8CACACCCCCCCCCA),
    .INIT_2A(256'hFFBBEE77BDBB7732991368264646464646464668466686C80A4A68668688A866),
    .INIT_2B(256'hA8A62E940CC80A4E729494949494947272725050727272725050EAC8A8309710),
    .INIT_2C(256'h0002020000000222020002020000000000000000200000000000000000000000),
    .INIT_2D(256'h4600222000000246460202020000000020222202020200000002222222222200),
    .INIT_2E(256'hA884A4826062A852B976767656345454345410ECECC8A6826262646624022668),
    .INIT_2F(256'h6E2AC4820CD9D8D8D8DAFCFCFCFCFCFCFCFCFCDAFCDABA765779797977779935),
    .INIT_30(256'h282668686888B9FBF7D3AE8C48B0F52848464466886688AA888866444604C2E4),
    .INIT_31(256'hC8A82606B2F8F8FAFADAD8B8DAD8DAFAFDFF54686A4A6EB29090906E4A4A4A48),
    .INIT_32(256'hCACAC8EAEAEAEAE8C8C8C8C8C8A8A888AACE4666CCCC68AAECECEEECCCCAC8C6),
    .INIT_33(256'h4606064888C8EAEACACACAAA688CF78C66A6C8C6A6A88888AACCEEF0F2F0CEAA),
    .INIT_34(256'hDDBB1055DDDD5512DD99AC4646484846686868466666860A4C6A8A8888888866),
    .INIT_35(256'h302E9494507272949472949472949472727272747250747250500CA6CA759975),
    .INIT_36(256'h2202000000002220220000000000000000000000000000000000200000202000),
    .INIT_37(256'h2602202022022446240202002222222222002222222202000022222222222222),
    .INIT_38(256'hC8A2E4A2806062C87796765654545434565432100EEAA684A684642402044868),
    .INIT_39(256'h4A06A282C6B6D6B4D8F8FAFEFCDCFCFEFCFCFCFCFCDADC565477577777779753),
    .INIT_3A(256'h26466888888673FB6E4868466AD28E6AAE66666688AA88AAAA88A8644424C2C4),
    .INIT_3B(256'hC8A868482AD6FAD8FAFAFADAFAFADADAFFFFFFCC686AB0B290908E6C4C4A2848),
    .INIT_3C(256'hCCCACACACACAC8C8C8A8A8A8A88866666668AAEED08A8AACACCCEEF0EEECEAC8),
    .INIT_3D(256'h4606062666C8CACACACACAC8888CF7B16686A6A8A8A8CCF0CE8AACF0F0F0F0F0),
    .INIT_3E(256'hFF991099DDDD55559979132446686868484666466866A82C4A6A8A8A88688868),
    .INIT_3F(256'h949494947272749494747494949494727272727272505072725050EAA8979975),
    .INIT_40(256'h0200000202022222220000000000000000000000000000000000200000000000),
    .INIT_41(256'h0402004222002646022022000202002222002200220002000002222202222222),
    .INIT_42(256'hC4C204E4E4A26060EC7676345454545612345410504EC884A6A6640002264948),
    .INIT_43(256'hE6C4A284A6B7B692D6D6D8FCFCDCFCFCFCFCFCFCFCDADC965499997775559751),
    .INIT_44(256'h2648688A6688B7B54A6A8A8A8CAE486A6846468888AAAAAACCAACA866446C280),
    .INIT_45(256'hA6868848266EFAFAFAFAFAFCDAFADAFAFCFFFF56466AD06EB28E6C6C4A4A2848),
    .INIT_46(256'hF0EEECA8AAAACAA8A8AAAA8866460202022468CEF0F0CEACACACCEAC8A8A88A6),
    .INIT_47(256'h4606062668C8C8C8CACAC8C8A88CF7D566A8A6A8CCEECE8C48488ACECED0F0F2),
    .INIT_48(256'hDD77349B99BD32BB9977774646464646464666466866A60A4A6A68686868668A),
    .INIT_49(256'h947294947272949494949494949494947272727272725072725050ECA8739755),
    .INIT_4A(256'h0000000222222222200000000000000000000000000000000000222200002000),
    .INIT_4B(256'h0222204220224644002220002200000022220000000000000000000000000002),
    .INIT_4C(256'hC2E2462404E28080620E7654767656543454543050500AA4A686640004494946),
    .INIT_4D(256'hC4A2A482A6B9D892B4B6B6FAFCDADCDCFCFCFCFCDCDADA983075B99797B773C6),
    .INIT_4E(256'h264668684410DBB58E6A8A8A88AC6848688A688A88CAECCCAACACA866424C2A2),
    .INIT_4F(256'h646466662428B4FAFAFAFCFCDAFADAFADCDCDFBD8C488C8E8E6C6C4A4A4A4826),
    .INIT_50(256'hF0F0F0CCAA8AAAA88888664626040406040446AAAACCEEEEF0CECEAE8C8C8A88),
    .INIT_51(256'h4606062688A8C8C8CAC8C8CAA86AF7F7688886AAACAC4806266A8A8AAED0F0F2),
    .INIT_52(256'hDD56569979BB10DD9799774646464648464666666686A6086A6A688A68686868),
    .INIT_53(256'h9494949472729494949494949492729272707272727250527252500CC8309755),
    .INIT_54(256'h0000000222222222000000000000000000000000000000000000220000202022),
    .INIT_55(256'h0202222222464422424220202200000000000000000000000000000000000000),
    .INIT_56(256'hE22464444404E4A260841099997754343232323250704EC88664200026494924),
    .INIT_57(256'hA28282820CDBFBB6B4B4B6B6FCFCDCDAFCFCFCFCFCDADAB8CA0C735171D72CA0),
    .INIT_58(256'h4648684666B9FBB58E8C888868AAAC8ACEAEAEACAAAAEEEECCAAA8866624E2C4),
    .INIT_59(256'hA886866444246CF8FAFCFCFCFCFADADAFCDEDEFF78AE6CAE6C6C4C2A4A484826),
    .INIT_5A(256'hF2F0F0F0CE8A68684826060626E4E42806488AAA8886AAAAAACEF0F2F4F4F2F0),
    .INIT_5B(256'h2606062688A8C8EACAC8C8CAA868D5F74888888A6A26E6064A6A4846AEF2F0F0),
    .INIT_5C(256'hBB345656799B10DD7755F14646464646464666666686A6086C8A8ACE46466868),
    .INIT_5D(256'h96969494727494949494949494B472707270507272725050725050300CEC9977),
    .INIT_5E(256'h0000002222222222000000000000000000000000000000000000200022000064),
    .INIT_5F(256'h0002220022664442A88664422222222200000022020200000002020000000000),
    .INIT_60(256'h22446462444424A06040863099545476545454545250500CA642200068494902),
    .INIT_61(256'hC4A2A48472FDFDD8B4B6D694DAFCFCDCDCFCFCFCFCDAFAD8C6A4C4C6E64A06E2),
    .INIT_62(256'h6868464410B9D9D56CCE88AACC8A68688E6C8CCECECCCCF0F0CCAA86864402E4),
    .INIT_63(256'hCCCAC884844426D4FAFCFCFEFCFAFADAFEDEDEDFDF368A8C8E6E4C4A4A484646),
    .INIT_64(256'hF0D0D0F2F2B04A06E406E6E42806066C6A6A6664846486A8A8AA8AACD0F2F2F2),
    .INIT_65(256'h2606262688C8C8EAEAC8C8C8A888D5F94A488A6A26E4084A4A26466AAED0D0F0),
    .INIT_66(256'h771034349B9935DD7711AC4646464646466868668886A6086A8A88CF46264848),
    .INIT_67(256'h969694967294B69494949494B6B4500C5070704E502E507250725050300EB977),
    .INIT_68(256'h00000222222222220000000000000000000000000000000000002200200022CC),
    .INIT_69(256'h00222200224466A82E2EA8422220020200000022222202000022220000000000),
    .INIT_6A(256'h44646264424444E280604064329977543434345252305072EC6422246B6B4902),
    .INIT_6B(256'hE4A2A4A4B7FFFDFAD6D6D694B8FCFCFCDADAFCFCFCFAFAD6C6E4E2E2C2E20424),
    .INIT_6C(256'h686846889952B5D58ECE88CCAC266CB0B0B08E6A8A8A8ACEF0EEAA88664402E2),
    .INIT_6D(256'h66A6EAC6A664246CF6FCFEFCFEFCFCFCFEFEDEDEDFBDAC688C6C4A4A48264646),
    .INIT_6E(256'hD0D0F2D0F2F5D24CC4C6A4C406264A6A4644426484646484A6A886668AAAACCE),
    .INIT_6F(256'h0606062688C8C8EAEAC8C8C8AA88D5F94C286A6A26062A4A48486AAE8E8ED0F2),
    .INIT_70(256'h32F0F010BD7757DD77EFAA4646684648686868668886A6E8486A68CF48262628),
    .INIT_71(256'h7296949696969494949494B694722CC62E4E4E0C0CEA2E505050525030309977),
    .INIT_72(256'h0000222222002222000000000000000000000000000000000000220022004455),
    .INIT_73(256'h000202442220A60C9272CA422222220200020002022200000202020000000000),
    .INIT_74(256'h6462848442444402A060402064109799545656105452527454CC44446A6B4602),
    .INIT_75(256'hC2A082A4B7FDDBFAD8D6D6B6D8FAFCFEDADAFAFCFCFAF8D606E2242444442264),
    .INIT_76(256'h6A684610DB2E92F58CEE6668046CF5F7F7F7F5AE240468AEF0F0CC86864402E2),
    .INIT_77(256'h868484A6C6864426B2FAFCFEFEFCFCFEFEFEDEFEDFDF544668484A6A48464648),
    .INIT_78(256'hD0D0D0F2F5F4F7D5502E2E08E4264624444464848486A684A6C6A66464868888),
    .INIT_79(256'hE6E6042688A8C8E8C8C8C8C8CA68D3F94C084A06E4084C2A268C8C4A4A6CAEF2),
    .INIT_7A(256'h3210EE32BB5579FF11AAAA264668684848464666888686E828688ACF26060806),
    .INIT_7B(256'h50947494949494725272B694704E0CA60C2C0C2E2E0C2E5050525050300E9775),
    .INIT_7C(256'h0000222222220022000000000000000022000000000000000000002200006699),
    .INIT_7D(256'h02020000202084EA9370A8202222222202220000220000000022000000000000),
    .INIT_7E(256'h6484626242424422E2A040402242AA5599797754325474547634880246242404),
    .INIT_7F(256'h8082A28275FFFD94D8B4D6D8B4FAFCFEFCDADAFAFCFAD6D42602444242424244),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized17
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0080000000000001FFF1FFFFCF0001F87FFFC6FFFFFFFFFFFFFFFF801FFFFFFE),
    .INITP_01(256'h3FCFFFFF1F0000F83FFF82EFFFFFFFFFFFFFFF803FF81FFA0FFFFFFFFF801FE0),
    .INITP_02(256'h3FFF005FFFFFFFFFFFFFFF803FFFFFF83FFFFFFFFF800FE00000000000000001),
    .INITP_03(256'hFFFFFFE06FFFFFF87FFFFFFFFFC003F000000000000000011FFFFFFFDE8000F8),
    .INITP_04(256'h7FFFFFFFFFC001F800000000000000031FFFFFFFDF0000F83FFF803FFFFFFFFF),
    .INITP_05(256'h0003E0000000000307FFFFFFEC0000F83FFF803FFFFFFFFFFFFFFFE0EFFFFFFA),
    .INITP_06(256'h03FFFFFE000000F83FFF802FFFFFFFFFFFFFFFF1FFFFFFF6FFFFFFFFFFC0007C),
    .INITP_07(256'h3FFF800BFFFFFFFFFFFFFFF1FFFFFFEEFFFFFFFFFFC0003C000FF00000000003),
    .INITP_08(256'hFFFFFFF9FFFFFFEFFFFFFFFFFFC0001E803FF8000000000301FFFFFC000000F8),
    .INITP_09(256'hFFFFFFFFFFC0000EFC7FFC800000000300FFFFFC000000F83FFFC001FFFFFFFF),
    .INITP_0A(256'hFFFFFFF000000003007FFFF8210000F83FFFE0002FFFFFFFFFFFFFFFFFFFFFEF),
    .INITP_0B(256'h007FFFF83F0000F81FFFF00003FFFFFFFFF7FFFFFFFFFA5FFFFFFFFFFFC0000E),
    .INITP_0C(256'h3FFFF00003FFFFFFFFFFFFFFFFFDFE7FFFFFFEFFFFC00007FFFFFFF300000003),
    .INITP_0D(256'hFFFBFFFFFFFE7E7FFFFFFFFFFF800003FFFFFFF980000003001FFFF83FC000FC),
    .INITP_0E(256'hFFFFFFFFFF800003C7FFFFFF800000030003FFF03FE000F83FFFF98000FFFFFF),
    .INITP_0F(256'hF3FFFFFF8000000300007E401EF000783FFFFFF8007FFFFFFFF9FFFFFFFE7EFF),
    .INIT_00(256'h6A4644FD734E92B08CCEAC240428916E6C8E8E6A468AAC8AACAC8866440204E2),
    .INIT_01(256'h84626082848644466CF6FCFEDCFEFEFEDCFEFEBAFFDDDF9B546A262668044646),
    .INIT_02(256'hD0D0D08ED2F4F7F9B7D9FDD78E042444446484A48484A6A6A4A4A4A6848486A6),
    .INIT_03(256'hE606264688A8C8E8C8C8C8C8A8888EFB4E08E6C4E40808E6286A4A06286AAEAE),
    .INIT_04(256'h1010EEEE77339955CCCDAC044646466848486868666686084A48468C06E6E6E6),
    .INIT_05(256'h0C5074749472507272722E0CEAEAEA4E2E2C50727252525252525050300E5297),
    .INIT_06(256'h00000000000022220000000000000000220000000000000000000020200086BB),
    .INIT_07(256'h00020200202062A40CEA64000000000000000000020022000000000000000000),
    .INIT_08(256'h646262624242422202C260402020226488CCF077545456765456126600244400),
    .INIT_09(256'h828262C897FDFFD894B4D4B4D6FAFCFCFCDAD8FAFCFAF8F42602424242424242),
    .INIT_0A(256'h682433B72C4E90D48C8A8A0404E2A0A0C2C0C2048CF2F0886868666622E204C2),
    .INIT_0B(256'h848262828464664648D4FAFCFEFEFEFEDCFEFEFEBADAFFFFBBAC260424684848),
    .INIT_0C(256'hD0D0AE8C8EB0D2D49395FBF96C042444646484848484A4A4A2A4C4A484848484),
    .INIT_0D(256'hC6E6064666A8C8C8C8C8C8C8A8668EFB2CA4C6A4C4E80AE8082A06E4286C8CAE),
    .INIT_0E(256'hEEEECC1199339910ECEF8A262446464646464668686686E82A48488F06E6C6E8),
    .INIT_0F(256'hC8EA0E7272305074520CC8EA2E2E507250507274747452525252525050303252),
    .INIT_10(256'h220000000000000000000000000000002200000000000000000000002200AAFF),
    .INIT_11(256'h0000000020204060A6A642222222220002220200220000220000000000000000),
    .INIT_12(256'h626262626242424200E2A06020202000000022EE32545476767676EE44222200),
    .INIT_13(256'h84840E74BBFFFFFD94B4B4B2D6D8FCFCFCFAD8FAFAFAF8F44622424242424242),
    .INIT_14(256'h488ABB732C6E6ED2AE4A48288C8E0404482648AEF2F2CE888866666602E2C4C6),
    .INIT_15(256'hA484828484648666448EF6FCFEFEFEFEDCFEFEFE98DADCFDBBAA442446262648),
    .INIT_16(256'hD0AE8C8C8E8E6C8E4E71D96E04244666446486A684848484A4A4A4A4A4848482),
    .INIT_17(256'hC6E6264666A6C6C6C8C8C8C8C8886AF9EA84A6A6A6A6C8C8EA08E608286C6C8E),
    .INIT_18(256'h1010CC12991233EE11CF68482446684846464646666684C6284848AF28E6C8C8),
    .INIT_19(256'hA8A8EA30502E3052500E0C2E7272725072727494749474727472725252525254),
    .INIT_1A(256'h220000000000000000000000000000000000000000000000000000002200CCFF),
    .INIT_1B(256'h0000000000202040624220222222002222000000020000202200000000000000),
    .INIT_1C(256'h62626262624242422202C282402000002200202288EE327676767777CC220022),
    .INIT_1D(256'hA652FDDDFFFFFDDAB6B4D4B4B4D8FAFCFCFAD8F8FAFAF8D24622424262624242),
    .INIT_1E(256'h4657BBC80C6E2CB2B24A486AF5D06A46686AACF2CECECECC8886664604A2A2A4),
    .INIT_1F(256'hA4A4A4A4848686866448B2FAFCFEFEFEFEFEFEDC98DADAFCDB540E4466464826),
    .INIT_20(256'hB0AE8CAEAE8EAEB04C9193280446466664668684848484A4C6C4A4A4A6A6A484),
    .INIT_21(256'hC6E6064666A6C6C6C8C8C8C8A8686AF74EC8A6A8A6A6A8A8C8E8082A2A4C4A8E),
    .INIT_22(256'h5533EE1077101011EF8A686A2646466848484646666664A4284848AF28C6A6C8),
    .INIT_23(256'hA6A8CA0C2E303030305272727474745072727274949474747474725252325277),
    .INIT_24(256'h22220000000000000000000000000000000000000000000000000000200011FF),
    .INIT_25(256'h002022200020202242202222022268EFCC662200000000200000000000000000),
    .INIT_26(256'h62626262624042424202C08240202222222022442264A8107697749954A84422),
    .INIT_27(256'hEADBDBDBFFFDFDB8D8B4B4B4B4B4D8FCFCFAD8B6F8FAF8B02422426262626262),
    .INIT_28(256'h13BB33EA9595924EB06C4A6CF5AEAE8C8AACAEAEAE8CACAC8888242604E60A82),
    .INIT_29(256'hA4A4A4A6A6A6A68486246AF6FAFEFEFEFEFEFEFCDADADAFCDADA968866684668),
    .INIT_2A(256'h6C8E8E8EAEB0B08E6CB04A0646444464648686A6A6A6A6A6A6C6C6A6A6A4A6A4),
    .INIT_2B(256'hC6E6264686A8C6C6C6C8A8A8A888688C4CE8C8A6868888A6A8EA2A2A0A2A284A),
    .INIT_2C(256'h773310EE3310EECC66446A6A4846464646464646466684C62A4868AF28C684A8),
    .INIT_2D(256'hA8C8A8C8EA2E50302E5072727272747294747474947474747472525252303054),
    .INIT_2E(256'h22000000000000002202000000000000000000000000000000000000200055FF),
    .INIT_2F(256'h20200000000022220000022244CC57DDBB791166020000222222202000000000),
    .INIT_30(256'h62626262624262424202E0A2402022222020226462424064CA52747697108822),
    .INIT_31(256'h0AFB94B8FDDDFD96F8D6B4D6B4B4D8FCFAFAB6B4D8FAF88E2442426262626262),
    .INIT_32(256'hBB995375D9B7B7B5B2B04A6CD44A6A8CACCEACCECEAC8C6866464604E26C90A4),
    .INIT_33(256'hA4A4A4A6A6A6C8A6A6664690FAFCFCFCFEFEFEFEDADAFADAD8B6DA0E64686835),
    .INIT_34(256'h2A4C6C6C8C8E8E6C8C48264666666484648484A4A6A6A6A6C6C6C4A6A6A4A4A4),
    .INIT_35(256'hC8E6064666A6C6C6C8C6A6A8A888662606C6A686868686A6C8EA0AE80A080828),
    .INIT_36(256'hEECCAAAACCAC88666666686A6A46466848464646666664C62A48688F2AC88486),
    .INIT_37(256'hC8C8C8A6C8EA0C2E2E2E52747272727272727272947472727272525230300EEE),
    .INIT_38(256'h22000000000000022222000000000000000000000000000000002000222277FF),
    .INIT_39(256'h4220000002020222002266CC57BBDDBDBBBBBB55660000000020202000000000),
    .INIT_3A(256'h62626262424264442000E0A040222222202064848484646262A650747654CC66),
    .INIT_3B(256'h2CD89294FDDAFCD8B6D8D6F8F8D8D8D8DAFAD692D6FAF86C2442426262626262),
    .INIT_3C(256'h99DBB9755395B7F9B2B28EB2D44C6CB0D0F0EEF0AE686824262624E204B08EE6),
    .INIT_3D(256'hA6A6A4C6C6A6C6A4A6864628B4FAFCDCFEFEFEFCDADAFAD8D8D8D8746644CC79),
    .INIT_3E(256'h2A2A4C4A4C6C4A6A464666666686868484A4A6A4A6A6A6A6A6C6C4C6A6A6A6A4),
    .INIT_3F(256'hC8E606466686A6C6C6C6A6A6A888884626E6A486868686A6C8E8E8E80AE8082A),
    .INIT_40(256'h88886668668866446666686A6A48466848464646686664C64A48468D28C88484),
    .INIT_41(256'hA6C8A6A6A6A6EA0C2E2E5072727252729474747274725050505252503030EEA8),
    .INIT_42(256'h20220022000000000000000000000000000000000000000000220000222275DD),
    .INIT_43(256'h53CA222244220200008877BDDDFFBDBBBB9BBBBB354600000000000022220020),
    .INIT_44(256'h42424244646264422202E2A262402000224286A6A6A6A4848284A65298540ECC),
    .INIT_45(256'h2EF8B4B2D8DAFADAB6F8F8D6F8F8D8D8D8D8D690B4F8F86C0244424262626262),
    .INIT_46(256'hB9B9DB73759795502C6E90D3D54C6C8EF0F0EECE68462402040404C04AAE6E70),
    .INIT_47(256'hA6A6C6C6A6A6A6A6A68646062CD8FCDADCFCFCFCDADAFAD8D8B8B6B874EEEE77),
    .INIT_48(256'h2A4C4E2C4A6C48464666868686A6A6A6A6A6A4A6A6A684A6A4A4C6C6A6A6A6A6),
    .INIT_49(256'hC6E606466686A6C6C6A6A6A6A68888666826E6A68686A8A6A6C8C8C8C8C8E80A),
    .INIT_4A(256'h88666666666666AAAC48686A6A48264648464646686864C82A48468D4BC68484),
    .INIT_4B(256'hA8A8C8C8A6A6C8EA2E2E30527452527274747472725252502E2E3052500ECA86),
    .INIT_4C(256'h00220000220000000000000000220000000000002000000000220000224297FD),
    .INIT_4D(256'h9999779777116666CC79FFFFDFDFBD9BBBBBBBBDBB33EEEE11EFCC8822224400),
    .INIT_4E(256'h64444444444264422202E2C2824020204264A6A4A4A4A484848462A8749852EE),
    .INIT_4F(256'h50F8B4B2D6FADAD8B6D8F8D6D6F8D6D8D6D6D69292F8F64A0244424264646462),
    .INIT_50(256'hBB9797979797B793739392B2D56C286C8CAC886622020202040406E26A90B070),
    .INIT_51(256'h84A4C4C6A6A6A6A6A68444040894FCFCDCFCFCFCD8DADAFAD8B6B6DAFDDB9999),
    .INIT_52(256'hE8E80AE8082826466688A8A6A6A6A6A4A6A68486868484A6A4A4A4C6C6A6A6C6),
    .INIT_53(256'hE8E604466686A6C6C6A6A6A6A6868686884806E6A6A6A6A6A6A6C8C8C8C6C6C6),
    .INIT_54(256'h88CC10CE88CCF113F38C48486D48484846464646686866C84C6846482BC8A684),
    .INIT_55(256'hA6A8C8C8C8C8C6C8EA2E30505252527274747250505050500E0E305230ECC8A8),
    .INIT_56(256'h44220000220000000000000000000000000000000000000000000000224497FD),
    .INIT_57(256'h0E77FDFFFFFF9B99BBDFDFDFDFDDBB9B9BBBBB9999DDDDDDDDDDFFBB6422EEEF),
    .INIT_58(256'h64444444424244222202E2A2604020004284A6A4A4A4A4A4A4A482620C9674EE),
    .INIT_59(256'h70F8D4B4B4FADAD894D6F8D6D6F8B6B6B6D6D4B290D6D4262264424264646262),
    .INIT_5A(256'h54BB99BB97DBFBDBD9D9D7D5D59006262444222202E002E2E406E428B0B0D44E),
    .INIT_5B(256'hA4A4A4C4C6A6A6A6A4642204E42CD8FAFAFAFCFCDAFAD8FAD8B6B6B8DAFDFD97),
    .INIT_5C(256'hC6C6C8A6A4C404266888A8A8A8A8C8A6A6A68484848484A686A4A4A4C6C6C6C6),
    .INIT_5D(256'hE8E6E4466686A6C6A6A6A6A6A6A6868688682808C6A6C6C6C6C6C6C6A6A8A6A6),
    .INIT_5E(256'h86EE997711553313F1D1AF6A4A6A6A4846466668464666A84C6A682608E8A684),
    .INIT_5F(256'h86A8A8A8A8C8E8C6C80C305050503030505274505050302E2E3052300EEAA8A8),
    .INIT_60(256'hAA222222000000000000000000000000000000000000000000002200202253FD),
    .INIT_61(256'h0E0C75FFFFFFDFFFFFBDFFFFBDBB9BBBBBBD997799DFFFFFFFFFFFBB880011FF),
    .INIT_62(256'h42424222224244220202E4A2604020004284A684A4A4A4A4A4828284A62E9630),
    .INIT_63(256'h72FAD4B494DADAB8B4D4D6F6D6D6B6B6B6B6D4D490D4B2E22264624264646262),
    .INIT_64(256'h30525597DBB9B9D9D9D7B793B2B0E40224220022020002C0E406088ED4B2D470),
    .INIT_65(256'hE6C6C4C6C6A6C6A6A4644404062AB2F8FAFAFCFAD8D8D8FAD8D6D6B6B6D8FDB8),
    .INIT_66(256'hC8A8A8A6A6C608286A8A88A8A8A8C8A686A6848484846486868684A6C6C6E8C6),
    .INIT_67(256'hC6E606466686A6C6A6A686868686868688686828E6C6C6C6C4C6C6C6C6C8C8C8),
    .INIT_68(256'h86A87755331111131313F36D486B6A6A48464668464466A60A6A8A26080BA684),
    .INIT_69(256'h8686A6A8A6A6C8C6C8C8EC30303030303030303030303030303032300ECAA8A8),
    .INIT_6A(256'h7744002222220000000000000000000000000000000000000000220000200FFD),
    .INIT_6B(256'h2E2E0E9799DDFFBBDFFFFFDDBBBB99BBDDBB7755DDFFBBDDDDDDDDDD1144EEFF),
    .INIT_6C(256'h424222222222220202E2C28062402020426484828282A2A282A4A4A484A67250),
    .INIT_6D(256'h72FAB4B4D6FADAD8B6D4D4D6D6B6D694B6D6D4B2D2F48C024242424242426262),
    .INIT_6E(256'h0E107599997597D9B7B7B56E4CD56CC0E0020244442402E2E40890F6F6D4B470),
    .INIT_6F(256'hE6C6C4E6C6C6C6A6A464442406E62CD6FAF8FAFCB6D8F8FAFAF8B6D8B6FAFCFF),
    .INIT_70(256'hC8A88686A6C6C6E40426688888A8888686868464646444446464868684C8C6C6),
    .INIT_71(256'hC8E606466686A6A6A68686868686868688886A2606E6E60808E8E6E8E8E8C8C8),
    .INIT_72(256'h8688117757335533333537AF6B4A4A8A4868684646466686086A6A4808E886A8),
    .INIT_73(256'h868686A8A6A6A8C8C8A6A6C8C8EC0E305030303030303030300E100ECAA68686),
    .INIT_74(256'h99660000222200202000000000000000000000000000000000002200202031FD),
    .INIT_75(256'h0C0CEACAEC76DDFFFFFFDDDDBBBBBBBDBB7955BBFFDDDDDDBBBBBBFFDD3311DD),
    .INIT_76(256'h424222222222020202E2C28062402020426262828282828282A482A4A4840C72),
    .INIT_77(256'hB6FAB4B4D6D8D8D8D6D4B4D6D4B4D6B4B4D6D4D2F4D26A024242624242424242),
    .INIT_78(256'h9698FDDD97532F2C2C4C2C082AD2D0E2E2020224466826E42A92D6D6D4D4D692),
    .INIT_79(256'hC6C6C4C6C6C6C6A6A664442406E6C672D8DAFAFCD8D6FAFAFAFAF8D8B6DAFCFC),
    .INIT_7A(256'hC8C8A686A6A6A4A4C4042646466868888886866664444424242444666486A6A6),
    .INIT_7B(256'hEAE6262466868484848686868686868686886848260606060608282A08E8E8E8),
    .INIT_7C(256'h66868877773533EE55333535F3AF8D8A46464646466666A8E84A6A4808E8C8EA),
    .INIT_7D(256'h8888868686A6A8C8C8C8C8A88686A8CAEC0E3030300E0EECEE0EEECAA8A88666),
    .INIT_7E(256'h55442200222200202000000000000000000000000000000000002200204255FD),
    .INIT_7F(256'h2E0C2E2EECEC74DBFDFFFFBB99BBBBBB9B7777DFDDDDDDDFBDBBBBDDFFBDDDBB),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized18
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h000000401FE400783FFFFFFF000FFFFFFFF0FFFFFA7FFEFFFFFFFFFFFF000001),
    .INITP_01(256'h3FFFFFFF8000FFFFFFF07FFFF87FFFFFFFFFFFFFFE000000FDFFFFFF00000003),
    .INITP_02(256'hFFE07FFFF81FFFFFFFFFFFFFFC000000FEFFFFFF00000003000000000FFE007A),
    .INITP_03(256'hFFFFFFFFFC0000007FBFFFFE000000030000000007EE00323FFFFFFFC0000FFF),
    .INITP_04(256'h7FFFFFFC00000007000000000FEF003A1FFFFFFFE00003FFFFC07FFFFDDFFFFF),
    .INITP_05(256'h000000000FFF001E0FFFFFBFE00003FFFF803FFFFFFFFFFFFFFFEFFFF8000000),
    .INITP_06(256'h07FFFFBFE00001FE7F001FFFFFFFFFFFFFFFDFFFF80000003FFFFFFC00000007),
    .INITP_07(256'h00000FFFFFFFFFFFFFFFDFFFF80000003FFFFFFC0000000F000000000FFF000E),
    .INITP_08(256'hFFFFDFFFF80000001FFFFFF80000000F000000001FFF800607FFFFBFE00003E0),
    .INITP_09(256'h1FFFFFF80000001F000000003FFD800103FFFFFFFE0003C0000007FFFFFFFFFF),
    .INITP_0A(256'h000000007FFCC00003FFFFFC5F8003E0000007FFFFFFFFFFFFFFDFF7F0000000),
    .INITP_0B(256'h01FFFFF01B8003E0000003FFFFFFFFFFFFFFDFE0F00000000FFFFFF00000001F),
    .INITP_0C(256'h000003FFFFFFFFFFFFFFC7C00000000007FFFF000000003F000000007FFCC000),
    .INITP_0D(256'hFFFFC0000000000003FFFE000000003C000000007FFEE00001FFFFF81BC007E0),
    .INITP_0E(256'h00FFFE000000003F000000007FFF800000FFFFF813E807E0000001FFFFFFFFFF),
    .INITP_0F(256'h000000003FFF000000FFFFF802985FE0000001FFFFFFFFFFFFFF800000000000),
    .INIT_00(256'h4242222222220202E2E2A280624020204242628282828282828282A48462A62C),
    .INIT_01(256'hDAFAB494B6D8DAD8B6D6B4D4D6B4D6B4B4D4D4F4D28C02442242624242424242),
    .INIT_02(256'hFCFFFFFD55CA0CE8E82A08286EB2F52602022244888A48E670D6D8D6D6B4B692),
    .INIT_03(256'hA8A6A6C6C6C6C6A6A6644424E4A484CA74B8DAFAD8D6F8FAFAFAF8D6D8D8FAFC),
    .INIT_04(256'hE8C8A6A6A6A6A4A4A4C4C2E406242646666868664624242424042444446688A8),
    .INIT_05(256'hC8E62824646484A4868686868686868686866668460606060628484A28080808),
    .INIT_06(256'h888666107776520E335555F1F115D1464646464646466686C62A6A4806C6C8EA),
    .INIT_07(256'h666666868686A6A6A8A8A6A6A886868686A8CAECECEEECCAEC0ECC8688888686),
    .INIT_08(256'hAA222200222220200000000000000000000000000000000000000020204497DB),
    .INIT_09(256'h2E2E2E2E300EEC0E97FDDDBB99BBBBBB9999BBDDBDDDDFDFBDBBBBDDDDDDDDBB),
    .INIT_0A(256'h42222222222402E2E2C2A28262402020404262628282828282828282846282C8),
    .INIT_0B(256'hFCFCD694B6D8FAD8D6D6B4B4D6B4D4B4B4D2F4F48C2402442242424242424242),
    .INIT_0C(256'hFCFEFDDB74A8ECC6E8080808B2D4F54824246466888A282AB4D6F8F8B4B4B4D8),
    .INIT_0D(256'hA8A8A6C6A6A6A6A686442406C4846688EE98DAFAFAF8D8F8FAF8F8F8D8D8FAFC),
    .INIT_0E(256'h08E6C6C6C6C6A6A4A4A4A2C4E4C4C2E404242626262624040404022424466888),
    .INIT_0F(256'hC6E62624466686A6868686868686868686866666462606060628486A48282808),
    .INIT_10(256'h866666883076543232327711335513464668464646664664A4084A4806C60BE8),
    .INIT_11(256'h666666668686A6A6A6A6A6A6A6868686868686A8A8AAAAAACCCC888688888688),
    .INIT_12(256'h222000222000000000000000000000000000000000002020002000200064B9B9),
    .INIT_13(256'h2C4E2E5050302EEC3099DDFF9B99BBBBDDDDDDDFDDDDBDDFDDBDBBBBBBFFDD33),
    .INIT_14(256'h222222222424E2E2C2A2A28262402020424062626282628262628484846262A6),
    .INIT_15(256'hFEFCDAB6B6D8FAFAD6B6B494B4B4B4B2B2D2D0AE460202222242424242424222),
    .INIT_16(256'hFCDADAB8B8EC8686C8E8E62AD4F6F4484686888A684828B2F8D6F8D6B4B4B6FC),
    .INIT_17(256'h66A8A8A8A6A6A686664606E6846666468A76FCFAFAF8D8D8FAD8F8F8D6D6D8FC),
    .INIT_18(256'h2808E6C6C6C6A6A684A4A4A4C4C4A2C2C2C2C2E4040626042424042402242668),
    .INIT_19(256'hC6E6062646668686846486868486868686868666462606060606284848262828),
    .INIT_1A(256'h88668686EC745432321055EE115555AC464846444666466684C62848E6E64FE8),
    .INIT_1B(256'h6666666666868684A6A6A6A6A686868888866686668686868888888888668686),
    .INIT_1C(256'h000022222022000020000000000000000000000000002020000022002088BBFD),
    .INIT_1D(256'hEA2C2E505050507230EC54BDDDDDDDDDFFFFDDFFFFDDBDDDBDBDBBBBBBFF9988),
    .INIT_1E(256'h222222220202E2C2A0A282626242204242424262626262646262848484624062),
    .INIT_1F(256'hFEFEDAD8D8D8D8FAFAD69494B4B2D4B2D2F26A04020222222222424222222222),
    .INIT_20(256'hFCB8DA98DA74CA2E7270E608B4F8B206488A888A684890F6F8F8F8B4B4B4D8FC),
    .INIT_21(256'h466686A8A6A6A8664606E6A464668A466834DCFCFAF8F8D8DADAD8F8D6D6D8FA),
    .INIT_22(256'h260608E6C6C6C6A6A4A4A4A4A4A4A4A4A2A2A2C4C2E426462624242602040224),
    .INIT_23(256'hC6E6E40626468686848486868486868686886666462606060606284846262828),
    .INIT_24(256'h866686860E545432543230EC0E317513464646244666466664C6284A06E64FE8),
    .INIT_25(256'h464666666686A68484A6A6A6A686868686868688868688868688888868666666),
    .INIT_26(256'h222222000000002020000000200000000000000000202020200000002211DDDD),
    .INIT_27(256'hA40A2C7050704E50300E0E3299DDFFFFDDFFFFDDDDBDBDBD99999BBBBBBBEE22),
    .INIT_28(256'h2222222202E2C2A2A08282626242202042204064624242646242626262624040),
    .INIT_29(256'hFEFEDCDAFAB8B6D8F8D69494B4B4D4B2D2AE24E0022424222222222222222202),
    .INIT_2A(256'hFADADCDAB8DAB8DBFB94700A70FBD66E264868466A8EF6F8D6F8F8D4B4B6DAFC),
    .INIT_2B(256'h262446666666684606E6A68666688A4668AC54DAFAFAFAFADAFAD8D6D8D6F8FA),
    .INIT_2C(256'h282808E6C6C4C6C6A6A6A4A4A6A484A4A4A4A4A2C4E404264646464826280626),
    .INIT_2D(256'hC6C6C4E6062666868686868686868686666644464626060608E6082826262828),
    .INIT_2E(256'h64A686865276543274540E0E30319735462648264646464664A6E82A080B4FC6),
    .INIT_2F(256'h464644446686A68484A6A6A6A6A6868686A8A8A88688A8A8A8A8868888868886),
    .INIT_30(256'h222222222222202020000000002222000000000000202020002200248ABBDFDF),
    .INIT_31(256'h62C62C2E7070B47250725210323296DDB9B9BBBBBDBBBD9B77799999BD554422),
    .INIT_32(256'h2222222202C2C2A2828262624220202020202042424242424242424242404262),
    .INIT_33(256'hFEFEDCDADAD8D8D8D8D8D6B6B4B2B2D2D248E000222222020022222222220200),
    .INIT_34(256'hFCDABAFCB8DAFFDADB94D99472FBFBF98E6A466A8ED4F8D6D8FAF8D6B4D8FAFC),
    .INIT_35(256'hE606062848282808E8A686444668466A2646AA98FCDAD8D8D8FAD8D6D8F8D6FA),
    .INIT_36(256'h060606E6E6E6C6C6C4C4A4A4A6A4A4A4A4A4C4C6E6E4E42426242606060606E6),
    .INIT_37(256'hC6A4C4E4E62666868686868664666666666666464626060606E6062626260808),
    .INIT_38(256'h86A886A8767654323276750E30317757AC464826464646466684C6E80B2F51A6),
    .INIT_39(256'h46444444648686848484A6A6A6A6A6A686A6A6A886868686A686868686868686),
    .INIT_3A(256'h2222220000002020200000000022222000000000002020200000020035FFDFDF),
    .INIT_3B(256'h60C60A50729294927252747432305274969799BBBBBBBDBB79999B99DD332244),
    .INIT_3C(256'h2222222402C2A2A2826262424222202020222042424242222242224242404262),
    .INIT_3D(256'hDCFEDCB8DAFAD8D6D8D6B6B4B4B4B4D2D026E222242222220222222202220202),
    .INIT_3E(256'hFAFCDADCDADADAFFDAB8DBFFFBDBFDF9F4B08CF4F6F8D6D6D8F8D6F6B4B6FCFE),
    .INIT_3F(256'h8484A4C6E8E6C4A6A88868686848484A4868688876DCD8FAFAF8FAFAF8D6D6D8),
    .INIT_40(256'h080606E6E6E6E4E4C6C6C4A4A6A4A4A6A4A4C4C6E6E40426240404C2C482A482),
    .INIT_41(256'hC8A4C4C4C40646668686868686868888866666666848260606E6060626260808),
    .INIT_42(256'hA886CA3298767634327477303031335533684846464646466686A6EAEB0D0DC8),
    .INIT_43(256'h464444446464848684848486A6A6A6A684A684A6A68686868686868686868686),
    .INIT_44(256'h2222222220222222200000000022222000000000000000000000028ABDBDBFDF),
    .INIT_45(256'h60A2EA2E707272927272727476969696BABBB9BBBBBBBBDDBB99BBBBDDEE2222),
    .INIT_46(256'h2422222402C2A282606262424222200022222222202022222222224242424262),
    .INIT_47(256'hDCFCDCBAD8FAD8D8D8D6B6B6B4B4B2B2AE04E024222222220202020202020202),
    .INIT_48(256'hFAFADCDCDAFCFCFEBABADDBAB8D9F690486AAEF4F8F8F6D6D6F8D6F6B4D8FCFE),
    .INIT_49(256'h4444668686A886868868686A4A284A28486A4624CE98DAFAF8F8FAFAFAD6D6D6),
    .INIT_4A(256'h08060606060606E6E6E6C4C4C6A6A6C6A4C4C4C4E6E404260406E6A484848464),
    .INIT_4B(256'hEAC6A4A4A4C42666666666666686868666664666684826060608080606080808),
    .INIT_4C(256'h86A852BC98787854325476753011EF3599AC244646464646666486EBA6C8C80F),
    .INIT_4D(256'h44444444646484848484848484A6A4A4A6A68486A6A6A6A6A6A6A6A686868686),
    .INIT_4E(256'h2222222222000022222200002022222200000020000000020202229BBDBDBFBF),
    .INIT_4F(256'h8282C60A4E505072747274745274B8DAB8BADBB9B9BBBBDDDDBBDDBB9BAA2222),
    .INIT_50(256'h02242204E2C2A280606062424222000000002220222222222222424242626262),
    .INIT_51(256'hFEFEDCDAB8D8FAD8D6D6D6B6B4B4B4D28E26E2220222222202020202E0020204),
    .INIT_52(256'hF8FAFADCDCFCFEDABADCFF96FBF98E042666686AB0B2D4F8D8F8D6B6B6FCFEDC),
    .INIT_53(256'h6666684666888A8A6A48486A4A2A4A28262648466834FCD8D6F8F8FAFAD6B4D6),
    .INIT_54(256'hE806E6060606060606E6E4C6C6C6C6C4C4C4C4E4E6E404042406068264646664),
    .INIT_55(256'hEAA684A4A4C4064666666666666666666666664646262606060808060606E8E8),
    .INIT_56(256'h8632BADE7656543432545497320EEEEF7935464646464646466686CA864464ED),
    .INIT_57(256'h444446444464868484A48464848484A4A6A6848486A6A6A6A6A6A6A686868686),
    .INIT_58(256'h2222222222000022222222002222222200000020000000020200ACDF9D597D7F),
    .INIT_59(256'h82A484C82E50727274B6B8B8B8B8B8B6B8B8B8BAB8BBBBDBBBB977338A222222),
    .INIT_5A(256'h02040404E2C28280604042424222002000020022222222222242424262626262),
    .INIT_5B(256'hFEFEDCB8B8DAD8D8D8D8D8D6D6B4B4D49004E00202222222020000E2E2E2E2E2),
    .INIT_5C(256'hF6F8FAFCDAFEFEBAB8DCFFDBFDF94C2666A8866646264AD6FAD8B696DAFCFEFC),
    .INIT_5D(256'h4646462646686A6A6C4C4A4A6C4A2A4A2828484868CCBAD8B6D8F8F8D8B6B4D4),
    .INIT_5E(256'hE6E6C40606E4060606E6E4E6E4C4C4C4C4C4C4E4E4E40626242606C664666644),
    .INIT_5F(256'hA8868484A4C4E4264666666466666666666868462626262606060606E6E6C6C6),
    .INIT_60(256'hCC98BC9A7856343232105274520EEEEC3377CE26464646464666686666446464),
    .INIT_61(256'h644446666666868484A6A684848486A686A686848484A6A6A6A6A6A8A6868686),
    .INIT_62(256'h022222222220022222220000222222220000000000000002022455DF9F39193D),
    .INIT_63(256'h84A48462C850725094B6B6B8B8B8B8B8B6B8B8DA96B9BB54ECCA882200222222),
    .INIT_64(256'hC2E2E2E2C2A28262604042424222202220020022202022424242626262628484),
    .INIT_65(256'hFEFEFC9696D8D8F8D8D8D8D6D6B4D4D49006E2E0E20202020202E2E2E2E2E2E2),
    .INIT_66(256'hF4F8FAFADAFCFEDCBADCFFDBFBF96C2688A88486440428D6FAF8B696DAFEFEFE),
    .INIT_67(256'h464648264848484A6C4C4C4C4A4A4A4A28284848468854DAD8D8FAFAFAB6B2B2),
    .INIT_68(256'hE8E6E60806E606060606E6E4E6E6E4E4E4E4E4E4E4060626242406C664464646),
    .INIT_69(256'h86866486A4C4C406466666666668666666664646464626260806060608E8E6E6),
    .INIT_6A(256'hCA96BA787654543452305052300E0EEE33551146466666664666666646464444),
    .INIT_6B(256'h444646464664868684A6A68484868686A6A6A6A6A6A6A6A6A6A6A6A6A6868686),
    .INIT_6C(256'h020222222222222222222222222222220000000000000002028ABBDFBF3BFBFB),
    .INIT_6D(256'h6282626284EA2E507296969696B8B8B69696B8B8B9DDBBCC4222000022022222),
    .INIT_6E(256'hC2C2C2C4C2828262404242422222202000202042424242426264626282A4A684),
    .INIT_6F(256'hFEFEFC96B6D6F8F8F8F6F6D6D4D4D4F69006C2C0C0C0C0E2E2E2E2E2E2C2C2C2),
    .INIT_70(256'hD4F6FAFCDAFCFEFEDADCFDFBFDF94A26888664A664264AD6FAD896B8FCDEDEDE),
    .INIT_71(256'h46464846484848484C6E4E2C2A4A4A4A282848484646AABADAD8FAFAFAD6B2B2),
    .INIT_72(256'hE8E6E608E6E60606060606E606E6E4E4E4E4E4E4E6080604262406C664464646),
    .INIT_73(256'h6686648484A4C4E4264646666666666666464626262626260606060608E8E6C6),
    .INIT_74(256'h8632BA5456543434545452525230301011F0CC68666666666666686666664644),
    .INIT_75(256'h464646464444868684A4A68484A6868486A6A6A6A6A68484A6A6A6A6A6868686),
    .INIT_76(256'h22222222222222222222222222222222002022220000002200CCBDDF9F5D3D1D),
    .INIT_77(256'h626240626262C6EA5094B6B696969696B8BABB98BBBB55662220200000000002),
    .INIT_78(256'hC2A2C2C4A282624040404222222020202022224062626262626282A4A4A4A482),
    .INIT_79(256'hDAFCFAD8D6D6D6D6F8F8F6F6D6D4B4F690E6A0A0A0A0A0C2C2E4E4E4C2A2A2A2),
    .INIT_7A(256'hB2F6F8DAFCFCFEFEDCFCFFFDD8B44C6A66866484646A8ED6D69494FAFFFDFEFE),
    .INIT_7B(256'h46464646462648284A6E4E2C2A2828284848482648466630BAD8D8FAFAF8B490),
    .INIT_7C(256'hE8C6E8E8E6E606E606E6E40606E4E4E4E404E40606060626262626E684644646),
    .INIT_7D(256'h4666648484A6C4E4062648686666666646464826262626260606060606E6E6C4),
    .INIT_7E(256'h64EE5434545454325474525252523010EEEE8A88666666884644464646684666),
    .INIT_7F(256'h4646464644646486A6A6A68484A686848486A6A6A6A6A6A6A6A6A6A6A6A6A686),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized19
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h007FFFFC0398FFE0000000FFFFFFFFFFFFFF800000000000007FE0000000007F),
    .INITP_01(256'h0000007FFFFFFFFFFFFF800000000000001F80000000007F000000003FFF0000),
    .INITP_02(256'hFFFF800000000000000000000000007F000000003FFFC000003FFFFE001BFFF0),
    .INITP_03(256'h000000000000007F000000003FFFC000003FFFFE003FFFC80000007FFFFFFFFF),
    .INITP_04(256'h000000000FFF0000001FFFFF800FE0380000003FFFFFFFFFFFFF800000000000),
    .INITP_05(256'h001FFFFF8007F0180000001FFFFFFFFFFFFF800000000000000000000000007C),
    .INITP_06(256'h0000001FFFFFFFFFFFFF80000000000000000000000000FC0000000007FF8000),
    .INITP_07(256'hFFFFC0000000000000000000000000FE0000000003FF8000000FFFFFC007F804),
    .INITP_08(256'h00000000000000FF0000000003FF00000007FFFFE007F0000000000FFFFFFFFF),
    .INITP_09(256'h00000000000000000007FE3FE00060000000000FFFFFFFFFFFFFC00000000000),
    .INITP_0A(256'h0003F807C000000000000007FFFFFFFFFFFFC0000000000000000000000000FF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'h2222222222222222222222222222222200202222000002020010DFDF9D7D1B1D),
    .INIT_01(256'h4242424042626262A60C5096B8B8BADBB97654EECE8866220022200022222200),
    .INIT_02(256'hA2A2A2A282626240202242422220202020424260828484A4A482A4C4A4A48262),
    .INIT_03(256'hDAFAFAFAF8F8F6F4F6F6F6F6F6F6B4D490E68080A2A2A2A2A2A2C2C2A28282A2),
    .INIT_04(256'h90D6D8FADAFCFEFEDCDCFFFDB8B6D4B04666646486AED2F8D894B6FCFDFDFCFE),
    .INIT_05(256'h46464648464648282A4C4C4C4C4A282828484A484866448876B8D8FAFAFAD470),
    .INIT_06(256'hE8E6E8E8E6E6060606E6E60606E4E4E40404040606062626262606E6A4644646),
    .INIT_07(256'h4644648486A6A4C4E4062646666666664446462628462626262606060806E6C6),
    .INIT_08(256'h64CC9932545232323054545274523030EEEE8A88888888886846462626464646),
    .INIT_09(256'h46444446466464A6A6A6A6A484A6868484868686A6A6A6A6A6A6A6A6A6A68484),
    .INIT_0A(256'h2222222222222222222222222222222222222222000002002455FFDF9D9F3B3D),
    .INIT_0B(256'h42424240426464624062A83096B9BBB910A84422220202022222222222002022),
    .INIT_0C(256'h82A282848262424242222222222020204042628282A4A4A4A4A4C4C4A2828262),
    .INIT_0D(256'hD8FAFAF8F8F8F4B0AEAEB0B0B0D4D6D470C46082828282828080828282828282),
    .INIT_0E(256'h92D6D8DAFADAFCFCDCDCFDDDDBDBFBD44846646466D0F6FAD896D8FDFDFDFCFC),
    .INIT_0F(256'h4646264846464848282A2A4C6C6C4A26284A4A4A26686646EE74B8FAFAFAD690),
    .INIT_10(256'hE8E8E6E8E8E6E6E6E6E6E60606E60404040404040604060404040404E6846466),
    .INIT_11(256'h4644668686A4A4A4C4E4062646666866464626282848462626262606260606E6),
    .INIT_12(256'h64A897555452323210547452967430101011AC86A88886A8AA88664646464646),
    .INIT_13(256'h66444446646464A6A6A6A6A686A6868486848484848486A6A6A6A6A6A6868684),
    .INIT_14(256'h2222222222222222222222222222222222022222000002004679DFBDBF5B7F3B),
    .INIT_15(256'h4242426462628484848484A8CAA8A88642000000222200222200200020424222),
    .INIT_16(256'h8284828262624242422222224220404040406282A4A6A4A4A4A2A4A4A2826082),
    .INIT_17(256'hD8FAFAD6F6F6AE6846464646286EF6D64EA48260626060606262606060828282),
    .INIT_18(256'h92F8F8D8FADAFCFCDAFCDDDBFFFDFDF96E04466644ACF4F8D6B6DAFDFDFDFDFC),
    .INIT_19(256'h4446264846464848284A4A4A4A8E6C06084A4C6C264624468830B6FADAFAF892),
    .INIT_1A(256'hE6E8C6E8E8C6C4C4C4E606080806060604040404040404040404E2E406A48488),
    .INIT_1B(256'h46466688A6A4A4A4A4C4062646686666684626262626264828260606260608E8),
    .INIT_1C(256'h64640EFF5532545430747452967430101111AA6488866486AAAA8A8846444424),
    .INIT_1D(256'h44444464646464A6A6A6A6A6A6A68684A68484848484848484A6A6A6A6A6A686),
    .INIT_1E(256'h222222222222222222222222224422222200002200000022469BDFDF9D7B193D),
    .INIT_1F(256'h828282848484A6A6848484846440202042222222222244442222444422222222),
    .INIT_20(256'h62828484626242402042222020426262848484A4848482828282828282828282),
    .INIT_21(256'hD8F8FAF8D4AE68242224042648064C704EA46260606060404060606062626262),
    .INIT_22(256'hB4D6D8D8D8D8FCFCFDDDDDDDFFFFFDFDB44A26464444ACD0B2B4D8FDFDFDFDD8),
    .INIT_23(256'h66464646484668482606284A4A4A2828284A4A484846464666CA52FADAFAD8B4),
    .INIT_24(256'h08E8E8C6C6C6C6E6C6E6E6E606060604040404E4E4E4E4E6E6E6060606C48264),
    .INIT_25(256'hCFCDCBA8A8C8C6A4C6C6E6264868464668262606062626260606060606080808),
    .INIT_26(256'h646644AA777732323274965474525210EEF18844888686666688AACDAD8A8AAB),
    .INIT_27(256'h6466446444646466868486868686646486868686868686848484A6A6A6A68686),
    .INIT_28(256'h222222222222222222222222444444222200000000220000AC9DDFBD9D7DF9D7),
    .INIT_29(256'hA4A4A4A4A4A4A4A4A4A4A4848462424242222222222244442222442422222222),
    .INIT_2A(256'h6262848484646240204222202040628282828284848262628282828282828482),
    .INIT_2B(256'hD8F8F8F4AE684444240426AEB24C2A4E4EA46062626040404040404062626062),
    .INIT_2C(256'hB4D8D6FAD8B6FAFCFEDCBABAFFFFFFFFFDF98E04464644686A8ED6F8FBFBFBD6),
    .INIT_2D(256'h644646462626484828282A4A28282806284A4A4A482646466666ECB6FAFAFAD8),
    .INIT_2E(256'h08E8E8E6C6E6C6C6C4E6E6E4E606060404040404E4E4E6E8E6C6E60406E6C686),
    .INIT_2F(256'hABABA8EDC8C6C6C6C6C4C4042648686848482806060626060606060626080808),
    .INIT_30(256'h86644464CA325252525496543252523011EF888888888866668866688888ADCD),
    .INIT_31(256'h44444444444466666464666666648686866464646484868684848484A6A68686),
    .INIT_32(256'h222222222222222222224444442222222220000202222002139DBF9D9F7FF973),
    .INIT_33(256'hA2A2A2A4A4A4A4C4A4C6C6C6C886422444242424242446462424242422222222),
    .INIT_34(256'h6264648464646442424242422040628282828284828282828282A2A2A4A4A4A4),
    .INIT_35(256'hD4F6F4AE68444244466AB2F6F6D692D692E86262626240404042404062626262),
    .INIT_36(256'h96D8D8FAD8B8FAFCFFDCDCDDDDFFDFDFDDFDF96A4644648666688C8EB0D4D4D2),
    .INIT_37(256'h866666462626484828282A2A28282826284A4A48484646464464860ED8FAFCFA),
    .INIT_38(256'h0808E6E6E6E6C6C6C4C4E4E4E40604040404040404E6E6E8C6C6E6E4E406E6C6),
    .INIT_39(256'h8888A8A8A6C6C6C6C6C6C4E40448686846684826262626260606062626262808),
    .INIT_3A(256'h6464644444A83052545274741030523111AA6646246888AD8A686646666688AA),
    .INIT_3B(256'h44444444444446666666666666646686648686648686868686848484A6A68686),
    .INIT_3C(256'h22222224222222222222224242222222222000020200000035BFBF9BBF9F1BB7),
    .INIT_3D(256'hA2A2A2A4C4C4C6C6C6C6E8E8A664222446242424242446462424242424242202),
    .INIT_3E(256'h64646464626264424242422220426282828282A4828284A4A4A4A4A4A4C4C6C4),
    .INIT_3F(256'h8CAEAC88666442468CD4F6D6D6F8D6FAB60C6262404040404040426262626262),
    .INIT_40(256'hB6B8D8D8D8B8DADCFEDC98B8FFFFDFDFDDFDFBD54624648464666846486A6A6A),
    .INIT_41(256'h846444464626484A4A2A4A4A28484826484A4A4A484646466666648696FADAFC),
    .INIT_42(256'h280606E6E6E6C6C6C6E6E6E6E606060606040404E4E6E6E6C6A4C4E4E4E6E6C6),
    .INIT_43(256'h888688A8C8E8E6E8C6C6C6E6E428486866686826262606060606060626262828),
    .INIT_44(256'h8664644464860E30100E0E100E0E3030EE884646488B688BAB8B686888686866),
    .INIT_45(256'h464646444646464646666646666664646486A886868686A6868686A6A6A68686),
    .INIT_46(256'h22222422220222224222222222422222200000000020222235BFBD9BBD9F7D3B),
    .INIT_47(256'hA4A4A4A4A4A4C4C4E6E8E8E8A642444444242424244446462624242422242200),
    .INIT_48(256'h62646464626264424242424240426282828282A4A4A4A282A4A4A4A4A4C4C4A4),
    .INIT_49(256'h264646446464248AD2F6D4D6D6F8D8D8D8748640404040404042626262626262),
    .INIT_4A(256'hB8B6B6D8B896DADCFD96305096FDDFDFDDFDFDF94A2464646464444446264626),
    .INIT_4B(256'hA66444464846484848484A4A48482626486A6A6A68464646466666640EDADCDC),
    .INIT_4C(256'h060808E6C6C6C6C6C6C6E6E6E6E6E6E6E40404E4E4E6E6C6C6C4C4C4C4E6E8E8),
    .INIT_4D(256'hCBA8A8CBCAC6C6E8C8A6A6C6C406264846484826260606E6E6E6060606262828),
    .INIT_4E(256'h64646464444486A8A8CAAAA8CACACACAA86646268DCF8B464668888BADAAAAAA),
    .INIT_4F(256'h464646446666666646466666668664646486A886868686868686868484868686),
    .INIT_50(256'h22224222200022222222222222222222000000000000002215BD9DBBBDBDBD9D),
    .INIT_51(256'h82A28282828282A4C6C6C6C68462624424242444444466664444222222224222),
    .INIT_52(256'h6264646442626240204222202040406262628282828282626282828282828482),
    .INIT_53(256'h26262624242426B0D4B4D6D6B4B6D8D8D8B7EC40404040404242426262626262),
    .INIT_54(256'hB89694B89696B8FFDD5252502EB9DDDFBDFDFDF96E0424242424240424240426),
    .INIT_55(256'hC6866446464646264646486846484646688A6A484846464444444664A896DCDC),
    .INIT_56(256'h0808E8E8C6A6A6A6A6A6C6C6C6C6C6E6C4E4E4E6E6C6C6C6C6A4A2A2C4C4C6C6),
    .INIT_57(256'hECA8A844A6C8C6E8C8A8A6A6C6E808284848482808E6E6E8C8C6E6E8E8060808),
    .INIT_58(256'h644442222020426264A8A8A8A8A8A8A8664424468DADABAB896666668888AACA),
    .INIT_59(256'h4644444444664444446464646464646464646464646464648686848484A68686),
    .INIT_5A(256'h53535555333333535553335355533333335333333333553379BFBDBDDDBBDDBB),
    .INIT_5B(256'h73737373737393939395B5957351537533553353535375555353533333535533),
    .INIT_5C(256'h5353737553737553535353335353535173737273737373737373737373737371),
    .INIT_5D(256'hD3D3D3D0D0B2B2F9D9D9F9D9F9FBFBD8DBFBB753535371715353535373535353),
    .INIT_5E(256'hDAB8D8D9DBB9DBFFDB97B9D9B7DBDDDFDDFDFDF9D7B0B0D0B0B0D1B0B0B0B2B2),
    .INIT_5F(256'h9575535555353535553555555555353535575735353535555555555574B9FDDA),
    .INIT_60(256'hB5B5B59595757595959595939593939393B393939393B5939393737393739395),
    .INIT_61(256'h9573753175B593959575759595B5B5B3D3D3D3D5B5B59595957595959593B3B5),
    .INIT_62(256'h5353535353535353537575759797757555553535575777777555555353535375),
    .INIT_63(256'h5555555353555555535575757553557553535375757575757573737373737375),
    .INIT_64(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBBBDBDDDBDBDBDBDBBBBBBDBBBBDBDBDBBB),
    .INIT_65(256'hFBFBFBFBF9FBF9FBFBFBFBFBFBD9DBDBDBDDDDBBDBDBDBB9DBDBDDDDBBDDDDDB),
    .INIT_66(256'hDBDBDBFBFBFBFBDBDBDBDBDBDBDBFBDBFBFBFBFBFBFBFBFBDBFBDBDBFBFBFBD9),
    .INIT_67(256'hF9F9F9F9F9F9F9FBFBFBFBFBFBFBFBDBDDDBDBDBDBFBFBF9FBDBFBDBDBFBD9DB),
    .INIT_68(256'hDDDBFBFBFBFBDBDBDBDBFBFBFBDDDBDBDDDDDBFBF9F9F9F9F9F9F9F9F9F9F9F9),
    .INIT_69(256'hFBDBDBDBBBBBBBBBBBDDDBDBDBBBBDDDBBDDBBBBBBBBBBDBDBDBDBDBDBDDDDDD),
    .INIT_6A(256'hFBFBFBFBFBDDFDFBDBDBDBF9FBFBFBFBFBF9FBFBFBF9F9F9F9FBFBFBFBFBFBFB),
    .INIT_6B(256'hFBB9FBDBDBDBFBFBFBFBDBFBFBFBFBFBF9F9F9FBFBFBDBDBFBDBFBFBFBFBFBFB),
    .INIT_6C(256'hDBDBDBDDDDDDDDDBDBDBDBDBDBDBDBDBDBDDDDBDBBBBBBBBBBBBDBDBDBDBDBDB),
    .INIT_6D(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBFBFBDBDBDBDBDBDBFBFBDBBBDBFD),
    .INIT_6E(256'hFBFBDBFBFBDBFBD9DBFBDBDBDBDBDBDBDBDBDBFBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_6F(256'hFBFBFBFBD9D9FBFDFDFBFBFDDBFDFDFDDBBBBBDBDBDBFDFDFBDBBBBBBBDBDBFB),
    .INIT_70(256'hFBDBFBDBD9DBFBFBDDDBDBDBDDFDFDFBDBDBFBFBFBFBFBFDFDFBFBFBFBDBDBD9),
    .INIT_71(256'hFBD9FBD9FBFBFBFBDBDBDBFBDBFBFBDBDDDBFDFDDBDBFBFBFBDBDBFDDBFBFBFB),
    .INIT_72(256'hDBDBDBDBDBFBDBDBDBDBFBFBDBDBDDFDDBBBDBFBFBFBFBF9DBFBF9FBFBFBFBFB),
    .INIT_73(256'hFBDBDBDBDBDBBBBBDBDDDBDBDBDBDDDDDBDDDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_74(256'hFBFBFBDBDBDBDBDBFDFDFBFBFBFBDBFBFBD9FBDBFBFBFBFBFBFBDBDBDBFBFBFB),
    .INIT_75(256'hFBD9FBDBDBDBDBFBDBD9D9D9DBFBFBFBFBFBFBFBFBFBFBFBDBFBFDFBFBFBFBFB),
    .INIT_76(256'hFBDBDBDBDBDBDBDBDBFBFBDBDBDBDBDBDBDDDDDDBBDBDBB9DBDDDBDBDBFBFBFD),
    .INIT_77(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDDDDDBFBFBFBFBDBDBDBDBFBFBDBDDFDBBBB),
    .INIT_78(256'hDBDBDBDBFBFBFBDBDBDBDBFBFBDBDBDBDBDBFBFBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_79(256'hFBFBFBFDDBFBDBDBDBDBFBDDDBDBBBDBDBDDDBDBDBDBDBDDB9DBDDDDDBDBD9FB),
    .INIT_7A(256'hDBDBFBDBD9D9FBFBFBFBFBDBDBDBDBBBDDDBDBFBFBDBDBDBDBDBDBFBFBD9FBFB),
    .INIT_7B(256'hDDDDDDDBFBFBFBFBFBFBDBDBFBFBFBFBDBFDFBDDDBDBF9FBFBFBFBDBD9FBFBFB),
    .INIT_7C(256'hDBDBDBDBDBFBFBDBDBDBDBDBDBDBDBDDFDDDDDDBDBDBFDDBDBFBFBFBDBDBDBDB),
    .INIT_7D(256'hFBFBFBFBFBDBDBDBDBDBDBDBDDDBDBDBDBDBDBDBDBDDDDDBDBDBDDDDDDDDFDFD),
    .INIT_7E(256'hFBFBFBDBDBDBDBFBDBDBDBD9D9FBDBDBDBFBFBDBDBDBDBFBFBDBDBDBDBDBDBFB),
    .INIT_7F(256'hDBDBFBDBDBDBDBB9DBFBFDFDFBFBFBFBFBFBFBFBDBDBFBFDFBFBFBFBDBDBDBFB),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ram_ena,
    addra,
    dina,
    wea);
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ram_ena;
  input [13:0]addra;
  input [1:0]dina;
  input [0:0]wea;

  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [13:0]addra;
  wire clka;
  wire [1:0]dina;
  wire ram_ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hAAAAAAAAAAABAAAAAAA6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAA),
    .INIT_01(256'hAAAAAAAAAAAAAAAAAAAAAAA6AAAAAAAAA65A95566AAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_02(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_03(256'h965A5A46AAAAA96AAAAAAAAAAAAAAAAAAAA96AAAAAAAAAAAAAAA646AA95AAAAA),
    .INIT_04(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_05(256'hAAA2DAAAA02A90AAAAAA5E2AAB8AAAAAAAAAAAA96AAAAA96AAAAAAAAAAA96AAA),
    .INIT_06(256'hAAAA902AAAAAAAAAAAAAAAAA42AAAAAAA8A69A2DAAAAA78A69AAAAA5AAAAAAAA),
    .INIT_07(256'hAAAAAAA6DAAAAA7EAAAAAAAAAA92D5906AA6905AAAAAA906AAAAAAAA5AAAAAAA),
    .INIT_08(256'h9E51AA15AAA94D44C6AAAA8FAAA90AAA5A9C9AAA9AAA8A1555A9359AA64AAAAA),
    .INIT_09(256'h6AAA2AB1AAAAA75C555545A78AAAAAAAAAAA899AAAAAAAAAAAAAAAA9DE91AAAA),
    .INIT_0A(256'hA15C5AAA9599503A16A5A99A5776AAAAAAAAAA914AAAA9D855055556A9498565),
    .INIT_0B(256'h6AAA985AAAAAAAAAAAAAAA99D979969A779195256AA7A941A1AAA9356A928AA8),
    .INIT_0C(256'hAAAA8DA14AAAA93054AC1016A94945252A66955AC5AA9D58555556A261545555),
    .INIT_0D(256'h649D5315AAA1714D4B6AA2B52A999AA25F8D9AAA95931925DAA77D99427AAAAA),
    .INIT_0E(256'h1A9100D1AC6A9A476AAAAA94014E1555AAAA989AAAAAAAAAAAAAA9E664194CC6),
    .INIT_0F(256'h45B9702A949996659AA24D9396606AAAAAAA27504656AA9AA451555A92C17574),
    .INIT_10(256'hAAAA989AAAAAAAAAAAAAA9AC346D1766DC9DF4940650453496C7A1B52A85DAA4),
    .INIT_11(256'hAAAAEAFC2C01AAA9145E95AA85B23548EA74552315AAA42566AAAAAAAA74DAAA),
    .INIT_12(256'h5A1661145A52D175C95AA1F42A99EA99D60985AA949D980D46AD655516756AAA),
    .INIT_13(256'hA92600D10015AA92DAAAAAAAAA649AAAA6AA589AAAAAAAAAAAAAA9554E551864),
    .INIT_14(256'h65DC4AAA955D91977AA50C895776AAAAAAA95D817516AB92444D5F694577638D),
    .INIT_15(256'h99CA989AAAAAAAAAAAAAAA955DD51866419F7515A94D6575CAAA99F116532AA4),
    .INIT_16(256'hAAA989903486AA997F18D2AA916DDF319A8040120105AAA9F06AAAAAAA8449AA),
    .INIT_17(256'h289037156A27507599569F3105155A9D084C9AAA945D84D491A67DC54635AAAA),
    .INIT_18(256'h8AA93162596AAAAA166AAAAAAA987AAAA566599AAAAAAAAAAAAAAA2B4AC7AC66),
    .INIT_19(256'hC269855A9499A1AA98A17C86EA756AAAAAAA9940424AEA999451676A67567ABD),
    .INIT_1A(256'hA2A0584555AAAAAAAAAAA9D537CDEC66D4907DD5562ACC609401A67515540689),
    .INIT_1B(256'hAAAA52700D59A999545167AA69975D7976A89D2602EAAAAA266AAAAAAA9966AA),
    .INIT_1C(256'h67506E5806941075C95AAA7556A17190009B00169499A6E554A7688AE9701AAA),
    .INIT_1D(256'h76AB5D225DAAAAAA666AAAAAAA5952AAA555444555AAAAAAAAAAA9D8E639D866),
    .INIT_1E(256'h05D76AAA95988B25E9A595851C956AAAAAAA04707D56AA994451676A97961678),
    .INIT_1F(256'hAAAA845AAAAAAAAAAAAAAA55653F18667650749D5697C075C96AAA7506A161A9),
    .INIT_20(256'hAAA8A1ED7295AA95735D276A2919877862A85162A19AAAAA666AAAAA971949AA),
    .INIT_21(256'h851074CC1A9D7C6F89AAAA75A1A576A4A0352AAA9598956256A9D0895041AAAA),
    .INIT_22(256'hBEA85C225D9AAAAA666AAAAA3A5957AAAAAAB446AAAAAAAAAAAAA914B5312866),
    .INIT_23(256'hF3247AAA959890616A5A10CA3966AAAAAAA7ACE96FC16A994451676A156FA278),
    .INIT_24(256'hAAAA7946AAAAAAAAAAAAA79405F158669C106E99499D287E445AAAB6E85636A7),
    .INIT_25(256'hAAA515795455AA59445267AA66E73E38C2A95C260D9AAAAA666AAAA99499B66A),
    .INIT_26(256'h511F695D7AA745949681AA7777A576955565A2AA959C89F1405564BAA965AAAA),
    .INIT_27(256'h96A951625DAAAAAA666AAAA65A998D9AAAA62C4AAAAAAAAAAAAAA4D435FD2C66),
    .INIT_28(256'h45713BAA959C8F21FF6010950C75AAAAAAAAA97C1366A934455267AA91E5C678),
    .INIT_29(256'hAAAAE176AAAAAAAAAAAAAA1425C828661C596F9E79A99485D559AA7647A6769A),
    .INIT_2A(256'hAAAA9AEC126AA8554451675654F17778DAA551666DAAAAAA666AAAA1129D877A),
    .INIT_2B(256'hB85E659F79A514A59B95AA67439575A91874D3DA959C9A756AAED5A410B56AAA),
    .INIT_2C(256'hD6A55CE639AAAAAA666AAAA1269996E2AAA4A766AAAAAAAAAA9AAA64AC86D866),
    .INIT_2D(256'h554ADA4A949DDA7669AC5AB4D0B66AAAAAAAA9A0552AA9F540F026066551EE74),
    .INIT_2E(256'hAA924566AAAAAAAAAA46AA646D89ED6585AF51CF7A566495D52DAA66474176A5),
    .INIT_2F(256'hAAAA5142BA29AA995AAA676A625952399AA9A12251EAAAAA666AAAA576599A8C),
    .INIT_30(256'h4648F5CE75552475899695173729756949A56AAA94931562666861FD10756AAA),
    .INIT_31(256'hDAA4B577A82AAAAA666AAAABDA999AA4694999DEAAAAAAAAA999A924B17555F5),
    .INIT_32(256'h88AAAAAA959580E10059864C50596AAAAA964EF56AAFFF29AABAB4AA9FE61779),
    .INIT_33(256'hA4952A29AAAAAAAAAB55A897017556595C63C5C6B605969DC9AA81D7A6346659),
    .INIT_34(256'hAA8501882A1AAA51593A7DAB66CEB4B9EAA76167556AAAAA656AAAAAAA999AAA),
    .INIT_35(256'hB1570084A57F542B886A8C89E5696699165AAAAA955594E5651B05410D2D2AAA),
    .INIT_36(256'hEAA40062555AAAAA6516AAAAAA999AAA91576A4A6AAAAAAAAB59A92602F515A9),
    .INIT_37(256'h25F1AAAA9470AA4E400AABA9A5422AAAAAA897532CE2FF519AFA75A625B5FFDD),
    .INIT_38(256'h9D59AAA2DAAAAAAAA852AA7614452A6969AAAA5926655153861A865E5E6262AA),
    .INIT_39(256'hAAAA21AF6D853B914BBE43A48E58545DEA935562AAAAAAAA61B1AAAAAA989AAA),
    .INIT_3A(256'h945145B6751576A9D52A856694C4A6AA7551AAAA985CAFA4E51D55551614EAAA),
    .INIT_3B(256'hEA89D522555AAAAA7575AAAAAA989AAAA662AAA906AAAAAAA976AA7585992AA9),
    .INIT_3C(256'h9916AAAA9C52AAA5505755ABB16AEAAAAAAA5663DB49FA4B466A4F8AE4E5C55D),
    .INIT_3D(256'hA906AAAA51AAAAAAAACAAAB54A9E6AAA6559BC1A9605DAAA666AB59AAA665AAA),
    .INIT_3E(256'hAAAAAA8ABFFAFA414A5A438AE653AB11DA8EC0FB0006AAAA8D4AAAAAAAAD9AAA),
    .INIT_3F(256'h91056AAAA62C69A95DAABB69AAAA696AA4F6AAAA9466AAAAA6AA4015966A6AAA),
    .INIT_40(256'h6A95A955A6AAAAAA956AAAAAAA646AAA5A9AAAA9A9AAAAAAAA76AA9EDAA9AAAA),
    .INIT_41(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8A9FFFFA48CA5A8735AA995515),
    .INIT_42(256'hAAAAAAAAAAAAAAAAAA9AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_43(256'hAA4FFFFEAFEAFA4A4A4AA697AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_44(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_45(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_46(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA97EADA2E4AFFFFEEFAAAAAAAAA),
    .INIT_47(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_48(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_49(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_4A(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_4B(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_4C(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_4D(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_4E(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_4F(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_50(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_51(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_52(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_53(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_54(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_55(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_56(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_57(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized20
   (DOADO,
    DOPADOP,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFDFFFFFF7FF),
    .INITP_05(256'hFFEFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFBFFFFFFFF),
    .INITP_06(256'hFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFF7FFF),
    .INITP_07(256'hFFFFFEFFFFFFBFFFFFDFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFEFFEFFFFEFFEFF),
    .INITP_09(256'hFDFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFEFFFFFF),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFDFFFFFFFFFEEFFFFFFFFFFFFFFFFFFFFFFFFFDFFFF7FFFFFFFFFFFFFFFF),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFE7FFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'hDBDBDBDBDBDBDBFBFBFBFBFBFBFBFBFBFBDBDBDBDBDBDBB9DBDBDBD9D9DBDBDB),
    .INIT_01(256'hDBDBDBDBDBDBDBDBDBDBDBFBFBFBDDDDDBDBDBFBFBDBDBDBDBDBDBDBDDDBDDDB),
    .INIT_02(256'hFBDBDBFBFBFBB9DDDBDBFBFBFBFBDBDBFBFBFBFBFBFBDBDBDBDBDBDBDBDBDBDB),
    .INIT_03(256'hDBDBDBFBD9D9FBFDFBFBFBDBDBDDDDDDDBB9D9FBFBDBDBFDDBDBDDFDD9FBFBDB),
    .INIT_04(256'hDBDBDBFBFBFBFBFBFBFBFBDBDDDDDDDDBBDBFBFBFBDBDBDBDBDBDBFBFBFBFDFD),
    .INIT_05(256'hBBDFBBDBFBFBFBFBDBDBDBFBFBF9F9FBDBFBD9DBDBDBFBF9FBFBFBFBD9DBFBFD),
    .INIT_06(256'hDBDBDBDBDBDBFBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBFDDDDBFBFBDBDBDBDD),
    .INIT_07(256'hDBDBDBDBFBDBFBDBDBDBBBDBDBFBDBDBDBDBDBDBDBDDDDDBDBDBDBDBDBDBDBDB),
    .INIT_08(256'hFBFBFBFBFBFBFBFBDBDBFBFBDBDBFBFBDBFBDBFBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_09(256'hFBFBDBDBDBDBDBFBFBFBFBDBFBFBFBFBFBDBFBDBDBDBFBFBFBFBFBFBDBDBDBDB),
    .INIT_0A(256'hDBDBDBDBDBFBFBFBFBFBFBFBFBFBFBFBFBDBDBDBFDFBFBFBD9DBDBDBFBD9DBDB),
    .INIT_0B(256'hDBDBDBDBDBDBDBDBFBDBDBFBFBFBDBDBDBDBDBFBFBDBDBDBDBDBDDDBDBFBFBDB),
    .INIT_0C(256'hDBDBDBFBFDFBDBDDDBFBD9B5D9FBDBDBDBFBD9B5B5F9FBDBDBDBDBDBDBDBDBDB),
    .INIT_0D(256'hDBFDDBDBFBFBF9B7D9F9FBFBDBDBDBDDDBFBFBF9F9FBDBFDDBFBDBD9FBFBFBD9),
    .INIT_0E(256'hDBFBFBDBDBDBDBDBDBFBFBFBDBDBDBFDDBDBDBFBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_0F(256'hBBDBDBFBD7D7FBFBD9D9FBFBD9B5B7FBFBFBFBFBDBDBFBFBFBFBFBD7D7F9FBFB),
    .INIT_10(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBFDFBF9FBFBD9DBDBFDDDFBFBFBDBDBDBDB),
    .INIT_11(256'hFBDBDBDBFBFBFBD9FBFBFBFDDBFBFBFBFBFBFBFBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_12(256'hFBF9F9F9F9F9F9F9F9FBFBFBDBDBFBFBDBFBDBFBFBDBDBDBDBDBFBFBDBDBDBDB),
    .INIT_13(256'hFBFBFBDBDBDBDBFBFBFBFBFBFBFBFBFBFBDBDBDBDBDBDBDBFBFBFBFBD9FBDBDB),
    .INIT_14(256'hFBFBDBDBFBFBFBFBFBFBFBFBFBFBFBFBDBDBDBFDDBFBF9D7D7FBDBD9FBFBFBFB),
    .INIT_15(256'hDBDBDBDBDBDBFBFBFBDBDBDBFBDBFBD9D9FBDBFBFBDBDBDBDBDDDBDBFBD7D7D9),
    .INIT_16(256'hFBDBDBDBDBFBFDFBDBD96E2891F9DBDBDBFBF94C28B3F9FBDBDBDBDBDBDBDBDB),
    .INIT_17(256'hDBDBFBFBFBF9B32C6ED7FBFBFBDBDBBBDBF9B39191FBD9FBDBD97391F9F9D9DB),
    .INIT_18(256'hF9FBFBD9DBDBDBDBDBFBFBFBFBFBFBD9FBDBDBDBDBDBFBFBFBFBFBFBFBDBDBDB),
    .INIT_19(256'hFBFBF9D52A4CD7DBDBDBFBFBB50A2CF9FBFBFBFBDBDBFBFBFBFBD54C4CB5FBF9),
    .INIT_1A(256'hDBDBDBDBDBDBDBDBDBDBDBFBFBFBFBFBB57193FBF9FBF9F9DBFBFBFBDBDBDBDB),
    .INIT_1B(256'hDBDBDBDBDBDBFBD9FBD9959393F9FBFBFBFBFBFBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_1C(256'hFBFBFBF9FBFBFBFBFBFBFBFBFBFBF9F9B7D9FBFBFBDBDBDBDBFBFBFBFBFBDBDB),
    .INIT_1D(256'hF9FBDBDBDBDBD9F9F9D5B3B1D5F7F9FBFBFBDBFBDBDBDBDBDBFBF9F7B393B7D9),
    .INIT_1E(256'hF9FBFBDBF9F9F9FBFBFBFBFBFBFBFBFBDBDBDBDBDBD9914A6EF9DBD9FBD79391),
    .INIT_1F(256'hDBDBDBDBDBDBFBFBFBFBDBDBFBF9B54C4CD7FBFBDBDDDBDBDBDDDBD9B54A6EF9),
    .INIT_20(256'hD7B7B7B9D9FBFBF9B36C28046CF9FBDBFBFBF94AE491F9FBDBDBDBDBDBDBDBDB),
    .INIT_21(256'hB7B5F9FBFBF96CE228D5FBFBFBFBDBDBFBD548484AF9FBFBFB93E608B3D7D7B5),
    .INIT_22(256'h70D5F9FBDBDBDBDBDBFBFBFBF9B59090F9FBDBDDDBFBF9D793B5D9FBFDDBDBFB),
    .INIT_23(256'hFBF78E6C2606B5D9DBDBFBFBD50808F7F9FBFBFBFBFBF9F9D7B56E0608B1F791),
    .INIT_24(256'hDBDBDBDBDBDBDBDBDBDBFBFBFBFBFBF94C064AF9F9D771D5FBFBFBFBDBFBDBFB),
    .INIT_25(256'hFBDBDBDBDBDBDBFBFBB32A082AD7FBD9FBFBFBFBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_26(256'h9795B5B5B5959595959595D9FBFBD76E0A71F9FBFBFBFBFBFBFBFBFBFBFBFBDB),
    .INIT_27(256'hD5FBDBDBDBFBF9FB93282626286CB1F5F9F9FBFBFBFBDBDBDBFBD79028266EB5),
    .INIT_28(256'hB5B59595B5B5B5B59595959595B7D9DBDBDBDBD9D993280428D5FBFBB74C0608),
    .INIT_29(256'hDBDBDBDBDBFBFBFBFBFBDBDBFBF9B3E406B3FBFBDBDDDDDBDBDBFBB72CE42A71),
    .INIT_2A(256'hB1B5B7B9FBF9F9F7484A6A246AF9FBFBD9F9F78C048EF9F9DBDBDBDBDBDBDBDB),
    .INIT_2B(256'h2A28D1F7D5F98E0226D5FBFBFBFBDBDBFBD5262448F9F9F9F9B57191D5904A28),
    .INIT_2C(256'h284AB3D7FBDBDBFDDBDBFBD7B36C2626D5FBDBDDDBF9914A0693F9FBFBFBF993),
    .INIT_2D(256'hF9B0268C4806B3FBFBD9D9F9F52806F7F9FBFBDBDBFBF74C2A4A6A2648D1AF06),
    .INIT_2E(256'hDBDBDBDBDBDBDBDBDBFBFBFBF9B7FBF96EE448F7D74C2AF7F9F9F9FBFBF9FBFB),
    .INIT_2F(256'hD9FDDBDDDBDBDBFBFBD52AE408D7FBDBDBDBDBDBFBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_30(256'hB7B7B7D7B7B7B7B7B7B7B9D9FBF99106E62A93D7D7F7D5B5D7B7B7B7B7D7B9B7),
    .INIT_31(256'hD3F9DBFBD9F9F9F92C082626242466686C91B5D7F9DBDBFDDBD96E26242448D5),
    .INIT_32(256'hB5B5B5730A2A90B595B7957395B7D9DBDDFDFBD7F7D5282626D3F9F9B50806E4),
    .INIT_33(256'hDBDBDBDBDBFBFBF9F99370D7FBF9D50426D3FBFBFBDBDBFBDBFBFBB7936E9393),
    .INIT_34(256'hAEF7F9B9D9F9F7AE04AEAE466AF7F9F9D793D568248EF9FBFBDBDBDBDBDBDBDB),
    .INIT_35(256'h0424AC8C2AB38C2468F5FBFBFBFBFBFDF9F546246AF7916EB3F9F9F9D54A0404),
    .INIT_36(256'h0404486EB5D9DBDBDBFBB3084C8E4626D5FBFBDBFBD5280428D5FBDBDBDBB508),
    .INIT_37(256'hF74A28F36A2690F9F9F9B590D32628F7FBFBFBDDFDFBB3E4048CD14646D18E04),
    .INIT_38(256'hDBDBDBDBDBDBDBDBDBFBFBD74E2CB7FBD54826D3D3082AF7F7B390B57093F9FB),
    .INIT_39(256'hDBDBDBDBDBDBDBFBF9F76A0428D7FBFBDBFBFBDBFBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_3A(256'hF9FBFBFBDBDBDBDBDBDBDBDBFBF9D591B393B5D7B5D36C2891B5B7B7B7B7B797),
    .INIT_3B(256'hB1F9DBFDFBF7B3F9B5B5B1D1CE8642666C4C4C93B5D9D9FBD9D74E4846020490),
    .INIT_3C(256'hFBFBF9D50826B3F9D9D9D9D9D9DBDBFBFDD993286CD5B12424AEF7F9F98E26E2),
    .INIT_3D(256'hFBDBDBDBDBDBFBFB9308E86EF9F9D30424B3F9F9D9D9D9FBFBFBFBD9F9F9FBFB),
    .INIT_3E(256'h6AF7FBDBF9F9914846D3AE2448F5F58E4CE62868246AB37397DBDBDBDBDBDBDB),
    .INIT_3F(256'h040042262A6E6C2446B0937375FBB9DBF9F746246AD54AE46CF7F9FBF74C0626),
    .INIT_40(256'h8A4626284C73B9FDD9F9B3E44AAE4604B3F9FBFBFBB508E46EF9FBDBDBFBF991),
    .INIT_41(256'h6E068CF56A26D0F7B08E08C46C4606919395B9FDB9FBB1E226D3F52604B0F5D3),
    .INIT_42(256'hDBDBDBDBDBDBDBDBFBFBFBB50A0A7073B56C04D1D54C90F7B308488E064AF7F9),
    .INIT_43(256'hD9FBDBDBFBDBDBFBF9F96C044AD7FBDBDBDBDBDBFBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_44(256'hD5FBD9D9DBDBDBFBFBDBDBDBDBFBFBF9FBFBFBD9D76C26048EF9FBFBFBF9DBDB),
    .INIT_45(256'h6CF9FBFBF76C0691F9FBF9F7F5A842CCF5D7D9F9F9FBFBFBFBFBD7D5B14A08E6),
    .INIT_46(256'hB5F9F9D52626B0F9FBF9D9DBFBDBFBFBFBB5062446AEF36A028CF5F5F5D348E2),
    .INIT_47(256'hFBDBDBDBDBDBDBFB4E2A4A488E908E04046C6EB5917193B7FBFBDBFBFBFBFBD7),
    .INIT_48(256'h26D3F7FBFBD74CE4286A262448262626D5F7F76A248CF7D9D9DBDBDBDBDBDBDB),
    .INIT_49(256'h8E444446D5D56C2468F3D7B7D9FBDBFDFBF7482448F76C064AF7FBD593D5B026),
    .INIT_4A(256'hAE246AF7D5D9D9FBF9F9B128B0AE2602D3FBFBFBFBF94CC46EFBFBFDDBD9FBF7),
    .INIT_4B(256'h08266A6A04464648266CD5F7D34826D5D7D9FBFBDBFBD36A8EF7D52626B0F7F7),
    .INIT_4C(256'hDBDBDBDBDBDBFBDBFBFBF9F9D7F7D9D7B5B36C6AF7D5F7F9D3066AF3264AF7B5),
    .INIT_4D(256'hFDD9D9FBF9FBD9D9F9F74AE44AF9FBFBDBDBFBDBFBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_4E(256'h4CD7FBFBFBDBFBFBFBFBFBFBFBFBDBFBDBFBFBFBF94A24226AF7FBDBFBFBDBDD),
    .INIT_4F(256'h6AF9FBD9B508E62A9393B3B3B0682268F5B5B593959595B5F9FBFBFBFBD7912A),
    .INIT_50(256'h28B3F7F32624B0F9D7D59050B9DBFBF9F991044424ACF3AE4648F3AE4AB18C04),
    .INIT_51(256'hDBDBDBDBDBDBFDD9F7F5AE4648F5D12626B0D5F7D3D5D7F9FBD9DBFDD9F9932A),
    .INIT_52(256'h26AEF9FBDBF9F9F9F5F5D00468D14826F5F9F78C26AEF9FBFDFBDBDBDBDBDBDB),
    .INIT_53(256'hF56A44248EF7AE0446D3FBFDFBDBDBFDFBF7484848F78A246AF7D3282AD7F76C),
    .INIT_54(256'hAE046AF9FBFBFBFBFBD728068EAE0404D5F9D9FDD9F9B570B5FBFBDBFBFBF9B5),
    .INIT_55(256'hF7F5F3F78C24D08C268EF9F9D34828F7F9FBFBD9F9B58EF5F7F9D52628B2F7F7),
    .INIT_56(256'hDBDBDBDBDBDBDBFBDBFBFBF9F9D5D5F9F9F7AE0490F7F9F7B1268CF54848F7F9),
    .INIT_57(256'hDBD9F9F94E93FBFBFBF94A024AF7FBFBDBDBDBDBFBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_58(256'h4C6CB191F9FBFBFBFBFBFBFBFBDBDBDBDBDBDBFBF9B1662066D3FBD9D9FBDBDD),
    .INIT_59(256'h26D5FBFBF9D5D5B3D7B5D5D7D56A028AB59573B5B59595B7FBFBDBDBDBFBF9D5),
    .INIT_5A(256'h248C8EAE24246CB16E08C22CFBFBFBFBFBF7B1242288CE26AE26AEAEE28ED124),
    .INIT_5B(256'hDBDBDBDBDBDBFDB9FBD348246AF5D10424B0F7D34A91F9FBFBFBD9DBFBD72A04),
    .INIT_5C(256'h8A48B3D9FBFBD74C48B0D0248CF52624F5B3D58A048EF7F9FBDBDBDBDBDBDBDB),
    .INIT_5D(256'hD5F36AE024B1AE0448F5FBDBD9FBDBDBFBF7462448F78A4468F16802AEF5F5F3),
    .INIT_5E(256'h6A266AF7D7D9B7D9F9B54C4CB38E0424B3B597B795D7F9F9F9F9FBFBFBD94EE8),
    .INIT_5F(256'hB14A6AF58C46D3D1048CF7B0D34604F5F9FBFBFBB72CE66CD5F7D30426B0F7F7),
    .INIT_60(256'hDBDBDBDBDBDBFBFBDBFDFDD9D34A286ED5D36A4A6CB3D56A6C48AEF3284AF7F9),
    .INIT_61(256'hDBFBD7E8E60AD7F9F9F76A246AF7F9FBDBDBDBDBFBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_62(256'hB326E428F9FBFBFBFBFBFBFBFBDBDBDBDBDBDBD9FBF78A4266AEF9F9D9FBDBDB),
    .INIT_63(256'h46D3FBFBFBFBF9F7B38ED5F9F76A248AF9F9F9D7D7FBFBDBDBDBFDBBDBDBFBF9),
    .INIT_64(256'h68F5F7F54826D3F9F748046EF9FBFBFBD9F9F7AE4444448AF5AE4A6A48AEAC44),
    .INIT_65(256'hDBDBDBDBDBDBFBFBF9D54A0446D1F12446D1B32806B3FBD9FBFBDBDBFBD74A24),
    .INIT_66(256'h66244AB5FBFBB52644ACCE226AF54868CE488A8A248ED7D7B9DBDBDBDBDBDBDB),
    .INIT_67(256'h70D5B146248888244AB3D7B9B9B9B9D9FBF7480448F58A4468AC4442888A6868),
    .INIT_68(256'h6A2448D3937193B7FBF9F9FBD7902646D3D9D9D9B7D9F9B391B3F7FBF9930AE6),
    .INIT_69(256'h902646F38A46D1D3268C8E26AC4626D5D7D9D9FB932C2A286EB18C22468CD3B1),
    .INIT_6A(256'hDBDBDBDBDBDBFBDBDBDBFDD96E0426F5F58C248AAEB16A02AC48ACF5284AF7F9),
    .INIT_6B(256'hDBFB710A2A2A9193B5D56A2448D3B5B7979797B9DBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_6C(256'hD5480428F9FBFBFBDBDBFBFBFBDBDBDBDBFBDBD9F9F588426468F5FBF9FBDBDB),
    .INIT_6D(256'h44AEF9FBDBFBFB932804AEF5D36A448AF5D591284AF9DBDBDDDBDBDBDBDBFBF9),
    .INIT_6E(256'h46F5F9F52626B1F7F768248EF9FBFBFBD9FBF9F58A4424AEF7F58E26248A6664),
    .INIT_6F(256'hDBDBDBFBFBFBFBFBD9F7D34A26AEF12224D18EE406B5FBB9DBDBFBD9FBF96A24),
    .INIT_70(256'h440406B3FBF9F7B04688AA248CF548688C6A6846268EB37395D9FBDBDBDBDBDB),
    .INIT_71(256'hB3B3D3D1682488AEB1939575759597B9FBF748246AF58A4468AA4466AC684424),
    .INIT_72(256'hAC246AF9D9D9D9DBFDFBFBFBF98E2426F5F9FBFBFBFBD508064CB5D9F9B593B3),
    .INIT_73(256'hF58C44EE6844D3D1466A8C68684448B39393B5FBFBD9F7D5D5F5D12446D0F7F7),
    .INIT_74(256'hDBDBDBDBFBFBFBFBFBDBDBD98E0448F5AE6A446AF3AE4804CE468CF52848F7F9),
    .INIT_75(256'hDBFBB7D7D7D7D7D7D7D5482446D3D7D9B9B9D9D9DBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_76(256'hD74A044AF7FBFBFBDBDBDBFBFBFBDBDBDBFBFBF9D5F388426444B1FBFBFBDBFB),
    .INIT_77(256'h446AF7FBDBFBFB700626AEF7D56A2468F7D54A264AF9DBDBDBDBFBDBDBDBFBFB),
    .INIT_78(256'h46F3F7F32624D3F7F568248EF9FBFBFBFBD7D5B068442448D5F9F56A26AC6620),
    .INIT_79(256'hDBDBFBFBFBFBFBF99393F7B1268CF12444D08E0408B7DBDBDDDBFBD9FBF94A24),
    .INIT_7A(256'h8C4A4AF7FBFBF9F7686666468CF54846F3F5CE2268F7F9D9F9FBFBDBDBDBDBDB),
    .INIT_7B(256'h93B5F9F9B04646AEF7FBDBDBDBDBDBDBFBF7482468F58A228AD16AAEF38A2466),
    .INIT_7C(256'hAC046AF9F9FBFBDBDBDBFBFBF98E2646D3B5F9F9FBFB9306246CB5D7FBFBFBF9),
    .INIT_7D(256'hF7AE44A86646D3F3248CF7F38A24D0F7F7F9F9FBF9F9D76E8EF5F32426AEF5F7),
    .INIT_7E(256'hDBDBDBFBFBFBFBFDFBDBFDFBD54646F526684646F3AEAE6AD1468CF5286AF7F9),
    .INIT_7F(256'hDBDBDBFBFBFBFBFBF9D5264446F5FBFDDBFBFBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized21
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFDFFDFFFFFFFFFFFFFFFFFFFFFFFFFF7FBFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFEFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFE7FFFFFFFFFFFFFFFFFFFFFFFF7FFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFDFFFFF),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'hFFFDFFFEFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F),
    .INITP_0D(256'hFEFDFFFFFFFFFEFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFF),
    .INITP_0E(256'hFFFFFFFFFFFF7FFFFFFFFBFFDFDFFFFFF7FFEFFFFFFFFFFFFFFF7F7F7FFEFFFE),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FFEFFFEFFFFFFFFFFFFFEFF),
    .INIT_00(256'hD74A044AF7FBFBFBDBDBDBFBFBFBFBFDFBD9B56E91F3884264226AF7FBFBDBFB),
    .INIT_01(256'h466AB5FBDBDBF9B30646D3F9F78A248CF9F98F044AF9FBDBDBDBDBDBDBDBFBFB),
    .INIT_02(256'h24CEF3AE2424AEF3D348248EF9FBFBF9B54C4A2422868A046CD5F78E26AE8822),
    .INIT_03(256'hDBDBDBDBDBFBFB93EA0AB5F78C6ACE4444CEF36A4CD7B9B9DBDBDBFDFBF94846),
    .INIT_04(256'hF5D5B5F9FBFBFBF9AE444442ACD54846F5F5F12266D3B3D7FBFBFBDBDBDBDBDB),
    .INIT_05(256'h084AD5D5F5AC462691F9FBD9FBFBDBFBFBF7482448F78C226AF5F5F7F56A0268),
    .INIT_06(256'h88226AF9FBFBFBFBDBDBFBD9F9902626484AB3F5F9FBD528248CF9FBFBFBD993),
    .INIT_07(256'hF9D346644466F3F322AEF7F5AC24ACD3B1F7F9F9F9D770E626AED022246A8C8C),
    .INIT_08(256'hDBDBDBDBDBDBDDDBDBDBFBD78F2446F36AAE4626F38ED3D5D5488CF5284AF7F9),
    .INIT_09(256'hDBDBDBFBFBFBFDD9F990264446F5D9DBDBFBFBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_0A(256'hD74A044AF7FBFBFBDBDBDBFBFBFBFBFBB56E2A2AD5F768446444268EF9DBDBDB),
    .INIT_0B(256'h8AAE90FBDBFBF9D50426AED3D368246AF5D36C046AF9FBDBDBDBDBDBFBDBFBFB),
    .INIT_0C(256'h46D3F7D12626AFF5D548246EF9FBFBFB9306244466A8CCAC6C6CD38C26AE6822),
    .INIT_0D(256'hDBDBDBDBDBFBD94C0A2C6EB3B08AAA4444AAAED0B0B39597B7D9DBDBFBF96A26),
    .INIT_0E(256'hF7FBFBFBD9D9FBF9D3446442CEF54666D18C8A44446A064CF9FBDBDBDBDBDBDB),
    .INIT_0F(256'h6E6CB390D38A46022870F9FBFBFBFBFBFBF928064AF78C026AF59191F78C2446),
    .INIT_10(256'h662266D3F7F9F9FBFBDBFBD9FB8E06488C4A4AB1D5F9F748028CF7FBDBDBD94E),
    .INIT_11(256'hF9F78A226488F3F3228AB08C8A44684806B3F9D9FBD74E0604688A0246CEAE46),
    .INIT_12(256'hFBFBFBDBDBDBDBBBDBDBD76E264466F1D3F346268E6CB3F9D5286CF5284AF7F9),
    .INIT_13(256'hFBDBDBDBFBFBFBD9F96C6A4646D5D9DBDBFBFBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_14(256'hD7480448F7FBFBFBDBDBDBDBFBFBF9F54A0606B3F9F7682488AC4628D5FBDBFD),
    .INIT_15(256'h8CF593FBD9FBF9F50426AEB1B1684468D3B16A246AF9FBDBDBDBDBDBDBDBFBFB),
    .INIT_16(256'h48F5F9F32604D3F9F76A068EF9FBFBDBD76C2488CC8644CED38E8E4804AE6802),
    .INIT_17(256'hFBDBDBDBDBDBF9D7B5B7D7D5F7AEAA42444446F3F5D7B7D7D9F9FBFBF9F76A24),
    .INIT_18(256'hF5B573B7FBFBB7D7F5888642CCD068888A486844668A0406F9FBDBDBDBDBDBDB),
    .INIT_19(256'hF7F7F7D7D76A24466A2871F9FBFBFBFBFBF7280648F58C026AB128E6B08C2468),
    .INIT_1A(256'h884446686A91B3F7F9F9FBFBF96E048CF7B0064CF9FBF74624AEF9FBDBD9FBF9),
    .INIT_1B(256'hB5F7D1446486CEF0648A6A264844AC460490FBFDD9FBF96C242266448AF5F7F3),
    .INIT_1C(256'hFBFBDBDBDBDBDBDDDBDBD7936A4424F3F3CE66248C8E6EF7D5488CF5264AF7FB),
    .INIT_1D(256'hFBFBDBDBDBDBD9FB934AAE2244B1FBDBDBDBFBDBDBDBDBFBDBDBDBDBDBDBDBDB),
    .INIT_1E(256'hF5482448F7FBFBDBDBDBDBDBDBFBF76C24046CF9F9F76A0268F5B0E64CD9FBDB),
    .INIT_1F(256'h6CF9D9FBD9FBF9F50426D3F7F78A026AF7F78C046AF9FBDBDBDBDBDBDBDBFBFB),
    .INIT_20(256'h68F5F9F54604B3F7F76A248EF9F9FBFDFBF7D5F5CE8824248ED5F78C26AC6802),
    .INIT_21(256'hFBDBDBBBDBDBF9F9FBFBFBF9F78ECE42424424AEF7FBD9FBFBD9FBF9918C4624),
    .INIT_22(256'h6E705072D9FB93B3F5686462AA464446F3D3AE2466AC2606F9DBDBDBDBDBDBDB),
    .INIT_23(256'hF791D5F7F98E0266F18E0A2ED7FBFDFBFBF9282448F58C028AD18C4CB14A0424),
    .INIT_24(256'hAC444444020628B3FBFBFBFBF98E044AF9B3064CF9F9F748248CF7FDFBDBFBFB),
    .INIT_25(256'h91F5CE2264888A68448AD0D08C24CE682490FBD9FDFBFBD78A4464426AD5F9F9),
    .INIT_26(256'hFBFBFBDBDBFDDDDBDBFBFBF9B14626D1F3AA66228CD34AD3D3488CF30648F7F9),
    .INIT_27(256'hFBDBDBDBDBDBFBFB4E2AD346248EF9FBDBDBFBDBDBDBDBFBDBDBDBDBDBDBDBDB),
    .INIT_28(256'hF5482448F7FBFBDBFBDBDBDBDBDBD5260226D3F9FBF76A2448F5F790084CD9FB),
    .INIT_29(256'h6CF9FBFBD9FBF9F72626D3F9F78A266AF7F78C044AF9FBDBDBDBDBDBDBDBFBFB),
    .INIT_2A(256'h46F5F5B106E491F7F76A048CF5D7B7FDB9D9F9B3AECEF126068EF78E26AE6802),
    .INIT_2B(256'hFBDBDBDBDBDBFBFBFBD9FBF9904ACE444244226AF5FBDBFBFBFBFB71E4264466),
    .INIT_2C(256'hF9FBFDFBFDFB6E6CAE464466ACAC6602D3F7D32468CE2606F9DBDBDBDBFBDBDB),
    .INIT_2D(256'hB3066CB3D58E46028CF7930C2EB7FBFBFBF9282468F58C028AF5F9FBF7900628),
    .INIT_2E(256'h8C4488CC6804E4B3FBFBFBFBF948248EFB93E44EF9F9F74824AEF9DBDBFDFBF9),
    .INIT_2F(256'h4A8E8A224488CE8A246AF7F76C24CECC248EFBDBFBFBDBFBD36844228CFBF9F9),
    .INIT_30(256'hDBDBFBFBFBD9FBFBDBDBFBFBD54826F36A8ACC0068F12668AE266AF3064AF7F9),
    .INIT_31(256'hFBDBDBBBDBFBF9D5284CF5AE246CF7FBDBDBDBDBDBDBFBFBDBDBDBDBDBDBDBDB),
    .INIT_32(256'hF5482448F7FBFBFBFBDBDBDBDBFBB5E4044AD7FBF9D5482268F7FBFB700A93FB),
    .INIT_33(256'h6CD9DBDBDBFBF9F526268ED3AE48246AB16E48044AF9FBFBDBDBDBDBDBDBFBFB),
    .INIT_34(256'h48B3B5B36E9093B5B148044AB39397DDDBFBF9080448D3F7904A8E6A24AE6602),
    .INIT_35(256'hFBDBDBDBDBFBFBFBFBFBF9D5286CF32444862404B3FBFBFBDBDBFB956EAE4646),
    .INIT_36(256'hF9F9FBD9FBFB8E02242468686ACE68246CF9D3E26AD04628F9FBDBDBDBDBDBDB),
    .INIT_37(256'h060426D5D591284890F9FBDB9595D9FBFBF7282468F58EE46CF7F9F9F96E064C),
    .INIT_38(256'hAE2468F5B12A4AF7FBDBFBFBF748248CF9B3064CD7B3F548248CF9FBDBFDFBD7),
    .INIT_39(256'h4A0424246868AECE4424D3F98E24CECE248EFBFBD9FBD9FBF78C44026CF7F9F9),
    .INIT_3A(256'hDBFBFBF9B591D7FBFBDBDBFBF76826F3268CCE4468F166248C488EF7082AF7F9),
    .INIT_3B(256'hFBFBDBDBFBF9D348E491F9F50648D5FBFBDBDBDBDBDBDBFBDBDBDBDBDBDBDBDB),
    .INIT_3C(256'hF5482448F7FBFBFBFBDBDBDBDBFDD506E64ED9FDD9F78A2268F7FDFBFB932C95),
    .INIT_3D(256'h6AF9DBDBDBDBFBF76A48B1F7F56A044AF7F791064CF9FBFBFBDBDBDBDBDBFBFB),
    .INIT_3E(256'h28D7F9FBFBFBFBFBF76A046ED7D9BBDBD9FBB32824246AF5F7D5D54A04AE6822),
    .INIT_3F(256'hDBDBDBDBDBDBDBFBD9D991E6E891D5286AAE4A2893D9DB97DBDDFDD9F9F76A24),
    .INIT_40(256'hF9FBF9F9F9F96C242246D1F56C8EAE26B3F7D30468AC2606F7FBDBDBDBDBDBDB),
    .INIT_41(256'h280448F7F9F9B5D5F9FBDBDBFBFBDBDBD9F748026AF7D54CB3F9D9F9F76CE44A),
    .INIT_42(256'h8E246AF7F9D7D7F9D9D9D9FBD54824D0D5B0248CF56C6A26268EF9DBDBFBFBD7),
    .INIT_43(256'h46224468F5D16AD18C6CF5F7AE22AC68268EF9F9F9D9D9F9D548460426B0F7F7),
    .INIT_44(256'hDBFBFBD728E42AD7FBFBFBF9D34824D16CB0F34446CE4624F5F7F7F96E6EF9F7),
    .INIT_45(256'hB7FBFBFBF7B1680228D5F9F98E046EF9F9FBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_46(256'hD74A2448F7FBFBFBDBDBDBDBDBFBF9704EB5DBDBFBF78A2268F7FBFBFBF9B571),
    .INIT_47(256'h8AF7FBFDFBFBF9B1486CF7F9F78C046CF9F9F991B5FBFBDBDBDBDBDBDBDBDBFB),
    .INIT_48(256'h28FBFDFDDBFFFDFDF94AE693FBFDDBFBF9D58EAE8C68064AD3F7F790068E6844),
    .INIT_49(256'hFBFBFBFBDBB9BBFDB9752E0C300EB9B7B7F9FBFBB9DDFDECFFFFFFFF53F96A24),
    .INIT_4A(256'hD3D5B3B3F9F96C4668CFF5F7F5B1B0D3F7F7D30244484806F5FBDBDBDBDBDBDB),
    .INIT_4B(256'h6C0448D1F9F9FBFBD9DBDBDBFBFBDBDBD9F748446AF7F9F9F9B57191B06A0428),
    .INIT_4C(256'h8E266AF9F9FBFBF9D995B7FBAE4646D06C4A246AD1CE2402266CF9FDDBD9FBF9),
    .INIT_4D(256'h48468AF3F7F7D38EB0D5F7F7AE224648486EF9FBD7B3F9F76A4624486A0690F5),
    .INIT_4E(256'hDBDBFB90060406D7FDFBD9934A4644ACF5F5D326268E4624F5F9F9FBF9D7F9F7),
    .INIT_4F(256'hD9F9F9D56C4646048FF9FBFBD5282AD7FBFBDBDBDBDBDBFDFDDBDBDBDBDBDBDB),
    .INIT_50(256'hF74A2446F5F9FBFBDBDBDBDBDBFBFBF9F9DBDDDDFBF78A4468F7FBFBFBFBFBD9),
    .INIT_51(256'h8AF9D9DBDBFBB74C064AD5D7F56A268CF7D7D7D7D7D9FBDBDBDBDBDBDBDBFBFB),
    .INIT_52(256'h26D5D9B931FDDBDBD72C4EB7FBBBDBFDB54A0648CEF38E282A8ED5912A8E6822),
    .INIT_53(256'hDBFBFBDBDB75B9B9959595B5DB51B95351B9DBB9319999DBDBDBDBDD75959124),
    .INIT_54(256'h284A2828D5D76EAECFF3F5D5D7B3B3F7D5D38C24246A8E06D5FBDBDBDBDBDBDB),
    .INIT_55(256'hB306266AF7F9F9FBDBDBDBDBFBFBDBDBF9F7484446F5F9D9F9D795916C482626),
    .INIT_56(256'h6C0468D5F9FBFBFBFBB56ED36A026AF5906C2646466A8A26262AD7FDDBDBFBF9),
    .INIT_57(256'h6CCEF1F3F5F7F7B0D3F5D5D38A0226D34A4CD7F9F7B0B08E462448D3D54C4C70),
    .INIT_58(256'hDBFBFB8E040428F7FBFBF9D7AF66468AF3F5B36C8EB22826D5F9D9DBDBF9F9D7),
    .INIT_59(256'hFBD791262422246AD5F9FBFBF9B30A2CD7FBFBFBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_5A(256'hD7482646D1D5D9D9DBDBDBFBFBFBF9FBFBDBDBDBFBF76A2468F7FBFBFBDBDBDB),
    .INIT_5B(256'h8AF9DBDBDBDBB791B1B3B5B5F568026AF5D5B5B5B5D7DBFBFBDBDBDBDBDBFBF9),
    .INIT_5C(256'h48D5FBFB0EFDDBDBB92EB7B7D9B975FD952A2624468CD5D58E4C6E7070F58C24),
    .INIT_5D(256'hDBDBDBFBDBDBDB732AE4066ED79353FF53B9DD53DDB931DBFDFDFDFD97B78F26),
    .INIT_5E(256'h26040406D5D74C6A68686A6C4C6A6C284C4A462448B1D52891F9DBDBDBDBDBDB),
    .INIT_5F(256'hD54826048C8EB3D5D9DBDBFBFBDBDBDBFBF74824248EB5B5F9FBFBF9D5D38E4A),
    .INIT_60(256'h4A04462891D9FBFBFBB528482426B0F9F9F7906A0448D148E42AB5FBDBDBFBFB),
    .INIT_61(256'h486A68486C6C6A6A6C4A6A6824266CF9B12AD5FBD74A48240426B1F7F9D7B590),
    .INIT_62(256'hDBFBFBB30426B1F9F9F9FBF9F78A248CF3F7F9B5F9B52806B3F9FBFBD9FBFBD5),
    .INIT_63(256'hF9D76C04242448D5F9D9FBFBF9F9B50A4ED7FBFBFDDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_64(256'hF74A2446484C93B7DBDBDBFBFBDBD9FBFBFBDBDBFDF96C046AF7FBFBFBDBDBDB),
    .INIT_65(256'h8CF7D9FBFBD9734CD5F7F7F9F76AE46CF9F9F9FBF9FBFBFBDBDBDBDBDBDBFBF9),
    .INIT_66(256'h0693FDFDB9FFFDFD975353FDB9B99953FBB56C4824244AB1F5F5D5B5D5F96C04),
    .INIT_67(256'hDBDBDBDBDBDBFBF9B14A8FF7F9F9EAFF75BBDD779953757555FDFDDD997571E4),
    .INIT_68(256'hB06C484AF7F990260426262604042606E4042648D3F7F9914CFBDBDBDBDBDBDB),
    .INIT_69(256'hF78E04262626B1D7FBFBDBDDDBDBDBFBFBF76C2424066EB5F9F9FBFBF9F9F7D5),
    .INIT_6A(256'h8E28260691FBFBFBF9B32624046AF7FBF9F9F9D58EB1F7D3284CD7FBFBDBFBFB),
    .INIT_6B(256'h4A0426042606040606040426488ED5F9F74EB5F9D5282624048EF7FBF9FBFBF9),
    .INIT_6C(256'hDBFBFBF7086EF7F9FBFBFBFBF98C04466AB3F9F9FBB708E4B3F9FBFBFBFBFBF9),
    .INIT_6D(256'hFBF9D54A0428B1F9FBFBFBDBDBDBD9B59571B7D9DBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_6E(256'hF96E2424044CB7B9DBDBDBFBDBDBDBFBFBDBDBB9FBF96CE24AD7FBFBFBDBDBDB),
    .INIT_6F(256'h6CF9F9F9F99308C64EB5B7B7B54AE64CD5B5B5B7B7B7D9DBDBDBDBDBDBFBFBFB),
    .INIT_70(256'hC473B9DB97DDDDDDB7530EFFB953BBCAFDFBD9B3AE6A26066CB1D5F9F9F94CE4),
    .INIT_71(256'hDBDBDBDBDBDBDBD9F9D5F7F9D7F9730EEE77BDFF7755DB97ECFDDBDB7753FB2C),
    .INIT_72(256'hF9F7D5B5F9F9F76E28282A284A4A4A6E4C6EB1F7F9F9F9FB50D9DBDBDBDBDBDB),
    .INIT_73(256'hFBD54C06E408D5F9FBDBDBDBDBDBDBFBFBF9B2E40428B3F9FBD9FBFBFBD9F9F9),
    .INIT_74(256'hD74CE64AD5FBFBFBF96EE60428D5F9D9FBD9FBFBF9F9D7F9D5D5F9FBFBDBDBFB),
    .INIT_75(256'hD54A282828284A284A6C6EB1B3D7F9F9F9B5B5FB93E404266CD7FBFBFBFBF9F9),
    .INIT_76(256'hFDDBFBFB6E91F9FBFBDBDBFBF9900606E6D7FBFBFBD94E2AB5FBFBDBDBDBFBFB),
    .INIT_77(256'hFBD9FBD791B3F9FBFBFBDBDBFDDBFBFBF9D793B9DBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_78(256'hFBD76E280893FBFBDBDBDBDBDBDDDBDBFBDBDDDBFBFB90E64CD9FBFBDBDBDBFB),
    .INIT_79(256'h4ED9FBFBF991700C5073737370702E4EB59393739373B7DBDBDBDBDBDBFBFBFB),
    .INIT_7A(256'hC853DBD97599DBFBB75311FFDB33BBCCFFDBD9FBF7D7B3702A2A0A4E93D993E6),
    .INIT_7B(256'hDBDBDDDBDBDBDBDBDBFBD9D9FB73B9BBBBDDFDFFDDDDDBDBEEFDDBDB775375B7),
    .INIT_7C(256'hD9FBD9FBFBF9F9F9D7D5D7D5F7F7D7D7FBF9F9FDB9FBDBDBB9D9DBDBDBDBDBDB),
    .INIT_7D(256'hFBF9D7B57092F9FBDBDBDBDBDBDBFBDBF9F9D7B3064CD7FBFBFBDBDBFBDBDBDB),
    .INIT_7E(256'hF9D792D5F9F9FBD9F92C086ED5F9FBB9D9FBDBDBDBFBFBFBD9FBFBD9D9FBDBFB),
    .INIT_7F(256'hF9F7B5F9F7D5F7F7F7F7F9D7F9F9D9FBF9F9D9FB95088EB1F7F9D9D9FBFBFBF9),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized22
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFEFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFEF77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFBFDFBFBB72EB7FBDBDBDBDBD9D76E086EF9FBFBFBD9F9D7FBDBDBDBFBDBFBFB),
    .INIT_01(256'hB9D9FBDBFBD9FBFDFBDBFBDBBBDBDBD9FBFBFBB7DBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_02(256'hDBDBD9D7D7DBFBFBDBDBDBDBDBDDDDDDDBDBDBDDD9FBF993B7FBDBFDFBDBFBFB),
    .INIT_03(256'hD9D9FBFBF9F9F9D9FBFBFBD9D9D9FBD9F9F9D7D9D9D9FBFDDBDBDBDBDBDBDBDB),
    .INIT_04(256'h0E53DDDB7775DDDBD95399DD55DD9997FDDBDBDBFBF9FBF9D7B7B5B7B5D9F9F9),
    .INIT_05(256'hDBDBDBDBDBDBDBDDDBDBDBDBDB31BBCC9977DDDD0EFFDDFDEEFDFBDB7755DB75),
    .INIT_06(256'hDBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_07(256'hFBFBFBFBFBFBFBFBDBDBDBDBDBDBDBFBFBFBFBFBFBFBFBFBDBDBDBDBDBDBDBDB),
    .INIT_08(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBDBDBDBDBDBDBDBDBFBFBFBFBDBDBDBDBDB),
    .INIT_09(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F9FBFBFBFBFBFBFBFB),
    .INIT_0A(256'hDBDBDBFBFBD9DBDBDBDBDBDBFBFBFBFBFBFBFBFBFBDBFBFBFBDBDBDBDBDBDBFB),
    .INIT_0B(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBFBFBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_0C(256'hDBDBFBFBFBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBFBFBFBFBDBDBDBDBDBDBDB),
    .INIT_0D(256'hFBDBDBDBFBFBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_0E(256'h9755DDDD9775FDDBDBDBB9DBBB7577FFDDDBDBDBDBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_0F(256'hDBDBDBDB9755FFFFFFFFFFFFFFFFFFCCDDDBFFFFEEBBDBDBEEFDDBDB9753DDDB),
    .INIT_10(256'hDBDBDBDBDBDBDBFBFBFBFBFBFBFBFBFBFBFBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_11(256'hDBDBDBDBFBFBFBFBDBDBDBDBDBDBDBFBFBFBFBFBFBFBFBDBDBDBDBDBDBDBDBDB),
    .INIT_12(256'hDBDBDBDBDBDBFBFBFBFBFBFBFBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_13(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBDBDBDBDBFBFBFBFBFBFBFBFBFBDBDBDBDBDBDB),
    .INIT_14(256'hDBDBDBFBFBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_15(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_16(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_17(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFDDB30DBFFFFFDDDDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_19(256'hDBDBDBDBDBDBDBDBDBDBDBDBDB7577FFFDBBB9DB0E99BBBB33DBFFDB9755DBCA),
    .INIT_1A(256'hDBDBDBDBDBDBDBFBFBFBFBFBFBFBFBFBFBFBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_1B(256'hDBDBDBDBFBFBFBFBDBDBDBDBDBDBDBFBFBFBFBFBFBFBFBDBDBDBDBDBDBDBDBDB),
    .INIT_1C(256'hDBDBDBDBDBDBFBFBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_1D(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBDBDBDBDBDBFBFBFBFBFBFBFBFBDBDBDBDBDBDB),
    .INIT_1E(256'hDBDBDBFBFBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_1F(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_20(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_21(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_22(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_23(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDDDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_24(256'hDBDBDBDBDBDBDBFBDBDBFBDBFBFBDBFBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_25(256'hDBDBDBDBFBFBFBFBDBDBDBDBDBDBDBDBFBFBFBFBFBFBDBDBDBDBDBDBDBDBDBDB),
    .INIT_26(256'hDBDBDBDBDBDBFBFBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_27(256'hFBFBFBFBFBFBFBFBFBFBFBFBDBDBDBDBDBDBDBDBFBFBFBFBFBFBDBDBDBDBDBDB),
    .INIT_28(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_29(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_2A(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_2B(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_2C(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBFBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_2D(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_2E(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_2F(256'hDBDBDBDBFBFBFBFBDBDBDBDBDBDBDBDBDBFBFBFBFBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_30(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_31(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_32(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_33(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_34(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_35(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_36(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_37(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_38(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_39(256'hDBDBDBDBDBFBFBFBDBDBDBDBDBDBDBDBDBDBFBFBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_3A(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_3B(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_3C(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_3D(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_3E(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_3F(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_40(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_41(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBFBDBDBDB),
    .INIT_42(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_43(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBFBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_44(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_45(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_46(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_47(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_48(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_49(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_4A(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_4B(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_4C(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_4D(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_4E(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_4F(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_50(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_51(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_52(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_53(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_54(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_55(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_56(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_57(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_58(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_59(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_5A(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_5B(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_5C(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_5D(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_5E(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_5F(256'hDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3
   (DOUTA,
    clka,
    ENA,
    addra,
    dina,
    wea);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input [15:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire CASCADEINA;
  wire CASCADEINB;
  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h053BE21FFFF87BFFFE17FFFFFFFE40009BFFFFFFFE041DFFFF017FCB9FFFFFFF),
    .INIT_01(256'hFE3FFFFFFFFFFFFFF1FFFFFFFE8111FFFFE0FCF39FFFFFFF00001FE3F7880000),
    .INIT_02(256'hC03FFFFFFE17C1FFF81FFCFF83FFFFFF00000FFFDFD800000187829FFFF0F7FF),
    .INIT_03(256'hF88FFFFFE3FFFFFF000CFFFF1F800E818D8790CFFFC467FFFE1FFFFFFFFFFFFF),
    .INIT_04(256'h01DFFFFF0F000FE10F87905FFFCAE3FFDEDFFFFFFFFFFFFF800FFFFFFE37C3FF),
    .INIT_05(256'h1F9FEE1FFFE803FFDEDFFFFFFFFFFFED0007FFFFFF97E7FFF80FFFFFFFCFFFFF),
    .INIT_06(256'h0E000000000000000D83FFFFFF87FFF7F8077FFFFF87FFFF83FFFFFF1F100FEC),
    .INIT_07(256'hFFFBFFFFFF87FFF7FF047FFFFD9BFFFFFFFFFFFFFF780F1FFFFFFF7FFFF603FF),
    .INIT_08(256'hDFFC7FFFFC3BFFFFFFFFFFFFFCFE4703FFFFFF7FFFC6F0000000000000000400),
    .INIT_09(256'hFFFFFFFFF3FE6401FFFFFFFFFFC7D000000000000000009FFFFBFFFFFF87FFFF),
    .INIT_0A(256'hFFFFFFFFFFC60040FFFFFFFFFFFFFE0000FBFFFFFFC1FFFFFBFCFFFFFC23FFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFF9BFFFFFFF1FFFFFFFFFFFFFE03FFFFFFFFFFFFF1FF3C00),
    .INIT_0C(256'hFF2BFFFFFFFFFFFFFFFFFFFFFF03FFFFFFFFFFFFF3FEBE00FFFFFFFFFFF4FFFF),
    .INIT_0D(256'hF8FFFFFFFF87FFFFFFFFFFFFFFFE6B80F3FFFFFFFFF6FFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFE7FEB7CEBFFFFFFFFE2FFFFFFFFFFFFFFFFFFFFFF3BFFFFFFFFFFB9),
    .INIT_0F(256'hE7FFFFFFFFC2FFFFFFFFFFFFFFFFFFFFFFBBFFFFFFFFFFF9B8CFFFFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFBBFFFFFFFF1FF03E07FEFFFFFFFFFFFFFFFFFFFE3C237F),
    .INIT_11(256'hFFBBFFFFFFFF9FF63FAFFEFFFFFFFFFFFFFFFFFFFE0463FFFFFFFFFFFFC1FFFF),
    .INIT_12(256'h3FBFFFFFFFFFFFFFFFFFFEC7FF807FFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'hFFFFFFE4FFC03FFFFFFFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFBBFFFFFFFFDFFE),
    .INIT_14(256'hFFFFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFF3BFFFFFFFFFFFF7FD7FFFFEFFFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFBBFFFE7FFFFFFFFFCFFFFFEFFFFFFFFFFFFFECFFF6BDFF),
    .INIT_16(256'hFFBBFFFFFFFFFFFFFFFFFA7FEFFFFFFFFFFFFFFFFFFB79FFFFFFFFFFFFF1FFFF),
    .INIT_17(256'hFFEFFFFCFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFF1FFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFBBFFFFFFFFF7FF),
    .INIT_19(256'hFFFFFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFBBFFFFFFFFF3FFFFEF7FFCDFFFFFFF),
    .INIT_1A(256'hFFFFFFFFFFFFFFFFFFBBE3FFFFFFF7FFFBFFFFFFFFFFFFFFFFFFFFF9FF8FFFFF),
    .INIT_1B(256'hFFFBDE0FFFFFFFFFFFCFFF73FFFFFFFFFFFFFFF9FF2FFFFFFFFFFFFFFFC1FFFF),
    .INIT_1C(256'hFFC7FF39F7FFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFFF3FFFFFFFFFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFFBC07BFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFAB4005FFFFDFFFCFC7FF3CE7FFFFFF),
    .INIT_1F(256'h9F9FFFFFFFFFFFFFFFCB0005FFFF9FFF8FEFFF9FFFFFFFFFFFFFFFFFFF7FFFFF),
    .INIT_20(256'hFFCB0005FFFFDFFFDFFFFFFDDFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFF1FFFF),
    .INIT_21(256'hFFFFFFF8DFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFF1FFFFC378FFFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFEFFFFFFFFFFFFF1FEFFC270F7FFFFFFFFF7FCCBC005FFFFFBFF),
    .INIT_23(256'hFFFFFFFDFFC1807BF8F3C3FFFFDFFF83FCCBC005FFFFFBFFFFFFFFF0DFFFFFFF),
    .INIT_24(256'hEFC7DFFFFFF7FF43FFD3C005FFFFFFFFFFFFFFF4DFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hFFD3C005FFFFFFFFFFFF3FFBFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFCFFE18079),
    .INIT_26(256'hFFFF7FFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFDFF7FE18078FFC3DFFFFFFFFE73),
    .INIT_27(256'hFFFFBFFFFFFFFFFFFFF9FDFFBFF1E03FFF83FFFFFFFFF807FDD3C005FFFFFFFF),
    .INIT_28(256'hFFF9FFFFDFD1F80FFF87FFFFFFFFE1FFF8D3C005FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_29(256'hFBCFF87FFFFE83FFFCD14001EFFFFFFFF9FFFFFFFFFFFFFFFFFFFFFE7FFFFFFF),
    .INIT_2A(256'hFCDE00012FFFFFFFFAFFFFFFFFFFFE7FFFFFFFFE3FFFFFFFFFFAFAFFDFD0DC41),
    .INIT_2B(256'hFADFFFFFFFBFDDBFFFFFFFFA3FFFFFFFFFFA0B7FEFF0FFE0FFFF207FFFF800FB),
    .INIT_2C(256'hFFFFFFF37FFFFFFFFFFBF39CF7B0EFFCFFFF2F7FFFE46007DCDB00055FD3FFFF),
    .INIT_2D(256'hFFFBF3DEF631FFF8EF9F6265CF013002F1DF80056FDDFFFFFB7FFFFFFF3FDBBF),
    .INIT_2E(256'hFFFEC0F2780F700750DB876577DE6FFFFFFFFFFFFF1FFBBFFFFFFFFFFFFFFFFE),
    .INIT_2F(256'h18D985F4EFDEFFBFFEBFFFFFFF2FFBDFFFFFF1FFFFFFFFFFFFFBF3EEF9B1FFFF),
    .INIT_30(256'hFEDFFFFFFFEFFBDFFFFFE9FFFFFFFFFFFFE3F2E3FFB1FCFFFFFE007260FFF30C),
    .INIT_31(256'hFFFFE7FFFFFFFFFFFFD3F3F9FFB1FFFFFFFE000701FFDE0800D887F2FBF2006F),
    .INIT_32(256'hFFD3F3FBFFB1FFFFFFFC001FE7FFFC1042D891F8FE38007FFEDFFFFFFFFFFBEF),
    .INIT_33(256'h87FC027FE7FFFCE2E6D88879F9B0006FFCEFFFFFFFFFFBEFFFFFF7FFFFFFFFFF),
    .INIT_34(256'hFED889F8FCB0005FBC7FFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFEBF3FBFFB1FFCF),
    .INIT_35(256'h363FFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFBF3FBFFB1FF0107FC07E7AFFFEDF3),
    .INIT_36(256'hFFFFFFFFFFFFFFFFFFFBFBFBF391FF005FFD8FF7EFFFEF03F8CD8FF8FA30003F),
    .INIT_37(256'hFFFBFBF9E391FF005BFDFEF3F7FFFA03F1CD9CF0B9A0007FF75FFFFFFFFFF7FB),
    .INIT_38(256'hEBFDF001707FFF00F1CE81F07DA0005FF71E7FFFBFFFF7FBFFFFFFFFFFFFFFFF),
    .INIT_39(256'h59CE82FCEC20005F761E7FFFEFFFF7CFFFFFFFFFFFFFFFFFFFFBFBF9E391F807),
    .INIT_3A(256'h77DFFFFFEFFCF7C3FFFFFFFFFFFFFFFFFFFBFBF9F191DC0F8BE310008A003D1C),
    .INIT_3B(256'hFFFFFFFFFFFFF83FFFFBFBF9C2A19F0F7B8C038C8F0BFCFE00CE97707820002F),
    .INIT_3C(256'hFFFBFBF9C1918004701E1FBC03881000C06E0D307EA0002FED9FFFFFF1FD7FEF),
    .INIT_3D(256'h260E6FE3CFDFE001C0C707F07FA0001FEF9DFFFDF3FF6EF6FFFFFFFFFFFFC7BF),
    .INIT_3E(256'h86E703F87FA0001FFF9FFFFF8FF7EFE7FFFFFFFFFFFE1CBFFFFBFBF9E1970026),
    .INIT_3F(256'hFF9F7FFFC7FBEFDBFFFFFFFFFFFCFDBFFFFBFBFDF1B700022E60FFFBFFDFE011),
    .INIT_40(256'hFFFFFFFFFFF8FFBFFCFBFBFDF3B700009FF07FF9FFFFB1FBF66701FCFFA0001F),
    .INIT_41(256'hFB7BFBFDE3A7000007E27FFDFEFFD1FFF8678788FFA0001FDF1B7FFFE1E667FD),
    .INIT_42(256'h01A03FFDFEFFF1EFDC278780FFA0001FC71AFDFFFFFE6BFE7FFFFFFFFFFAFFBF),
    .INIT_43(256'h4F670FD3FFA0000FCE1BF8FFFFFBE1FF3FFFFFFFFFFAFFBFFBBBFBF9E7B719CE),
    .INIT_44(256'hCF127DFE7FB3E5FFDFFFFFFFFFF8FFBFF7BBFBF9E7971DEFF1983FC6FEFE63F7),
    .INIT_45(256'hFFFFFFFFFFF8FFBFF7FBFBF9EF971DE7FE983FDBFE7F40F3E6670F80FEA0002F),
    .INIT_46(256'hF7DBFBF9FF2733FFFFFE0B0FFE7E0063E4E70804FEA0003FCF123FFFFFEDEBFF),
    .INIT_47(256'hFFFC0806FEDC4009FC67080DFEA0006FCF17DFFFFFFFDD7FFFFFFFFEFFF8BFBF),
    .INIT_48(256'hFC66082DDCA000478FBEDFFFFFFF5DBFFFFBFFFD7FFC1FBFF7DBFBF9FB2733FF),
    .INIT_49(256'h87C6FFFFFFFFDEBFFFF9FFF6FFFF1F3FFFABFBF9CF2703FFFFFE0023FC3F0001),
    .INIT_4A(256'hFFF9FFF8FFFC0F3FF7A3FBF98F2703FFFFFC00027CA6000CFC663875FEA000C7),
    .INIT_4B(256'hF793FBFDCB071FFFFFFC00026C00001E0065BC7DFEA000BFC2E4DFFFFFFFDF3F),
    .INIT_4C(256'hFFF800008400107F00E3B9FDF0A001BFC060DFFFFFEF9FBFFFF03FF0EFF81F3F),
    .INIT_4D(256'h01E399FDFAA0011FD030DFFFFFEF8CFFFFE007EBEFE01F3FF392FBFDC3071FFF),
    .INIT_4E(256'hD8205FFFFFFFDBFEFFF00026FFF00F3FF30AFBFDC337171FFFF8000106001F7F),
    .INIT_4F(256'hFFE0C027FFE18FBFCF8FFBFDCB370307FFF80001103EEF7813E19DEDFEA0011F),
    .INIT_50(256'hDE1FFBFDCF370387FFF00010000EFE0001F9A7F5E0A000EFCFE11FFFFFDFCBFC),
    .INIT_51(256'hFFF088001F000000006FC29580800057C7E39FFFFFEFD7ECFFE767FFFBA1EFBF),
    .INIT_52(256'h004FFFA180800069C7E3FFFFFFEFD7B9F27FF3FFE180FFBFB5F9FBF9C3370B2F),
    .INIT_53(256'h2201B25FFFBFDB81F0FFF8FFC85FBFBFAF07FBFDE337137FFFF3002618000001),
    .INIT_54(256'h90F9FC0F8147FC7FAF07FBFDC3371FC7FFF7000200000003004FFFAC82A00066),
    .INIT_55(256'hA7A7FBFDC33301887DF0000000000103206FFF3D82E0003721C1231BE75F1AC0),
    .INIT_56(256'h3CFA0000001020C7007CFF3987400003DCC0E00320F0500380387F000103F0FF),
    .INIT_57(256'hC9FF3FBBC7480029CFC0200118EFF004807FFF80034FE1FFBFAFFBFDC1378400),
    .INIT_58(256'hD9401800FF83D805AFFFFFF01F0FFDFFBF81FBFDC3378000380200008010D847),
    .INIT_59(256'hAFFFFFFB1F1FFCFFFF1FFBFDC337000000000000E010967F91FF9F9FC7580020),
    .INIT_5A(256'hDF5FFBFDE3771D0801CC00E03C00197E13FAEC4EC31800147E8040237983DC06),
    .INIT_5B(256'h11DD00F80F3813BF03F2F4974118001C7F408001E103FEE3F2FFCDFF7F3BFE7F),
    .INIT_5C(256'h07E2F82B411000043FA000000102FFF8BCE0C43FFFFFFF3FF7FFFBFDCF771C98),
    .INIT_5D(256'hBFA000202002FBE03E78EC1FF5FFFFCFFFFFFBF9CF7738C000400C0807FA33CF),
    .INIT_5E(256'h0E7CFE0FE1FFFF07EE7FFBF9C377B88000403EC0007FFFFF07E2FCE44330000C),
    .INIT_5F(256'hF6DFF9F9C373880000043BC3001FFFF00EDFEEE7C1600018FF8180600003E987),
    .INIT_60(256'h00383BE700013F300E4EF523C3600030FF9C80580003E0C72FFFFF07913FDF80),
    .INIT_61(256'h0C7EED26C32000307F9A8080000760FFBFFFFFE3183FFFF0FEFFF1FBD3738180),
    .INIT_62(256'hFFD981042004677F8E0FFFF37C1FFFF9FFFFFBF99373C01860087FFC06019FE0),
    .INIT_63(256'hE00E6FD1F9E780FBFFFFFBFA93738080E4A0EFE000008FC01C1E09F4C3200041),
    .INIT_64(256'hFF7FF9FA8173988070300C0F900003F41B7CFFE8C3200005FFD9820C200C2F7F),
    .INIT_65(256'hFF3801FFC0C006FE125ED1B4A720000BFFDCC21C200C2FBFE00667D1F7F1F863),
    .INIT_66(256'h034382F89F200086FFD8821E301CBDDB0B802FD7DFFAFFF1FF7FF1FBF5731907),
    .INIT_67(256'hFFDC029E38FEB66EC0FF83CFFFFBFFF87F6FC1FBFF50018FE7CCCF7060E73FDF),
    .INIT_68(256'h300FFE0E3FFFF7FE7FDFDFB9FE701B77FFFFDC00109DB90A042C1B08402000CF),
    .INIT_69(256'h1BBFFF01FE201F307CFF34240101F27A00C53FF80C20000FF3DC533EBAFEB660),
    .INIT_6A(256'hBD5F64370181EBDE001FC11C0720001FE1C1291F3FFFAB710B803FEF7FFDF3FC),
    .INIT_6B(256'h083F00061E6000DFE0C2313F3FFDA3E0A7FFE02E2FFEFFF319FF7BC1F432DFB1),
    .INIT_6C(256'hF8E3703F1BFBA5A097FFFF8E27FFFF0718DFFFC060065FB39BEFE003001DE3CE),
    .INIT_6D(256'h83FFF98B83F8FF03D85C000329061FB706FFE0000F0DD7C00D3800019E6000CF),
    .INIT_6E(256'hF850002FC80E1E36053DF3FF2F0F0FD82CE00001CF20034FF323E6FE1FF8A790),
    .INIT_6F(256'h14BAE801E3CB3FA5B94000002530065FF107AEFE8FF8B610E1FFDC871C07FF7B),
    .INIT_70(256'h820000000490063FF1E30FFD0FFEB700F1FFDCCDFFFFFE7DFD4FFF9866997C26),
    .INIT_71(256'hE2E71F7803FE2308B0FFFCC07FFFFE7BBBE7FF77C618602408B7F007D3C21B8F),
    .INIT_72(256'hF0FF7DE61FFFFF700F534DEFF203100011B7C00CC7C39F4D3C00000006CC049F),
    .INIT_73(256'h07DA1BDFD707000A970F8007C0CB9F3F90000000074E1DFFC0430F7103FEB388),
    .INIT_74(256'h80BF001F807F9F3B78000000034FFDBF001907DD13FEB1C0386368EF0FFFFF66),
    .INIT_75(256'h4200000001AFCB3E0048D8BFEBFC11C09C6260EE2FFF1F8783CBF77FEFE66000),
    .INIT_76(256'h005CD47FFCFC01C0C00002071FFF0FBF83FFFECBFAFF7010111C001F00BD081C),
    .INIT_77(256'hE00002239FFF0FFF9317DD8FFFF0782A01DC1FEFE0BF0C3C5000000001FD0BF8),
    .INIT_78(256'hB8D7BFEFFE7FD952A98E0FF3E07B845E5006000000DDE370025FEEFFFF7F11E0),
    .INIT_79(256'h6F8E02B18C721E7250144000007FE3E00E97FDFFFFBF6DE1EB913E778FFE9FFF),
    .INIT_7A(256'h90283000003FE2E07F97F3FFFFCB7DF3FA10702697FFFFFF3F4F7FBFEEAF4C01),
    .INIT_7B(256'hFFD8EFFFFFEF65F3E0005E0623FFFFFC7ECEF7BCFF3E09016F0E003C00127D72),
    .INIT_7C(256'h0040A00B3FFFFDE87FEFF7387FE60C196D1C403C00290D6000302000003DE1E1),
    .INIT_7D(256'h7F6DFBB87FFFBC806C4C9C18F8192960506F11C0001F23C7FFD87FFFFFEF61FB),
    .INIT_7E(256'h603C38398C1C49E0505180080018CB87FF901E7FFFF101F30001802B2FFFEDF3),
    .INIT_7F(256'h5070000400100BCFFF981A079FF55C630000840267FFFFC7FF2DEBC07FF71E40),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFD3C583F37F9BD830000070F08FFFF5F5F2FE7F93BF7FF24654120C0401A69C0),
    .INIT_01(256'h00000F8BD3FFFF687E7BF61C3FD7FF1420E78002800879C0506000020013E77F),
    .INIT_02(256'hFE77C404E2FFFF0E89E7800030083180500000020003E6FFF23A247E37FE9981),
    .INIT_03(256'h87EFC401000A638050318000000C36FF827DB9CC93FE588000000FDB81FFFF67),
    .INIT_04(256'h5081C00000081DFF004CB8C80DFD18000001CF87A9FFFF63FEF7E9F1DF04F009),
    .INIT_05(256'h004F0E0C04FE9900E003FF0733FFFFE3FFEFD7F3F297FC1DC5CF471980024500),
    .INIT_06(256'hE0073876B51FFFF9FFEF9FE7E99FBF0EC4DF871D8002070020CCC00000001DF0),
    .INIT_07(256'hFFEFDF17FF9DDF05C09F870080031E00209C000000000BE0004F580006FED980),
    .INIT_08(256'hC0080F00C0032600080E83C0000C2BE0144B4A00037FF0C0FC001CFF383FFF7D),
    .INIT_09(256'h080CE3C0000003F81C5EC200017EF0C0FC021CFFB81FFFFDFFE79F605B9A2D1B),
    .INIT_0A(256'h1A44CC200127E861FC033FF7903FFFF2FF971D847F310A1FE0CB0F3AC0013400),
    .INIT_0B(256'h1F017FF7906FFFFEFED7B182CF30B1FFC58B0F3E40008C001089F980000003FC),
    .INIT_0C(256'hFE073C02E3F64BFFE3820C3F30013C0004800400000157FE1A450860002F107F),
    .INIT_0D(256'hE36300FFB00080000A81F600000057FC1C0510A0008A0CFC7F01FF97C0FFFFF6),
    .INIT_0E(256'h05820C000800B7F008804940000708F8FFC9FFF784FFFFFE3FA7380033EF8FFF),
    .INIT_0F(256'h08835B40006708F8FFDBEFE787FFFFFF5FD6381B33CFBFFFE6E3008230009800),
    .INIT_10(256'hFFFFFFE7FFFFFFEF0C773C0759CEFFFFE4C900FE30042800028398001000E7C0),
    .INIT_11(256'hAFF7BC1064CBFFFFE8FE00382008B0000100C0001000E7800B015F80001428F8),
    .INIT_12(256'h61FC027CE008A0000141F1000000EF0E0A605F80000768F8FFFFFFC73FFFFFFC),
    .INIT_13(256'h000032000001EFFE1A4071800005F4FFFFFF6F8E37FFFFFC8BF7B83034CFBFFD),
    .INIT_14(256'h000062800011ACFFFFFE77BEF9FFFFFDCFF5D83FF8CEDFFC31F807FFE0144000),
    .INIT_15(256'hFFFF7FFB7DFFFFFE6F19781FB1FCBFFDA7F68000902560000041E2000002DFFF),
    .INIT_16(256'h2B09780167FC5FDC677580001046B00000438000001EBE0710004200000480FC),
    .INIT_17(256'hF67F0030004E880000060C0000043C0310000300000438F8FFFDFD787FFFFFFC),
    .INIT_18(256'h8006DB000004BC0010000040000A3CF8FFFFFEE87FFFFFFC2F7BFC0033FCFFFF),
    .INIT_19(256'h20003000000E147CFFFAFEC87FFFFFFC36F0FE003FFA87FFEA4E004B086A1001),
    .INIT_1A(256'hFEFCFDE8BFFFFFCC12759400AF9F5BFFF81000330062660082A6F8000047DE02),
    .INIT_1B(256'h1A6518003F9E9DFFE250000000634A0001A10000014A3F18200031F00004947F),
    .INIT_1C(256'hEE2820000019240003D0000004687FE16100328800141462FFF47980BFFFFF0C),
    .INIT_1D(256'h07E800001E41FBA28600371000258660FFEE7BB8FFFFDFC81C350F007E1C66FF),
    .INIT_1E(256'hC00007C00017CE60FFEEBFB8FFFFD1C803780FE03C0446FFEA180000000AB700),
    .INIT_1F(256'hFF69BF3FFFFFF1000238CFF17C0CDE7FEA203000001A23000BF0000020577F12),
    .INIT_20(256'h021AC1F9F80F12A7E0E83000001B208007F8000045A77F160400070000181E60),
    .INIT_21(256'hF0F030000C0001801FFD00004FD1FF8625000C0000EC2A20DB4D9FBFFFFFF000),
    .INIT_22(256'h17FEE0005F0FDE020E001F0000F00F2097C656BF9FFC7180028B67FED07FE023),
    .INIT_23(256'h0A00168000385F30C74EBABFFFFC300003BB9DFFE1FFE08DF0E16000002441A0),
    .INIT_24(256'hC7C7BAFFF3F6300003914DFFE07FE01FF5E0E0081C62A1A007FFF8000F0FFE0A),
    .INIT_25(256'h03DD4EFF803FC03BF5A060083CF441A807FF60004E283F000400120000105D30),
    .INIT_26(256'hFC6460003C0000900FFF8000F0201F0040006E000038BC20FFC3ABF3F1FE3000),
    .INIT_27(256'h0BFFA00086F007034400100000393CE0FFC02DFBF1FF300003E20EFF983F804D),
    .INIT_28(256'h0000A00000393EE0DD804D7BF7FF180000D20B7FD81E807DFD1F48000CC03050),
    .INIT_29(256'hFD803E79E7FF1800004F09FFF010004FFC0348000681016805FFA00083F80302),
    .INIT_2A(256'h004359FFF010004AFC19C80C1C0FFE2203FFD00080B8790A7A004300003A3EE0),
    .INIT_2B(256'hE62C88000C1F7C9901FFC0003809FD1E4A0002C0000E77C0FF83BC7DC7FFCC60),
    .INIT_2C(256'h80FFE0001F8CFE7E46000840000043803EA6F97DCFFFCC600078E7FFF01E001C),
    .INIT_2D(256'h8200188000000180BEA7787FCE7FCE7002E9A7FF90080008E9278C000CA7F04C),
    .INIT_2E(256'h83C72CFFFD7FEE7800CEF7EF20000054EE1D8C000D302006403EE4000FC67E7C),
    .INIT_2F(256'h00CC73FFE800005272BC06001C400E33407E63008FF3BE3CA300688000000000),
    .INIT_30(256'h701E04006140018E402731009DF29E1C01807980000000008339BC7FDFBFFE78),
    .INIT_31(256'hC017788047FB3E9C0000318000000000D3C78CFFDFBFFF7800C81933F8000061),
    .INIT_32(256'h584018C000000000F37AFF7FFDFFFFF800801D0EE8000020B03A040082C0008F),
    .INIT_33(256'hF2787A7DFDFFFFF80180079EE0000001D833C0610C400041C00BF84023FA5E98),
    .INIT_34(256'h0000039FE0000001AC2750703DC00060E009BCA0105A63814C03344000000000),
    .INIT_35(256'h0A8D0010FD800030E0059F1008190F81C607706000000000E670383DD5EFFFFC),
    .INIT_36(256'hE0040F0C04CD1C00021FE03000100000E660081C59BFFFFC000801FFE0000000),
    .INIT_37(256'hC01FB030001000008CC0209CD597FE7C001000F8E3800000056EB861F590E018),
    .INIT_38(256'h3C00201CE197FFDC201207FC8F80000008AEC302F5C92108D00046230BC80E20),
    .INIT_39(256'h000E03E06C0000000040641FF7E010016002230F7FCE06E1C0D8381000200000),
    .INIT_3A(256'h000F667FE75C00014801E10FD5E617A06DE03020000000001C0000394893FF08),
    .INIT_3B(256'h4800F047E2F004002F0060000000000018000000A8C3FF38000A00FFE8000000),
    .INIT_3C(256'h98EE60000000000018000000984BFF3C000A007E40000000005FF6FFC4800000),
    .INIT_3D(256'h08000042504FFF0C000A000600000000003808FED4A000101000B8470F904F20),
    .INIT_3E(256'h0008000600000000001C0CFEC4400000040018678F8003D1185E600008000000),
    .INIT_3F(256'h001E68FEC460000003001667EF83F9D0201FE000E00000000C000223554FFF0F),
    .INIT_40(256'h09800727A3834500E03BE001C00000000C0003215547FFDD0008000700000000),
    .INIT_41(256'hD03BC007C000000000000102755FFFFD0000000600000000307E99FEE4000000),
    .INIT_42(256'h00000007B957FFEF00010000000000002EB2FDFDC701000049C00487F5E30100),
    .INIT_43(256'h00040000800060002E035BFBC5810000CBCF8FC612738000FE7B800780000000),
    .INIT_44(256'h1C0313FB81B30000C9806F86427F8001C77100078000000030000185A84FFFEE),
    .INIT_45(256'h8300033E817FC003A3F000000000000030000045A12FFFE400050078C0006000),
    .INIT_46(256'h8FC9000000000000B2000040ADE7FFFC0005007C180040000C0323FF20340000),
    .INIT_47(256'hF0000120AC07FFFC000403BF00103818060313FF208680008600039E807FC007),
    .INIT_48(256'h00040F3FE2601C00020393FF10040000020003B000FFE005DF00000000000000),
    .INIT_49(256'h0107C1FE04800000020003A5007FE009FF0000000000000090000020A207FFFD),
    .INIT_4A(256'h090003420023F009FE00000000000000000000E46303FFFF00000C0FF0000000),
    .INIT_4B(256'hEC000000000000000004007C7307FFFF8000000FF800003F0107E9EEE282C000),
    .INIT_4C(256'h020C01FC7137FFEF0000818FFC09000F8187E4FDC8C89880090003040017F009),
    .INIT_4D(256'h0001B31FFA0300010006F0FBD4DBE0C0058003000009F901E6C0000000000001),
    .INIT_4E(256'h0000323FD64410C0018001000004EB8BD3C00000000000007E7C007CF13FFFEF),
    .INIT_4F(256'h0580000000021FCF01400000000000017E78007CF17FFFEF0001A363F4F00000),
    .INIT_50(256'h00C00000000000037CC1907EF0AFFFFE0003C6C3FC6800000000308B9745E000),
    .INIT_51(256'h1981F03FE1B7DFEF000386C3EF38000000003C478F000E000100000000006FE6),
    .INIT_52(256'h00039387FDB000000030160BEF8C1E003000000000001FF20000000000000003),
    .INIT_53(256'h001007623F84120041000000000007C80000000000000003190EF07FF537FDEF),
    .INIT_54(256'h01800200000001A80002C000000000010E7E587E367FFCEF00029037FF900000),
    .INIT_55(256'h0005D000000000010632A87F37FDFCED8001D07CFFE00000001803E553D40000),
    .INIT_56(256'h43100F3FFEFFFDEF8000007C7FC0000000080062C0D800063180060000000074),
    .INIT_57(256'h8002007D350000000004003260F87006770006000000003C0037E80000000001),
    .INIT_58(256'h0006001E21E0F0046F0006000000001C487FF0000000000141902C0E00FFFDEE),
    .INIT_59(256'h6E0006000000000E1BFEFB300000000170D83E1801FFFDE780000039FC000000),
    .INIT_5A(256'h3FFE7FF200000001F07FCE387C77FDF680000030200000000002001000340000),
    .INIT_5B(256'hF23E6E3DE01FFFFEC00060000000000000020018D78400024600060000000006),
    .INIT_5C(256'hC000700780C0000000000005CF8C000840000600000000071FFFC7F980000001),
    .INIT_5D(256'h000000064B1A0010440004000000000307FDCFF300000001F01F9F7FC00BFAFB),
    .INIT_5E(256'h40000C000000000107FF9FF980000001F807FFFFC027FFFF8000203F84000000),
    .INIT_5F(256'h02FF9FFF00000001F200FE7FE111DFFFC000203FC000000000008003D1E60020),
    .INIT_60(256'hF1001EEFD701FFFFE000103BC00000000000000187CC0040C000080000000000),
    .INIT_61(256'hA000003B8000000000004001CA0C0000C000100000000000007FFF9F80000001),
    .INIT_62(256'h00006000F80E0081C0002000000000000093FFDE00000003E00000CF8FC1FE7D),
    .INIT_63(256'hC000400000000000002FFFDC00000007E000000007D1EF3D8000003BC0000000),
    .INIT_64(256'h0013FF1E00000003C00000600FF8EF3D8000003FE0000000000270000DCE0101),
    .INIT_65(256'h820453E00FFAFFF98000001FE000000000063000066300018000000000000000),
    .INIT_66(256'h8000001F000000021F051800055882038000000000000000000600080000000F),
    .INIT_67(256'h0C5D0C0006C0DC0380000000000000000003800800000007800040C00FDAFFF1),
    .INIT_68(256'hC0000000000000000007801C0000001F000000001FD87BF18000080100000000),
    .INIT_69(256'h0003C0B40000001F000000003FE8D9EEC000080000000000043E040003DB1E03),
    .INIT_6A(256'h0000000076EE91FEC000000000000000E7FE020003D20E07E000000000000000),
    .INIT_6B(256'hC000000000000000E7FF030003C0018FE000000000000000007FF8080000003F),
    .INIT_6C(256'hEFFFE10007C0018FE000000000000000047FF9C00000001B000001A07CFF63FF),
    .INIT_6D(256'hE00100000000000002F7F1000000007F000000C07BFF0FFFC000000600000000),
    .INIT_6E(256'h00FFD0000000007FE30000406FFF7FFEC000000E80000000FFF7F18007C0019F),
    .INIT_6F(256'hE1C000007FFFFF3F8000000C00000000FBF3F88007CC0193E001000000000000),
    .INIT_70(256'h8000000C00000001FFFFFC0007CF03B3E001800000000000003E68000000007F),
    .INIT_71(256'hFFFFF40003C107E3E007000000000000001880000000003F01C000005F7FFF8F),
    .INIT_72(256'hE403000000000000000000000000003F018000000F7FBFFFF000000C00000001),
    .INIT_73(256'h000000000000007F01800000377F3FFFF8000006081800091FFE740003C007E1),
    .INIT_74(256'hE000001813FFBFE61C00000780000000FF3FEC1003008161F000800000000000),
    .INIT_75(256'h2C000007000000007F3EF81803F02031F00000000000000000000000000000FC),
    .INIT_76(256'h7BFFFC080360100FE011800000000000000000000000007CF20000000FFF3FFC),
    .INIT_77(256'h0061800000000000000000000000007EFFF0000003FE7EFFFC072000C0000100),
    .INIT_78(256'h000000000000007FFFE0200003FFFA3FFE032001C00000001BFFFC0C03F00000),
    .INIT_79(256'hEE0020000003F1E76F012003600000000FFCFC060358080000C5C00000000000),
    .INIT_7A(256'hFF00E001E00000000010F8079E78080001FFA00000000000000000000000007F),
    .INIT_7B(256'h00000009E00147DF1E01000000002000000000000000007F000000000000707F),
    .INIT_7C(256'h00003FFFFFFFFFFFFDFFFFFFFFFFFFFF0000000000001FE0AC00000000000000),
    .INIT_7D(256'hF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3FFFFFFFFFFFFFFF0003CB800),
    .INIT_7E(256'hFFFFFFFFFFFFFFFFFFAFFFFFFFFFFFFFFFFFFFFF03FB3EFFA600FFFFFFFFFFFF),
    .INIT_7F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEC1FFFFFFFEFFFFFFFFFFFFFFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:1],DOUTA}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'hFB9573D9F9D7D9DBFDDBDBDDFDFBFBFBFBDBDBFDDBDBDBDBDBDBDBDBDDDDDDBD),
    .INIT_01(256'hDDFDDBFDFBFBFDD9D9F9D9D7D5D391E897FBFBFDD9DBB7B7B7D5B5930C2FD9FB),
    .INIT_02(256'hDDDDDDDDDDDDDDBDDBFDFBFBD74E717171D5F58CAE8E93DBFDDDFFFFDDFFFDDB),
    .INIT_03(256'hDDDBFDFDDBD9FDFDFDFDFDFFFFDFDDDFDFDFDFDFDFDFDFDFDFDFDDDFDDDDBDDD),
    .INIT_04(256'hBDBDBDBDBDBDBFBFBDBDBFBFBDDFBDBDBDDDBDBDBDBDDDDDDDDDDDBDBDBDBDDD),
    .INIT_05(256'hDBDDDBDBB9DBFB7395D9FBFFBBBBBDDDDDDDDDDDDDDDDDDDDDDDDDDFDFDDDFDF),
    .INIT_06(256'hFFFFFFDDDDFFDFFFFFFDDBFBFBD7B5D7916E904A90D9DDDFDDDDDDDDDDDDDDDD),
    .INIT_07(256'hFBFBDBFBFDFFFDFDFDFDFDFDFDDBFDFFFFFDFDFBF9B592D7FBD9FBFDDDFFFFDF),
    .INIT_08(256'hFBFBFBF9D9FBFBFBFBD9D9F9FBFBFDDBD9FBF9FBFBD9FBD7F9F9F9FBFBFBFDFB),
    .INIT_09(256'hFBD9D9F9D9D9F9FBF9FBFBFBFBFBFBFBFBD9D9FBFBFBFBFBDBDBDBD9D9F9F9FB),
    .INIT_0A(256'hFB9573B7F9F9FBFDFDDBDBFBFBFBFBFBDBDBDBDBDBDBDBFDFDDBFDDDDDDDDFDF),
    .INIT_0B(256'hFFFFFFDBDBFBFBF9D9F9FBF9D7D5B573D9FDFDFBFBD99595D7B5B5D72F73FBFB),
    .INIT_0C(256'hFFFFFFFFDFDFDDDDFDFDD9B7B593B7D7D7F7B3B0D3B3B5FBFFFFFFFFDBDBFDFF),
    .INIT_0D(256'hFFFDFFFDDBD9FBFDFDFDFFFFDFFFFFFFFFFFFFFFFFDFDFDFDFDFFFDFDFDFFFFF),
    .INIT_0E(256'hDFDFDFBFBFBFDFDFBFBFDFDFDFDFDFDFDFDFDFFFFFFFDFDDDDDFDFDFDFDFDFFF),
    .INIT_0F(256'hDDFFFFFDFDFBFBD995D9FDDDDDDDDDDDDFDFDFDFDDDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFFDFBF9D7D7F7906E906C93FBFFFFFFFFFFFFFFDFFFFF),
    .INIT_11(256'hD9FBFBFDFDFDDBFDFDDBDBDBDBFDFDFDFDDBD9FBFBB594B79495D9FDFFFFFFFF),
    .INIT_12(256'hFBF9D9FDFBFBFBFBFBFBFBFBFBFBFDFDFBFBF9D9FBFBFBD9FBFBFBFBFBFBFBD9),
    .INIT_13(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFBFBF9F9F9),
    .INIT_14(256'hD99573737395D9FBFBDBDBD9D9FBD9D9D9D9B9DBD9DBDBFDFDDBFDDDDDDDDFDF),
    .INIT_15(256'hFDFDFDD9B7B7B7D9F9D9F9F9F9F9FBFBFDFFFDFDFDDB9595B7B7D7FBB7B7FBFB),
    .INIT_16(256'hFFFFFFFFDFDFDFDDFDFB955093D9FBFBF9F9B3B1D5D7B7DBFFFFFDDBB997BBFD),
    .INIT_17(256'hDDDFDDBBB9B9DBDBDBFDFFFFDFFFFFFFFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFF),
    .INIT_18(256'hDFBFBFBFBFBFBFBFBDBDBFDFBDDDBDBDDDDFDDBDBDBDDDDDDDDDDDDDDDDFDFDF),
    .INIT_19(256'hDDDBDDDBDBDBFBB77373D9FDDDDDBDBDDDDDDFBDBDBDBDBDBDDDDDDDDDDDDDBD),
    .INIT_1A(256'hFFFFFFFFFFFFDDFDFDFBD9B393B0D3F5B3B0B2B3B5FBFDDDFFFDFDDDDDDDDDDD),
    .INIT_1B(256'h92B5D9FBFDFDDBFDFDDBB9B9DBFDFDFDFDDBB9FDF9D7B7D7945095FBFFFDDFFF),
    .INIT_1C(256'hB7B595D9FDFBFBFBFBD9D9F9D7D7D7F9F9D7B5B7FDFDFDFBFDFBFDFBFBF9D994),
    .INIT_1D(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDFDFDFBFBD9D9D9),
    .INIT_1E(256'hFBD9B7955151B7D9FBFBF9F9F9D9D9D9D9B9B9DBD9B9DBDBDBDBDBDBBBDDDDDF),
    .INIT_1F(256'hFFFFFDFBB79371B5F9D9D7D9FBDBDBFDFDFDFDDBFDDBDBDBD9D9DBFDFDFDFBDB),
    .INIT_20(256'hDFFFFFDDDDDDDDDBFDFB722CB5FBFBD9FBFBD793B5D7BBDDFFFFFDFBD9B9DBFD),
    .INIT_21(256'hDFDFDDBBB9BBDBB9B9BBDDFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDD),
    .INIT_22(256'hBFDFDFBFBFBFBFBDBDBDBDBFBDBDBDBDBDDFDFDFDDDDDDDDDDDDDDDDDDDDBDDD),
    .INIT_23(256'hDDBB99DBFDFDDB73702E95FFDDBDBDBDBDBDBDBDBDBDBDBDBDBDDDBDBDBDBDBD),
    .INIT_24(256'hFFFDFFFDFFFFFDFDFDFBD7936E286ED3B0B2B2D7D7DBDDDDDDDDDDDDDDDDDDDD),
    .INIT_25(256'h939395D9FDFDDDFDFDDBB9D9D9FDFDFDFDDBDBFBFBD9F9F9B77295DBFDFDDDFF),
    .INIT_26(256'hB59373B7FBFDFDFBD7B5B7D7B5B5D5F7F9D593B7FDFBFDFDFDFDFDFBFBFBD792),
    .INIT_27(256'hFBFBFBFBD9D9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBDBFDDBB9B9D9D9D7),
    .INIT_28(256'hFDFBFDD9B7B7FBFBFBF9D5B3D5F9FBD9DBDBBBDBD9DBDBDBDBDBDBDBDDDDDFDF),
    .INIT_29(256'hFFFFFDFDD97371B7D9B795B7D9D9DBFBD9D9B9DBFDFDFDFDDDFDFFFDFDFDFDFD),
    .INIT_2A(256'hDFDDDDDDDDDDDDDDFDFB934ED7FBFBD9FBFBFBB5B7D9DDDFFFFFFFFDDBDBFDFF),
    .INIT_2B(256'hFFDDBB99BBDBDBB9B9DDFFFFDFFFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_2C(256'hBFDFDFDFBFBDBFBFBFBFBFBFBFDFDFBFBDBFDFBDDDDDBDDDDFDFDFDDDFDFDFDF),
    .INIT_2D(256'hDDDDBBDDFDFDDB977272B9FDDDBDBDBDBDBDBDBFBFBFBFBDBDBFDFDFDFBDBFDF),
    .INIT_2E(256'hFFFDFFFDFFFFFFFDFDFBFBD770284AD5D5D9FBD9D9DBFDFFFFDDDDDDDFDFDDDD),
    .INIT_2F(256'hB7B7B7FBFDDDDDFDFDDBDBFBFBFBDBDBFDFDFDD9FBFBFBD9D9D9D9FDFFFFFFFF),
    .INIT_30(256'hB59395FBFDFDFDD9B595D7D7B5B3B3D5D5D593D7FBFBFDFBFBDBFBFBFBFBD9B5),
    .INIT_31(256'hFBFBFBFBD9DBFBFBFBFBFBFBFBFDFDFBFBFBFBFBFDFDFDFDFDFDFDBBB9DBFBFB),
    .INIT_32(256'hFDFDFDFBFBFBD9F9F9D58F6D8FD5FBFBDBDBDBD9D9DBDBDBDBDBDBDBDDDDDFDF),
    .INIT_33(256'hFDFDFDFDFBB7B7D9D7B59595B7FBFBF9B7B7B7B9FDFDFDDDFDFFFFFFDDFDFDFD),
    .INIT_34(256'hDFDFDDDDDDDDDDFDFDFBB793F9FBFBD9FBDBFBF9D9DBFDFFFFFFFDDB9797DDFF),
    .INIT_35(256'hDDBDBBB9B8B8BB9898BBBD9B9BDFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_36(256'h9B9D9D9D9B7B9D9B9B9D9B7B7B9D9D7B7B7B7B9B9B9B9B9BBDBDBD9BBDDDBDBD),
    .INIT_37(256'h9B9BBBBBDDDBDBDB97B9DB99BB9B9B9B9B9B9B9B9B9B9B9B9B9B9D9D9D9B9B9D),
    .INIT_38(256'hFFFFFFFDFFFFFDFFFDFDFDFBD74E4EF9D9DBBBDBDBDBDDDDDDBDBDBDBDBDBDBD),
    .INIT_39(256'hD9DBDBFDFDBBDDFDFDDBFBFDFDDBDBDBFDFDFDDBFBFBFBD9D9DBFBFDFDFFFFFF),
    .INIT_3A(256'hD7D7F9FBFDFDD9B7B5B7F9D9D7D7D5B1B3B593D7D9FBFBFBD7B7D7F9FBFBFBDB),
    .INIT_3B(256'hFDFBFBFBFBFBFDFBFDFDFBFBFBFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFBFBD9),
    .INIT_3C(256'hFDFDFBFBFDD9B5D7D5AF8D6A4AB1F9D9D9DBDBD9DBDBDBDBDBDBDBDBDDDDDFDF),
    .INIT_3D(256'hFBD9B7FBFBDBD9D9B7B7B7B7B7FBB7B593D7B797FDFDDDFFFFFFFFDFFFFDFDFD),
    .INIT_3E(256'hDFDFDFDFDFDFFFFDFDFBD993D7F9FBFBDBDBDBFDFBFDFFFFFFDDFFDD9797DDFF),
    .INIT_3F(256'h76767676767676545476565456DDFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_40(256'h595959595959595959595939397B5B3939373737375657575779797979797779),
    .INIT_41(256'h79575757777777BBB9997757575757575959595959595959595959595959597B),
    .INIT_42(256'hFFFFFFFDFFFFFFDDFFDD9575D99472B774545454777777557757573757575757),
    .INIT_43(256'hFDFDFDFFFDDDFDFDFDFDFDFDFDFBDBDBFDFDFDDBDBFBFDDBB9DBFBFDFDFFFFFF),
    .INIT_44(256'hF9FBFBFBFBD9B5B5D7F9FBFBFBFBF78FB1D7D79393F9F7F7D5D3D5D5D7F9FBFD),
    .INIT_45(256'hFDFDFDFDFBFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFFFFFDFDFDFB),
    .INIT_46(256'hD9D9D9FBFBD9B5B5B18D8A6A6AB1F7FBD9DBDBDBDBFBDBDBFDDBDBDDDDDDDFDF),
    .INIT_47(256'hB7B795B7FBB9D9D9D9DBFBFBD9FB956FB3D7D9B9FDFDFFFFFFDFDFDFDFDDDDDB),
    .INIT_48(256'hFFFFDDDFDFDFDDFFFDDBB773B5D9FBDBDBFDDBFDFDFDFFFFFFFFFFFFDDDDFFFF),
    .INIT_49(256'h34545454543456341254347656DDFFFFFFFFDFDFFFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_4A(256'h5959595B7B7B5B59593939373739393717171737373737351435373436363434),
    .INIT_4B(256'h7B7979795757577777575737373737373739595939395959593959595B5B5B5B),
    .INIT_4C(256'hFFFFFFDFDFDFFFFFFDB95173D994745432345534355555555557351535353535),
    .INIT_4D(256'hFDFDFDFBFDFDFDFDFFFDFFFFFDFDFDFDFDFFFDFDFDFDFDDBB9DBDDFDFFFFFFFF),
    .INIT_4E(256'hFDFDFBFBB593B5B5D9FBFBFDFBFBF9D5B3F9F9B793F9D5D5D3D3D3B16F9193F9),
    .INIT_4F(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFDFDFDFDFDFDFDFDFDFFFFFFFFFDFDFDFD),
    .INIT_50(256'h97D9B7FBFBD9B5B5B18D8C8DAFD3F9FBDBDBDBDBDBDBDBDDFDDDDDDDDBBDDFDF),
    .INIT_51(256'hB7B5D9B7B795B7D9FBFBD9D9FBFB9571B7F9FDFDFFDDFFFFDFDFDFDDDDDDDBB9),
    .INIT_52(256'hFFFFDDDFDFDFDDDDFDFBB995B7B7B7D9DBFDDBDDDDFDFFFFFFFFFFFFFFFFFFFD),
    .INIT_53(256'h59595957595957795656567676DDFFFFFFFFDFDFFFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_54(256'h7D7D7D7D7D9F9D7D7B5B5B5B5B7D5D5B5B5B5B7B7B7B7B7B5959595959595937),
    .INIT_55(256'h9DBD9DBD9B9B9B9B9B9B7D7D7D7D7D7D7B7B7D7D7D7D7D7D7D7D7D7D7D7D7D7D),
    .INIT_56(256'hFFFFFFDFDFDFFFFFFDB995B9DB7696997779797959797979797B59597B797B59),
    .INIT_57(256'hFDFDDBB9FBFBFBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDFDFFFFFFFFFF),
    .INIT_58(256'hFDFDFDF99593B3D5F9FBFBFDFBFBFBFBB3B5D7FBD7D7B56F8FD3AFAFB1919171),
    .INIT_59(256'hFFFFFFFDFDFDFDFFFDFDFDFDFDFDFFFDFFFDFDFFFFFDFDFFFFFFFFFFFFFDFDFD),
    .INIT_5A(256'hB7D9D7FBFBF9D7D7B38F8DAFB1B3F9FBDBDBDBDBDBDBDBDDFDDDDDDDDBBDDDDF),
    .INIT_5B(256'hD9D7FBD7B5B7B7B7FBFDDBDBDDFDDBB9D9FDFDFFFFDDDDFFFFDDBDBDDDDDDB97),
    .INIT_5C(256'hFFFFDDDFDFDFDFDDDDFDDBDBD9B997B9DBFDBBDDDDFFFFFFDDDDDDFDFFFDFDFD),
    .INIT_5D(256'h7F9F9F9F9F9F9D9D9D9B345476DDFFFFFFFFDFDFFFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_5E(256'h9F9F9F9F9F9FBF9F9D7D7D7D7D7F7D7D7D7D7D7D7D7D7D7D7D9D9F9F9F9F9F7D),
    .INIT_5F(256'h9FBFBDDFBFBFBF9FBF9F9F9F7F9F9F7F7F7D7F7F7F7F7F9F9F7F9F9F9F9F9F9F),
    .INIT_60(256'hFFFFFFDFDFFFFFFDFDDBD9FBDD7679BDDFDFBF9F9F9FBFBF9F9F9D9F9F9F9F9F),
    .INIT_61(256'hD9FDFBD9D7F9FBDBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'hDDFDFDDB95B5B5F7FBFBFBFDFDFBFBB52C71D7D9D7D7F993B3D58F91916F9171),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFFFFFFFFDFDFDFDFFFFFFFFFFFFFFFFFF),
    .INIT_64(256'hD9FBF9D9D9FBF9F7D5B18F8F8FB5F9DBDBDBFBDBDBDBDBDDFDDDDDDDDDDDDFDF),
    .INIT_65(256'hFBFBF9FBF9D9B7D9FBFBFDFDFDFFFDFDDDFFBBBBDDFFFFFFFFDFDDDDDDDDDBB9),
    .INIT_66(256'hFFFFDFDFDFDFDDDDDDDDDDFDFBFDDBDBFDFDDBFFFFFFFFFFBBB9B9DBFDDBD9FB),
    .INIT_67(256'h3B3B3B3B3B395B5B7B9D565476DDFFFFFFFFDFDFFFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_68(256'h7D7D7D7D7F7F7D7D5D7D7D7D7F5D5D5D5D5D5D5D5D5D5D5D5B5B5B3B3B5B5B3B),
    .INIT_69(256'h5B9D9D9D9D9F9F7D7D7D7D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D7D7D7F7F7F),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFDDBDBFBDB76769B9D7B5B7D5D7D7D7D5D5D5D5D7D7D7D5D),
    .INIT_6B(256'hFBFDFBD79193D7B7DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hDFDDFDFDB7B5D7D7F7F9FBDBFBFDFBB593D7F9B5D7B5D7FBF9D593D7B5937151),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFFFFFFFFDFDFDFDFDFFFFFFFFFFFFFFFF),
    .INIT_6E(256'hDBFBD9F9FBFBD9F9D5B3918F93F9FBDBDBDBDBDBDBDBDBDDFDDDDDDDDDDDDFDF),
    .INIT_6F(256'hFBFBFBF9D7937195F9FBFBFBFDFFDDDFDFDD9999DDFFFFFFDDDDDDDDDDDDFDFB),
    .INIT_70(256'hFFFFFFFFFFDFDDFFDDDDDDDDFDFFFDFDFDFDFFFFFFFFFFDD9797B9D9FBB593F9),
    .INIT_71(256'h3D3D3D3D3B191939399D565476DDFFFFFFFFDFFFFFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_72(256'h7F7F7F7F7F7F7F7F7D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D3D3B5D5D5D3D),
    .INIT_73(256'h7D7D7D9D9F9F7F7F7F7F7D5F5D5F5D5D5F5D5F5D5D5D5D5F5D7D7D7F7F7F7F7F),
    .INIT_74(256'hFFFFFFFFFFFFFFFFDDDBDBDBB99956BD7B395B3D3B3B5D3B3B3B3D5D5D5D5D5D),
    .INIT_75(256'hFDFBD74F2C73D7B7DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_76(256'hFFFFFDFFFBD9D99393F7FBFBFBFBF9D5F7F7D5B5D7B5F9FBB5B7DBFDFBFB9595),
    .INIT_77(256'hFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFDFFFFFFFFFFFFFFFDFDFFFFFFFFFFFFFF),
    .INIT_78(256'hD9B7B7FBFBD9D7F9F7D5B5B5D9FBFBDBDBDBB9DBDBDBDBDDFDDDDDDDDBBDDDDF),
    .INIT_79(256'hD795B7FBB7939371B5F99573B7FDDDDDDFDDBBDDDDFFDDDDDDDDDDDDDDDDFDFB),
    .INIT_7A(256'hDFFFFFFFFFDFDFFFDFDDDDDDFDFDFDFDDBB9DBFDFFFFFFFDB997B9D9B79393F9),
    .INIT_7B(256'h5D5D5D5D3B1B3B3B5B7D367676DDFFFFFFFFFFDFFFDFDFDFDFDFDFDFDFDFDFDF),
    .INIT_7C(256'h7F7F7F7F7F7F7F7F7F7D7D7F5F5D5D5D5D5D5D5D5D5D5D5D5D5D3D3D5D5D3D5D),
    .INIT_7D(256'h5D5D7D7D7F7F7F7F7F7F5F5F5D5F5D5D5F5F7F5D5D7D7F7F7F7F7F7F7F7F7F7F),
    .INIT_7E(256'hFFFFFFFFFFFFFFFFFDDB97759999769D7B3B3B3D3D3D5D5D3D3D5D5D7D7D5D5D),
    .INIT_7F(256'hFDFDD95171B7D9DBDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized5
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'hFDFDFDFDFFFDD94F6FB3D5F9D7D9B3B1D3D5F7B5B5B5FBD951B9FDFFDBFDFDFD),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFDFFFFFFFFFDFDFDFBFBFDFFFFFF),
    .INIT_02(256'hD9B7B7FBFB97B7F9F9F9F9F9FBFDDBDBDBDBDBDBDBDBDBDDFDDDDDDDDDDDDFDF),
    .INIT_03(256'h7171B5F9D9D9B79395934F4FB5FDFDDDDFDDDDFFFFDF7777DDDDDDDDDDFDFDFD),
    .INIT_04(256'hDDDFFFFFFFDFFFDDDDDDDDDDDDFFDDDBB99597FBFDFFFFFDDBB7D9D79393B393),
    .INIT_05(256'h5D5B5D5D3B1B3B3B5B9D587898DDFFFFFFFFFFDFFFDFFFFFFFDFDFDFDFDFDFDF),
    .INIT_06(256'h7F7F7F7F7F7F7F7F7F7F5D7F7F5F5F5F5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D),
    .INIT_07(256'h7F5D7D7D7F7F7F7F7F7F7F7F5F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFDFD9775DBB977BD7B3B3B3D3B5D5D3D5D5D5D7D7D7D5D5D),
    .INIT_09(256'hFDFDDB97B7FBFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFDFDFDFFFDFDDB936F6F8F9171D5B3B3D3D5D7B5B5B5FBD9B9FDFDFDDBFDFDFD),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBBDBFBD7B7D9FBFBFB),
    .INIT_0C(256'hDBD9FBFBFBB7D9FBFBFBFBFBFBFBFDFDDBDBDBDBDBDBDBDDDDDDDDDDDDDDFFFF),
    .INIT_0D(256'h4F71D7FBFBFBF9F9D7712A4DD7FDFDDFDFDFDFDFFFDD9957BBDDDDDDFDFDFDFD),
    .INIT_0E(256'hDFDDFFFFFFFFFFDDDDDDDDFDFDFFDBB9B99573D9FDFDFDFDFDDBDBD995D7B54F),
    .INIT_0F(256'h5B5B5B5D5D3B3B5D5B9D787676DDFFFFFFFFFFFFFFFFFFFFDFDFFFFFDFFFFFDF),
    .INIT_10(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F5F5F5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D),
    .INIT_11(256'h7D7D7D7D7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F9F9F),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFDDDBFDB977BD7D5B3D5D5D5D5D5D5D5F5D7D7D7D7D7D),
    .INIT_13(256'hFFFDDDB9B9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFBFDFDFFFDFDFDFBD7916F6F6FB3D3D3D3D5D7D7D9DBFDFDFDFDDDFFFDFDFDFD),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDB95B7D7B593B5D7B595),
    .INIT_16(256'hFDFBFBB7D9DBFBFDFBFBDBDBDBDBDBDBDBDBDBDBDBDDDDDDDDDDDDDDDDDDFFDD),
    .INIT_17(256'h4F91F7FBD9D9D7D9F7B32C08B7FDFFFFDFDFDFDFFFFFDDBBFFFFFDDDFDFDFDFD),
    .INIT_18(256'hDDDDFDFFFFFFFDDDDDFDFFFDFDFDDBDBDBD9B7B7DBDBDBFDFFFDFDFDFBFBD971),
    .INIT_19(256'h5D5D5D5D5D5D3D5D5B9D787878DDFFFDFFFFFFFFFFFFDFDFDFDFDDDDBBDDDFDF),
    .INIT_1A(256'h9F9F9F9F7F7F7F7F7F7F7F7F7F7F7F7F5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D),
    .INIT_1B(256'h7D7F7D9F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F9F9F9F),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFFFFFFFDD97779D7D5B5B5D5D5D5D5D5D5F7F7F7F7F7F7D),
    .INIT_1D(256'hFFFFFDDBDBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'hD9FDFFFDFFFFFDFDFBD991B1B1D3D3B3D5D5D7FBFDFDFDFDFFFDFFFFFFFDFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDFFFFFFFFFDDB95B7D7B591B3D57173),
    .INIT_20(256'hFBFB9551B7FDFBFDFDDBDBDBDBDBDBDBDBDBDBDBDBDBDDDDDDDDDDDDDDDDDDDD),
    .INIT_21(256'h93D7F9F9D7D7B5B5F7D74FE895FDFFFFFFDFDFDFDDFFDDDDDDFDFDDDFDFDFDFD),
    .INIT_22(256'h99DBFDFDFFFDDBBBDBFDFDFDDDDDDDFBFDFBFBD9DBDBFBFDFFFFFFFDFDFBFBB7),
    .INIT_23(256'h7F5D5D5D5D5D5D5D5B9D787878DFFFFFFFFFFFFFFFDDDDDDFFDDDDBB9799DDBB),
    .INIT_24(256'h9F9F9F9F7F7F7F7F7F7F7F7F7F7F7F7F7D7F5D7D7D7D7D7D7D7D5D5D5D5D5D7D),
    .INIT_25(256'h7D7D7D7F7F7F7F7F7F7F7F7F7F7F7F7F9F9F7F7F7F7F7F7F7F7F7F7F7F9F9F9F),
    .INIT_26(256'hFFFFFFFFFFFFFFFFFFFFFFFFDD97779D7D5B5B5D5D5D5D5D5D7F7F7F7F7F7F7F),
    .INIT_27(256'hFFFFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_28(256'hDBFDFDFFFFFFFFFFFDFBD9D7D3D5F5B3F5B5B7FBFDB997FDFFFDFFFFFFFFFFFF),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFDFDFBFBF9D7B3F5D57195),
    .INIT_2A(256'hFDFB955197DBDBFDFDDDFDDDFDFDDBDBDBDBDBDBDBDDDDDDDDDDDDDDDDDDFFDD),
    .INIT_2B(256'hD9F9F9D7D7D7D7D5D7F7B34FD9FDFFFFFFDFDFDDFFFDDBB9B9DBFDFFFDDBFBFB),
    .INIT_2C(256'h53B9FDFDFDDBB9B9DBDBDBDBDDDBDBFBFBFBFBFBD9D9DBFDFFFFFDDBD9D9F9F9),
    .INIT_2D(256'h7F5D3B5D5D5D5D5D5B9D787878DFFFFFFFFFFFDFDDBDBBDDFDFDFDFDDBB9DB97),
    .INIT_2E(256'h9F9F9F9F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7D7D7F7F7D7D7D7D7D5D7D7D),
    .INIT_2F(256'h7D7D7D7F7F7F7F7F7F7F7F7F7F9F9F9F9F9F7F7F7F7F7F7F7F7F7F7F7F9F9F9F),
    .INIT_30(256'hFFFFFFFFFFFFFFFFFFFFFFFFDD97779D7D5B5B5D5D5D5D5D7D7D7D7D7D7D7D7F),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_32(256'hFDFFFFFFFFFFFFFDFDFDFBFBD7D5F5D5D5B5B7FDFD9755DDFDFDDDDDFFFFFFFF),
    .INIT_33(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFBD7D7D5F7D5D7D9),
    .INIT_34(256'hD9FBD973B7FBDBFDFDDDDDDDFDFDDBDBDBDBDBDDDDDDDDDBDBDBDBDBDBDDDDDD),
    .INIT_35(256'hFBFBD995B5D9D7F7F7D5B5B7FFFFFFFFFDFFFFFDDD77B9750F95FBFDDBDBB7B7),
    .INIT_36(256'hBBDBDDDDFFDFDBDBDBDBDBDBDBFDFDFDFBFBFBFBD9DBDBFDFFFFFDB9B7B5D7F9),
    .INIT_37(256'h7F7F5D5D5D5D5D5D7D9D787676DFFFFDFDDDBBDDBBBBBBDBFDFDFFFFFFFDFDB9),
    .INIT_38(256'h9F9F9F7F7F7F7D7D7F7F7F7F7F7F7F7F7F7F7F7D7D7D7D7F7F7D7D7D7D7D7D7D),
    .INIT_39(256'h7D7D7D7D7D7D7F7F7F7F7F7F7F9F9F9F9F9F9F7F7F7F7F7F7F7F7F7F7F9F9F9F),
    .INIT_3A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFD97779D7D5B5D5D5D5D5D7D7D7F7F7F7F7D7D7D),
    .INIT_3B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3C(256'hFDFDFDFFFFFFFDFFFDFDFDFBF9B5D5F7B5D7DBFDFFFFFDFFFDBB99DBFFFFFFFF),
    .INIT_3D(256'hFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFDFDFDFBFBB7B5D7D7D5FBFB),
    .INIT_3E(256'hB7D995B9DBFDFDFDFDDDDDDDDDDBDBDBDBDBDBFDFDFDDDDDDDDDDDDDDDDDFDDD),
    .INIT_3F(256'hD9D9D99595D7D7D7D5D7D77599FFFDB999DBFDBBFDB9FDDB95D9FBB7D9D95351),
    .INIT_40(256'hFDFDDFDFDFDFDBFDDBDBDBBBB9DBDBFBFBFBFBF99597FDFFFFFFFDFBD9B7B7B7),
    .INIT_41(256'h7D7F7D5D5D5D5D5D7D9D787876DDFFDDFDDBB9DDDDDDFDFDFDFDDDDDFFFFFFFD),
    .INIT_42(256'h9F9F7F7F7F7F7F7F7F7F7F9F7F7F7F7F7F7F7F7D7D9F9F9F9F9F9D9F7D7D7D7D),
    .INIT_43(256'h9F9F9F9F9F9F7F7F7F7F7F7F7F9F9F9F9F7F9F7F7F7F7F7F7F7F7F7F7F7F9F9F),
    .INIT_44(256'hFFFFFFFFFFFFFFFFFFFFDDDDFD97779D7D5D5D7D7D7D7D7D7D9F9F9F9F9F9F9F),
    .INIT_45(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_46(256'hFDFDFDFFFFFFFDFFFDFBD9FBFBF9D7D7F9FDFFFFFDFFFFFDDDDBB9DDFFFFFFFF),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFFFFDFDFFFFFFFFFFFFFFFFFDFDFDFDFBD9B7D7F7D7D9FD),
    .INIT_48(256'h959595FBFBFBFDFDFDDDDDDDDDDDDBDBDDDBDBFDFDFDDDDDDDDDDDDDDDDDFFDD),
    .INIT_49(256'hB9DBDBB99797B7B7B5D7B77599FFDD9795B7D997FDFDFDFBF9FBF9D9D9D97373),
    .INIT_4A(256'hFFFFFFDFDFDFDDFDFDDBDBDBBBDBDBDBFBFBF9B52D31DDFFFFDDFFFDDBFBD995),
    .INIT_4B(256'h7D7D7F5D5D5D5D5D7DBF789898DDFFFDFFDDDBFDFDFDFDFDFDFDDDDFFFFFFFFF),
    .INIT_4C(256'h9F9F7F7F7D7F7F7F7F7F7F9F7F7F9F9F7F7F7D9F9F9F9F9F9F9F9F9F9F9F9F7F),
    .INIT_4D(256'h7D7D7D9F9F9F7F7F7F7D7D7F7F7F7F7F7F7F9F7F7F7F7F7F7F7F7F7F7F7F9F9F),
    .INIT_4E(256'hFFFFFFFFFFFFFFFFFFFD9999DB99779D9D7D7D7D7D7D7D7D9F9F9F9F9D9D9D9D),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_50(256'hFDFDFDFFFFFFFFFDD7937195FBD9B7B7D9FDFFFFFFFFFFFFFDFDDDFDFFFFFFFF),
    .INIT_51(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFBD9B7D79595DB),
    .INIT_52(256'hD7D9F9FBFBDBFDFDFDDDDDDBDDFDDDDDFDDDDBDDDBDBDDFDDDDDDBDDDDDDFFFF),
    .INIT_53(256'hDBFDFFDBB97597B7B7D9FBDBFDFFDDB9B7B7B7B7DBFDFBF9B5B7FBFBD7D9D7B7),
    .INIT_54(256'hFFDFFFDFDFDFDDDDDDDDDDDDDDDBFDDBD9D9D7D77397DDFFFFFDFFFDFBFDDB99),
    .INIT_55(256'h7D7D7D5D5D5D5D5D7DBF989898DDFFFFFFFDD9B7D7F9F9F9FBFBFBFFFFFDFFFF),
    .INIT_56(256'h9F9F7F7D7D7D7D7D7F7F7F9F9F9F9F9F7F9F7D9F9F9F9F9D9D9D9F9F9F9F9F9F),
    .INIT_57(256'h5B5B5B7D7D7D7F7D7D7D7D5D7D7D7D7D7F7F7F7F7F7F7F7F7F7F9F7F7F7F7F9F),
    .INIT_58(256'hFFFFFFFFFFFFFFFFFFDD9775DBB977BD9F7D7D7F7F7F9F9F9F9F9F9D9D7B7B7B),
    .INIT_59(256'hFFFFFFFFFFFFFFFFDDBBDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'hFDFDFDFFFFFFFDFB914D4A4FD9FDB9D9B9FDFDFFFFFFFFFFFDFFFFFDFFFFFFFF),
    .INIT_5B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFDFDFBD7D79375B9),
    .INIT_5C(256'hF9D9B7DBDBFBFDFDFDDBDBB9DBFDDDDBDDDDDBDBDBDBDBDBDBDBDBDDDDDDFFDD),
    .INIT_5D(256'hFFFDFDFDFDB9B9B9DBD99595B9FDFFB9D9D9B7B7D9DBD9B593D7F9D79393D7D9),
    .INIT_5E(256'hFFFFFFFFFFFFDFDFDFDFFFFFFFFFFFDBB9D9FBF9D7D9DDDDFFFFFFFFFFFFFFFF),
    .INIT_5F(256'h7D7D7D5D5D7D5D7D7DBF98BA98FDFFFFDDFD71084A8CB0B1D3D5F5F9FBFBFDFF),
    .INIT_60(256'h7D7D7D7D7D7F7D5D7D7F7F7F7F7F9F7D9F9F9D9F9D9D9D9D9D7D9D9F7D9F7D7D),
    .INIT_61(256'h593939595B5B7D5B5B5D7D5D7D7D7D7D7D7D7D7D7D7F7F7F7D7F9F7F7D7F7D7F),
    .INIT_62(256'hFFFFFFFFFFFFDDFDFDFDDBB9DBD999BD9D7D7D9F9F9F9F9FBFBF9D9D9D7B5959),
    .INIT_63(256'hFFFFFFFFFFFFFFFFBB99DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBFF),
    .INIT_64(256'hFFFFFFFFFFFFFDB76F8FB1B5FBFFFFFFFDFDFDFFFFFFFFFDDDFDFFFFFFFFFFFF),
    .INIT_65(256'hFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFBD9DBFD),
    .INIT_66(256'hD7D9B79595D9FBFBFBDBDBB9DBFDDDDBDDDBDBDBDBDBDBDBDBDBDBDDDDDDFFDD),
    .INIT_67(256'hDDFDD9B9FDFDFDFDFBB7715175DBFFFBFBDB97B7D9FBD9959395B7F9D79393B5),
    .INIT_68(256'hFFFFFFFFFFFFDFDFDFDFFFFFFFFFFDDBFBFBFBFBD7B9DDDDFFFFFFFFFFFFFFFF),
    .INIT_69(256'h7D7D7D5D7D7D7D7D9DBD98BAB8FDFFFFBBFB9328686666686A8A8CAEB0B5FBFF),
    .INIT_6A(256'h7D7D7D7D7D7D5D5D7D7D7D7D9F9F9F7D7D9F7D7D7D7D7D7D7D7D7D9D7D7D7D7D),
    .INIT_6B(256'h373737393737595B5B5B5D7D7D7D7D7D5B5B7D7D5B7D7F7F7D7D7D7D7F7F7F7D),
    .INIT_6C(256'hFFFFFFFFFFFFDDDBDBDBDBFBFBDB99BD9D7D9D9F9F9F9FBFBFBF9D7B7B595959),
    .INIT_6D(256'hFFFFFFFFDDBBDDFDDBDBDDFFFFFDFFFFFDFFFFFFFFDDDDFFFFFFFFFFFFDDBBFF),
    .INIT_6E(256'hFFFFFFFFFFFFDD9771B3F9FBFDFFFFFFFFFFFFFFFFFFFFDDB9DBFDFDFDFFFFFF),
    .INIT_6F(256'hFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFF),
    .INIT_70(256'hD7D9B59575D9FBDBFBDBDBDBDDFDDDDBDBDBDBDBDBDBDBDBDBDBDBDDDDDDFFDD),
    .INIT_71(256'hDDB97373D9FDFFDDDBB9734F73DBFDFDFDFDB9B7FBFBB795937395FBD7B5B3B3),
    .INIT_72(256'hFFFFFFFFFFDFDFDFDFDFDFDFFFFFFFFDFBB995D9F9D9DBFDFFFFFFFFFFFFFFFF),
    .INIT_73(256'h7D7D7D5D5D5D5D7D9DBD96DBB8FDFFFFB9FBB346A8A6A6A6A8A88866466CD9FF),
    .INIT_74(256'h7D7D7D7D5D5D7D5D5B5D7D7D9F7F9F7D7D9D7D7D7D7D7D7D7D7D7D7D7D7D9F7D),
    .INIT_75(256'h37373757573737595939395B5B5B5B5B39395B5B395B7D7D7D7D7D7D7D7D7F7D),
    .INIT_76(256'hFFFFFFFFFFFFFFDBDBB9B9FDFDDBB9BD9D7D9D9F9F9D9D9D9D9B7B7959573757),
    .INIT_77(256'hFFFFFFFFDDB9DBFDFDFDFFFFFDBBFFFF99BBFDFFFFBBDDFFFFFFFFFFFFDDBBFF),
    .INIT_78(256'hFFFFFFFFFFFFFDDB95D7FBFBFDFFFFFFFFFFFFFFFFFFFDDBB9DBDBDBDDFFFFFF),
    .INIT_79(256'hFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFF),
    .INIT_7A(256'hF9D7B5B7DBFBFDFBFDFDFDFDFDDDDDDDDBDBDBDBDBDBDBDBDBDBDBDDDDDDFFDD),
    .INIT_7B(256'hDD975395D9FDFFDDDDFBB77395FDFDFDFDFDFDFDFDD9B7D9957373FBF9F9B5B5),
    .INIT_7C(256'hDFDFFFFFFFDFDFDFDFDFDFDFFFFFFFFFDB952FD9FBFBFDFFFDFFFFFFFFFFFFFF),
    .INIT_7D(256'h7D7D7F7D7D7D7D7D9DDFB9D9B8FDFFFF97DBD546A6C6C6C6C8C8A8A8888CF9FF),
    .INIT_7E(256'h7D7D7D5D5D5D7D7D7D7D7D7D7F9F9F9F9D9D7D7D7D7D7D7D7D7D7D7D7D7D9F7D),
    .INIT_7F(256'h373537373737375939171739393939373737375B395B7D9F7D7B5B5B7D7D7F7D),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFF3FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFC7FF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F9DFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FF89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFFFC3FFEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'hC5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE3FB),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFF1F07485FFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF9FF03001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'hFFFFFFFFFCFFF38601FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'h01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'hFFFFFFFFFFFFFFFFDBD9FBFBFBFB99BDBF9D9D7D7D7D7D7B7B79797979575757),
    .INIT_01(256'hFFFFFFFFFFDDBBB9DBFDFFFFDDBBFFFF99BBFDFFFFBBDDFFFFFFFFFFFFDDBBFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFDFDFDFBDBFDFFFFFFFFFFFFFFFFFFDB977597DBDDDDFFFFFF),
    .INIT_03(256'hFFFFFDFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFFF),
    .INIT_04(256'hF9D795B7FDFDFDDDDDDDDDDDDDDDFDFDDDDDDDDBDBDBDBDBDBDBDBDDDDDDFFDD),
    .INIT_05(256'hDDBB75B7FDFFFFFFFFFDFDFBDBFDFDFFDDDDDDDDDBB9B9FDD99595D9FBD76FD5),
    .INIT_06(256'hDFFFFFFFFFDFDFFFFFDFDFDFDFDFFFFDDBB997DBFBB9DBFFFDFFFFFFFFFFFFFF),
    .INIT_07(256'h7D7D7D5D5B5B395B7BDDB9D9B8FDFFFD97DBD546A6C6E6E6C6C8C8C8AA8CF9FF),
    .INIT_08(256'h7D7D7D7D7F7F7D7F7D5B5B7D9F9F9F9F9F9F7D9D7D7D7D7D7B7D7D7D5B5B7D7D),
    .INIT_09(256'h57573535353757373739595B393737375959375937595B59593939395B7D7D7D),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFDBDBFDFDFBFB99BD9F7B7B5B5B5B59575779777777575757),
    .INIT_0B(256'hFFFFFFFFFFFFDBB9DBFFFFDFDDBBFDFFDDFFFFFFFFBBDDFFFFFFFFDDFFDDBBFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFDFDFDDDDDFDFFFFFFFFFFFFFFFFFFDB7553B9FDFDFFFFFFDF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hF7D77397FBFDFDDDDDDDDDDDDDFDFDFDFDFDFDFBDBFBDBDBDBDBDBDDDDDDFFDD),
    .INIT_0F(256'hDDFDBBDBFFFFDDFFFFFDFDFFFFFDFFFDDDDDDDDDFDB9B9FDFDDBDBD9F9B32B91),
    .INIT_10(256'hDDFFFFFFFFDFDFFFFFFFFFDFDFDFFFFFDDDDDDFDDB75B9FFFDFFFFFFFFFFFFFF),
    .INIT_11(256'h5B5D5D3B1917F51779DDB9D9B6FDFFFDB9DBD748A8C6E6E6E6C8C8C8A86AF9FF),
    .INIT_12(256'h7D7D7D7F7F7F7D7D3917175B7D9F9F7D9D9F9F9D9D7D9D7D5B5B5B5917175B7D),
    .INIT_13(256'h775755555557573737597B7B37373737595937371537593737171717395B7D7D),
    .INIT_14(256'hFFFFFFFFFFFFFFDDDDDBD9FBFBDBBBBD9D593939393957375779777777575757),
    .INIT_15(256'hFFFFFFFFFFFFDBDBDBFFFFFFDFBBFDFFFFFFFFFFFFBBFFFFFFFFFFFFFFDD99DD),
    .INIT_16(256'hFFFFFFFFFFFFFFFFDDDDDDDDFFFFFFFFFFFFFFFFFFFFBB75B9FDFDFFFFFFFFDF),
    .INIT_17(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hD7D77395FBFDFDDDDDDDDDDDFDFDFDFDFDFDFDFBDBFBDBDBDBDBDBDDDDDDFFFD),
    .INIT_19(256'hFFDDFFFFDFDFFFFDFDFFFDDDFFFDFDDDFFDFFFDDFDDDDBFDFDFDFDB795934F4D),
    .INIT_1A(256'hDDFFFFFFFFDFDFFFFFFFDFDFDFDFDFDDFFFDFFDDBB5597FDFFFFFFFFFFFFFFFF),
    .INIT_1B(256'h5B5B5B5B5B37F5179BFFB9DBB8FDFFFDB9DBF748AAC8E6E6E6C6C8C8A88CF7DD),
    .INIT_1C(256'h7D7D7D7D7D5B5B3915F3F3F5177D7D7B7D9D9D9D9D7D9D7D59171515D1D3395B),
    .INIT_1D(256'h777777775755575759797B7B37373737595915151335579B7B37173737395B5B),
    .INIT_1E(256'hFFFFFFFFFFFFFFDDFFB973D9FBDBB9BD9D593737373737355777777777555757),
    .INIT_1F(256'hFFDDDDFFFFFFFDFFFDFDFFFFDDDBFFFFFFFDFFFFFFDBFDFFFFFFFFFFFFBB77B9),
    .INIT_20(256'hFFFFFFFFFFFFFFFFFFFDDDFFFDFFFFFFFFFFFFFFFFFFDDB9B9FDFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'hB7B773FBFBFBFBFDFDDDFDFDFDFDFDFFFDDBDBDBDBDBB9FDFDDBDDDDDBDDFDFD),
    .INIT_23(256'hFFFFFFFFFFDFFFDDFDFDDDFFFDFDFFDB77B7DBFDFDFFDFDDDDFDFDD995B5B52D),
    .INIT_24(256'hDBFFFFDFFFDFFFFFFFDF9BDFDFDFDFFFFFFFFFFFFDFDFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'h5B5B395B7D7B39599BFFB9B8D9FDFFFFD9F9F76886A6C6E6E6E6C8C8A88AD7B9),
    .INIT_26(256'h5B5B5B7B5B59595B5917F3F3F315595B59595B7B7B7B9D9B15AED1D1D1F53759),
    .INIT_27(256'h775757555757575757575737375959597B591537375779597915155959595959),
    .INIT_28(256'hFDFDDDFFFFFFFFFFFFB92ED9FBDBB9BD9B593735355735555777775757555555),
    .INIT_29(256'hFFBBBBFFFFFFFFFFFFFFFFFFDDDBDDFFFFFFFDFDFDB9DBFDDDFFFFFFFFDD3153),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB999FDFFFFFFFFFFFF),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF9977DBFFFFFFFFFFFFFFFFFFFFFFDFFF),
    .INIT_2C(256'hFBB7D9FDFBFBFBFDFDFDFDFDFDFDDDDDDDDDFBDBDBFBD9DBFDDBDDDDDDDDFDFD),
    .INIT_2D(256'hFFFFFFDFFFFFFFDDDDFFFFFDFFFFFFB93195FBFDFFDDDDDFFDFDFDFBB795B5B7),
    .INIT_2E(256'hDBFDFFFFFFDDFFFFFFBD9BDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFFFF),
    .INIT_2F(256'h393717395B3917399DFFB9B8B9FDFFFFD9F9F76AA8C8E6E6E6E8C8C8A88AF7DB),
    .INIT_30(256'h5959595959597B7B7B3715151537597B59597B7B9B7B5935CFACACAEAFD1397B),
    .INIT_31(256'h5755577777775757575757573737377B5959377B9B9B79375737375959595959),
    .INIT_32(256'h93FBFDFFFFFFFFFFFFD94EB7FBDBB9DDBB795757575757575777777757575555),
    .INIT_33(256'hDBBBDBFFFFFFFFFFFFFFFFFFDDB9DBFFFFFFFFFDFFB997FDFFFFFFFFFFDB2E2C),
    .INIT_34(256'hFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDBBDDFFFFFFFFFFFF),
    .INIT_35(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFD7553B9FDFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'hFBFDDBFBFBFBFBFBDBDBFDFDFDFDDDDDDBDDFDFDFBFDDBDBDDDDDDDDDDDDDDDD),
    .INIT_37(256'hFFFFFFFFFDDDFDFDDBDDFFDDFFFDFD975397DBFDFFDFDFFFDBBBDDFDDBB7D9FD),
    .INIT_38(256'hBBFFFFFDFDDDFFFFFFBD99DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDF),
    .INIT_39(256'h17F5F5153715F5379BFFB9B8D9FDFFFFB9D9F76888C6E6E6E6E6C6C8A88AF9DD),
    .INIT_3A(256'h5959597B597B7B9B795737373737597B9D9D7B7B59351315F1CFCFF315375939),
    .INIT_3B(256'h5557577979775757575757575737397B7B59379B9B999B797957373759595959),
    .INIT_3C(256'h6CB5FBFDFFFFFFFFFDDB7072FBFBB9DDBB997957575755575757777777777777),
    .INIT_3D(256'hDDFDFFFFFFFFFFFFFDFDFDFFFB7597FFFFFDFDFDFFB951FBFFFFFFFFFFDB4E4C),
    .INIT_3E(256'hFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFF),
    .INIT_3F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDB997B9DBFFFFFFFFFFFFFFFFFFFFFFDD),
    .INIT_40(256'hFDDBFDDBDDDBFDD9B7B9FBFBDBDBFDFDDBDBFDFBFBFDDBDBDDDDFDFDDDDDDDDD),
    .INIT_41(256'hFFFFFFFFFDB7DBFDDBBBDDFFFFFFFDBBB9DBDBFDDDDFDFFFBB99DDFFFDDBDBFD),
    .INIT_42(256'hDDFFDDFDFDDBDDFFFFDBB9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDF),
    .INIT_43(256'h15F5F5F515F3D3159BFFB9B6D9FDFDFDB7D9F76886A6C6E6E6E6E6C8A88AF9FD),
    .INIT_44(256'h7957377B57799B9B795979797B7B7B9BBD7937F1D1F1357B7957573737593939),
    .INIT_45(256'h577777795757575757575757575959597B7B599B9B79799B9957575979797979),
    .INIT_46(256'h8C8ED5FBFDFFFFFFFDFB934EF9FDDBDDBB997779775755555757575777777779),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFDDBDBFFFD9573FBFDFDFDFFFDB92CB7FDFFFFFFFDF96E8C),
    .INIT_48(256'h95B9FFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_49(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFDDBFDDDFFFFFFFFFFFFFFFFFFFDFB97),
    .INIT_4A(256'hFDDBFDDDFDDBFBD997B7D9FBD9B7DBFDDBDBFBFBFBFBFBFBDBFDFDFDDDDDDFBD),
    .INIT_4B(256'hFFFFFFFFFB7393FBFBB9BBDDFFFFFFFFDDDBDBFDDFDFDFDFDDBBDDFFFDFDFDFD),
    .INIT_4C(256'hDBDDDD97B9DDBBFFFFDDDBFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDF),
    .INIT_4D(256'h151515F51515F3157BFFD9B6D9FBFBFDB7D9F74886C6C6E6E6E6E6E8A86AD7FD),
    .INIT_4E(256'h9B79579B79799B9B7957799B9D9B79353713F1CFCFF137595959795957371517),
    .INIT_4F(256'h5777777957555557575757575979597959797979797755575577999B9B9B9B9B),
    .INIT_50(256'hAC8C8FF7FDFDFFFFFFFB914ED9FBDBDBBB997779797957575757575777575777),
    .INIT_51(256'hFFFFFFFFFFFFFFFFFFDDDDFFFD934CB5D7F9FBFDFDD72C71FDFFFFFFFDF96C8C),
    .INIT_52(256'h5397FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_53(256'hFFFFFFFFFFFFFFFFFFFFFFFFDDDDFDFFFDFDFDFDFFFFFFFFFFFFFFFFFDFBD951),
    .INIT_54(256'hFDFDDDDBFDDDFBFBD9B5D9FBB795D9FBFBB7B5F9FBF9D9B5D7FBFBFDFDFDFFDD),
    .INIT_55(256'hFFFFFFFFFB6F4CD7FBBB99BBFFDFFFDFFFDDDDFDDFDFDFDFDFDDDFDFDDFDFDFD),
    .INIT_56(256'h9595FB75B9DDBBFFFDFDD7D7F9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_57(256'h1715F5F3F515F31579DFD9B6B46E92D7B5F7D56886C6C6E6E8E8C8C8A86AD7FD),
    .INIT_58(256'hBB9B799B7979799B9B9B9B9B793513CF133513D1F1F313153757595715F31515),
    .INIT_59(256'h5557777757575757575757797979797937577955333311133379BBBBBD9B9BBB),
    .INIT_5A(256'hCEAC8CB1F9FDFFFDFDFB706EF9FBBBBBDD9B9979797977777777775777575557),
    .INIT_5B(256'hDDFFFFFFFFFFFFFFFFDDDDFFFD934C8FB19191B5FBD54C6EB5FBFDFFFDFB8EAC),
    .INIT_5C(256'h5397FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFFFFDBBBBFDFFFFFFFFFFFFFFFFFFFFFFFFDDB7B5B773),
    .INIT_5E(256'hFDDDFDDDDBFDFBFBB793D7FBD7B7F9FBF99571B5F9D7912A4ED9FBFDDDDDDDBD),
    .INIT_5F(256'hFFFFFFFDF96F4A6FFBDB7799DFDFDFDFDDFFFDDFDFDFDFDFDFFFDFDDDDDDDDFD),
    .INIT_60(256'h712C95FBFBFFDDFFDDFB934C91D7FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_61(256'h15F3D3F5F515F31579DDDBB4D44C4C8EB1F7F54688A6C6C6C8C8C8C8A86AD7FB),
    .INIT_62(256'h9B9979577977799B9B9B7935F1CEF13535793513F3F3F1D1F1151513F315F3F5),
    .INIT_63(256'h5777795757575557577779777779797957779933EEEEEE1057999999BB99799B),
    .INIT_64(256'hCECEAC6AF5FBFDFDFDD76E92F9FDBBBDDFBB9977777979797777777779777777),
    .INIT_65(256'hDDDDFFFFFFFFFFFFFFDDDDFFFDB36A8AAC8C8C4AF7D36C6C6EB5D9FDFDF98FCF),
    .INIT_66(256'h7397FFDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDBB),
    .INIT_67(256'hDDFDFFFFFFFFFFFFFFFFFFFFDDBBDFFFFFFFFFFFFFFFFFFFFFFFDDB95373D9D9),
    .INIT_68(256'hFDFDFDDBDBFDFBD97193D7D7D7D7FBFBFBB751B7F9D56C4C6CB5FBFDFDDDDFDF),
    .INIT_69(256'hDFDDFFFDFB916C4A95FDB999BBDFDFDDDFDFDDFFDFDFDFDFDFDFDDDDDDDDFDFD),
    .INIT_6A(256'h8F4A4CF7FBFDFFDFFFFB71286A4A91FBFDFDFDFDFDFDFDFFFFFFDFDDFFDFFFDF),
    .INIT_6B(256'hF3F5D3D3D3F3F33579DDB9B4D48EAEAE6AD3F54688A884A6A8AAA8688A6AD7FB),
    .INIT_6C(256'h797757559B999B7935F1EF111335355735357937F3F3F3F1F1F31313F3F3F3D1),
    .INIT_6D(256'h7777773557555757575557797999999B99BBBD99773332799B9B99557799779B),
    .INIT_6E(256'hF0CC8A8AD1F9F9B793D79090F9FBBBDDDDBDBB99797977999B99999977777777),
    .INIT_6F(256'h99DDFFFFFFFFFFFFFFFDFFFDFBB38CCCCACCAC6AB1D36C8C6C6CB3FBFBF98ED1),
    .INIT_70(256'hDBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD77),
    .INIT_71(256'hBBDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDBDBB9FDFFFFFD97B7D9FBFB),
    .INIT_72(256'hFDFDFDDBFDFDFBF7939193B395D9FBFBFBD995D7F9D56A6A6A91F9FBDDDFDDBD),
    .INIT_73(256'hDFFFDDFDF9B08C6A4ED9FBB999DFFFBDDFDFFFDFDFDFDFDFDFDFDDDDDDDDDDFD),
    .INIT_74(256'hAF688C48D5FDFFDDFDFB916AAC6A6C91F9FBFBF7F7F7F9FBFDFDFFDDDDDFDFDF),
    .INIT_75(256'hD3F5D3F5D3D1F31579DDB9B4D4AEACAE6AD3F54868ACCCAAAACCCE68486AF7F9),
    .INIT_76(256'h57999BBB9935F1F1131313555757575735377935F1F1131313F3F3F1F31313F3),
    .INIT_77(256'h7979795777575777575577799B999979BDDD9B99BBBD9B9BDFBDDFBD55779B79),
    .INIT_78(256'hEECCAACAACB1914C4ED56E6ED7FBBBDDBDBBBBBB799977799B99BB9B79777777),
    .INIT_79(256'hBBFDFFFFFFFFFFFFFFFDFDFBFBB1ACCACACAAC8CD1F38CCEAC8C8ED5F7F78CEF),
    .INIT_7A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD99),
    .INIT_7B(256'hDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDB9732F31DBFDDBFDDBFDFDFDFD),
    .INIT_7C(256'hFDFDFDFBFDFBD7F791B3B393B5F9FBFBFBFBD9FBF9D36A6A6A6CD7FDBBDFDFBD),
    .INIT_7D(256'hDDDDB9FDF9AE8C6A4A93FBFD99BBFFDFDFDFDDFFDFDFDFDFDFDFDDDDDDDDDDFD),
    .INIT_7E(256'h8C8A8A466EF9FDFDFDF98F8ACCAA8A688CAC6A6A6A6A6A8C6E93D9FDFFFFDFDF),
    .INIT_7F(256'hD3D3D3F5D3D1F11379DDB9B4F4AE8AAC8AD3F74A48AEF3CEACCEF0AC484AD5F7),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFCC),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4801FFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFE41FFFFEF803FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFDC1FFFFFF003FFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'h43FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD5FFFFFFE),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7FFF9881FFFFFFFD3FFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFA7FFE7DF0FFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'h17FEFFFFCFFFFFBFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F867FFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FE87FFFEFFF6F7FFFF7FFFFFFFFFFFFFFF),
    .INITP_0C(256'hFFFFFFFFFFFFFFFF8FFFF87FFCFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hD9FFC01D78683FFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC19FE00600201FFE),
    .INIT_00(256'h99BDBB5711EFCF13575757797957577957373537151315151313F1F13515F3D1),
    .INIT_01(256'h79799957797977775557799BBBDDDD9999BB999BBBDFBDBBBDBDBDBDBBBBBB77),
    .INIT_02(256'hECECEACAAAAC8C6A8EF58E8EF9FBDBDDBDBBBBBB999977779999BBBB79777979),
    .INIT_03(256'hDDFFFFFFFFFFFFFFFFFDD791D3B1ACCACACCCEAED3D3AEEFCCACACAFB1F5ACEC),
    .INIT_04(256'hFFFFDDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDB),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDBFB732C7171D9FBB9FDFFFFFFFFFF),
    .INIT_06(256'hFDFBFDFDFBD9B5D5B3B3B393B5FBFBFBFBFBDBFBF9B38C8A8A6CB3D9BBDDDDDF),
    .INIT_07(256'hDDDBDBFBF9AEAA8A6A6CF7FDBBBBDDFFDFDDDFDFDFDFDFDFDFDFDDDDDDDDDDFD),
    .INIT_08(256'h8C8AAACE6AB1F9FDFBF78C88A8C8CAA86688668686868668484A4E95FDFDFFDD),
    .INIT_09(256'hD1D1D1D3D3D3F31379DDB9B4F4AE8AAC8AD5F74A4AAEF2D0F0D0F0CE682890F9),
    .INIT_0A(256'h555713111133555779775757575757575735135737353515F313F3F315F3D1D1),
    .INIT_0B(256'h9B999B77777779575777799B99B9BB77799BBBBBBDBD9BBB9B79357779323212),
    .INIT_0C(256'hECEAEAEACAACCEAC8EF58EAEF9FBDBDDDDBDBBBB9999797999999B9979799999),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFDB76F28B1B1ACCACAECEEAEF3D3ACCEAACACCAC6AF3CFCA),
    .INIT_0E(256'hFFDDBBDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBB9D9B54FB7D7D9FDFDFFFFFFFFFFFF),
    .INIT_10(256'hDBD9FBFDFBD9B7B5B3B3D7D7D9FBFBFBFBDBDBFBF9B18A8AAA8A8ED7FBDDFDDD),
    .INIT_11(256'h97DBFBFDF9AEAAA8AA6AB1FDFDBB9BDDDFBDDFFFFFDFDFDFDFDFDDDDDDDDDDFD),
    .INIT_12(256'hAC8AACCC8A488EF7B3D5AE88CAC8C8C8A6C8A6A6C8C8C8C88848080AB9FFFFDB),
    .INIT_13(256'hD1D3D1B1B1F3133379DDB9D6F4AEAAAA8AF3D54A6848488C8C8CAC8A8A4828D3),
    .INIT_14(256'hEECEEE1177799979797779573557575757373557573715F31315153513D1D1F1),
    .INIT_15(256'h9B799B7979999B99999999999B99999999BBDDBBBB997999795535F0EE10CECC),
    .INIT_16(256'hCAEAEAEAECECCCAA8EF58E90F9FBB9DDBDBBBBBB9B9BBDBD9BBBBB999BBBBBBD),
    .INIT_17(256'hFFFFFFFFFFFFFFFFFDB74F2AD3B1AACACACCCE8AD1D1ACCECACACACC8AF3AECC),
    .INIT_18(256'hFFDDDBDDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDBFBD793B7FBFDFBFDFFFFFFFFFFFF),
    .INIT_1A(256'hB9B9DBFBFBFBD9959393F9FBFBFBFBFBFBFBFBFBF9B18AA8A88A8AD5FBFDFFFF),
    .INIT_1B(256'hB9FBFBFBF78CA8A8AA8A8CD7FFDB99DFDFDDFFFFDFDFDFDFDFDDDDDDDDDDDDFD),
    .INIT_1C(256'h8AAACAAAAA6868AE6CD3AEA8C8C8C8E8C6C6E8A6C6C6C6A688686C71DBFDFDFD),
    .INIT_1D(256'hF3F3D3B1D3F5131379DDB9D6F4ACAAAA8AF5D3488A24E0266A8C8C8A8A68268C),
    .INIT_1E(256'hEEEECE11779999797977795757575757573737375737151535373515F3F3F3D1),
    .INIT_1F(256'h993555553599BBBB9B9B9B9BBBDD9979999B9999997754555510EE101032EECE),
    .INIT_20(256'hECECECEAECCCCAACB0F79090F7F9B9DDBB9999999BBBDDDD999B9979BB9B9BBD),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFDBB7B5F9B1AACCCACCCCAAEFD1AACCCACACACCACF5ACEE),
    .INIT_22(256'hFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDD9D9FBFBFDBBDBFFFFFFFFFFFF),
    .INIT_24(256'hDBD9FBFBFBFBFB95B593D9FBFBDBFBFBF9FBFBF9F98CAACAA8AA688ED7FBFDFD),
    .INIT_25(256'hB795D9FBF78CA8CAA8886870FDFDBBDDFFFFFFDDDFDFDFDFDFDDDDDDDDDDDDFD),
    .INIT_26(256'hAAAAAACAA8A8886848D3AEAAC8E8E8E8C6C6C6C6C6C6C6C888AED5F9FDDBFDFD),
    .INIT_27(256'hF515F5F3F5F5133379DDB9D6F4ACAAAA8CF5B1268A68688CAE8E8E8CAC684848),
    .INIT_28(256'hEE11EE1199BB997979797B7957799B79795959355757353737373735151313F3),
    .INIT_29(256'h79111113119BBDBBBBBDDDDDDDDD995577997977775410103010EE335510EE10),
    .INIT_2A(256'hECECEAEAEACACACCB0F79090F9FBDBDDBD9B9BBBBBDDFFBB779977577955559B),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFDDBFBD1ACCCCCCACAAAEFF1AAECCACAEAECACF3AECC),
    .INIT_2C(256'hDBDBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDB9D9FDFDFDBBDDFFFFFFFFFFFD),
    .INIT_2E(256'hFBFBFBFBFBFBFBD9B7B7FBFBF9FBD7D7D9FBFBF9F78CAACACAAA888CD5F9FDFD),
    .INIT_2F(256'h512FB7FBF7ACCAEAA8AA684CF9DBBBFFDDFFDDDFDFDFDFDDDDDFDDDDFDDDDBFD),
    .INIT_30(256'hCAC8CAEAC8C8CA8868F3CEAAC8C8C8E8E8E8C6E8E6C6C6868AD3F9DBFBDBFDDB),
    .INIT_31(256'h1515F315F5F3133377DDD9F7F4ACAAAA8CF5B12648ACAEF2D0B0D2AE8A686866),
    .INIT_32(256'hCCEEEE1199DDDD9B799B9BBD9BBD9B9B9B797935575759573535353515151535),
    .INIT_33(256'h55EE11EECE79DDBDBBBBDDDFDFDD97323457777732EECC1010EECCF033EEEEAA),
    .INIT_34(256'hECEACAEAEACACACCD0F7B392FBFBDBFDBD9BBBBBDDDDDFBB5577775555131355),
    .INIT_35(256'hFFFFFFFFFFFFFFFFFFFFFFFFFBB3ACCCCACACACACCF1ACCCECEAECCCACF3CEAA),
    .INIT_36(256'hBBDBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDBDBFDFDFFDDFFFFFFFFFFFFDD),
    .INIT_38(256'hB7B5D9F9F9FBFBFBD9D9FBFBFBD7B5D7D7F9F9F9F5ACAAA8AAAA8A6A8ED7FDFD),
    .INIT_39(256'hD7B7D9FBF5ACCAEACAAA6A6CF9D9B997B9FDFFDFDFDFDFDFDFDFFFDDFDFDFDFD),
    .INIT_3A(256'hA8C8CACAC8C8A8AA8AF3ACA8C8C8C8E8E8E8E8E8E8E6C68488B2FBD9D9DBDBDB),
    .INIT_3B(256'h15151315F3F3133579DDDBF9F4AEAA8A8CF7D56C6AD0F3F38E8EB08C46686888),
    .INIT_3C(256'hEEEEEEEE77BB999B9B9B9BDFBDDD9B79799BBD79595779571313153513353535),
    .INIT_3D(256'h11EE11EECC77BBBDBDBDBDBDBDBB7710101010F0EE1010555410EE1055331010),
    .INIT_3E(256'hECEACACAEAEAECCCB0F7B390F9FBDBFDDDBBDDFFFFDDDDBB7755555555333333),
    .INIT_3F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFBB3ACECCAECECCCCCF1ACCCECEAECCCACF3F1CC),
    .INIT_40(256'hDDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFF),
    .INIT_41(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDFDFFFFFFFFFFFFFFFFFFFF),
    .INIT_42(256'h9551B7B7B595D7FBFBFBFBFBF9B5B5D5D7F7F9F9D38CA8A8A8AACE6A2AB5FDDD),
    .INIT_43(256'hB7FBFBF9F5ACCCEACAAA686CF9FBB93175DBDDFFDFDFDDDDDDDDFFFFFDFDFDFD),
    .INIT_44(256'hA8C8CACAC8C8A8CAACF3AC86CAE8E8E8E8E8E8E8E6E6E6A6688CF7F9DBDBDBDB),
    .INIT_45(256'h37371515F3F3135799DDDBF9F4AEAC8AAEF7F7F5B1F3F38C4A8ED0AE68466888),
    .INIT_46(256'h9932EEEE559B573557799B9B9B9BBB9B9B9B9BBD9B79797935F1133735353535),
    .INIT_47(256'hCCEEEE11CC35BBBB9B9B9B9BBB9931CC103232545599BBBBBBBB7977999B99DF),
    .INIT_48(256'hEAEACAEAEAEACAACB0F7B370F9FBDBFFFFDDFFBBBB999997775555553310EE10),
    .INIT_49(256'hFFFFFFFFFFFFFFFFFFFFFFFFFBB3ACECCAECECACCCF1ACCCCCEAECECACD1F1EE),
    .INIT_4A(256'hFFFFFFFFFFFFFFDDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFF),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDFDFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4C(256'hB793934FB593D7FBFBFBFBB7B5D7B5B3F7D7F7F9B18AAACAAACEF3D14C70B9FF),
    .INIT_4D(256'h2FD9FBFBF58AAACAA888684CF9FBB73175B9B9FFFFFDDDDDDDFFFFFFDD97D9F9),
    .INIT_4E(256'hCCECCAC8C8E8C8A88AF3ACA8C8C8E8E8E8E8E8E8E8E6C6A6888AD3FBFDFDDD99),
    .INIT_4F(256'h37793537371515579BDBDBF9F4AECC68B0F7F7B1D3F5B0486CAED0AE6A6A6866),
    .INIT_50(256'hDD9977553255BB1335573335355777355599DDDDDFBD79795735579B9B9B5713),
    .INIT_51(256'hEE1111F1AA3399999B9B797977550E105577773499BB997777999999999B7777),
    .INIT_52(256'hCACACAEAEACACACCB0F7B370F9FBB9FFFF9955ECEE1033557555555510CCCCEE),
    .INIT_53(256'hFFFFFFFFFFFFFFFFFFFFFFFFFBB3ACCCCACACCCCCCF1ACAACCEAECECAAD1F1CC),
    .INIT_54(256'hFFFFFFFDFDFDFFDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDBFBFDFFFFFFFFFFFF),
    .INIT_55(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_56(256'hF9F9B571F7B595D9FBFBFBD9B5B5914DB5B3D5F78F8AAACA88CEF3F7F7D9DBFD),
    .INIT_57(256'h53B7D9F9B18AACCCCCAA6A6CFBF9DBB9B9BBDDDDDDDDDFFFFFFFDDFFDDB9D9FB),
    .INIT_58(256'h88AACAEAE8E8C88868F3ACA8A6C6C6E8E8E8E8E8E8E6C6C6A6888CF7FDFDFD99),
    .INIT_59(256'hF33513353513355577DDDBD7F4AEAC46B0D5D38EB1B06A6AF3D2CE8C68464846),
    .INIT_5A(256'h12555557EE1010EE33331133EE77BBBBDDDDDDDDBB9B79999BBBBBBDDD9B7935),
    .INIT_5B(256'h11CCEECCEE1179997977777999BB775555555555553310EE32779BBBDDDF9935),
    .INIT_5C(256'hECCAC8EAEACACA8AB0F79093D9FBDBFFDF773310EECCCC1055997733101010EE),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFBB3ACCCCACACCCCACF1ACCCCCEAEACCACD1F1AC),
    .INIT_5E(256'hFDFFFFFDDDDDFFFFFFFFFFFFFFFFFFFFFFFDFDFBFBB7937171B7FDFFFFFFFFFF),
    .INIT_5F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_60(256'hF9F9F7B3937173D9FBD9F9FBD7D7910A4FD7F9F58C8AAAA8888C8ED5D7D9D9B9),
    .INIT_61(256'h99FBF9F78E8A8AEEEEAA686CFBDBB7FDFDFFDFDFDDDFDFFFFFFFFFFFDBDBB7B7),
    .INIT_62(256'h88AACAEAE8E8EAA88AF3ACA8C8C6C6E6E8E6E8E8E6E8E6C6C6A868B3FBFDFFDD),
    .INIT_63(256'hCECE13351313353557BBFBD7F4AEAC6AD3D5B3D38E4A066AF3F3D08A46464848),
    .INIT_64(256'h335577775533EEEE1055775330337799999BBBBB555577777799775577775713),
    .INIT_65(256'h33EEEEEE3311335777555799BBDDBB77335555100ECCCCCCEC55DDDDDDDD9977),
    .INIT_66(256'hECCACACAEACACAAAB0F7B390F9FBDBFFBD775597555533335555333333123311),
    .INIT_67(256'hFFFFFFFFFFFFFFFFFFFFFFFFFDB38ACAECECCCCCACF1ACCCECECEACCAAD1F3AC),
    .INIT_68(256'hFFFFFFFFFFFDFFFFFFFFFFFFFFFFFDFDFBF9D7B3916E6E6E4C73FDFFFFFFFFFF),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6A(256'hD7B3B5D5916FB5D9FBFBFBFBD7D7D7B593F9F9D56A8AAA888A8C6C4C91F7D973),
    .INIT_6B(256'hFDFDF9B38C8C8AF0F08A686CFBDB73B7FDFFFFDFDFDFDFFFFFFFFDFDFDFD9395),
    .INIT_6C(256'h66AAECEAE8E8EAA88CF3AC86C8C6C6E6E8E8E8E8E6E8C6C6C6A6666CFBFFFFFF),
    .INIT_6D(256'hF01055771335575579BBDBD7F7D0ACACF3F5D5F5B18E6C6AAEAE8C8C68264848),
    .INIT_6E(256'hEE10333310F0EECCCC3275EE0EEECCECEEEE10773533555577573333557775EE),
    .INIT_6F(256'h5511CC1111EEAC33573555779BDDBB775530EEA8CCCCEEEEEECCEE333355EE10),
    .INIT_70(256'hCACACAEAEACACAAAB0F7B392F9FBDBFF99557799777755557755101133101011),
    .INIT_71(256'hFFFFFFFFFFFFFFFFFFFFFFFFFDD58ACAECECCCCCACF3ACCCECECCACCAAD1F1AC),
    .INIT_72(256'hFFFFFFFFFFFFFDFDFFFFFFFFFFFDFBD7D5B3B18E8CAECFCF8C93FDFFFFFFFFFF),
    .INIT_73(256'hFDFDFDFFFDFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_74(256'hB7916F93B5F7F9FBFBF9FBF971B5F9FBF9FBF9D3688AAAAAAC8CAEB1B3F7F9D7),
    .INIT_75(256'hFFFDF98E8CACAEF0F08A686EF9D90C2ED9FDFFFFDDFDFFDDFFFFDDFDFDFB95B5),
    .INIT_76(256'h88CAECCAC8C8C8A88AF3AC86C6C6C6E6E6E6E6E8E6E8E6C6C6C6884AFBFDDFFF),
    .INIT_77(256'h125555777779997799DDFDD7F7D0ACACF3F5F5F5D1D1D06A8CAE8C8C6A484846),
    .INIT_78(256'hAACCEEAAAACECCECCACC33ECECCCEEEECCEEEC557555755533555530333333CC),
    .INIT_79(256'h3333EEEFCCEECE1111CEEE1377997733100E0EEEEECCCCCCCCCCCCCCEE3310CC),
    .INIT_7A(256'hCAEAEAEAEACACAACB0F79090F9FDDDDD79335533333333559977555555331011),
    .INIT_7B(256'hFFFFFFFFFFFDFDDBFDFFFFFFFDD5ACECCAECCCCCACF3ACCCECECCACAAAD0F1AA),
    .INIT_7C(256'hFFFFDDFFFFFFFDFDFDFFFFFFFDD993918EAEAECECEEEEFCE8CB3FDFFFFFFFFFF),
    .INIT_7D(256'hD9FBFDFDFBFDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFF),
    .INIT_7E(256'hD9B54F4F93B5B5F9FBF9D7B5084FF9F9D7F9F9B36A8AAAAACCACF1AE8EB3F9F9),
    .INIT_7F(256'hFFFDF96C8CCEAED0CE8A486EF9D90A0A93DBFDFFFDFDFFFDFDFDDDFDFDFDFBD9),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF600FF00621287F6C0FFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFF81FE002134CFF2407FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFE5FC042110E3F1BF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE31),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7300FE7F0390189DF18),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF18016FD0240381FF8C39FFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFF00000BF4F403E1FFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'h0013FFF909F3FFFFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hE7FFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000003FFFF07D4FFFF),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000003FFFDDFFDFFFFEFFFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFF000007FFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'h0007FFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF80),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00007FFFFFFFFFF9F),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8001FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'hCACACAC8C8C8C8A88AF3ACA6C8C6E6E6E6C6C6E8E8E8E8E6C6C6884AFBFDDFFF),
    .INIT_01(256'hEEEEECEE7799995777DDFDF9F7AEACACF5D5D3B1D3D3F38CAEAE8C8C6A6A4824),
    .INIT_02(256'hAAEE10CEACCCCC0ECCEE0EEC0EEEECECEE33101055755530EE1032EE1033EEEE),
    .INIT_03(256'hEE3311EEAACCCCCCCC8AACCE3575333333100E10EECCCCCCECCCEEEEEE1133EE),
    .INIT_04(256'hCCECECEAEAEACAACB0F79090F9FDDDDD99333333333331535597999977775533),
    .INIT_05(256'hFFFFFFFFFDDB9773DBFFFFFDFDB3ACECCAEACCCCACF3ACCAECEACACAAAD0F38A),
    .INIT_06(256'hFFFFDDFFFFFFFDFDFDFFFFFFFDB791B1AECECECECEEEEEEEAED5FDFFFFFFFFFF),
    .INIT_07(256'hD5D7F9D9FBFBDBBBDDFFFFFFFFFFFFFFFFFFFFFFDDDBDDFDFFFFFFDDDDFFFFFF),
    .INIT_08(256'hFBD79371939393B5F9F9B3914FB3F76F91F7F7B3D1AC8AACCCCCF0AE8C8EB3F9),
    .INIT_09(256'hFFFDD78ED0AEACAE8A68686CF9D72A6E71D9FFFDFFDDDDFFDDDDFDFFFDFDFDFB),
    .INIT_0A(256'hCCCAC8C8C8C8C8AA8AF3AC86C8C6E6E6E6E6E6E8E8E8E8E6C6A6884AFBFFDFFF),
    .INIT_0B(256'hCCCCECAACE13773535BBFDFBF7B0AC8CD2D5D3F5F3D0D08C6A48484848484624),
    .INIT_0C(256'hCCCCEE10CCCC1033EE0EEECA1010CCCC1010111033533310EEEE0EEEEE10EEEE),
    .INIT_0D(256'h5577773311CECCAACCCCEE333333105533100EEECCCCCCCAEEEECCEEEEEE11EE),
    .INIT_0E(256'hCCECECEAEAEACCACB0F79093F9FDDDDD79335333315553331133557757557777),
    .INIT_0F(256'hFFFFFFFFFDD9704EB7FDFFFDFDB38CCCCAEACCCCACF3ACAAECEACACAAAD0F38A),
    .INIT_10(256'hFFFDDDFFFFFFFFFFFFFFFFFFFDB790D1CECECECEEEEEEECEAED5FDFFFFFFFFFF),
    .INIT_11(256'hB5D7D7D7FBDBDBBBDDFFFFFFFFFFFFFFFFFFFFFFBB99B9BBFDFFFFDDDDFFFFFF),
    .INIT_12(256'hFBFBF9D7D9B5B795D7F9B3B3D5F7F72B6FD5D5B1F5D16A8ACCCCEEACAE8E6EB3),
    .INIT_13(256'hDDFDB5B1F3AECEAC6A68686CFBD74CB170D9DBFDDD9977BBFDFDDDFFFDFDFDFD),
    .INIT_14(256'hCCCAC8C8C8C8C8A88AF3ACA8C8E6E6E6E6E8E8E8E8E8E8C6C6A6666CFBFFDFFF),
    .INIT_15(256'h30103110CCEE11133399FDFDF7B0AE8CB0D3D3F5D3B0D08C8C26262648262646),
    .INIT_16(256'hAACCCC10AAAAEE31EEEECCAA101010EECCEE0E1033333310ECECEE330ECC100E),
    .INIT_17(256'h55557755775533CCEE13EE11113333553311EEEEECAACCCAEE10EEEEEEEE11CC),
    .INIT_18(256'hCCECECEAEAEAECACB2F79090F9FDDDDD9953330E103333EEECEE1133EEEEF013),
    .INIT_19(256'hFFFFFFFFFDB5906E92D9FDFDFDB3ACCCCAEACCCCACF3ACCCECECCACAAAD1F3AA),
    .INIT_1A(256'hFDFDFDFFFFFFFFFFFFFFFFFFFDB790D1CECECEEEF0F0F0CEAED5FDFFFFFFFFFF),
    .INIT_1B(256'hB3B3D5F9D9DBDBDBDDFFFFFFFFFFFFFFFFFFFFFFBBB9B9BBDDFFFDFFFFFFFFFD),
    .INIT_1C(256'hB7FBFBFBFBFBFBB7B7B5B3D5D591D5D5D5D5D56DB3F5B16AACCCEECECED08E6C),
    .INIT_1D(256'hFFFDD7B3D0ACAE6A48686A8EF9D72A4A90D9DDFFDB551155DDFFDDDDDDDDD997),
    .INIT_1E(256'hAACACACAC8C8CA888AF3ACA8C6E6E6E6E6E6E8E6E6C6C6E8E8A84691FBFFFFFD),
    .INIT_1F(256'h3330335510EEEEEE11BBFDFBF7B0AEAED3F7D5F7B0B0AED08C6A486A48268CAE),
    .INIT_20(256'hCCCCEECCACCCCC330EECCCAA0EECEC33330EEE3331331010EECCCC3077EEEECC),
    .INIT_21(256'hEEEEEEEE11113310103311EEEE1155533133100ECAAAAAA8EEEE113111EEEE11),
    .INIT_22(256'hECECECCAEAECCC8AB0F7B392FBFDDDBB77555510EE10530ECCEE1011CCCCCCCC),
    .INIT_23(256'hFFFFFDFFF9908EAE6E93FBFDFBB3ACCCCACAECCEACF3ACCCECECECCAAAD1F3AC),
    .INIT_24(256'hFDFFFFFFFFFFDDDDFFFFFFFFFDD791D1CECECEF0F0F0D0CEAED5FDFFFFFFFFFF),
    .INIT_25(256'hF7B5B5D7D9FDFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFDFFFFFFFFFFFDFDFFFF),
    .INIT_26(256'h73FBFDD9B7D9FBF9B591B3D3B191B3F9D5F7F78F8FF7F56C8CACCECECECEAE8C),
    .INIT_27(256'hFFFBD7B38E8CCE8A688A688EF9D74A28B3FBFFDBFDDB7779DDFFFFFFFDDB972F),
    .INIT_28(256'hAACACACAC8C8CA868AF3ACA8C6E6E6E6C4C6C6E6E6C6C6C6C8A868F5FBFDFFFD),
    .INIT_29(256'hECEE309777EECC3357BBFDFBF78E8C8ED5F7D5F76E6C6A8C6A6A486A4848D3F3),
    .INIT_2A(256'hCCCCEEACCCEE107733EEEECCECEECC10331033333333313310EEEEEE5533CCEE),
    .INIT_2B(256'hCCCCCCAAAAAAEE11EE1133EE103133333311EE0ECCCCCCAAECEE11EEEE11EEEE),
    .INIT_2C(256'hECECCCCAEAECEC8CD2F7B392FBFDFDBB7755530E0E10330EECCCEE3333CECECC),
    .INIT_2D(256'hFFFFFFFFD98EAECE8C90F9FDFDB38CCACACACCEECEF3ACCCECEAECCAAAD1F3AC),
    .INIT_2E(256'hFDFDFDFDFFFFBBB9DDFFFFFFFDD791B1AEEECEEEF0F0D0CEAED5FDFFFFFFFFFF),
    .INIT_2F(256'hF9F9D9FBFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFDB9),
    .INIT_30(256'h95DBFDB9B7B7F9F9D793B3B3B3B393D7FBF9F9916CB3F9D76E8CCECCCECCACAE),
    .INIT_31(256'hFDFBB5B58E8CACAC688A48B0F9D56A26D3D9FDFDFFFFDDDDDDDDDDDDDDDBBB97),
    .INIT_32(256'hAACACAC8E8E8C8868AF3ACA8C6C6E4E4C4C6C6C6E6E6C6C6A8A8ACF9FBFDFFFD),
    .INIT_33(256'hCCECEC3355101199BBDDFDFBF9B2B08ED5F7D5D32A28264848264846486CF3F3),
    .INIT_34(256'hEEEECCCEEEEE1075330E10ECECCCEE31333377555555535333103033335310EE),
    .INIT_35(256'hCECCCCCCCCCCECCCCCEEEEEE10EE105555331131EC11EEEE11111111EE0EEEEE),
    .INIT_36(256'hECECECECECCACC8AD3F7B2B3FBFDFDBB5733300E53311030EECCEEF0EECCCECC),
    .INIT_37(256'hDFFFFFFDF78EACEEAC8ED7FDFDB3ACCACACAAAEECEF3ACCCECEAECCA8AD1F3AC),
    .INIT_38(256'hD9DBDBFDFDFDDBBBDDFFFFFDFDD791D1CEF1EEEEEEEEEECEAED5FDFFFFFFFFFF),
    .INIT_39(256'hF9FBFBFDFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFDDDBFDD951),
    .INIT_3A(256'hDBDBFBD9FDDBFBF9FBD7B3B3F9FBD9D995F9D58E6C4CD5FB916CAEAEACCCCECC),
    .INIT_3B(256'hFDD9B5B3B0AEAECE688A68AEF5B08C8A8E90B7FDFDDDFFFFFFFFFFFFFFFFFDBB),
    .INIT_3C(256'hAACAEAC8E8E8C8868CF3ACA8C6C4E4E4E6E6E8E6E6C6C6A6A8AAD0F7D7FDFDFF),
    .INIT_3D(256'h100EEC1010EE335577BBFDFBF9D4B090D7F9F7B308060626482648466A8EF3CE),
    .INIT_3E(256'hEEEECCF010CCEE33100E3110EEEE33311199777775555355535533333031310E),
    .INIT_3F(256'hCCCCCCCCCCEEEEAACCCCCC10CCEC317555555555107531115533335533EEEE11),
    .INIT_40(256'hECECECECECCACC8CF5F7B2B5FBFDFDBB77330E3077550EEEEECCCCCCCCEEEEEE),
    .INIT_41(256'hDDDDFFFDD58ECCEEAC8CB3FBFBD3AEECCAC8AACCACF3ACCCECEAEACA8AD1F3AC),
    .INIT_42(256'h95B9D9FDFDFDFFFDFFFFFFFDFBD7B3D3D1D1EFEEEEEEEECEAED5FDFFFFFFFFFF),
    .INIT_43(256'hD9D9FDFFFDFFFFFFFFFFFFFFFDB9BBFFFFFFFFFFFFFFFFFFFFFDFDB9B7DB970C),
    .INIT_44(256'hDDFDFDFDFBFBFBFBFBD9D7D7F9F9D97351D7916C8E6E6FF7F76F4C6CAECCCCCC),
    .INIT_45(256'hFDB973B3B2D0AEAC8A8AAC8AAC8A8A8A8E6E73FDFDFFFFFFFFFFDFDFFFFDDDDD),
    .INIT_46(256'hCCCAC8C8C8C8A886AEF3ACAAC6E6E6E6E6E6C6E6C6C6C6A8AAACD3712DB9FDFF),
    .INIT_47(256'h300E0CECEE10555555DDDBD9F9B26EB3F9D7D5D52806E4E248268C8A8AAEF58C),
    .INIT_48(256'hEEECCCEEEE1053313131EE0EEE10EEEE55555599755553555355555333535530),
    .INIT_49(256'hCCEECCCCCCCCCCCCCAAACCEEECEC107555557553537755315333103333310E10),
    .INIT_4A(256'hCCCAECEAECECCCAEF5D5B0B3FBFDFDDD5533317575550ECCECEEEECCCCEEEECC),
    .INIT_4B(256'hDFFFFFFB928ECECECE8C6EF9F9D3ACEECACACACCACF5ACAACCECECEC8AD1F38A),
    .INIT_4C(256'hB7FBDBDBDBFDFFFFFFFFFFFFFDD9F9F7F5D1CFCECEF0F0EEB1D5FDFDFDFFFFDF),
    .INIT_4D(256'hFDFDFDFFFDFDFFFFFFFFFFFFFD9797FFFFFFFFFFFFFFFFFFFFFDDBB7B7D9D773),
    .INIT_4E(256'hFFFFFDFDFBFBFBFBDBB7F9FBD7D7D995B5D7B18C8C8E4C91F7D56C4A8CCCCCCC),
    .INIT_4F(256'hFFD993B3D3D2D0D0AE8A686668AA8A8A8C4A4EFBFDFFFFFFFFFFDFDFDFDDDDDF),
    .INIT_50(256'hCACAC8E8E8C8C888AEF5AAA8C6E6E6E6E6E6E6C4C6E8C8AA8AB0F9B573DBFDFF),
    .INIT_51(256'h300E0EEE0E10335555BBDDD9D99070F7F9B36E904A060626468CF0AC8AAEF38A),
    .INIT_52(256'h310EEE100E307531303310313110EE3355553353555555757575555330305555),
    .INIT_53(256'hCCEECCCCCCCCCACCCCCCEEECCCEE33775555775333755331335375331133EE33),
    .INIT_54(256'hEECACAECECECCCAED3D390B5FBFDFDDD55333153535330EEEEEEEECCECCCCECC),
    .INIT_55(256'hDFFFFFFB938ECEEECE8C6CB3F7D3ACF0ECCACACCACF5ACAACCECECEC8AD1F5CE),
    .INIT_56(256'hD7FDFDB997FFFFFDDDFDFDFDFDFBD7D5F5F5F1D1F0F0F0F0B1D5FDFFFFFFFFDF),
    .INIT_57(256'hFDFDFDFFFFFFFFFFFFFFFFFFFDB997DBDBDDFDFFFFFDDBDBDDFBFBF9D9B5B5B5),
    .INIT_58(256'hDDDDDDDDDDFBFDD9B9D9D7B7B5D7FBB7F9F7B1B0AE8E4C6CD5F7B0488ACCCCCC),
    .INIT_59(256'hFDDB95B5D3D3D0F3F2AE8A4668AC8A6A8C4C71FDFDFFFFFFFFFFFFDFDDDFDDDF),
    .INIT_5A(256'hAAC8E8E8E8E8C888AEF3AAA8A6E6E6E6E6E6C6C6C6C6CAA88CD5FDDBB9FDFDFF),
    .INIT_5B(256'h535353535353335555BBFDDBB770B5F9F9B34C4A6C28264826ACCEAC8AAEF38A),
    .INIT_5C(256'h31101055101075553353557555313355553333335355555555333310CCEC1033),
    .INIT_5D(256'hCCCCCCCACACCCACCCACCECCCEC10537553537553335555335355557553531031),
    .INIT_5E(256'hEECACAEAECCCCCAED5D5B3D7FBFDFDDD7733110E0E10300EECEECCCCECEEEECC),
    .INIT_5F(256'hDFFFFFDBB5D2D0ACCE8A6A8EF5D38CF0ECCACACCACF5ACAACCECECEC8AD0F3AC),
    .INIT_60(256'hF9FBFD9797FFFFBBBBFDFDFBD9B593B3D3F5F3CED0F0F0D0B1D5FDFFFFFFFFFF),
    .INIT_61(256'hDBD9DBFDFFFFFFFFFFFFFFDDDBB795977597B9FBFDFDFBDBD9D9D9D7D54FB3B5),
    .INIT_62(256'hDDDDDDDDFDFDFDDBB7FB952DB7D9B7B7F9D791B0AE6C6C4A6CD3B0688AACAC8A),
    .INIT_63(256'hFDFDB5B3F5F5F3F5F5D08C684688688AAE6EB5FDFFFFFFFFFFFFFFDDDDFFDDDD),
    .INIT_64(256'hCACAEAE8E8C6C868B0F38AA8A6E6E6E6E6C6C6C6C8C6CAACAED7FDFDFDFFFFFF),
    .INIT_65(256'h977775759799999999DDFDDBB795F9FBF9D7B08C6A262648488AACAC8AACF38A),
    .INIT_66(256'h0E315375331033753333757755555533553333103333533333ECEEEECCCAEC10),
    .INIT_67(256'hCACACAAACACCCACACCEECCCCEC33535333335355535555535553339775535331),
    .INIT_68(256'hCCECCACAEACACCAEF5F5B3D5FBFDFDDD775333EE0E0E100E0EEEECECCCCCECEE),
    .INIT_69(256'hFFFFFFFBD7F7F2ACCE8A8A8AF5D38EF3EECACACCACF5ACAACAECECECAAD0F38A),
    .INIT_6A(256'hF9FBDB9797FFFFBBBBFDFBB5917191D5F5F5F3CECED0F0D0B1D7FDFFFFFFFFDF),
    .INIT_6B(256'hD9D9B9DBFFFFFFFFFFFFDDBB99B797B995957395B7D9DBFBFBD9D793D7B3D7D7),
    .INIT_6C(256'hDDDDDDDDFDFDFDFDDBFDB751D9FBB9D9FBD591D1AE8C4A484A8CAEAEAE8C8A48),
    .INIT_6D(256'hFFFDB790D5F5F5F5F5F3CE8A664666688C8ED7FDFFFFFFFFFFFFFFDDDFFFDFDD),
    .INIT_6E(256'hCACAEAEAE8C6C866D0F3AACAA6E6E6E6E6E6C6C4E8C8A8CEF5D7FBFFFFFFFFFF),
    .INIT_6F(256'h999999977777BBDDBBDDFDDBB9B9FBFDFBD7F5AE6C2828284A2848AC6A8CF3AC),
    .INIT_70(256'h33535333333030755553333333555533333335323030103255EEEE1010101032),
    .INIT_71(256'hCACCCCCACCCCCCAACCEEEEEEEE3333333333537577755575755575975575530E),
    .INIT_72(256'hCAECCACAECCAACACF7D5B092FBFDFDDD995533103130103033333110EECCCCEE),
    .INIT_73(256'hFFFDFDD9B7B5B08CAC8A8A6AD0D3AEF3EECACACAACF5ACAACAECECECACD0F58A),
    .INIT_74(256'hF9FBFBB9B9FDFFFDFDFDFBD7B3B3B3B1D3F5F3D1CED0F0D0B1D7FDFFFFFFFFFF),
    .INIT_75(256'hF9D9B9DDFFFFFFFFFFFDFFDDB9B9D9D79393B573735373957595B793B5F9F7B5),
    .INIT_76(256'hDDDDDDFDFDD9B9FDFDFBD9FBFDFDFBD9FBD7B3AE6A6A6A8CAEACCEF0CE8A4804),
    .INIT_77(256'hFFFDD990B0D3F5F5F5F5D08A88666668486CD9FFFFFFFFFFDFDFDFFFFFFFDFDD),
    .INIT_78(256'hCACACAEAE8E8C866D0F3AACAA6E6E4E6E6E6E6C4C6C8A8CEF7D5B5FBFDFDFFFF),
    .INIT_79(256'h7797757497DBDDDDBBDBDBB9B9B999DBB793916E4C2A08082A0808B16A8EF38A),
    .INIT_7A(256'h5355333233333375757730301010325532323255323210529954303254557575),
    .INIT_7B(256'hCCCCECCCCCECCCAAAACCEE10303133535353759777757575757597977577330E),
    .INIT_7C(256'hCACAEAECECCCAC8CF7D59090F9FDFFDD99553353333130303155553311ECCCCC),
    .INIT_7D(256'hFFFDB795926E4C8CAEAC8A8A8CB0D0F0EECACACAACF5AEACCAECECECACAEF58C),
    .INIT_7E(256'hFBFBFBDBD9B9FDFFFDFBF9D7D5D3B16CAED1F3F3F0F0F0CEAED7FDFFFFFFFFFF),
    .INIT_7F(256'hFBFBDBFDFDFFFFFFFFFFDDB9757395934C4E93D9B7B775757575B7B7B5F9D9D9),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized9
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFF78001FFFFFFFFFFFFFFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INITP_01(256'h031FFFFFFFFFFFFFFFFFFDEFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0001FFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F3FFFFFFFFFFFFFFFFFFF07FFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFF603FFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hF7FFFFFFFFFFFFFFFFFFF403FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFC7803FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1803FFFFFFFF),
    .INITP_0A(256'hFFFFFFFFFFFFEFF7FFFFFFFFFFFFFFFFFFFC1C01FFFFFFFFFF7FFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFC0401FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'hFFF40000FFFFFFFFFFFEFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFF),
    .INITP_0D(256'hFFF7FFFFFFFFFFFCFFFFFFFFFFFFFFFFEFFFFFFFFFFFF7FFFFFFFFFFFFFFFF78),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFE3FFFFFFFE7FFFE00000FFFFFFFC),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFE00000FFFFFFF87FF9FFFFFFFFF3FC),
    .INIT_00(256'hDDDDFDFFFDB9DBB9FB9795FBDBFDDB95D7F9D3F3AE68AECEF0D0CEACAC6A26E2),
    .INIT_01(256'hFFFDF9B5908ED2D2D2F2AE8AAAAAAAAC2628D7FDFFFFFFFFFFDFDDFFFFFFDFDD),
    .INIT_02(256'hCCCAEAC8C8C8C866D0F3AAC8C6E6E4E4E6C6C6C6E8C8CA88ACD06EB3FBFDFFFF),
    .INIT_03(256'h75B9977797B9BBDBBBDDDDFDDDBB99FF97734EE8E8EAC8C80C0E0CF9916EF38A),
    .INIT_04(256'h335555337553757777975577100E307530301052305432559999997797757777),
    .INIT_05(256'hCAECEECACACCCAEEEECCCC0E333355757553777753537555757575B997755355),
    .INIT_06(256'hCAECCAEAECECEE8CF5D5B0B2F9FDFDDD995533753333300EEE33535533CCCCCC),
    .INIT_07(256'hFFDB512E4E2C8EF58A8A8AAE8CAED0F0EECACAEAACF5AECCECECECCCAAAEF5AC),
    .INIT_08(256'hFBFBD9FBFB97DBFFFB734E71B3F5F5B0AE8ED0F3F0D0F0CE8ED7FDFFFFFFFFFF),
    .INIT_09(256'hFBFDFFFDDBDDFDFDDDFDFDB975707070B5907071B5FBFDFDFDFDFDFDFBFBFBF9),
    .INIT_0A(256'hDDDDFDFFFDFBFDFDFBFBFBB7B7FBDBB7D7F9F7D068ACACCCCEACAC6A8A48E428),
    .INIT_0B(256'hFFFDF9D5B38E6CB0AECECEAA8AAACCCEAC28B5FDFDFFFFFFFFFFFFDFDFFFDDDD),
    .INIT_0C(256'hAACACAC8C8C8A866D0F388A8C8C4E6E6E6C4C6E6E8E8C8A88AAE4C4CD5F9FBFD),
    .INIT_0D(256'h7775B9757577999799DDDB99DDDDDDDFFFDB9595510FCA33775511ECB790D3AC),
    .INIT_0E(256'h757577101010303075979999777555775555779777779799B9B9999797B99777),
    .INIT_0F(256'hCCECCCECCAEC0E0EECECEC105355555330537753303375557597979775535397),
    .INIT_10(256'hCCCACAEAEACACCACF5D39090F9FDFDDD997553553031303031310E3110ECAAAA),
    .INIT_11(256'hFDD9500A0890D5F2AE8C8C8CAED1F1EEEEECCAECACF3AEAAECECECECACD1F58C),
    .INIT_12(256'hFBFBF9D7D7D7D7D9D97193B3F7F5F5F3D08EAED0F0F0F2D090B5FDFFFFFFFFFF),
    .INIT_13(256'hFDFDFFB97595DBFBB97472749492709092926E707195D9FBFDFFFDFDFDFBFDFB),
    .INIT_14(256'hDDDDFDFDFBFDFDFDF9F9F9B7B9FBD9F9F9F9D38A8AACCCCECCAAAC8A6A06266C),
    .INIT_15(256'hFDFB95B5D5B06C8C8C8CACACAAAACCEEAC4A70FFB9DBFFBBDDFFDDFFFFFFFDDD),
    .INIT_16(256'hAACACAC8C8C8A866CEF188A8C8E6E6E4E6C6C4C6E6E8E8C888B0B04A8ED5D9FD),
    .INIT_17(256'hB9B9DBB97575777599DB9999DDBDBDBDBD9999BBBB997979371368443195F5AC),
    .INIT_18(256'h997755323255757597779797979797979999999799B9B9B999979797B9B97754),
    .INIT_19(256'hECCACCECEEEEECECEEECEE105333301053557555535575557753305353301053),
    .INIT_1A(256'hECECEAEAEACACC8AF5D3B090FBFDFDDD99755330535310303130100EEEECECCC),
    .INIT_1B(256'hFDD94E2A6E8E8ED26A266AD3F5F0ACCCECECCAECACF3AEAAECECECECAAD0F58A),
    .INIT_1C(256'hFBF9F9F9F9F9D793B5709192B2B2D2B0D2F3AED0D0D0B08E6E95FDFFFFFFFFFF),
    .INIT_1D(256'hFFDBB9D99797B9B99694B8DA96B492707090906E70919395D9FBFBFBFBFBFBFB),
    .INIT_1E(256'hFFDDDDDBB9FDFBFDD793F7F9D9FBFBFBF9F9B36AACACCCCCCCACAC684826268E),
    .INIT_1F(256'hF9D970D7F7D56E4848688A8A8A88ACCE8C6C6EFD9799DD55BBDD99DDFDBBDDDD),
    .INIT_20(256'hCAEAC8C8E8C8A868CEF1A886A6E6E6E4E6C4C6C6E8E8E8C688AEF44A4AD290B5),
    .INIT_21(256'h99DBDBDBB9977775B9DD9B9BBD9BBD7B9B59353537375937D3AF6A24A850F768),
    .INIT_22(256'h999775757797B9B99775979777B9B997B99997B9B9B997759797977797977452),
    .INIT_23(256'hECEC100E100E0E0EEEEE0E103330303255757575759777757575535375533275),
    .INIT_24(256'hECECEAEAEAEACC8CF5D3B090F9FDFDDD9977751030300E0E0E305353530E30EC),
    .INIT_25(256'hFDD9702C6E6E90B24A064AF7F7D0ACCCEEECCAECACF3AEAACCECECECAAAEF5AC),
    .INIT_26(256'hF9F9D7F7F7F7B570B570B3D7D5D4D28EB0D28E8C90B2B3B5B5D9FFFFFFFFFFFF),
    .INIT_27(256'hFFB997FDD995B9B796B6DAFCFADBD9D6B4906E9090906F7193B5D7D7D9F9F9FB),
    .INIT_28(256'hFDDDFD9795FBD9FB934CD5F7F9F9FBFBD7B5F76AAAACCCCCCCCC8A4648064AD5),
    .INIT_29(256'hB5B56EB3B5D5D38E6A8A686868688AAC8C6C92FDDBBBDD54BBDD75DBDD77DBFD),
    .INIT_2A(256'hCAE8E8E8E8C8CA68CED08886A6C6E6E6C4C4E8C6E8E6E8C8866CD6B228AEB090),
    .INIT_2B(256'h97DBDBB9DBB9777799DD9B7BBDBD9D599D7B5915F51717D5B18F6A4666C8B58A),
    .INIT_2C(256'h777777979999B997979797979797B997B9977597979797747597977575755274),
    .INIT_2D(256'h53100EEE0E3033300E0E0E103333535553557575979797777775755375535397),
    .INIT_2E(256'hCCCACAEAEAEACA8AF5D38E90F9FBFDDDB99997975575533030537555B9755533),
    .INIT_2F(256'hFDD94E4C4A6EB2B04C286CF9D3D0CECCECECCACCACF3AEAACCCCECECAAAEF5AC),
    .INIT_30(256'hF9F7D5D5D5D5B390D591B3F7F5F5D2B0AEAEB0B2D5F9F9FBFDFFFFFFFFFFFFFF),
    .INIT_31(256'hDD9797FBD9D9D9D9FBFDFAFCFCFBFBF9F7D4B29090906E6E6F91B3B5D7D7F9F9),
    .INIT_32(256'hB9D9FB7171F9F9F98E6AAE8EB3D3D5D5D590D5AE8AAACCAAAAAA8A4826288EB2),
    .INIT_33(256'h906E934E2C6EB3D3AE6A684848688A8AAE8ED6FDFDDDFF99DDDD99FDDD97DBFD),
    .INIT_34(256'hCAEAC8C8C8CACA8AD1CE8886A8E8C6E6E6E6E6C6E8E6E6E8A868D5F72648B0B0),
    .INIT_35(256'h7597B9757777759999BB9B9BBF9D39175B5B5B17F517F7B38F6D48484666718A),
    .INIT_36(256'h7577779797979797979775749797979799977475757575755252757575523030),
    .INIT_37(256'h53531010EE30313110100E0E3031305355557577977797979797757555555553),
    .INIT_38(256'hCCCACAEAEAEAAA8AF5D38E92F9FBFDFDB9B9B9B999BBB9977597753175533131),
    .INIT_39(256'hFDD96E6E6C6E6E906C28B2F94CD0F0CCCCCCAACCACF3ACAACCCCECECACAEF5AC),
    .INIT_3A(256'hF7D5B3B3B3B3906CB390B3F5D2B2D0D0AEB0D2F9D7D9DBFDFFFFFFFFFFFFFFFF),
    .INIT_3B(256'hDD9795F9F9FBDBFBDBD8D8DAD8B6B6B4B2B2B2706E6E6E6E6E8F91B3D5D7F9F9),
    .INIT_3C(256'hB7B5D76E6EB1F5F38C8A88688A8C8C8ED06C8CD08A8AAAA8AA8A6826268CD34A),
    .INIT_3D(256'hAE6CD5B5502C4C6C6C484848466868686A6CD8DBFDDDDDBBDDDDDBFDDDDBFBFD),
    .INIT_3E(256'hAACAC8C8C8ECCC8AF3CE888ACCEAA4E6E6E6C6E6E8E8C6C8C888B0F78E268A8A),
    .INIT_3F(256'h52327753327797DBBBBD9D9DBF7DD290D317593917F7F7F7D58F262468664E8E),
    .INIT_40(256'h52557799977797B9B99775747775977574747552527575757552535353520E0E),
    .INIT_41(256'h3133301010535353535353313333303355557777757597979797757597977775),
    .INIT_42(256'hCCCAEAEAEAEAAA8CF5D38E92F9FBFDFFB9B9BBB9B9B9B9B9B9B9777597755353),
    .INIT_43(256'hFDFB92908E6E4C6E4C08D5B52AD3F3F0EECCCCCCACF3ACAACCCCECECACAEF5AC),
    .INIT_44(256'hD3B3B3B0B0B0906CB391B3F7B2B0B0AEB0D2F4F6D6B6BBFFFFFFFFFFFFFFFFFF),
    .INIT_45(256'hFFDB92D7B4949496947494947272729290909090704E4E6E4C6E6E90B3B5B5D5),
    .INIT_46(256'h706EB06C6A8A8CF0AAA886A888688CCEF08C4A8CACAA888888684626268EF56C),
    .INIT_47(256'h6C6CD7FBD9B771E60648484A6A486848266EF9DADADDDDBBBDDDDBDDDBDBD9FB),
    .INIT_48(256'hAACACAC8C8CACC8AF5CE68ACEEC8C6E6E6E6E6E6E8E8C6C6C8AA8AF5D348688A),
    .INIT_49(256'h327575325399BBFFBD9B9D9F9F7D6E4C6ED3F57D17F7D5F7D58F6B6868680C90),
    .INIT_4A(256'h3252527777779797979775747777977552759752535252999730303030300E0E),
    .INIT_4B(256'h5555755377B999999997777797777575757577775575979999B9977599997775),
    .INIT_4C(256'hCCCAEAEAEAEACCACF7D38E92F9FBFDFF97777577535375559797537575977775),
    .INIT_4D(256'hFFFBB29090706E4C0808D74E2AD2F0F0EECECEACACF3ACAACCCCECECACD0F58A),
    .INIT_4E(256'hB3D3D3B0B0B08E6CB3B1B1B2B2D2D0D2D2B2F6D6F8D8BBDDFFFFFFFFFFFFFFFF),
    .INIT_4F(256'hFDFB92D5B492727472727270727292B2B2B09090704E2E4C4C6E4E4C70939090),
    .INIT_50(256'h4E6E908C8A8A88EEECA6C8A6A88AD0AEF2AE6A6AACCC888666462624266CD2D5),
    .INIT_51(256'h264CFBFFFDFDD971E808284A48486A4806B4D9DBDDFFFDDDDDBDB8B9B9B9B694),
    .INIT_52(256'h8CCCEAC8C8C8AA8AD3F5F1F0CCA6C6E6E6E6E6E8E8C8A6A6C8CA88AEF38C2468),
    .INIT_53(256'h77BB97305599DDDF9B799DBF7D5B902A4A6C6E175B39B3B191F3CF8D2468CA91),
    .INIT_54(256'h777554545454757597B9979775B9B997779797525275535253520E0E0E0E3053),
    .INIT_55(256'h557597B9979997B9BBB99799BBBB999997977597535597BBDBDBBBB9B9975577),
    .INIT_56(256'hCAEAEAEAEACACCACF7B28E90F9FBFFDD777531EE1030333031535533EE335597),
    .INIT_57(256'hFFFDB7704C4C906E086EB32A4A8EF0F0CEEEEECCAEF5AECACCCCCCEEACD0F38A),
    .INIT_58(256'hB3B0D2AED0B08E8EB1B18EB0B2F5D2B0D0B2D6F8F8FADABBDBFDFFFFFFFFFFFD),
    .INIT_59(256'hFDFB92D4D5D7B6B7949292B4B4B4B4B490B2D5F7B270B5924C4E4E2C4C4E8E90),
    .INIT_5A(256'hD6D4D26A8888A8ECEAA6E8A6A6AAF2D0F28C6A6A8C8CAA88888A684626284A6E),
    .INIT_5B(256'h044EFBFFDDFDFDFBB52C2828486A4A066EF9FBDBFDFFFFFFFFFDFDFDFBFBD9D8),
    .INIT_5C(256'hD1CCCAC8EAC8A88AF5F5F5F2CCA6C6E6E6E6E6E8E8C8C8C6C8C886AAF0AC2426),
    .INIT_5D(256'h75B999557799DDDD9B7B9F9F395B8E082A4A4A4AF5398F8FD3AFAD042488864E),
    .INIT_5E(256'h77777777545474527597525252979797977555525375523030533030100E0E30),
    .INIT_5F(256'h755597B997779799DBB99999BB9999B999777599335399BBDDDBDBDDBB999999),
    .INIT_60(256'hCAEAEAEAEAECCCACF5B06E90F9FBFFBD795531EE0E105353103353100E339797),
    .INIT_61(256'hFFDB502E936E6E6E4C90B06E8ED0F0EEACCCCCCEAEF5ACCCEECECEEEACD0F36A),
    .INIT_62(256'h8E8E8EAED0B0B08EAE8E6CB0B2B28E8CB0B2F6F8F8FAFAB8B9DBFDFDFDFDFFFF),
    .INIT_63(256'hFDF99290B0D4D7D7B290B2F5F7F7F7F7B2B2F5F9D5B2F9F9D7B54E2C2C6E6C8E),
    .INIT_64(256'hFDF9F76A66A8A8EAC8A6E8A4A6A8F0F5F06A6C2A4C6C8C8A8A6A686A4A28E6A4),
    .INIT_65(256'h0693FDFFDDFDFDFBFB932A06284A28E6D7FBFBDBFFFFDBDDDBFBFBB5FBFBFDFB),
    .INIT_66(256'hF3CECAC8EAC8A88AF5F5F3F0AAC8E6E6E6E6E6E8E8C6E8E6C6C6A688488C2626),
    .INIT_67(256'h5577977799BBBD9B7B7D9F3BD5396C064A2A28066AD3B18FAF6B0404682486E8),
    .INIT_68(256'h77757577775452305254305252555275755332305353300EEE30533330EEECEE),
    .INIT_69(256'h7755779777757797B9BB9997999777997775535510105577779799BBBBBBBBBB),
    .INIT_6A(256'hCCEAEAEAEAEACCACF5B26E90F9FBFFDD99550E0EEC3175550E30315375535531),
    .INIT_6B(256'hFFDD50EA2C4E6E6E6E9090D4D2F2F0EECCCCCCCCACF5ACAAEEEEEECCACD1F58A),
    .INIT_6C(256'h4C4C6CB0B1B0D3AE8E8C6CAEB06C4A6AAEB0F6F8F8FAFAD8B8B6B7FDFFFFFFFF),
    .INIT_6D(256'hDBD9B49090B2B2D5D5B0B08EB0F5F7F58E8ED2F79092D7FBD9D7B54E4C6E4A4C),
    .INIT_6E(256'hFBF9D46AAAEAC8CAC8C6C8A6A688F0F3CE8C6C0A0C2D2A4A8C6A48282608E8C6),
    .INIT_6F(256'h08B7FDDDFFFDFFFDFBD9702AE406080AF9D9FBDBFFDDDDFDFDF96E08F9F9FBFB),
    .INIT_70(256'hD3F0CCC8E8C8CAACF5F3F0CEA8C8E8E6E6E8E6E8E8E6E6E6E6C684686828E4E6),
    .INIT_71(256'h7555555599DDDF9B7B9D7DF5D5F56C284A28284A2828AFAF2806060626686482),
    .INIT_72(256'hB999777777779777555230300E0E0E303232323030300EEEEC0E0E3030303032),
    .INIT_73(256'h779775755555755577B9B99799997777553310CCCCEE323332327599B9BBBB99),
    .INIT_74(256'hCCEAE8E8E8CACCACF5B06E90F9FBFDBD99550E0EEE3197771053759753315599),
    .INIT_75(256'hFFFFFD530C0A2C2A4C6EB0F4D2F2F0EECEEEEEEEAEF5ACAAAACCEECCACD1F5AC),
    .INIT_76(256'h4E6E6E91B1B1B18EAEAE8C8E6C6C4A8CAE8EB2D6D6D6F8FAFBD9B7B9DBFFFFFF),
    .INIT_77(256'h75B7D7F5D290B2F5D3AEAEB0B0D2F5F5B08EB0D46E4E92D9F9F9F9B54E4C4C4C),
    .INIT_78(256'hFDFBD56AA8C8C8C8C8C8C8C6A888CECEAC8C6C4FCAEB0D0A4A0606060608E8EA),
    .INIT_79(256'hE8D9FFFFFFFFFFDDDDB7D7D508E6A40A94FBFBDBFDFFDBFBF9D26A06B1F9FBFF),
    .INIT_7A(256'h4CACCACAEAA8A8EEF3CECC8AAAC8E6E6E6E6C6E6E6E6E6C4E4C6866A8CE6C4E6),
    .INIT_7B(256'h7775555599DD9B577B9F5B4C90B26E284A482806282828B16C284A26246686E8),
    .INIT_7C(256'h7799999999BB999975757552300E0E0E30523030303030305230303053555555),
    .INIT_7D(256'h757775777797975577B9B9B9999999775533EEEE1033323232305599B9773230),
    .INIT_7E(256'hCAEAEAEAC8CACCAAF5B06C6EF9FBFDBD99773131305399B97555535375537597),
    .INIT_7F(256'hBDFFFFFDB92E0A0A4C6E6C8EB0AECEF0F0EECCCCAEF5AFACCCCCECCCACD1F3AC),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module blk_mem_gen_0_blk_mem_gen_top
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [11:0]douta;
  input clka;
  input [16:0]addra;
  input [11:0]dina;
  input [0:0]wea;

  wire [16:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "17" *) (* C_ADDRB_WIDTH = "17" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "26" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     9.042558 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "76800" *) (* C_READ_DEPTH_B = "76800" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "12" *) (* C_READ_WIDTH_B = "12" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "76800" *) 
(* C_WRITE_DEPTH_B = "76800" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "12" *) (* C_WRITE_WIDTH_B = "12" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_0_blk_mem_gen_v8_4_4
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [16:0]addra;
  input [11:0]dina;
  output [11:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [16:0]addrb;
  input [11:0]dinb;
  output [11:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [16:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [11:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [11:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [16:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [16:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[16] = \<const0> ;
  assign rdaddrecc[15] = \<const0> ;
  assign rdaddrecc[14] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[16] = \<const0> ;
  assign s_axi_rdaddrecc[15] = \<const0> ;
  assign s_axi_rdaddrecc[14] = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  blk_mem_gen_0_blk_mem_gen_v8_4_4_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

module blk_mem_gen_0_blk_mem_gen_v8_4_4_synth
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [11:0]douta;
  input clka;
  input [16:0]addra;
  input [11:0]dina;
  input [0:0]wea;

  wire [16:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule
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
