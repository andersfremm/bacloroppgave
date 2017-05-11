# Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, the Altera Quartus II License Agreement,
# the Altera MegaCore Function License Agreement, or other 
# applicable license agreement, including, without limitation, 
# that your use is for the sole purpose of programming logic 
# devices manufactured by Altera and sold by Altera or its 
# authorized distributors.  Please refer to the applicable 
# agreement for further details.

# Quartus II 64-Bit Version 14.1.0 Build 186 12/03/2014 SJ Web Edition
# File: C:\cloud\autojtag\trunk\src\cyclone_v\top.tcl
# Generated on: Wed Aug 05 16:16:31 2015

set_location_assignment PIN_Y2 -to ClkCpu

# VCC3P3 - J4.2
# GND    - J4.10
# GPIO_A - J4.5
set_location_assignment PIN_G12 -to serial0RxI
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to serial0RxI
#set_instance_assignment -name FAST_INPUT_REGISTER ON -to serial0RxI
# GPIO_B - J4.6
set_location_assignment PIN_G9 -to serial0TxO
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to serial0TxO
#set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to serial0TxO
# GPIO_C - J4.29
set_location_assignment PIN_J13 -to serial0TxEnO
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to serial0TxEnO
#set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to serial0TxEnO


set_location_assignment PIN_E21 -to i0rb_ledled0O
set_instance_assignment -name FAST_OUTPUT_REGISTER OFF -to i0rb_ledled0O

set_location_assignment PIN_E22 -to i0rb_ledled1O
set_location_assignment PIN_E25 -to i0rb_ledled2O
set_location_assignment PIN_E24 -to i0rb_ledled3O
set_location_assignment PIN_G19 -to Cpu0ActiveO
set_location_assignment PIN_F19 -to Cpu1ActiveO
set_location_assignment PIN_D22 -to nRstO
set_location_assignment PIN_D25 -to MdioIO
set_location_assignment PIN_D23 -to Mdc


set_location_assignment PIN_B17 -to TxClk
set_location_assignment PIN_C18 -to TxD[0]
set_location_assignment PIN_D19 -to TxD[1]
set_location_assignment PIN_A19 -to TxD[2]
set_location_assignment PIN_B19 -to TxD[3]
set_location_assignment PIN_A18 -to TxEn
set_location_assignment PIN_B18 -to TxEr
set_location_assignment PIN_E15 -to Col
set_location_assignment PIN_D15 -to CRS

set_location_assignment PIN_Y23 -to sw17

set_location_assignment PIN_A15 -to RXClk
set_location_assignment PIN_C16 -to RXdata[0]
set_location_assignment PIN_D16 -to RXdata[1]
set_location_assignment PIN_D17 -to RXdata[2]
set_location_assignment PIN_C15 -to RXdata[3]
set_location_assignment PIN_C17 -to RXdv
set_location_assignment PIN_D18 -to RXErr


set_location_assignment PIN_AH23 -to DebugO[0]
set_location_assignment PIN_AF20 -to DebugO[1]
set_location_assignment PIN_AE20 -to DebugO[2]
set_location_assignment PIN_AH22 -to DebugO[3]
set_location_assignment PIN_AG26 -to DebugO[4]
set_location_assignment PIN_AH26 -to DebugO[5]
set_location_assignment PIN_AG23 -to DebugO[6]
set_location_assignment PIN_AF26 -to DebugO[7]

set_instance_assignment -name FAST_INPUT_REGISTER  ON -to serial0RxI
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to serial0TxO
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to serial0TxEnO

