create_clock -period 2.5 Clk_i
set_input_delay 0.1 -clock Clk_i [get_ports {*}]
set_output_delay 0.1 -clock Clk_i [get_ports {*}]