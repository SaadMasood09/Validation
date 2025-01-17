# -name is used for creating virtual clock and for actual clock -name option will not be used
create_clock -period 2.5 -name clk
set_input_delay 1 -clock clk [get_ports {*}]
set_output_delay 1 -clock clk [get_ports {*}]

set_property mode Mode_BP_SDR_A_RX HP_1_CC_28_14P
set_pin_loc a HP_1_CC_28_14P

set_property mode Mode_BP_SDR_A_RX HP_1_26_13P
set_pin_loc b HP_1_26_13P

set_property mode  Mode_BP_SDR_A_TX HP_1_24_12P
set_pin_loc c HP_1_24_12P

