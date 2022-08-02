#!/usr/bin/tclsh
#set RTL_HOME	"$PRJ_HOME/rtl/catx"
set CATX_FPGA_HOME "$PRJ_HOME/fpga/vu440"
set FILE_LIST	""
set INCLUDE_DIR	""

#ltec
lappend INCLUDE_DIR	$PRJ_HOME/rtl/catx/lte/include


lappend FILE_LIST	$CATX_FPGA_HOME/catx/include/catx_ltex.vh
#ltec
#lted2ltec fifo
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_fft/lted2ltec_fifo.v
#downlink fifo
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_ffd/mac_downlink.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_ffd/mac_ram_read.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_ffd/sw_async_fifo.v
#ltec_crm
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_crm/ltec_crm.v

#ltec_top
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_top/ltec.v
#ltec axi interface
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_axi/ltec_axi_arbiter.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_axi/ltec_axi_slave.v
#tur code
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_acc/tur/tur.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_acc/tur/dp384x96w16.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_acc/tur/dp384x96w8.v

lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_acc/tur/tur_alpllr.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_acc/tur/tur_betallr.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_acc/tur/tur_ctr.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_acc/tur/tur_iag.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_acc/tur/tur_mux.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_acc/tur/tur_ram.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_acc/tur/tur_sctr.v
#sch code
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_acc/dbp_sch/dbp_sch.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_acc/dbp_sch/dbp_sch_mem.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_acc/dbp_sch/dbp_sch_ctrl.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_acc/dbp_sch/dbp_sch_rhr.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_acc/dbp_sch/dbp_sch_crc.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_acc/dbp_sch/dbp_sch_pre.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_acc/dbp_sch/dbps_para.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_acc/dbp_sch/dpram_64x1600.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_acc/dbp_sch/spram_48x230000.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_acc/dbp_sch/spram_48x21600.v
#cppi code
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_acc/cppi_c/cppi_c.v
#acc_top code
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/rtl/ltec_acc/acc_top/ltec_acc.v

#rambist wrapper
#sch wrapper

lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/model/rambist/Mwrapper_sp10816x48w8.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/model/rambist/Mwrapper_sp8192x48w8.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/model/rambist/Mwrapper_dp1024x64w8.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/model/rambist/Mwrapper_dp352x64w8.v
#tur wrapper
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/model/rambist/Mwrapper_sp384x104w8.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/model/rambist/Mwrapper_sp64x96w1.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/model/rambist/Mwrapper_dp384x48w4.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/model/rambist/Mwrapper_dp384x48w8.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/model/rambist/Mwrapper_dp96x32w32.v
#fifo
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/model/fifo/DW_fifoctl_s1_df.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/model/fifo/DW_fifo_s1_df.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/model/fifo/DW_fifoctl_s2_sf.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/model/fifo/DW_fifo_s2_sf.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/model/fifo/DW_ram_r_w_s_dff.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/model/fifo/DW_fifo_s1_sf.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/model/fifo/DW_fifoctl_s1_sf.v
#div
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/model/div/DW_div.v
#mult
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/model/mult/DW02_mult_2_stage.v
lappend FILE_LIST	$PRJ_HOME/rtl/catx/lte/ltec/model/mult/DW_mult_2_wrapper_8x8.v

read_verilog -sv $FILE_LIST

#change FILE_TYPE
#set_property file_type {Verilog Header} [get_files  znanop_macro.vh]
set_property is_global_include true [get_files catx_ltex.vh]
