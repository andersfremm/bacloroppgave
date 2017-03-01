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

# Quartus II: Generate Tcl File for Project
# File: sap.tcl
# Generated on: Wed Sep 02 10:33:43 2015

# Load Quartus II Tcl Project package
package require ::quartus::project
package require ::quartus::flow

#set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "demo"]} {
		puts "Project demo is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists demo]} {
		project_open -revision demo demo
	} else {
		project_new -revision demo demo
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
   set_global_assignment -name FAMILY "Cyclone IV E"
   set_global_assignment -name DEVICE EP4CE115F29C7
   set_global_assignment -name ORIGINAL_QUARTUS_VERSION 14.1.0
   set_global_assignment -name PROJECT_CREATION_TIME_DATE "09:25:34  SEPTEMBER 01, 2015"
   set_global_assignment -name LAST_QUARTUS_VERSION 14.1.0
   set_global_assignment -name SEARCH_PATH unisim
   set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
   set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (VHDL)"
   set_global_assignment -name EDA_OUTPUT_DATA_FORMAT VHDL -section_id eda_simulation
   set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id demo
   set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
   set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top

   # Read lists of source files
   source [file normalize ../autoreg/filelist_autoreg_common.tcl]
   source [file normalize ../autoreg/filelist_autoreg_jtag.tcl]
   source [file normalize ../autoreg/filelist_autoreg_serial.tcl]
   source [file normalize ../filelist_technology.tcl]
   source [file normalize ../mac_ip/filelist.tcl]
   # Top level files
   source [file normalize ../filelist.tcl]
   # Autoreg generated files
   source [file normalize ../autoreg/filelist.tcl]
   # Read constraints file
   set_global_assignment -name SDC_FILE  ./demo.sdc
   # Read pin file
   source  ./pin.tcl

   set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "2.5 V"
   set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id demo
   
   # Commit assignments
   #export_assignments
   execute_flow -compile
   # Close project
   if {$need_to_close_project} {
   	project_close -dont_export_assignments
   }
}
