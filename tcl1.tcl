#!/usr/bin/tclsh

#
#STEP1 set non-project mode variables
#

set PRJ_HOME	"../../../.."
#set DESIGN_NAME	znanop_ttp_subsys
set DESIGN_NAME	ltec
set OUTPUT_DIR	"../output/${DESIGN_NAME}_output"	
set FPGA_PART xcvu440-flga2892-1-c
#create output dir
file mkdir $OUTPUT_DIR

set_part $FPGA_PART
