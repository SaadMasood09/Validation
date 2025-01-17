create_design Bitcoin_Double_SHA256_raptor_project_default_1GE100-ES1
target_device 1GE100-ES1
add_design_file ./Src/misc/HandShake.vhd
add_design_file ./Src/misc/SyncReset.vhd
add_design_file ./Src/sha256core/sha_256_pkg.vhd
add_design_file ./Src/misc/pipelines_without_reset.vhd
add_design_file ./Src/misc/sdpram_infer_read_first_outreg.vhd
add_design_file ./Src/misc/sdpram_infer_read_first_outreset.vhd
add_design_file ./Src/sha256core/sha_256_chunk.vhd
add_design_file ./Src/sha256core/sha_256_comp_func.vhd
add_design_file ./Src/sha256core/sha_256_comp_func_1c.vhd
add_design_file ./Src/sha256core/sha_256_ext_func.vhd
add_design_file ./Src/sha256core/sha_256_ext_func_1c.vhd
add_design_file ./Src/misc/sync_fifo_infer.vhd
add_design_file ./Src/sha256core/btc_dsha.vhd
add_design_file ./Src/misc/edgedtc.vhd
add_design_file ./Src/misc/sync_fifo_fwft_infer.vhd
add_design_file ./Src/misc/sdpram_infer_read_first.vhd
set_top_module btc_dsha
add_constraint_file Bitcoin_Double_SHA256_raptor_project_default_1GE100-ES1/constraints.sdc
analyze
