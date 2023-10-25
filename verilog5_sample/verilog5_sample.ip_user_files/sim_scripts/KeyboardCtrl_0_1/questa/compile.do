vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../verilog5_sample.srcs/sources_1/ip/KeyboardCtrl_0_1/src/Ps2Interface.v" \
"../../../../verilog5_sample.srcs/sources_1/ip/KeyboardCtrl_0_1/src/KeyboardCtrl.v" \
"../../../../verilog5_sample.srcs/sources_1/ip/KeyboardCtrl_0_1/sim/KeyboardCtrl_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

