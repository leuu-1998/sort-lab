## Generated SDC file "sorter.sdc"

## Copyright (C) 2018  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

## DATE    "Sat Oct 02 20:46:28 2021"

##
## DEVICE  "5CSEMA5F31C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {clock} -period 12.500 -waveform { 0.000 6.250 } [get_ports {clock}]
create_clock -name {clock_input} -period 12.500 -waveform { 0.000 6.250 } 
create_clock -name {clock_output} -period 12.500 -waveform { 0.000 6.250 } 


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************

set_clock_latency -source   0.000 [get_clocks {clock}]
set_clock_latency -source -late  1.000 [get_clocks {clock_output}]
set_clock_latency -source -early  0.900 [get_clocks {clock_output}]


#**************************************************************
# Set Clock Uncertainty
#**************************************************************

derive_clock_uncertainty


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay -max -clock [get_clocks {clock_input}]  0.850 [get_ports {datain[0]}]
set_input_delay -add_delay -min -clock [get_clocks {clock_input}]  0.600 [get_ports {datain[0]}]
set_input_delay -add_delay -max -clock [get_clocks {clock_input}]  0.850 [get_ports {datain[1]}]
set_input_delay -add_delay -min -clock [get_clocks {clock_input}]  0.600 [get_ports {datain[1]}]
set_input_delay -add_delay -max -clock [get_clocks {clock_input}]  0.850 [get_ports {datain[2]}]
set_input_delay -add_delay -min -clock [get_clocks {clock_input}]  0.600 [get_ports {datain[2]}]
set_input_delay -add_delay -max -clock [get_clocks {clock_input}]  0.850 [get_ports {datain[3]}]
set_input_delay -add_delay -min -clock [get_clocks {clock_input}]  0.600 [get_ports {datain[3]}]
set_input_delay -add_delay -max -clock [get_clocks {clock_input}]  0.850 [get_ports {go}]
set_input_delay -add_delay -min -clock [get_clocks {clock_input}]  0.600 [get_ports {go}]
set_input_delay -add_delay -max -clock [get_clocks {clock_input}]  0.850 [get_ports {radd[0]}]
set_input_delay -add_delay -min -clock [get_clocks {clock_input}]  0.600 [get_ports {radd[0]}]
set_input_delay -add_delay -max -clock [get_clocks {clock_input}]  0.850 [get_ports {radd[1]}]
set_input_delay -add_delay -min -clock [get_clocks {clock_input}]  0.600 [get_ports {radd[1]}]
set_input_delay -add_delay -max -clock [get_clocks {clock_input}]  0.850 [get_ports {radd[2]}]
set_input_delay -add_delay -min -clock [get_clocks {clock_input}]  0.600 [get_ports {radd[2]}]
set_input_delay -add_delay -max -clock [get_clocks {clock_input}]  0.850 [get_ports {resetn}]
set_input_delay -add_delay -min -clock [get_clocks {clock_input}]  0.600 [get_ports {resetn}]
set_input_delay -add_delay -max -clock [get_clocks {clock_input}]  0.850 [get_ports {wrinit}]
set_input_delay -add_delay -min -clock [get_clocks {clock_input}]  0.600 [get_ports {wrinit}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay -max -clock [get_clocks {clock_output}]  0.950 [get_ports {dataout[0]}]
set_output_delay -add_delay -min -clock [get_clocks {clock_output}]  0.800 [get_ports {dataout[0]}]
set_output_delay -add_delay -max -clock [get_clocks {clock_output}]  0.950 [get_ports {dataout[1]}]
set_output_delay -add_delay -min -clock [get_clocks {clock_output}]  0.800 [get_ports {dataout[1]}]
set_output_delay -add_delay -max -clock [get_clocks {clock_output}]  0.950 [get_ports {dataout[2]}]
set_output_delay -add_delay -min -clock [get_clocks {clock_output}]  0.800 [get_ports {dataout[2]}]
set_output_delay -add_delay -max -clock [get_clocks {clock_output}]  0.950 [get_ports {dataout[3]}]
set_output_delay -add_delay -min -clock [get_clocks {clock_output}]  0.800 [get_ports {dataout[3]}]
set_output_delay -add_delay -max -clock [get_clocks {clock_output}]  0.950 [get_ports {done}]
set_output_delay -add_delay -min -clock [get_clocks {clock_output}]  0.800 [get_ports {done}]


#**************************************************************
# Set Clock Groups
#**************************************************************



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

