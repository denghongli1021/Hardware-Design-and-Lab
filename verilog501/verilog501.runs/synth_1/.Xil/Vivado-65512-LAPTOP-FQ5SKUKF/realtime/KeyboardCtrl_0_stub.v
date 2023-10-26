// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "KeyboardCtrl,Vivado 2019.2" *)
module KeyboardCtrl_0(key_in, is_extend, is_break, valid, err, PS2_DATA, 
  PS2_CLK, rst, clk);
  output [7:0]key_in;
  output is_extend;
  output is_break;
  output valid;
  output err;
  inout PS2_DATA;
  inout PS2_CLK;
  input rst;
  input clk;
endmodule
