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

#
#STEP2 load design source/ip/constraint
#

source ./catx_ltex_read_rtl.tcl
#source ./znanop_subsys_read_rtl.tcl
source ./catx_ltex_read_ip.tcl
source ./catx_ltex_read_xdc.tcl


puts "**********start_synth_time = [clock format [clock seconds] -format "%Y-%m-%d %H:%M:%S"]**********"
#
#STEP3 synthesis and produce dcp and rpt 
#
synth_design -top $DESIGN_NAME -include_dirs $INCLUDE_DIR

write_checkpoint -force $OUTPUT_DIR/post_synth.dcp
report_utilization -file $OUTPUT_DIR/post_synth_util.rpt
report_timing -sort_by group -max_paths 5 -file $OUTPUT_DIR/post_synth_timing.rpt
puts "**********finish_synth_time = [clock format [clock seconds] -format "%Y-%m-%d %H:%M:%S"]**********"

#
#STEP4 placement and produce dcp and rpt 
#
opt_design
#power optimization should before placement
power_opt_design

place_design

#physical optimization
phys_opt_design

write_checkpoint -force $OUTPUT_DIR/post_place.dcp
report_utilization -file $OUTPUT_DIR/post_palce_util.rpt
report_clock_utilization -file $OUTPUT_DIR/post_place_util.rpt
report_timing -sort_by group -max_paths 5 -file $OUTPUT_DIR/post_place_timing.rpt
puts "**********finish_place_time = [clock format [clock seconds] -format "%Y-%m-%d %H:%M:%S"]**********"


#
#STEP5 routing and produce dcp and rpt, then write final result
#
route_design

write_checkpoint -force $OUTPUT_DIR/post_route.dcp
report_utilization -file $OUTPUT_DIR/post_route_util.rpt
report_timing -sort_by group -max_paths 10 -file $OUTPUT_DIR/post_route_timing.rpt
report_timing_summary -setup -file $OUTPUT_DIR/post_route_timing_summary.rpt
report_drc -file $OUTPUT_DIR/post_route_drc.rpt

write_verilog -force $OUTPUT_DIR/${DESIGN_NAME}_final_netlist.v
write_xdc -no_fixed_only -force $OUTPUT_DIR/${DESIGN_NAME}_final.xdc
puts "**********finish_route_time = [clock format [clock seconds] -format "%Y-%m-%d %H:%M:%S"]**********"


#
#STEP6 write bitstream
#
write_bitstream -force $OUTPUT_DIR/$DESIGN_NAME.bit
puts "**********finish_bitstream_time = [clock format [clock seconds] -format "%Y-%m-%d %H:%M:%S"]**********"
