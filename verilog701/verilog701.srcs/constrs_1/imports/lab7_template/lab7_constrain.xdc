# Clock
set_property PACKAGE_PIN W5 [get_ports clk]
    set_property IOSTANDARD LVCMOS33 [get_ports clk]

# Switches
set_property PACKAGE_PIN V17 [get_ports _play]
    set_property IOSTANDARD LVCMOS33 [get_ports _play]
set_property PACKAGE_PIN V16 [get_ports _start]
    set_property IOSTANDARD LVCMOS33 [get_ports _start]
#set_property PACKAGE_PIN W16 [get_ports _slow]
    #set_property IOSTANDARD LVCMOS33 [get_ports _slow]
#set_property PACKAGE_PIN W17 [get_ports _music]
    #set_property IOSTANDARD LVCMOS33 [get_ports _music]
# set_property PACKAGE_PIN W15 [get_ports {sw[4]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {sw[4]}]
# set_property PACKAGE_PIN V15 [get_ports {sw[5]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {sw[5]}]
# set_property PACKAGE_PIN W14 [get_ports {sw[6]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {sw[6]}]
# set_property PACKAGE_PIN W13 [get_ports {sw[7]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {sw[7]}]
# set_property PACKAGE_PIN V2 [get_ports {sw[8]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {sw[8]}]
# set_property PACKAGE_PIN T3 [get_ports {sw[9]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {sw[9]}]
# set_property PACKAGE_PIN T2 [get_ports {sw[10]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {sw[10]}]
# set_property PACKAGE_PIN R3 [get_ports {sw[11]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {sw[11]}]
# set_property PACKAGE_PIN W2 [get_ports {sw[12]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {sw[12]}]
# set_property PACKAGE_PIN U1 [get_ports {sw[13]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {sw[13]}]
set_property PACKAGE_PIN T1 [get_ports _mute]
    set_property IOSTANDARD LVCMOS33 [get_ports _mute]
set_property PACKAGE_PIN R2 [get_ports _mode]
   set_property IOSTANDARD LVCMOS33 [get_ports _mode]

# LEDs
set_property PACKAGE_PIN U16 [get_ports {_led[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {_led[0]}]
set_property PACKAGE_PIN E19 [get_ports {_led[1]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {_led[1]}]
set_property PACKAGE_PIN U19 [get_ports {_led[2]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {_led[2]}]
set_property PACKAGE_PIN V19 [get_ports {_led[3]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {_led[3]}]
set_property PACKAGE_PIN W18 [get_ports {_led[4]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {_led[4]}]
set_property PACKAGE_PIN U15 [get_ports {_led[5]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {_led[5]}]
set_property PACKAGE_PIN U14 [get_ports {_led[6]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {_led[6]}]
set_property PACKAGE_PIN V14 [get_ports {_led[7]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {_led[7]}]
set_property PACKAGE_PIN V13 [get_ports {_led[8]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {_led[8]}]
set_property PACKAGE_PIN V3 [get_ports {_led[9]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {_led[9]}]
set_property PACKAGE_PIN W3 [get_ports {_led[10]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {_led[10]}]
set_property PACKAGE_PIN U3 [get_ports {_led[11]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {_led[11]}]
set_property PACKAGE_PIN P3 [get_ports {_led[12]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {_led[12]}]
set_property PACKAGE_PIN N3 [get_ports {_led[13]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {_led[13]}]
set_property PACKAGE_PIN P1 [get_ports {_led[14]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {_led[14]}]
set_property PACKAGE_PIN L1 [get_ports {_led[15]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {_led[15]}]

# 7 segment display
set_property PACKAGE_PIN W7 [get_ports {DISPLAY[0]}]
   set_property IOSTANDARD LVCMOS33 [get_ports {DISPLAY[0]}]
set_property PACKAGE_PIN W6 [get_ports {DISPLAY[1]}]
   set_property IOSTANDARD LVCMOS33 [get_ports {DISPLAY[1]}]
set_property PACKAGE_PIN U8 [get_ports {DISPLAY[2]}]
   set_property IOSTANDARD LVCMOS33 [get_ports {DISPLAY[2]}]
set_property PACKAGE_PIN V8 [get_ports {DISPLAY[3]}]
   set_property IOSTANDARD LVCMOS33 [get_ports {DISPLAY[3]}]
set_property PACKAGE_PIN U5 [get_ports {DISPLAY[4]}]
   set_property IOSTANDARD LVCMOS33 [get_ports {DISPLAY[4]}]
set_property PACKAGE_PIN V5 [get_ports {DISPLAY[5]}]
   set_property IOSTANDARD LVCMOS33 [get_ports {DISPLAY[5]}]
set_property PACKAGE_PIN U7 [get_ports {DISPLAY[6]}]
   set_property IOSTANDARD LVCMOS33 [get_ports {DISPLAY[6]}]

# set_property PACKAGE_PIN V7 [get_ports dp]
#    set_property IOSTANDARD LVCMOS33 [get_ports dp]

set_property PACKAGE_PIN U2 [get_ports {DIGIT[0]}]
   set_property IOSTANDARD LVCMOS33 [get_ports {DIGIT[0]}]
set_property PACKAGE_PIN U4 [get_ports {DIGIT[1]}]
   set_property IOSTANDARD LVCMOS33 [get_ports {DIGIT[1]}]
set_property PACKAGE_PIN V4 [get_ports {DIGIT[2]}]
   set_property IOSTANDARD LVCMOS33 [get_ports {DIGIT[2]}]
set_property PACKAGE_PIN W4 [get_ports {DIGIT[3]}]
   set_property IOSTANDARD LVCMOS33 [get_ports {DIGIT[3]}]

# Buttons
set_property PACKAGE_PIN U18 [get_ports rst]
    set_property IOSTANDARD LVCMOS33 [get_ports rst]
set_property PACKAGE_PIN T18 [get_ports _volUP]
    set_property IOSTANDARD LVCMOS33 [get_ports _volUP]
set_property PACKAGE_PIN U17 [get_ports _volDOWN]
    set_property IOSTANDARD LVCMOS33 [get_ports _volDOWN]
#set_property PACKAGE_PIN T17 [get_ports _startHelper]
    #set_property IOSTANDARD LVCMOS33 [get_ports _startHelper]
#set_property PACKAGE_PIN W19 [get_ports _exitHelper]
    #set_property IOSTANDARD LVCMOS33 [get_ports _exitHelper]

## Pmod Header JA
## Sch name = JA1
# set_property PACKAGE_PIN J1 [get_ports {JA[0]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JA[0]}]
## Sch name = JA2
# set_property PACKAGE_PIN L2 [get_ports {JA[1]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JA[1]}]
## Sch name = JA3
# set_property PACKAGE_PIN J2 [get_ports {JA[2]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JA[2]}]
## Sch name = JA4
# set_property PACKAGE_PIN G2 [get_ports {JA[3]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JA[3]}]
## Sch name = JA7
# set_property PACKAGE_PIN H1 [get_ports {JA[4]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JA[4]}]
## Sch name = JA8
# set_property PACKAGE_PIN K2 [get_ports {JA[5]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JA[5]}]
## Sch name = JA9
# set_property PACKAGE_PIN H2 [get_ports {JA[6]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JA[6]}]
## Sch name = JA10
# set_property PACKAGE_PIN G3 [get_ports {JA[7]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JA[7]}]

## Pmod Header JB
## Sch name = JB1
set_property PACKAGE_PIN A14 [get_ports audio_mclk]
    set_property IOSTANDARD LVCMOS33 [get_ports audio_mclk]
## Sch name = JB2
set_property PACKAGE_PIN A16 [get_ports audio_lrck]
    set_property IOSTANDARD LVCMOS33 [get_ports audio_lrck]
## Sch name = JB3
set_property PACKAGE_PIN B15 [get_ports audio_sck]
    set_property IOSTANDARD LVCMOS33 [get_ports audio_sck]
## Sch name = JB4
set_property PACKAGE_PIN B16 [get_ports audio_sdin]
    set_property IOSTANDARD LVCMOS33 [get_ports audio_sdin]
# ## Sch name = JB7
# set_property PACKAGE_PIN A15 [get_ports rx_mclk]
#    set_property IOSTANDARD LVCMOS33 [get_ports rx_mclk]
# ## Sch name = JB8
# set_property PACKAGE_PIN A17 [get_ports rx_lrck]
#    set_property IOSTANDARD LVCMOS33 [get_ports rx_lrck]
# ## Sch name = JB9
# set_property PACKAGE_PIN C15 [get_ports rx_sclk]
#    set_property IOSTANDARD LVCMOS33 [get_ports rx_sclk]
# ## Sch name = JB10
# set_property PACKAGE_PIN C16 [get_ports rx_data]
#    set_property IOSTANDARD LVCMOS33 [get_ports rx_data]

## Pmod Header JC
## Sch name = JC1
# set_property PACKAGE_PIN K17 [get_ports {JC[0]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JC[0]}]
## Sch name = JC2
# set_property PACKAGE_PIN M18 [get_ports {JC[1]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JC[1]}]
## Sch name = JC3
# set_property PACKAGE_PIN N17 [get_ports {JC[2]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JC[2]}]
## Sch name = JC4
# set_property PACKAGE_PIN P18 [get_ports {JC[3]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JC[3]}]
## Sch name = JC7
# set_property PACKAGE_PIN L17 [get_ports {JC[4]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JC[4]}]
## Sch name = JC8
# set_property PACKAGE_PIN M19 [get_ports {JC[5]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JC[5]}]
## Sch name = JC9
# set_property PACKAGE_PIN P17 [get_ports {JC[6]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JC[6]}]
## Sch name = JC10
# set_property PACKAGE_PIN R18 [get_ports {JC[7]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JC[7]}]

## Pmod Header JXADC
## Sch name = XA1_P
# set_property PACKAGE_PIN J3 [get_ports {JXADC[0]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[0]}]
## Sch name = XA2_P
# set_property PACKAGE_PIN L3 [get_ports {JXADC[1]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[1]}]
## Sch name = XA3_P
# set_property PACKAGE_PIN M2 [get_ports {JXADC[2]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[2]}]
## Sch name = XA4_P
# set_property PACKAGE_PIN N2 [get_ports {JXADC[3]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[3]}]
## Sch name = XA1_N
# set_property PACKAGE_PIN K3 [get_ports {JXADC[4]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[4]}]
## Sch name = XA2_N
# set_property PACKAGE_PIN M3 [get_ports {JXADC[5]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[5]}]
## Sch name = XA3_N
# set_property PACKAGE_PIN M1 [get_ports {JXADC[6]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[6]}]
## Sch name = XA4_N
# set_property PACKAGE_PIN N1 [get_ports {JXADC[7]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[7]}]

## VGA Connector
# set_property PACKAGE_PIN G19 [get_ports {vgaRed[0]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[0]}]
# set_property PACKAGE_PIN H19 [get_ports {vgaRed[1]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[1]}]
# set_property PACKAGE_PIN J19 [get_ports {vgaRed[2]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[2]}]
# set_property PACKAGE_PIN N19 [get_ports {vgaRed[3]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[3]}]
# set_property PACKAGE_PIN N18 [get_ports {vgaBlue[0]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[0]}]
# set_property PACKAGE_PIN L18 [get_ports {vgaBlue[1]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[1]}]
# set_property PACKAGE_PIN K18 [get_ports {vgaBlue[2]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[2]}]
# set_property PACKAGE_PIN J18 [get_ports {vgaBlue[3]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[3]}]
# set_property PACKAGE_PIN J17 [get_ports {vgaGreen[0]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[0]}]
# set_property PACKAGE_PIN H17 [get_ports {vgaGreen[1]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[1]}]
# set_property PACKAGE_PIN G17 [get_ports {vgaGreen[2]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[2]}]
# set_property PACKAGE_PIN D17 [get_ports {vgaGreen[3]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[3]}]
# set_property PACKAGE_PIN P19 [get_ports hsync]
#    set_property IOSTANDARD LVCMOS33 [get_ports hsync]
# set_property PACKAGE_PIN R19 [get_ports vsync]
#    set_property IOSTANDARD LVCMOS33 [get_ports vsync]

## USB-RS232 Interface
# set_property PACKAGE_PIN B18 [get_ports RsRx]
#    set_property IOSTANDARD LVCMOS33 [get_ports RsRx]
# set_property PACKAGE_PIN A18 [get_ports RsTx]
#    set_property IOSTANDARD LVCMOS33 [get_ports RsTx]

## USB HID (PS/2)
set_property PACKAGE_PIN C17 [get_ports PS2_CLK]
   set_property IOSTANDARD LVCMOS33 [get_ports PS2_CLK]
   set_property PULLUP true [get_ports PS2_CLK]
set_property PACKAGE_PIN B17 [get_ports PS2_DATA]
   set_property IOSTANDARD LVCMOS33 [get_ports PS2_DATA]
   set_property PULLUP true [get_ports PS2_DATA]