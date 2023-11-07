vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../verilog5_sample.srcs/sources_1/ip/KeyboardCtrl_0_1/src/Ps2Interface.v" \
"../../../../verilog5_sample.srcs/sources_1/ip/KeyboardCtrl_0_1/src/KeyboardCtrl.v" \
"../../../../verilog5_sample.srcs/sources_1/ip/KeyboardCtrl_0_1/sim/KeyboardCtrl_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

