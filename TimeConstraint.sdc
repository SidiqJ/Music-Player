## DEVICE  "EP4CE115F29C8"

#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3


#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {altera_reserved_tck} -period 100.000 -waveform { 0.000 50.000 } [get_ports {altera_reserved_tck}]
create_clock -name {main_clk_50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************



#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay -max -clock [get_clocks {main_clk_50}]  3.000 [get_ports {KEY[0]}]
set_input_delay -add_delay -min -clock [get_clocks {main_clk_50}]  2.000 [get_ports {KEY[0]}]
set_input_delay -add_delay -max -clock [get_clocks {main_clk_50}]  3.000 [get_ports {KEY[1]}]
set_input_delay -add_delay -min -clock [get_clocks {main_clk_50}]  2.000 [get_ports {KEY[1]}]
set_input_delay -add_delay -max -clock [get_clocks {main_clk_50}]  3.000 [get_ports {KEY[2]}]
set_input_delay -add_delay -min -clock [get_clocks {main_clk_50}]  2.000 [get_ports {KEY[2]}]
set_input_delay -add_delay -max -clock [get_clocks {main_clk_50}]  3.000 [get_ports {KEY[3]}]
set_input_delay -add_delay -min -clock [get_clocks {main_clk_50}]  2.000 [get_ports {KEY[3]}]
set_input_delay -add_delay -max -clock [get_clocks {main_clk_50}]  3.000 [get_ports {altera_reserved_tck}]
set_input_delay -add_delay -min -clock [get_clocks {main_clk_50}]  2.000 [get_ports {altera_reserved_tck}]
set_input_delay -add_delay -max -clock [get_clocks {main_clk_50}]  3.000 [get_ports {altera_reserved_tdi}]
set_input_delay -add_delay -min -clock [get_clocks {main_clk_50}]  2.000 [get_ports {altera_reserved_tdi}]
set_input_delay -add_delay -max -clock [get_clocks {main_clk_50}]  3.000 [get_ports {altera_reserved_tms}]
set_input_delay -add_delay -min -clock [get_clocks {main_clk_50}]  2.000 [get_ports {altera_reserved_tms}]

set_input_delay -add_delay -max -clock [get_clocks {main_clk_50}]  3.000 [get_ports {CLOCK}]
set_input_delay -add_delay -min -clock [get_clocks {main_clk_50}]  2.000 [get_ports {CLOCK}]

#**************************************************************
# Set Output Delay
#**************************************************************
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {LEDG[0]}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {LEDG[1]}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {LEDG[2]}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {LEDG[3]}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {LEDG[4]}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {LEDG[5]}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {LEDG[6]}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {LEDG[7]}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {altera_reserved_tdo}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {HEX0[0]}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {HEX0[1]}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {HEX0[2]}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {HEX0[3]}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {HEX0[4]}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {HEX0[5]}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {HEX0[6]}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {HEX0[7]}]

set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {HEX1[0]}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {HEX1[1]}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {HEX1[2]}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {HEX1[3]}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {HEX1[4]}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {HEX1[5]}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {HEX1[6]}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {HEX1[7]}]
set_output_delay -add_delay  -clock [get_clocks {main_clk_50}]  2.000 [get_ports {VGA_CLK}]

#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 
set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 


#**************************************************************
# Set False Path
#**************************************************************

#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

