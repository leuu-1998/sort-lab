-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/03/2021 22:08:30"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sorter IS
    PORT (
	clock : IN std_logic;
	resetn : IN std_logic;
	go : IN std_logic;
	wrinit : IN std_logic;
	datain : IN std_logic_vector(3 DOWNTO 0);
	radd : IN std_logic_vector(2 DOWNTO 0);
	dataout : BUFFER std_logic_vector(3 DOWNTO 0);
	done : BUFFER std_logic
	);
END sorter;

-- Design Ports Information
-- dataout[0]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dataout[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dataout[2]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dataout[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- done	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- radd[0]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- radd[1]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- radd[2]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wrinit	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datain[0]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datain[1]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datain[2]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datain[3]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- resetn	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- go	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF sorter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_go : std_logic;
SIGNAL ww_wrinit : std_logic;
SIGNAL ww_datain : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_radd : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_dataout : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_done : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \datain[0]~input_o\ : std_logic;
SIGNAL \control|Selector1~0_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \control|state.S5~q\ : std_logic;
SIGNAL \control|Selector4~0_combout\ : std_logic;
SIGNAL \control|Selector3~0_combout\ : std_logic;
SIGNAL \control|Selector3~1_combout\ : std_logic;
SIGNAL \control|Selector3~2_combout\ : std_logic;
SIGNAL \control|next_state.S5~0_combout\ : std_logic;
SIGNAL \control|state.S5~DUPLICATE_q\ : std_logic;
SIGNAL \control|Selector5~0_combout\ : std_logic;
SIGNAL \control|Selector8~0_combout\ : std_logic;
SIGNAL \control|state.S4~q\ : std_logic;
SIGNAL \control|Selector2~0_combout\ : std_logic;
SIGNAL \control|Selector0~0_combout\ : std_logic;
SIGNAL \control|ci[2]~DUPLICATE_q\ : std_logic;
SIGNAL \go~input_o\ : std_logic;
SIGNAL \control|state.S0~0_combout\ : std_logic;
SIGNAL \control|state.S0~q\ : std_logic;
SIGNAL \control|Selector6~0_combout\ : std_logic;
SIGNAL \control|state.S1~q\ : std_logic;
SIGNAL \control|Selector7~0_combout\ : std_logic;
SIGNAL \control|state.S2~q\ : std_logic;
SIGNAL \control|state.S7~0_combout\ : std_logic;
SIGNAL \control|state.S7~_Duplicate_1_q\ : std_logic;
SIGNAL \datos|dataout[3]~1_combout\ : std_logic;
SIGNAL \control|WideOr1~combout\ : std_logic;
SIGNAL \control|WideOr0~combout\ : std_logic;
SIGNAL \datos|Decoder2~6_combout\ : std_logic;
SIGNAL \datos|Decoder2~4_combout\ : std_logic;
SIGNAL \wrinit~input_o\ : std_logic;
SIGNAL \datos|Decoder2~7_combout\ : std_logic;
SIGNAL \datos|Decoder2~1_combout\ : std_logic;
SIGNAL \datos|R~9_combout\ : std_logic;
SIGNAL \datos|Decoder2~2_combout\ : std_logic;
SIGNAL \datos|R~16_combout\ : std_logic;
SIGNAL \datos|R~15_combout\ : std_logic;
SIGNAL \datos|R~17_combout\ : std_logic;
SIGNAL \datos|R~4_combout\ : std_logic;
SIGNAL \datain[3]~input_o\ : std_logic;
SIGNAL \datos|Decoder2~5_combout\ : std_logic;
SIGNAL \datos|R~124_combout\ : std_logic;
SIGNAL \datos|Decoder2~3_combout\ : std_logic;
SIGNAL \datos|R~115_combout\ : std_logic;
SIGNAL \datos|R~114_combout\ : std_logic;
SIGNAL \datos|R~116_combout\ : std_logic;
SIGNAL \datos|R~100_combout\ : std_logic;
SIGNAL \datain[2]~input_o\ : std_logic;
SIGNAL \datos|R~99_combout\ : std_logic;
SIGNAL \datos|R~101_combout\ : std_logic;
SIGNAL \datain[1]~input_o\ : std_logic;
SIGNAL \datos|R~73_combout\ : std_logic;
SIGNAL \datos|R~64_combout\ : std_logic;
SIGNAL \datos|R~63_combout\ : std_logic;
SIGNAL \datos|R~65_combout\ : std_logic;
SIGNAL \datos|R[2][1]~q\ : std_logic;
SIGNAL \datos|R~61_combout\ : std_logic;
SIGNAL \datos|R~60_combout\ : std_logic;
SIGNAL \datos|R~62_combout\ : std_logic;
SIGNAL \radd[2]~input_o\ : std_logic;
SIGNAL \radd[0]~input_o\ : std_logic;
SIGNAL \radd[1]~input_o\ : std_logic;
SIGNAL \datos|R[1][0]~11_combout\ : std_logic;
SIGNAL \datos|Equal0~0_combout\ : std_logic;
SIGNAL \datos|R[1][0]~12_combout\ : std_logic;
SIGNAL \datos|R[1][0]~13_combout\ : std_logic;
SIGNAL \datos|R[1][0]~14_combout\ : std_logic;
SIGNAL \datos|R[1][1]~q\ : std_logic;
SIGNAL \datos|R~67_combout\ : std_logic;
SIGNAL \datos|R~66_combout\ : std_logic;
SIGNAL \datos|R~68_combout\ : std_logic;
SIGNAL \datos|R[3][1]~q\ : std_logic;
SIGNAL \datos|Mux0~1_combout\ : std_logic;
SIGNAL \datos|R~69_combout\ : std_logic;
SIGNAL \datos|R~70_combout\ : std_logic;
SIGNAL \datos|R~71_combout\ : std_logic;
SIGNAL \datos|R[4][0]~32_combout\ : std_logic;
SIGNAL \datos|R[4][0]~33_combout\ : std_logic;
SIGNAL \datos|R[4][0]~34_combout\ : std_logic;
SIGNAL \datos|R[4][0]~35_combout\ : std_logic;
SIGNAL \datos|R[4][1]~q\ : std_logic;
SIGNAL \datos|R~76_combout\ : std_logic;
SIGNAL \datos|R~75_combout\ : std_logic;
SIGNAL \datos|R~77_combout\ : std_logic;
SIGNAL \datos|R[6][1]~q\ : std_logic;
SIGNAL \datos|R~79_combout\ : std_logic;
SIGNAL \datos|R~78_combout\ : std_logic;
SIGNAL \datos|R~80_combout\ : std_logic;
SIGNAL \datos|R[7][0]~53_combout\ : std_logic;
SIGNAL \datos|R[7][0]~54_combout\ : std_logic;
SIGNAL \datos|R[7][0]~55_combout\ : std_logic;
SIGNAL \datos|R[7][0]~56_combout\ : std_logic;
SIGNAL \datos|R[7][1]~q\ : std_logic;
SIGNAL \datos|Mux0~0_combout\ : std_logic;
SIGNAL \datos|R~72_combout\ : std_logic;
SIGNAL \datos|R~74_combout\ : std_logic;
SIGNAL \datos|R[5][0]~39_combout\ : std_logic;
SIGNAL \datos|R[5][0]~40_combout\ : std_logic;
SIGNAL \datos|R[5][0]~41_combout\ : std_logic;
SIGNAL \datos|R[5][0]~42_combout\ : std_logic;
SIGNAL \datos|R[5][1]~q\ : std_logic;
SIGNAL \datos|Mux7~0_combout\ : std_logic;
SIGNAL \datos|Decoder2~0_combout\ : std_logic;
SIGNAL \datos|R~58_combout\ : std_logic;
SIGNAL \datos|R~57_combout\ : std_logic;
SIGNAL \datos|R~59_combout\ : std_logic;
SIGNAL \datos|R[0][0]~3_combout\ : std_logic;
SIGNAL \datos|R[0][0]~5_combout\ : std_logic;
SIGNAL \datos|R[0][0]~6_combout\ : std_logic;
SIGNAL \datos|R[0][0]~7_combout\ : std_logic;
SIGNAL \datos|R[0][1]~q\ : std_logic;
SIGNAL \datos|Mux7~1_combout\ : std_logic;
SIGNAL \datos|LessThan0~0_combout\ : std_logic;
SIGNAL \datos|LessThan0~3_combout\ : std_logic;
SIGNAL \datos|R[6][0]~46_combout\ : std_logic;
SIGNAL \datos|R[6][0]~47_combout\ : std_logic;
SIGNAL \datos|R[6][0]~48_combout\ : std_logic;
SIGNAL \datos|R[6][0]~49_combout\ : std_logic;
SIGNAL \datos|R[6][2]~q\ : std_logic;
SIGNAL \datos|R~96_combout\ : std_logic;
SIGNAL \datos|R~97_combout\ : std_logic;
SIGNAL \datos|R~98_combout\ : std_logic;
SIGNAL \datos|R[5][2]~q\ : std_logic;
SIGNAL \datos|R~103_combout\ : std_logic;
SIGNAL \datos|R~102_combout\ : std_logic;
SIGNAL \datos|R~104_combout\ : std_logic;
SIGNAL \datos|R[7][2]~q\ : std_logic;
SIGNAL \datos|Mux5~0_combout\ : std_logic;
SIGNAL \datos|R~88_combout\ : std_logic;
SIGNAL \datos|R~87_combout\ : std_logic;
SIGNAL \datos|R~89_combout\ : std_logic;
SIGNAL \datos|R[2][2]~q\ : std_logic;
SIGNAL \datos|R~91_combout\ : std_logic;
SIGNAL \datos|R~90_combout\ : std_logic;
SIGNAL \datos|R~92_combout\ : std_logic;
SIGNAL \datos|R[3][2]~q\ : std_logic;
SIGNAL \datos|R~85_combout\ : std_logic;
SIGNAL \datos|R~84_combout\ : std_logic;
SIGNAL \datos|R~86_combout\ : std_logic;
SIGNAL \datos|R[1][2]~q\ : std_logic;
SIGNAL \datos|Mux5~1_combout\ : std_logic;
SIGNAL \datos|R~94_combout\ : std_logic;
SIGNAL \datos|R~93_combout\ : std_logic;
SIGNAL \datos|R~95_combout\ : std_logic;
SIGNAL \datos|R[4][2]~q\ : std_logic;
SIGNAL \datos|Mux2~0_combout\ : std_logic;
SIGNAL \datos|R~81_combout\ : std_logic;
SIGNAL \datos|R~82_combout\ : std_logic;
SIGNAL \datos|R~83_combout\ : std_logic;
SIGNAL \datos|R[0][2]~q\ : std_logic;
SIGNAL \datos|Mux2~1_combout\ : std_logic;
SIGNAL \datos|Mux2~2_combout\ : std_logic;
SIGNAL \datos|Mux5~2_combout\ : std_logic;
SIGNAL \datos|Mux1~2_combout\ : std_logic;
SIGNAL \datos|LessThan0~1_combout\ : std_logic;
SIGNAL \datos|R[3][0]~25_combout\ : std_logic;
SIGNAL \datos|R[3][0]~26_combout\ : std_logic;
SIGNAL \datos|R[3][0]~27_combout\ : std_logic;
SIGNAL \datos|R[3][0]~28_combout\ : std_logic;
SIGNAL \datos|R[3][3]~q\ : std_logic;
SIGNAL \datos|R~112_combout\ : std_logic;
SIGNAL \datos|R~111_combout\ : std_logic;
SIGNAL \datos|R~113_combout\ : std_logic;
SIGNAL \datos|R[2][3]~q\ : std_logic;
SIGNAL \datos|R~105_combout\ : std_logic;
SIGNAL \datos|R~106_combout\ : std_logic;
SIGNAL \datos|R~107_combout\ : std_logic;
SIGNAL \datos|R[0][3]~q\ : std_logic;
SIGNAL \datos|Mux1~1_combout\ : std_logic;
SIGNAL \datos|R~123_combout\ : std_logic;
SIGNAL \datos|R~125_combout\ : std_logic;
SIGNAL \datos|R[6][3]~q\ : std_logic;
SIGNAL \datos|R~118_combout\ : std_logic;
SIGNAL \datos|R~117_combout\ : std_logic;
SIGNAL \datos|R~119_combout\ : std_logic;
SIGNAL \datos|R[4][3]~q\ : std_logic;
SIGNAL \datos|R~127_combout\ : std_logic;
SIGNAL \datos|R~126_combout\ : std_logic;
SIGNAL \datos|R~128_combout\ : std_logic;
SIGNAL \datos|R[7][3]~q\ : std_logic;
SIGNAL \datos|Mux1~0_combout\ : std_logic;
SIGNAL \datos|R~108_combout\ : std_logic;
SIGNAL \datos|R~109_combout\ : std_logic;
SIGNAL \datos|R~110_combout\ : std_logic;
SIGNAL \datos|R[1][3]~q\ : std_logic;
SIGNAL \datos|Mux4~1_combout\ : std_logic;
SIGNAL \datos|R~121_combout\ : std_logic;
SIGNAL \datos|R~120_combout\ : std_logic;
SIGNAL \datos|R~122_combout\ : std_logic;
SIGNAL \datos|R[5][3]~q\ : std_logic;
SIGNAL \datos|Mux4~0_combout\ : std_logic;
SIGNAL \datos|Mux4~2_combout\ : std_logic;
SIGNAL \datos|LessThan0~2_combout\ : std_logic;
SIGNAL \datos|R[2][0]~18_combout\ : std_logic;
SIGNAL \datos|R[2][0]~19_combout\ : std_logic;
SIGNAL \datos|R[2][0]~20_combout\ : std_logic;
SIGNAL \datos|R[2][0]~21_combout\ : std_logic;
SIGNAL \datos|R[2][0]~q\ : std_logic;
SIGNAL \datos|R~23_combout\ : std_logic;
SIGNAL \datos|R~22_combout\ : std_logic;
SIGNAL \datos|R~24_combout\ : std_logic;
SIGNAL \datos|R[3][0]~q\ : std_logic;
SIGNAL \datos|R~0_combout\ : std_logic;
SIGNAL \datos|R~1_combout\ : std_logic;
SIGNAL \datos|R~2_combout\ : std_logic;
SIGNAL \datos|R[0][0]~q\ : std_logic;
SIGNAL \datos|Mux3~1_combout\ : std_logic;
SIGNAL \datos|R~8_combout\ : std_logic;
SIGNAL \datos|R~10_combout\ : std_logic;
SIGNAL \datos|R[1][0]~q\ : std_logic;
SIGNAL \datos|Mux6~1_combout\ : std_logic;
SIGNAL \datos|R~51_combout\ : std_logic;
SIGNAL \datos|R~50_combout\ : std_logic;
SIGNAL \datos|R~52_combout\ : std_logic;
SIGNAL \datos|R[7][0]~q\ : std_logic;
SIGNAL \datos|R~37_combout\ : std_logic;
SIGNAL \datos|R~36_combout\ : std_logic;
SIGNAL \datos|R~38_combout\ : std_logic;
SIGNAL \datos|R[5][0]~q\ : std_logic;
SIGNAL \datos|Mux6~0_combout\ : std_logic;
SIGNAL \datos|R~30_combout\ : std_logic;
SIGNAL \datos|R~29_combout\ : std_logic;
SIGNAL \datos|R~31_combout\ : std_logic;
SIGNAL \datos|R[4][0]~q\ : std_logic;
SIGNAL \datos|Mux3~0_combout\ : std_logic;
SIGNAL \datos|R~43_combout\ : std_logic;
SIGNAL \datos|R~44_combout\ : std_logic;
SIGNAL \datos|R~45_combout\ : std_logic;
SIGNAL \datos|R[6][0]~q\ : std_logic;
SIGNAL \datos|dataout~2_combout\ : std_logic;
SIGNAL \datos|process_0~0_combout\ : std_logic;
SIGNAL \datos|dataout~0_combout\ : std_logic;
SIGNAL \datos|dataout~3_combout\ : std_logic;
SIGNAL \datos|dataout[3]~4_combout\ : std_logic;
SIGNAL \datos|dataout~5_combout\ : std_logic;
SIGNAL \datos|dataout~6_combout\ : std_logic;
SIGNAL \datos|dataout~7_combout\ : std_logic;
SIGNAL \datos|dataout~9_combout\ : std_logic;
SIGNAL \datos|dataout~8_combout\ : std_logic;
SIGNAL \datos|dataout~10_combout\ : std_logic;
SIGNAL \datos|dataout~12_combout\ : std_logic;
SIGNAL \datos|dataout~11_combout\ : std_logic;
SIGNAL \datos|dataout~13_combout\ : std_logic;
SIGNAL \control|state.S7~q\ : std_logic;
SIGNAL \datos|dataout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \control|ci\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \control|cj\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \control|ALT_INV_ci[2]~DUPLICATE_q\ : std_logic;
SIGNAL \control|ALT_INV_state.S5~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_go~input_o\ : std_logic;
SIGNAL \ALT_INV_datain[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_datain[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_datain[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_datain[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_wrinit~input_o\ : std_logic;
SIGNAL \ALT_INV_radd[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_radd[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_radd[0]~input_o\ : std_logic;
SIGNAL \datos|ALT_INV_R~127_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~126_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~124_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~123_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~121_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~120_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~118_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~117_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~115_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~114_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~112_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~111_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~109_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~108_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~106_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~105_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~103_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~102_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~100_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~99_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~97_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~96_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~94_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~93_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~91_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~90_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~88_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~87_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~85_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~84_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~82_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~81_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~79_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~78_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~76_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~75_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~73_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~72_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~70_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~69_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~67_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~66_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~64_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~63_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~61_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~60_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~58_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~57_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[7][0]~55_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[7][0]~54_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[7][0]~53_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~51_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~50_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder2~7_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[6][0]~48_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[6][0]~47_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[6][0]~46_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~44_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~43_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder2~6_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[5][0]~41_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[5][0]~40_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[5][0]~39_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~37_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~36_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder2~5_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[4][0]~34_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[4][0]~33_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[4][0]~32_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~30_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~29_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder2~4_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[3][0]~27_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[3][0]~26_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[3][0]~25_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~23_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~22_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder2~3_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[2][0]~20_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[2][0]~19_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[2][0]~18_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~16_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~15_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder2~2_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[1][0]~13_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[1][0]~12_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[1][0]~11_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~9_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~8_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder2~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[0][0]~6_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[0][0]~5_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~4_combout\ : std_logic;
SIGNAL \datos|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \datos|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[0][0]~3_combout\ : std_logic;
SIGNAL \datos|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \control|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \control|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \control|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \control|ALT_INV_Selector3~2_combout\ : std_logic;
SIGNAL \control|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \control|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \control|ALT_INV_cj\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \datos|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \control|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \control|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder2~0_combout\ : std_logic;
SIGNAL \control|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \control|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \control|ALT_INV_ci\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \control|ALT_INV_state.S5~q\ : std_logic;
SIGNAL \datos|ALT_INV_dataout~12_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[7][3]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[6][3]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[5][3]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[4][3]~q\ : std_logic;
SIGNAL \datos|ALT_INV_dataout~11_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[3][3]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[2][3]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[1][3]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[0][3]~q\ : std_logic;
SIGNAL \datos|ALT_INV_dataout~9_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[7][2]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[6][2]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[5][2]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[4][2]~q\ : std_logic;
SIGNAL \datos|ALT_INV_dataout~8_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[3][2]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[2][2]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[1][2]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[0][2]~q\ : std_logic;
SIGNAL \datos|ALT_INV_dataout~6_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[7][1]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[6][1]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[5][1]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[4][1]~q\ : std_logic;
SIGNAL \datos|ALT_INV_dataout~5_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[3][1]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[2][1]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[1][1]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[0][1]~q\ : std_logic;
SIGNAL \datos|ALT_INV_dataout~2_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[7][0]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[6][0]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[5][0]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[4][0]~q\ : std_logic;
SIGNAL \datos|ALT_INV_dataout[3]~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \control|ALT_INV_state.S1~q\ : std_logic;
SIGNAL \control|ALT_INV_state.S4~q\ : std_logic;
SIGNAL \control|ALT_INV_state.S0~q\ : std_logic;
SIGNAL \control|ALT_INV_state.S2~q\ : std_logic;
SIGNAL \datos|ALT_INV_dataout~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[3][0]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[2][0]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[1][0]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[0][0]~q\ : std_logic;
SIGNAL \control|ALT_INV_state.S7~_Duplicate_1_q\ : std_logic;
SIGNAL \datos|ALT_INV_LessThan0~3_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_resetn <= resetn;
ww_go <= go;
ww_wrinit <= wrinit;
ww_datain <= datain;
ww_radd <= radd;
dataout <= ww_dataout;
done <= ww_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\control|ALT_INV_ci[2]~DUPLICATE_q\ <= NOT \control|ci[2]~DUPLICATE_q\;
\control|ALT_INV_state.S5~DUPLICATE_q\ <= NOT \control|state.S5~DUPLICATE_q\;
\ALT_INV_go~input_o\ <= NOT \go~input_o\;
\ALT_INV_datain[3]~input_o\ <= NOT \datain[3]~input_o\;
\ALT_INV_datain[2]~input_o\ <= NOT \datain[2]~input_o\;
\ALT_INV_datain[1]~input_o\ <= NOT \datain[1]~input_o\;
\ALT_INV_datain[0]~input_o\ <= NOT \datain[0]~input_o\;
\ALT_INV_wrinit~input_o\ <= NOT \wrinit~input_o\;
\ALT_INV_radd[2]~input_o\ <= NOT \radd[2]~input_o\;
\ALT_INV_radd[1]~input_o\ <= NOT \radd[1]~input_o\;
\ALT_INV_radd[0]~input_o\ <= NOT \radd[0]~input_o\;
\datos|ALT_INV_R~127_combout\ <= NOT \datos|R~127_combout\;
\datos|ALT_INV_R~126_combout\ <= NOT \datos|R~126_combout\;
\datos|ALT_INV_R~124_combout\ <= NOT \datos|R~124_combout\;
\datos|ALT_INV_R~123_combout\ <= NOT \datos|R~123_combout\;
\datos|ALT_INV_R~121_combout\ <= NOT \datos|R~121_combout\;
\datos|ALT_INV_R~120_combout\ <= NOT \datos|R~120_combout\;
\datos|ALT_INV_R~118_combout\ <= NOT \datos|R~118_combout\;
\datos|ALT_INV_R~117_combout\ <= NOT \datos|R~117_combout\;
\datos|ALT_INV_R~115_combout\ <= NOT \datos|R~115_combout\;
\datos|ALT_INV_R~114_combout\ <= NOT \datos|R~114_combout\;
\datos|ALT_INV_R~112_combout\ <= NOT \datos|R~112_combout\;
\datos|ALT_INV_R~111_combout\ <= NOT \datos|R~111_combout\;
\datos|ALT_INV_R~109_combout\ <= NOT \datos|R~109_combout\;
\datos|ALT_INV_R~108_combout\ <= NOT \datos|R~108_combout\;
\datos|ALT_INV_R~106_combout\ <= NOT \datos|R~106_combout\;
\datos|ALT_INV_R~105_combout\ <= NOT \datos|R~105_combout\;
\datos|ALT_INV_R~103_combout\ <= NOT \datos|R~103_combout\;
\datos|ALT_INV_R~102_combout\ <= NOT \datos|R~102_combout\;
\datos|ALT_INV_R~100_combout\ <= NOT \datos|R~100_combout\;
\datos|ALT_INV_R~99_combout\ <= NOT \datos|R~99_combout\;
\datos|ALT_INV_R~97_combout\ <= NOT \datos|R~97_combout\;
\datos|ALT_INV_R~96_combout\ <= NOT \datos|R~96_combout\;
\datos|ALT_INV_R~94_combout\ <= NOT \datos|R~94_combout\;
\datos|ALT_INV_R~93_combout\ <= NOT \datos|R~93_combout\;
\datos|ALT_INV_R~91_combout\ <= NOT \datos|R~91_combout\;
\datos|ALT_INV_R~90_combout\ <= NOT \datos|R~90_combout\;
\datos|ALT_INV_R~88_combout\ <= NOT \datos|R~88_combout\;
\datos|ALT_INV_R~87_combout\ <= NOT \datos|R~87_combout\;
\datos|ALT_INV_R~85_combout\ <= NOT \datos|R~85_combout\;
\datos|ALT_INV_R~84_combout\ <= NOT \datos|R~84_combout\;
\datos|ALT_INV_R~82_combout\ <= NOT \datos|R~82_combout\;
\datos|ALT_INV_R~81_combout\ <= NOT \datos|R~81_combout\;
\datos|ALT_INV_R~79_combout\ <= NOT \datos|R~79_combout\;
\datos|ALT_INV_R~78_combout\ <= NOT \datos|R~78_combout\;
\datos|ALT_INV_R~76_combout\ <= NOT \datos|R~76_combout\;
\datos|ALT_INV_R~75_combout\ <= NOT \datos|R~75_combout\;
\datos|ALT_INV_R~73_combout\ <= NOT \datos|R~73_combout\;
\datos|ALT_INV_R~72_combout\ <= NOT \datos|R~72_combout\;
\datos|ALT_INV_R~70_combout\ <= NOT \datos|R~70_combout\;
\datos|ALT_INV_R~69_combout\ <= NOT \datos|R~69_combout\;
\datos|ALT_INV_R~67_combout\ <= NOT \datos|R~67_combout\;
\datos|ALT_INV_R~66_combout\ <= NOT \datos|R~66_combout\;
\datos|ALT_INV_R~64_combout\ <= NOT \datos|R~64_combout\;
\datos|ALT_INV_R~63_combout\ <= NOT \datos|R~63_combout\;
\datos|ALT_INV_R~61_combout\ <= NOT \datos|R~61_combout\;
\datos|ALT_INV_R~60_combout\ <= NOT \datos|R~60_combout\;
\datos|ALT_INV_R~58_combout\ <= NOT \datos|R~58_combout\;
\datos|ALT_INV_R~57_combout\ <= NOT \datos|R~57_combout\;
\datos|ALT_INV_R[7][0]~55_combout\ <= NOT \datos|R[7][0]~55_combout\;
\datos|ALT_INV_R[7][0]~54_combout\ <= NOT \datos|R[7][0]~54_combout\;
\datos|ALT_INV_R[7][0]~53_combout\ <= NOT \datos|R[7][0]~53_combout\;
\datos|ALT_INV_R~51_combout\ <= NOT \datos|R~51_combout\;
\datos|ALT_INV_R~50_combout\ <= NOT \datos|R~50_combout\;
\datos|ALT_INV_Decoder2~7_combout\ <= NOT \datos|Decoder2~7_combout\;
\datos|ALT_INV_R[6][0]~48_combout\ <= NOT \datos|R[6][0]~48_combout\;
\datos|ALT_INV_R[6][0]~47_combout\ <= NOT \datos|R[6][0]~47_combout\;
\datos|ALT_INV_R[6][0]~46_combout\ <= NOT \datos|R[6][0]~46_combout\;
\datos|ALT_INV_R~44_combout\ <= NOT \datos|R~44_combout\;
\datos|ALT_INV_R~43_combout\ <= NOT \datos|R~43_combout\;
\datos|ALT_INV_Decoder2~6_combout\ <= NOT \datos|Decoder2~6_combout\;
\datos|ALT_INV_R[5][0]~41_combout\ <= NOT \datos|R[5][0]~41_combout\;
\datos|ALT_INV_R[5][0]~40_combout\ <= NOT \datos|R[5][0]~40_combout\;
\datos|ALT_INV_R[5][0]~39_combout\ <= NOT \datos|R[5][0]~39_combout\;
\datos|ALT_INV_R~37_combout\ <= NOT \datos|R~37_combout\;
\datos|ALT_INV_R~36_combout\ <= NOT \datos|R~36_combout\;
\datos|ALT_INV_Decoder2~5_combout\ <= NOT \datos|Decoder2~5_combout\;
\datos|ALT_INV_R[4][0]~34_combout\ <= NOT \datos|R[4][0]~34_combout\;
\datos|ALT_INV_R[4][0]~33_combout\ <= NOT \datos|R[4][0]~33_combout\;
\datos|ALT_INV_R[4][0]~32_combout\ <= NOT \datos|R[4][0]~32_combout\;
\datos|ALT_INV_R~30_combout\ <= NOT \datos|R~30_combout\;
\datos|ALT_INV_R~29_combout\ <= NOT \datos|R~29_combout\;
\datos|ALT_INV_Decoder2~4_combout\ <= NOT \datos|Decoder2~4_combout\;
\datos|ALT_INV_R[3][0]~27_combout\ <= NOT \datos|R[3][0]~27_combout\;
\datos|ALT_INV_R[3][0]~26_combout\ <= NOT \datos|R[3][0]~26_combout\;
\datos|ALT_INV_R[3][0]~25_combout\ <= NOT \datos|R[3][0]~25_combout\;
\datos|ALT_INV_R~23_combout\ <= NOT \datos|R~23_combout\;
\datos|ALT_INV_R~22_combout\ <= NOT \datos|R~22_combout\;
\datos|ALT_INV_Decoder2~3_combout\ <= NOT \datos|Decoder2~3_combout\;
\datos|ALT_INV_R[2][0]~20_combout\ <= NOT \datos|R[2][0]~20_combout\;
\datos|ALT_INV_R[2][0]~19_combout\ <= NOT \datos|R[2][0]~19_combout\;
\datos|ALT_INV_R[2][0]~18_combout\ <= NOT \datos|R[2][0]~18_combout\;
\datos|ALT_INV_R~16_combout\ <= NOT \datos|R~16_combout\;
\datos|ALT_INV_R~15_combout\ <= NOT \datos|R~15_combout\;
\datos|ALT_INV_Decoder2~2_combout\ <= NOT \datos|Decoder2~2_combout\;
\datos|ALT_INV_R[1][0]~13_combout\ <= NOT \datos|R[1][0]~13_combout\;
\datos|ALT_INV_R[1][0]~12_combout\ <= NOT \datos|R[1][0]~12_combout\;
\datos|ALT_INV_R[1][0]~11_combout\ <= NOT \datos|R[1][0]~11_combout\;
\datos|ALT_INV_R~9_combout\ <= NOT \datos|R~9_combout\;
\datos|ALT_INV_R~8_combout\ <= NOT \datos|R~8_combout\;
\datos|ALT_INV_Decoder2~1_combout\ <= NOT \datos|Decoder2~1_combout\;
\datos|ALT_INV_R[0][0]~6_combout\ <= NOT \datos|R[0][0]~6_combout\;
\datos|ALT_INV_Equal0~0_combout\ <= NOT \datos|Equal0~0_combout\;
\datos|ALT_INV_R[0][0]~5_combout\ <= NOT \datos|R[0][0]~5_combout\;
\datos|ALT_INV_R~4_combout\ <= NOT \datos|R~4_combout\;
\datos|ALT_INV_LessThan0~2_combout\ <= NOT \datos|LessThan0~2_combout\;
\datos|ALT_INV_LessThan0~1_combout\ <= NOT \datos|LessThan0~1_combout\;
\datos|ALT_INV_Mux2~2_combout\ <= NOT \datos|Mux2~2_combout\;
\datos|ALT_INV_Mux2~1_combout\ <= NOT \datos|Mux2~1_combout\;
\datos|ALT_INV_Mux2~0_combout\ <= NOT \datos|Mux2~0_combout\;
\datos|ALT_INV_Mux5~2_combout\ <= NOT \datos|Mux5~2_combout\;
\datos|ALT_INV_Mux5~1_combout\ <= NOT \datos|Mux5~1_combout\;
\datos|ALT_INV_Mux5~0_combout\ <= NOT \datos|Mux5~0_combout\;
\datos|ALT_INV_Mux1~2_combout\ <= NOT \datos|Mux1~2_combout\;
\datos|ALT_INV_Mux1~1_combout\ <= NOT \datos|Mux1~1_combout\;
\datos|ALT_INV_Mux1~0_combout\ <= NOT \datos|Mux1~0_combout\;
\datos|ALT_INV_Mux4~2_combout\ <= NOT \datos|Mux4~2_combout\;
\datos|ALT_INV_Mux4~1_combout\ <= NOT \datos|Mux4~1_combout\;
\datos|ALT_INV_Mux4~0_combout\ <= NOT \datos|Mux4~0_combout\;
\datos|ALT_INV_R[0][0]~3_combout\ <= NOT \datos|R[0][0]~3_combout\;
\datos|ALT_INV_LessThan0~0_combout\ <= NOT \datos|LessThan0~0_combout\;
\datos|ALT_INV_Mux0~1_combout\ <= NOT \datos|Mux0~1_combout\;
\datos|ALT_INV_Mux0~0_combout\ <= NOT \datos|Mux0~0_combout\;
\datos|ALT_INV_Mux7~1_combout\ <= NOT \datos|Mux7~1_combout\;
\datos|ALT_INV_Mux7~0_combout\ <= NOT \datos|Mux7~0_combout\;
\datos|ALT_INV_R~1_combout\ <= NOT \datos|R~1_combout\;
\datos|ALT_INV_Mux6~1_combout\ <= NOT \datos|Mux6~1_combout\;
\datos|ALT_INV_Mux6~0_combout\ <= NOT \datos|Mux6~0_combout\;
\control|ALT_INV_Selector1~0_combout\ <= NOT \control|Selector1~0_combout\;
\control|ALT_INV_Selector2~0_combout\ <= NOT \control|Selector2~0_combout\;
\control|ALT_INV_Selector0~0_combout\ <= NOT \control|Selector0~0_combout\;
\datos|ALT_INV_R~0_combout\ <= NOT \datos|R~0_combout\;
\datos|ALT_INV_Mux3~1_combout\ <= NOT \datos|Mux3~1_combout\;
\control|ALT_INV_Selector3~2_combout\ <= NOT \control|Selector3~2_combout\;
\control|ALT_INV_Selector3~1_combout\ <= NOT \control|Selector3~1_combout\;
\control|ALT_INV_Selector3~0_combout\ <= NOT \control|Selector3~0_combout\;
\control|ALT_INV_cj\(2) <= NOT \control|cj\(2);
\datos|ALT_INV_Mux3~0_combout\ <= NOT \datos|Mux3~0_combout\;
\control|ALT_INV_Selector4~0_combout\ <= NOT \control|Selector4~0_combout\;
\control|ALT_INV_cj\(1) <= NOT \control|cj\(1);
\control|ALT_INV_Selector5~0_combout\ <= NOT \control|Selector5~0_combout\;
\control|ALT_INV_cj\(0) <= NOT \control|cj\(0);
\datos|ALT_INV_Decoder2~0_combout\ <= NOT \datos|Decoder2~0_combout\;
\control|ALT_INV_WideOr0~combout\ <= NOT \control|WideOr0~combout\;
\control|ALT_INV_WideOr1~combout\ <= NOT \control|WideOr1~combout\;
\control|ALT_INV_ci\(0) <= NOT \control|ci\(0);
\control|ALT_INV_ci\(1) <= NOT \control|ci\(1);
\control|ALT_INV_ci\(2) <= NOT \control|ci\(2);
\control|ALT_INV_state.S5~q\ <= NOT \control|state.S5~q\;
\datos|ALT_INV_dataout~12_combout\ <= NOT \datos|dataout~12_combout\;
\datos|ALT_INV_R[7][3]~q\ <= NOT \datos|R[7][3]~q\;
\datos|ALT_INV_R[6][3]~q\ <= NOT \datos|R[6][3]~q\;
\datos|ALT_INV_R[5][3]~q\ <= NOT \datos|R[5][3]~q\;
\datos|ALT_INV_R[4][3]~q\ <= NOT \datos|R[4][3]~q\;
\datos|ALT_INV_dataout~11_combout\ <= NOT \datos|dataout~11_combout\;
\datos|ALT_INV_R[3][3]~q\ <= NOT \datos|R[3][3]~q\;
\datos|ALT_INV_R[2][3]~q\ <= NOT \datos|R[2][3]~q\;
\datos|ALT_INV_R[1][3]~q\ <= NOT \datos|R[1][3]~q\;
\datos|ALT_INV_R[0][3]~q\ <= NOT \datos|R[0][3]~q\;
\datos|ALT_INV_dataout~9_combout\ <= NOT \datos|dataout~9_combout\;
\datos|ALT_INV_R[7][2]~q\ <= NOT \datos|R[7][2]~q\;
\datos|ALT_INV_R[6][2]~q\ <= NOT \datos|R[6][2]~q\;
\datos|ALT_INV_R[5][2]~q\ <= NOT \datos|R[5][2]~q\;
\datos|ALT_INV_R[4][2]~q\ <= NOT \datos|R[4][2]~q\;
\datos|ALT_INV_dataout~8_combout\ <= NOT \datos|dataout~8_combout\;
\datos|ALT_INV_R[3][2]~q\ <= NOT \datos|R[3][2]~q\;
\datos|ALT_INV_R[2][2]~q\ <= NOT \datos|R[2][2]~q\;
\datos|ALT_INV_R[1][2]~q\ <= NOT \datos|R[1][2]~q\;
\datos|ALT_INV_R[0][2]~q\ <= NOT \datos|R[0][2]~q\;
\datos|ALT_INV_dataout~6_combout\ <= NOT \datos|dataout~6_combout\;
\datos|ALT_INV_R[7][1]~q\ <= NOT \datos|R[7][1]~q\;
\datos|ALT_INV_R[6][1]~q\ <= NOT \datos|R[6][1]~q\;
\datos|ALT_INV_R[5][1]~q\ <= NOT \datos|R[5][1]~q\;
\datos|ALT_INV_R[4][1]~q\ <= NOT \datos|R[4][1]~q\;
\datos|ALT_INV_dataout~5_combout\ <= NOT \datos|dataout~5_combout\;
\datos|ALT_INV_R[3][1]~q\ <= NOT \datos|R[3][1]~q\;
\datos|ALT_INV_R[2][1]~q\ <= NOT \datos|R[2][1]~q\;
\datos|ALT_INV_R[1][1]~q\ <= NOT \datos|R[1][1]~q\;
\datos|ALT_INV_R[0][1]~q\ <= NOT \datos|R[0][1]~q\;
\datos|ALT_INV_dataout~2_combout\ <= NOT \datos|dataout~2_combout\;
\datos|ALT_INV_R[7][0]~q\ <= NOT \datos|R[7][0]~q\;
\datos|ALT_INV_R[6][0]~q\ <= NOT \datos|R[6][0]~q\;
\datos|ALT_INV_R[5][0]~q\ <= NOT \datos|R[5][0]~q\;
\datos|ALT_INV_R[4][0]~q\ <= NOT \datos|R[4][0]~q\;
\datos|ALT_INV_dataout[3]~1_combout\ <= NOT \datos|dataout[3]~1_combout\;
\datos|ALT_INV_process_0~0_combout\ <= NOT \datos|process_0~0_combout\;
\control|ALT_INV_state.S1~q\ <= NOT \control|state.S1~q\;
\control|ALT_INV_state.S4~q\ <= NOT \control|state.S4~q\;
\control|ALT_INV_state.S0~q\ <= NOT \control|state.S0~q\;
\control|ALT_INV_state.S2~q\ <= NOT \control|state.S2~q\;
\datos|ALT_INV_dataout~0_combout\ <= NOT \datos|dataout~0_combout\;
\datos|ALT_INV_R[3][0]~q\ <= NOT \datos|R[3][0]~q\;
\datos|ALT_INV_R[2][0]~q\ <= NOT \datos|R[2][0]~q\;
\datos|ALT_INV_R[1][0]~q\ <= NOT \datos|R[1][0]~q\;
\datos|ALT_INV_R[0][0]~q\ <= NOT \datos|R[0][0]~q\;
\control|ALT_INV_state.S7~_Duplicate_1_q\ <= NOT \control|state.S7~_Duplicate_1_q\;
\datos|ALT_INV_LessThan0~3_combout\ <= NOT \datos|LessThan0~3_combout\;

-- Location: IOOBUF_X52_Y0_N2
\dataout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \datos|dataout\(0),
	devoe => ww_devoe,
	o => ww_dataout(0));

-- Location: IOOBUF_X52_Y0_N19
\dataout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \datos|dataout\(1),
	devoe => ww_devoe,
	o => ww_dataout(1));

-- Location: IOOBUF_X60_Y0_N2
\dataout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \datos|dataout\(2),
	devoe => ww_devoe,
	o => ww_dataout(2));

-- Location: IOOBUF_X80_Y0_N2
\dataout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \datos|dataout\(3),
	devoe => ww_devoe,
	o => ww_dataout(3));

-- Location: IOOBUF_X89_Y6_N22
\done~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \control|state.S7~q\,
	devoe => ww_devoe,
	o => ww_done);

-- Location: IOIBUF_X32_Y0_N1
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G6
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X12_Y0_N18
\datain[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(0),
	o => \datain[0]~input_o\);

-- Location: LABCELL_X11_Y2_N42
\control|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector1~0_combout\ = ( \control|state.S5~DUPLICATE_q\ & ( (!\control|ci\(0) & (((\control|ci\(1))))) # (\control|ci\(0) & (((!\control|ci\(1)) # (\control|state.S2~q\)) # (\control|state.S4~q\))) ) ) # ( !\control|state.S5~DUPLICATE_q\ & ( 
-- (\control|ci\(1) & ((\control|state.S2~q\) # (\control|state.S4~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100110011110111110011001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S4~q\,
	datab => \control|ALT_INV_ci\(0),
	datac => \control|ALT_INV_state.S2~q\,
	datad => \control|ALT_INV_ci\(1),
	dataf => \control|ALT_INV_state.S5~DUPLICATE_q\,
	combout => \control|Selector1~0_combout\);

-- Location: IOIBUF_X36_Y0_N1
\resetn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: FF_X11_Y2_N44
\control|ci[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \control|Selector1~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|ci\(1));

-- Location: FF_X11_Y2_N47
\control|state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \control|next_state.S5~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|state.S5~q\);

-- Location: LABCELL_X11_Y2_N48
\control|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector4~0_combout\ = ( \control|cj\(0) & ( \control|state.S4~q\ & ( !\control|cj\(1) $ (((\control|state.S5~q\) # (\control|state.S2~q\))) ) ) ) # ( !\control|cj\(0) & ( \control|state.S4~q\ & ( \control|cj\(1) ) ) ) # ( \control|cj\(0) & ( 
-- !\control|state.S4~q\ & ( (!\control|state.S5~q\ & (((\control|ci\(1) & \control|state.S2~q\)))) # (\control|state.S5~q\ & (\control|cj\(1))) ) ) ) # ( !\control|cj\(0) & ( !\control|state.S4~q\ & ( (!\control|state.S5~q\ & (((\control|ci\(1) & 
-- \control|state.S2~q\)))) # (\control|state.S5~q\ & (\control|cj\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010101000000110101010101010101010101011010010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_cj\(1),
	datab => \control|ALT_INV_ci\(1),
	datac => \control|ALT_INV_state.S2~q\,
	datad => \control|ALT_INV_state.S5~q\,
	datae => \control|ALT_INV_cj\(0),
	dataf => \control|ALT_INV_state.S4~q\,
	combout => \control|Selector4~0_combout\);

-- Location: FF_X11_Y2_N34
\control|cj[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \control|Selector4~0_combout\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|cj\(1));

-- Location: LABCELL_X11_Y2_N36
\control|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector3~0_combout\ = ( !\control|state.S5~q\ & ( \control|cj\(2) & ( (!\control|state.S2~q\ & (\control|state.S4~q\ & ((!\control|cj\(1)) # (!\control|cj\(0))))) ) ) ) # ( !\control|state.S5~q\ & ( !\control|cj\(2) & ( (\control|cj\(1) & 
-- (\control|cj\(0) & (!\control|state.S2~q\ & \control|state.S4~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000111000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_cj\(1),
	datab => \control|ALT_INV_cj\(0),
	datac => \control|ALT_INV_state.S2~q\,
	datad => \control|ALT_INV_state.S4~q\,
	datae => \control|ALT_INV_state.S5~q\,
	dataf => \control|ALT_INV_cj\(2),
	combout => \control|Selector3~0_combout\);

-- Location: FF_X11_Y2_N53
\control|ci[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \control|Selector0~0_combout\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|ci\(2));

-- Location: LABCELL_X11_Y2_N15
\control|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector3~1_combout\ = ( \control|cj\(2) & ( ((\control|state.S2~q\ & ((\control|state.S4~q\) # (\control|ci\(2))))) # (\control|state.S5~q\) ) ) # ( !\control|cj\(2) & ( (\control|ci\(2) & (\control|state.S2~q\ & (!\control|state.S5~q\ & 
-- !\control|state.S4~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000011111001111110001111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci\(2),
	datab => \control|ALT_INV_state.S2~q\,
	datac => \control|ALT_INV_state.S5~q\,
	datad => \control|ALT_INV_state.S4~q\,
	dataf => \control|ALT_INV_cj\(2),
	combout => \control|Selector3~1_combout\);

-- Location: LABCELL_X11_Y2_N12
\control|Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector3~2_combout\ = ( \control|Selector3~1_combout\ ) # ( !\control|Selector3~1_combout\ & ( \control|Selector3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \control|ALT_INV_Selector3~0_combout\,
	dataf => \control|ALT_INV_Selector3~1_combout\,
	combout => \control|Selector3~2_combout\);

-- Location: FF_X11_Y2_N40
\control|cj[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \control|Selector3~2_combout\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|cj\(2));

-- Location: LABCELL_X11_Y2_N45
\control|next_state.S5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|next_state.S5~0_combout\ = ( \control|cj\(1) & ( (\control|state.S4~q\ & (!\control|cj\(0) & \control|cj\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S4~q\,
	datac => \control|ALT_INV_cj\(0),
	datad => \control|ALT_INV_cj\(2),
	dataf => \control|ALT_INV_cj\(1),
	combout => \control|next_state.S5~0_combout\);

-- Location: FF_X11_Y2_N46
\control|state.S5~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \control|next_state.S5~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|state.S5~DUPLICATE_q\);

-- Location: LABCELL_X11_Y2_N0
\control|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector5~0_combout\ = ( \control|state.S4~q\ & ( !\control|cj\(0) $ (((\control|state.S2~q\) # (\control|state.S5~DUPLICATE_q\))) ) ) # ( !\control|state.S4~q\ & ( (!\control|state.S5~DUPLICATE_q\ & (\control|ci\(0) & (\control|state.S2~q\))) # 
-- (\control|state.S5~DUPLICATE_q\ & (((\control|cj\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110100000010111111010000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S5~DUPLICATE_q\,
	datab => \control|ALT_INV_ci\(0),
	datac => \control|ALT_INV_state.S2~q\,
	datad => \control|ALT_INV_cj\(0),
	dataf => \control|ALT_INV_state.S4~q\,
	combout => \control|Selector5~0_combout\);

-- Location: FF_X11_Y2_N59
\control|cj[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \control|Selector5~0_combout\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|cj\(0));

-- Location: LABCELL_X11_Y2_N6
\control|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector8~0_combout\ = ( \control|cj\(1) & ( ((\control|state.S4~q\ & ((!\control|cj\(2)) # (\control|cj\(0))))) # (\control|state.S2~q\) ) ) # ( !\control|cj\(1) & ( (\control|state.S4~q\) # (\control|state.S2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101111101110101010111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S2~q\,
	datab => \control|ALT_INV_cj\(0),
	datac => \control|ALT_INV_cj\(2),
	datad => \control|ALT_INV_state.S4~q\,
	dataf => \control|ALT_INV_cj\(1),
	combout => \control|Selector8~0_combout\);

-- Location: FF_X11_Y2_N7
\control|state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \control|Selector8~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|state.S4~q\);

-- Location: LABCELL_X11_Y2_N9
\control|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector2~0_combout\ = ( \control|state.S5~DUPLICATE_q\ & ( ((!\control|ci\(0)) # (\control|state.S4~q\)) # (\control|state.S2~q\) ) ) # ( !\control|state.S5~DUPLICATE_q\ & ( (\control|ci\(0) & ((\control|state.S4~q\) # (\control|state.S2~q\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111111111111010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S2~q\,
	datac => \control|ALT_INV_state.S4~q\,
	datad => \control|ALT_INV_ci\(0),
	dataf => \control|ALT_INV_state.S5~DUPLICATE_q\,
	combout => \control|Selector2~0_combout\);

-- Location: FF_X11_Y2_N11
\control|ci[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \control|Selector2~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|ci\(0));

-- Location: MLABCELL_X8_Y2_N6
\control|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector0~0_combout\ = ( \control|ci\(1) & ( \control|state.S4~q\ & ( ((\control|ci\(0) & \control|state.S5~DUPLICATE_q\)) # (\control|ci[2]~DUPLICATE_q\) ) ) ) # ( !\control|ci\(1) & ( \control|state.S4~q\ & ( \control|ci[2]~DUPLICATE_q\ ) ) ) # 
-- ( \control|ci\(1) & ( !\control|state.S4~q\ & ( (!\control|ci[2]~DUPLICATE_q\ & (\control|ci\(0) & ((\control|state.S5~DUPLICATE_q\)))) # (\control|ci[2]~DUPLICATE_q\ & (((!\control|ci\(0) & \control|state.S5~DUPLICATE_q\)) # (\control|state.S2~q\))) ) ) 
-- ) # ( !\control|ci\(1) & ( !\control|state.S4~q\ & ( (\control|ci[2]~DUPLICATE_q\ & ((\control|state.S5~DUPLICATE_q\) # (\control|state.S2~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010110011101010101010101010101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datab => \control|ALT_INV_ci\(0),
	datac => \control|ALT_INV_state.S2~q\,
	datad => \control|ALT_INV_state.S5~DUPLICATE_q\,
	datae => \control|ALT_INV_ci\(1),
	dataf => \control|ALT_INV_state.S4~q\,
	combout => \control|Selector0~0_combout\);

-- Location: FF_X11_Y2_N52
\control|ci[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \control|Selector0~0_combout\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|ci[2]~DUPLICATE_q\);

-- Location: IOIBUF_X2_Y0_N58
\go~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_go,
	o => \go~input_o\);

-- Location: LABCELL_X9_Y2_N6
\control|state.S0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|state.S0~0_combout\ = ( \control|state.S0~q\ ) # ( !\control|state.S0~q\ & ( !\go~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111111111111111110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_go~input_o\,
	datae => \control|ALT_INV_state.S0~q\,
	combout => \control|state.S0~0_combout\);

-- Location: FF_X9_Y2_N8
\control|state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \control|state.S0~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|state.S0~q\);

-- Location: LABCELL_X9_Y2_N30
\control|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector6~0_combout\ = (!\go~input_o\ & ((!\control|state.S0~q\) # (\control|state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011110000110000001111000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \control|ALT_INV_state.S0~q\,
	datac => \ALT_INV_go~input_o\,
	datad => \control|ALT_INV_state.S1~q\,
	combout => \control|Selector6~0_combout\);

-- Location: FF_X9_Y2_N31
\control|state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \control|Selector6~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|state.S1~q\);

-- Location: MLABCELL_X8_Y2_N0
\control|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector7~0_combout\ = ( \control|state.S5~DUPLICATE_q\ & ( \control|ci\(1) & ( (!\control|ci[2]~DUPLICATE_q\) # (((\go~input_o\ & \control|state.S1~q\)) # (\control|ci\(0))) ) ) ) # ( !\control|state.S5~DUPLICATE_q\ & ( \control|ci\(1) & ( 
-- (\go~input_o\ & \control|state.S1~q\) ) ) ) # ( \control|state.S5~DUPLICATE_q\ & ( !\control|ci\(1) ) ) # ( !\control|state.S5~DUPLICATE_q\ & ( !\control|ci\(1) & ( (\go~input_o\ & \control|state.S1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111111111111100000011000000111010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datab => \ALT_INV_go~input_o\,
	datac => \control|ALT_INV_state.S1~q\,
	datad => \control|ALT_INV_ci\(0),
	datae => \control|ALT_INV_state.S5~DUPLICATE_q\,
	dataf => \control|ALT_INV_ci\(1),
	combout => \control|Selector7~0_combout\);

-- Location: FF_X9_Y2_N35
\control|state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \control|Selector7~0_combout\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|state.S2~q\);

-- Location: LABCELL_X11_Y2_N3
\control|state.S7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|state.S7~0_combout\ = ( \control|ci\(2) & ( ((\control|state.S5~DUPLICATE_q\ & (!\control|ci\(0) & \control|ci\(1)))) # (\control|state.S7~_Duplicate_1_q\) ) ) # ( !\control|ci\(2) & ( \control|state.S7~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000100111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S5~DUPLICATE_q\,
	datab => \control|ALT_INV_ci\(0),
	datac => \control|ALT_INV_ci\(1),
	datad => \control|ALT_INV_state.S7~_Duplicate_1_q\,
	dataf => \control|ALT_INV_ci\(2),
	combout => \control|state.S7~0_combout\);

-- Location: FF_X11_Y2_N5
\control|state.S7~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \control|state.S7~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|state.S7~_Duplicate_1_q\);

-- Location: LABCELL_X9_Y2_N48
\datos|dataout[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|dataout[3]~1_combout\ = ( !\control|state.S7~_Duplicate_1_q\ & ( (!\control|state.S2~q\ & ((!\control|state.S0~q\) # (\control|state.S4~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001010100010101000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S2~q\,
	datab => \control|ALT_INV_state.S0~q\,
	datac => \control|ALT_INV_state.S4~q\,
	dataf => \control|ALT_INV_state.S7~_Duplicate_1_q\,
	combout => \datos|dataout[3]~1_combout\);

-- Location: LABCELL_X9_Y2_N33
\control|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|WideOr1~combout\ = ( \control|state.S0~q\ & ( (!\control|state.S4~q\ & !\control|state.S2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S4~q\,
	datad => \control|ALT_INV_state.S2~q\,
	dataf => \control|ALT_INV_state.S0~q\,
	combout => \control|WideOr1~combout\);

-- Location: LABCELL_X9_Y2_N51
\control|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|WideOr0~combout\ = ( !\control|state.S1~q\ & ( (\control|state.S0~q\ & !\control|state.S2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \control|ALT_INV_state.S0~q\,
	datad => \control|ALT_INV_state.S2~q\,
	dataf => \control|ALT_INV_state.S1~q\,
	combout => \control|WideOr0~combout\);

-- Location: LABCELL_X11_Y2_N54
\datos|Decoder2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder2~6_combout\ = ( !\control|state.S4~q\ & ( \control|state.S5~DUPLICATE_q\ & ( (\control|ci\(2) & (!\control|ci\(1) & (!\control|state.S2~q\ & \control|ci\(0)))) ) ) ) # ( \control|state.S4~q\ & ( !\control|state.S5~DUPLICATE_q\ & ( 
-- (\control|ci\(2) & (\control|ci\(1) & !\control|ci\(0))) ) ) ) # ( !\control|state.S4~q\ & ( !\control|state.S5~DUPLICATE_q\ & ( (\control|ci\(2) & (\control|ci\(1) & (\control|state.S2~q\ & !\control|ci\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000100010000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci\(2),
	datab => \control|ALT_INV_ci\(1),
	datac => \control|ALT_INV_state.S2~q\,
	datad => \control|ALT_INV_ci\(0),
	datae => \control|ALT_INV_state.S4~q\,
	dataf => \control|ALT_INV_state.S5~DUPLICATE_q\,
	combout => \datos|Decoder2~6_combout\);

-- Location: MLABCELL_X8_Y2_N36
\datos|Decoder2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder2~4_combout\ = ( !\control|state.S5~DUPLICATE_q\ & ( \control|state.S4~q\ & ( (\control|ci[2]~DUPLICATE_q\ & (!\control|ci\(0) & !\control|ci\(1))) ) ) ) # ( \control|state.S5~DUPLICATE_q\ & ( !\control|state.S4~q\ & ( 
-- (!\control|ci[2]~DUPLICATE_q\ & (\control|ci\(0) & (!\control|state.S2~q\ & \control|ci\(1)))) ) ) ) # ( !\control|state.S5~DUPLICATE_q\ & ( !\control|state.S4~q\ & ( (\control|ci[2]~DUPLICATE_q\ & (!\control|ci\(0) & (\control|state.S2~q\ & 
-- !\control|ci\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000010000001000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datab => \control|ALT_INV_ci\(0),
	datac => \control|ALT_INV_state.S2~q\,
	datad => \control|ALT_INV_ci\(1),
	datae => \control|ALT_INV_state.S5~DUPLICATE_q\,
	dataf => \control|ALT_INV_state.S4~q\,
	combout => \datos|Decoder2~4_combout\);

-- Location: IOIBUF_X4_Y0_N18
\wrinit~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wrinit,
	o => \wrinit~input_o\);

-- Location: LABCELL_X11_Y2_N30
\datos|Decoder2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder2~7_combout\ = ( \control|state.S4~q\ & ( \control|ci\(0) & ( (!\control|ci\(2) & (\control|ci\(1) & \control|state.S5~q\)) # (\control|ci\(2) & ((\control|state.S5~q\) # (\control|ci\(1)))) ) ) ) # ( !\control|state.S4~q\ & ( 
-- \control|ci\(0) & ( (\control|state.S2~q\ & ((!\control|ci\(2) & (\control|ci\(1) & \control|state.S5~q\)) # (\control|ci\(2) & ((\control|state.S5~q\) # (\control|ci\(1)))))) ) ) ) # ( \control|state.S4~q\ & ( !\control|ci\(0) & ( (\control|ci\(2) & 
-- (\control|ci\(1) & \control|state.S5~q\)) ) ) ) # ( !\control|state.S4~q\ & ( !\control|ci\(0) & ( (\control|ci\(2) & (\control|ci\(1) & \control|state.S5~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000001000001110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci\(2),
	datab => \control|ALT_INV_ci\(1),
	datac => \control|ALT_INV_state.S2~q\,
	datad => \control|ALT_INV_state.S5~q\,
	datae => \control|ALT_INV_state.S4~q\,
	dataf => \control|ALT_INV_ci\(0),
	combout => \datos|Decoder2~7_combout\);

-- Location: MLABCELL_X8_Y2_N12
\datos|Decoder2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder2~1_combout\ = ( \control|state.S5~DUPLICATE_q\ & ( \control|state.S4~q\ & ( (!\control|ci[2]~DUPLICATE_q\ & (!\control|ci\(0) & !\control|ci\(1))) ) ) ) # ( !\control|state.S5~DUPLICATE_q\ & ( \control|state.S4~q\ & ( 
-- (!\control|ci[2]~DUPLICATE_q\ & (\control|ci\(0) & !\control|ci\(1))) ) ) ) # ( \control|state.S5~DUPLICATE_q\ & ( !\control|state.S4~q\ & ( (!\control|ci[2]~DUPLICATE_q\ & (!\control|ci\(0) & !\control|ci\(1))) ) ) ) # ( !\control|state.S5~DUPLICATE_q\ & 
-- ( !\control|state.S4~q\ & ( (!\control|ci[2]~DUPLICATE_q\ & (\control|ci\(0) & (\control|state.S2~q\ & !\control|ci\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000100010000000000000100010000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datab => \control|ALT_INV_ci\(0),
	datac => \control|ALT_INV_state.S2~q\,
	datad => \control|ALT_INV_ci\(1),
	datae => \control|ALT_INV_state.S5~DUPLICATE_q\,
	dataf => \control|ALT_INV_state.S4~q\,
	combout => \datos|Decoder2~1_combout\);

-- Location: LABCELL_X12_Y2_N42
\datos|R~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~9_combout\ = ( \datos|Mux6~0_combout\ & ( \datos|Mux6~1_combout\ & ( !\datos|Decoder2~1_combout\ ) ) ) # ( !\datos|Mux6~0_combout\ & ( \datos|Mux6~1_combout\ & ( (!\control|Selector0~0_combout\ & !\datos|Decoder2~1_combout\) ) ) ) # ( 
-- \datos|Mux6~0_combout\ & ( !\datos|Mux6~1_combout\ & ( (\control|Selector0~0_combout\ & !\datos|Decoder2~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000011001100000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \control|ALT_INV_Selector0~0_combout\,
	datad => \datos|ALT_INV_Decoder2~1_combout\,
	datae => \datos|ALT_INV_Mux6~0_combout\,
	dataf => \datos|ALT_INV_Mux6~1_combout\,
	combout => \datos|R~9_combout\);

-- Location: MLABCELL_X8_Y2_N18
\datos|Decoder2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder2~2_combout\ = ( !\control|state.S5~DUPLICATE_q\ & ( \control|state.S4~q\ & ( (!\control|ci[2]~DUPLICATE_q\ & (!\control|ci\(0) & \control|ci\(1))) ) ) ) # ( \control|state.S5~DUPLICATE_q\ & ( !\control|state.S4~q\ & ( 
-- (!\control|ci[2]~DUPLICATE_q\ & (\control|ci\(0) & (!\control|state.S2~q\ & !\control|ci\(1)))) ) ) ) # ( !\control|state.S5~DUPLICATE_q\ & ( !\control|state.S4~q\ & ( (!\control|ci[2]~DUPLICATE_q\ & (!\control|ci\(0) & (\control|state.S2~q\ & 
-- \control|ci\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000001000000000000000000000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datab => \control|ALT_INV_ci\(0),
	datac => \control|ALT_INV_state.S2~q\,
	datad => \control|ALT_INV_ci\(1),
	datae => \control|ALT_INV_state.S5~DUPLICATE_q\,
	dataf => \control|ALT_INV_state.S4~q\,
	combout => \datos|Decoder2~2_combout\);

-- Location: MLABCELL_X8_Y1_N3
\datos|R~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~16_combout\ = ( \datos|Mux6~1_combout\ & ( (!\datos|Decoder2~2_combout\ & ((!\control|Selector0~0_combout\) # (\datos|Mux6~0_combout\))) ) ) # ( !\datos|Mux6~1_combout\ & ( (!\datos|Decoder2~2_combout\ & (\datos|Mux6~0_combout\ & 
-- \control|Selector0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~2_combout\,
	datac => \datos|ALT_INV_Mux6~0_combout\,
	datad => \control|ALT_INV_Selector0~0_combout\,
	dataf => \datos|ALT_INV_Mux6~1_combout\,
	combout => \datos|R~16_combout\);

-- Location: MLABCELL_X8_Y1_N0
\datos|R~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~15_combout\ = ( \control|Selector3~2_combout\ & ( (\datos|Decoder2~2_combout\ & \datos|Mux3~0_combout\) ) ) # ( !\control|Selector3~2_combout\ & ( (\datos|Decoder2~2_combout\ & \datos|Mux3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~2_combout\,
	datab => \datos|ALT_INV_Mux3~0_combout\,
	datac => \datos|ALT_INV_Mux3~1_combout\,
	dataf => \control|ALT_INV_Selector3~2_combout\,
	combout => \datos|R~15_combout\);

-- Location: MLABCELL_X8_Y1_N30
\datos|R~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~17_combout\ = ( \control|WideOr0~combout\ & ( \control|WideOr1~combout\ & ( (\datos|R~15_combout\) # (\datos|R~16_combout\) ) ) ) # ( !\control|WideOr0~combout\ & ( \control|WideOr1~combout\ & ( (!\wrinit~input_o\ & (((\datos|R~15_combout\)) # 
-- (\datos|R~16_combout\))) # (\wrinit~input_o\ & (((\datain[0]~input_o\)))) ) ) ) # ( \control|WideOr0~combout\ & ( !\control|WideOr1~combout\ & ( (\datos|R~15_combout\) # (\datos|R~16_combout\) ) ) ) # ( !\control|WideOr0~combout\ & ( 
-- !\control|WideOr1~combout\ & ( (\datos|R~15_combout\) # (\datos|R~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111001100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~16_combout\,
	datab => \ALT_INV_datain[0]~input_o\,
	datac => \datos|ALT_INV_R~15_combout\,
	datad => \ALT_INV_wrinit~input_o\,
	datae => \control|ALT_INV_WideOr0~combout\,
	dataf => \control|ALT_INV_WideOr1~combout\,
	combout => \datos|R~17_combout\);

-- Location: LABCELL_X12_Y3_N12
\datos|R~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~4_combout\ = ( \control|WideOr0~combout\ & ( !\control|WideOr1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \control|ALT_INV_WideOr1~combout\,
	dataf => \control|ALT_INV_WideOr0~combout\,
	combout => \datos|R~4_combout\);

-- Location: IOIBUF_X4_Y0_N52
\datain[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(3),
	o => \datain[3]~input_o\);

-- Location: MLABCELL_X8_Y2_N42
\datos|Decoder2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder2~5_combout\ = ( \control|state.S5~DUPLICATE_q\ & ( \control|state.S4~q\ & ( (\control|ci[2]~DUPLICATE_q\ & (!\control|ci\(0) & !\control|ci\(1))) ) ) ) # ( !\control|state.S5~DUPLICATE_q\ & ( \control|state.S4~q\ & ( 
-- (\control|ci[2]~DUPLICATE_q\ & (\control|ci\(0) & !\control|ci\(1))) ) ) ) # ( \control|state.S5~DUPLICATE_q\ & ( !\control|state.S4~q\ & ( (\control|ci[2]~DUPLICATE_q\ & (!\control|ci\(0) & !\control|ci\(1))) ) ) ) # ( !\control|state.S5~DUPLICATE_q\ & ( 
-- !\control|state.S4~q\ & ( (\control|ci[2]~DUPLICATE_q\ & (\control|ci\(0) & (\control|state.S2~q\ & !\control|ci\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000010001000000000000010001000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datab => \control|ALT_INV_ci\(0),
	datac => \control|ALT_INV_state.S2~q\,
	datad => \control|ALT_INV_ci\(1),
	datae => \control|ALT_INV_state.S5~DUPLICATE_q\,
	dataf => \control|ALT_INV_state.S4~q\,
	combout => \datos|Decoder2~5_combout\);

-- Location: LABCELL_X9_Y1_N51
\datos|R~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~124_combout\ = ( \datos|Mux4~1_combout\ & ( (!\datos|Decoder2~6_combout\ & ((!\control|Selector0~0_combout\) # (\datos|Mux4~0_combout\))) ) ) # ( !\datos|Mux4~1_combout\ & ( (!\datos|Decoder2~6_combout\ & (\control|Selector0~0_combout\ & 
-- \datos|Mux4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Decoder2~6_combout\,
	datac => \control|ALT_INV_Selector0~0_combout\,
	datad => \datos|ALT_INV_Mux4~0_combout\,
	dataf => \datos|ALT_INV_Mux4~1_combout\,
	combout => \datos|R~124_combout\);

-- Location: MLABCELL_X8_Y2_N54
\datos|Decoder2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder2~3_combout\ = ( \control|state.S5~DUPLICATE_q\ & ( \control|state.S4~q\ & ( (!\control|ci[2]~DUPLICATE_q\ & (!\control|ci\(0) $ (!\control|ci\(1)))) ) ) ) # ( !\control|state.S5~DUPLICATE_q\ & ( \control|state.S4~q\ & ( 
-- (!\control|ci[2]~DUPLICATE_q\ & (\control|ci\(0) & \control|ci\(1))) ) ) ) # ( \control|state.S5~DUPLICATE_q\ & ( !\control|state.S4~q\ & ( (!\control|ci[2]~DUPLICATE_q\ & ((!\control|ci\(0) & ((\control|ci\(1)))) # (\control|ci\(0) & 
-- (\control|state.S2~q\ & !\control|ci\(1))))) ) ) ) # ( !\control|state.S5~DUPLICATE_q\ & ( !\control|state.S4~q\ & ( (!\control|ci[2]~DUPLICATE_q\ & (\control|ci\(0) & (\control|state.S2~q\ & \control|ci\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000101000100000000000001000100010001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datab => \control|ALT_INV_ci\(0),
	datac => \control|ALT_INV_state.S2~q\,
	datad => \control|ALT_INV_ci\(1),
	datae => \control|ALT_INV_state.S5~DUPLICATE_q\,
	dataf => \control|ALT_INV_state.S4~q\,
	combout => \datos|Decoder2~3_combout\);

-- Location: LABCELL_X10_Y1_N15
\datos|R~115\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~115_combout\ = ( \control|Selector0~0_combout\ & ( (!\datos|Decoder2~3_combout\ & \datos|Mux4~0_combout\) ) ) # ( !\control|Selector0~0_combout\ & ( (!\datos|Decoder2~3_combout\ & \datos|Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~3_combout\,
	datac => \datos|ALT_INV_Mux4~1_combout\,
	datad => \datos|ALT_INV_Mux4~0_combout\,
	dataf => \control|ALT_INV_Selector0~0_combout\,
	combout => \datos|R~115_combout\);

-- Location: LABCELL_X10_Y1_N12
\datos|R~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~114_combout\ = ( \datos|Mux1~1_combout\ & ( (\datos|Decoder2~3_combout\ & ((!\control|Selector3~2_combout\) # (\datos|Mux1~0_combout\))) ) ) # ( !\datos|Mux1~1_combout\ & ( (\datos|Decoder2~3_combout\ & (\datos|Mux1~0_combout\ & 
-- \control|Selector3~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~3_combout\,
	datac => \datos|ALT_INV_Mux1~0_combout\,
	datad => \control|ALT_INV_Selector3~2_combout\,
	dataf => \datos|ALT_INV_Mux1~1_combout\,
	combout => \datos|R~114_combout\);

-- Location: LABCELL_X11_Y1_N0
\datos|R~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~116_combout\ = ( \control|WideOr0~combout\ & ( \datos|R~114_combout\ ) ) # ( !\control|WideOr0~combout\ & ( \datos|R~114_combout\ & ( (!\control|WideOr1~combout\) # ((!\wrinit~input_o\) # (\datain[3]~input_o\)) ) ) ) # ( \control|WideOr0~combout\ 
-- & ( !\datos|R~114_combout\ & ( \datos|R~115_combout\ ) ) ) # ( !\control|WideOr0~combout\ & ( !\datos|R~114_combout\ & ( (!\control|WideOr1~combout\ & (((\datos|R~115_combout\)))) # (\control|WideOr1~combout\ & ((!\wrinit~input_o\ & 
-- ((\datos|R~115_combout\))) # (\wrinit~input_o\ & (\datain[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111011000000001111111111111011111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr1~combout\,
	datab => \ALT_INV_datain[3]~input_o\,
	datac => \ALT_INV_wrinit~input_o\,
	datad => \datos|ALT_INV_R~115_combout\,
	datae => \control|ALT_INV_WideOr0~combout\,
	dataf => \datos|ALT_INV_R~114_combout\,
	combout => \datos|R~116_combout\);

-- Location: LABCELL_X12_Y1_N3
\datos|R~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~100_combout\ = (!\datos|Decoder2~6_combout\ & ((!\control|Selector0~0_combout\ & ((\datos|Mux5~1_combout\))) # (\control|Selector0~0_combout\ & (\datos|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001000000010101000100000001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~6_combout\,
	datab => \datos|ALT_INV_Mux5~0_combout\,
	datac => \control|ALT_INV_Selector0~0_combout\,
	datad => \datos|ALT_INV_Mux5~1_combout\,
	combout => \datos|R~100_combout\);

-- Location: IOIBUF_X8_Y0_N35
\datain[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(2),
	o => \datain[2]~input_o\);

-- Location: LABCELL_X12_Y1_N0
\datos|R~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~99_combout\ = ( \datos|Mux2~0_combout\ & ( (\datos|Decoder2~6_combout\ & ((\datos|Mux2~1_combout\) # (\control|Selector3~2_combout\))) ) ) # ( !\datos|Mux2~0_combout\ & ( (\datos|Decoder2~6_combout\ & (!\control|Selector3~2_combout\ & 
-- \datos|Mux2~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~6_combout\,
	datac => \control|ALT_INV_Selector3~2_combout\,
	datad => \datos|ALT_INV_Mux2~1_combout\,
	dataf => \datos|ALT_INV_Mux2~0_combout\,
	combout => \datos|R~99_combout\);

-- Location: LABCELL_X12_Y1_N12
\datos|R~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~101_combout\ = ( \datos|R~99_combout\ & ( \control|WideOr0~combout\ ) ) # ( !\datos|R~99_combout\ & ( \control|WideOr0~combout\ & ( \datos|R~100_combout\ ) ) ) # ( \datos|R~99_combout\ & ( !\control|WideOr0~combout\ & ( (!\wrinit~input_o\) # 
-- ((!\control|WideOr1~combout\) # (\datain[2]~input_o\)) ) ) ) # ( !\datos|R~99_combout\ & ( !\control|WideOr0~combout\ & ( (!\wrinit~input_o\ & (\datos|R~100_combout\)) # (\wrinit~input_o\ & ((!\control|WideOr1~combout\ & (\datos|R~100_combout\)) # 
-- (\control|WideOr1~combout\ & ((\datain[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000111111111111100111101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~100_combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \ALT_INV_datain[2]~input_o\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \datos|ALT_INV_R~99_combout\,
	dataf => \control|ALT_INV_WideOr0~combout\,
	combout => \datos|R~101_combout\);

-- Location: IOIBUF_X16_Y0_N1
\datain[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(1),
	o => \datain[1]~input_o\);

-- Location: LABCELL_X10_Y3_N57
\datos|R~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~73_combout\ = ( \datos|Mux7~1_combout\ & ( (!\datos|Decoder2~5_combout\ & ((!\control|Selector0~0_combout\) # (\datos|Mux7~0_combout\))) ) ) # ( !\datos|Mux7~1_combout\ & ( (!\datos|Decoder2~5_combout\ & (\control|Selector0~0_combout\ & 
-- \datos|Mux7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~5_combout\,
	datac => \control|ALT_INV_Selector0~0_combout\,
	datad => \datos|ALT_INV_Mux7~0_combout\,
	dataf => \datos|ALT_INV_Mux7~1_combout\,
	combout => \datos|R~73_combout\);

-- Location: LABCELL_X10_Y3_N45
\datos|R~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~64_combout\ = ( \datos|Mux7~1_combout\ & ( (!\datos|Decoder2~2_combout\ & ((!\control|Selector0~0_combout\) # (\datos|Mux7~0_combout\))) ) ) # ( !\datos|Mux7~1_combout\ & ( (!\datos|Decoder2~2_combout\ & (\control|Selector0~0_combout\ & 
-- \datos|Mux7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~2_combout\,
	datac => \control|ALT_INV_Selector0~0_combout\,
	datad => \datos|ALT_INV_Mux7~0_combout\,
	dataf => \datos|ALT_INV_Mux7~1_combout\,
	combout => \datos|R~64_combout\);

-- Location: LABCELL_X10_Y3_N42
\datos|R~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~63_combout\ = (\datos|Decoder2~2_combout\ & ((!\control|Selector3~2_combout\ & (\datos|Mux0~1_combout\)) # (\control|Selector3~2_combout\ & ((\datos|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000100000001010100010000000101010001000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~2_combout\,
	datab => \datos|ALT_INV_Mux0~1_combout\,
	datac => \control|ALT_INV_Selector3~2_combout\,
	datad => \datos|ALT_INV_Mux0~0_combout\,
	combout => \datos|R~63_combout\);

-- Location: LABCELL_X10_Y3_N30
\datos|R~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~65_combout\ = ( \control|WideOr0~combout\ & ( \datos|R~63_combout\ ) ) # ( !\control|WideOr0~combout\ & ( \datos|R~63_combout\ & ( ((!\wrinit~input_o\) # (!\control|WideOr1~combout\)) # (\datain[1]~input_o\) ) ) ) # ( \control|WideOr0~combout\ & 
-- ( !\datos|R~63_combout\ & ( \datos|R~64_combout\ ) ) ) # ( !\control|WideOr0~combout\ & ( !\datos|R~63_combout\ & ( (!\wrinit~input_o\ & (((\datos|R~64_combout\)))) # (\wrinit~input_o\ & ((!\control|WideOr1~combout\ & ((\datos|R~64_combout\))) # 
-- (\control|WideOr1~combout\ & (\datain[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111101000000001111111111111101111111011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_datain[1]~input_o\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \datos|ALT_INV_R~64_combout\,
	datae => \control|ALT_INV_WideOr0~combout\,
	dataf => \datos|ALT_INV_R~63_combout\,
	combout => \datos|R~65_combout\);

-- Location: FF_X10_Y3_N32
\datos|R[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~65_combout\,
	ena => \datos|R[2][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[2][1]~q\);

-- Location: LABCELL_X12_Y3_N45
\datos|R~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~61_combout\ = ( \datos|Mux7~1_combout\ & ( (!\datos|Decoder2~1_combout\ & ((!\control|Selector0~0_combout\) # (\datos|Mux7~0_combout\))) ) ) # ( !\datos|Mux7~1_combout\ & ( (!\datos|Decoder2~1_combout\ & (\control|Selector0~0_combout\ & 
-- \datos|Mux7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~1_combout\,
	datac => \control|ALT_INV_Selector0~0_combout\,
	datad => \datos|ALT_INV_Mux7~0_combout\,
	dataf => \datos|ALT_INV_Mux7~1_combout\,
	combout => \datos|R~61_combout\);

-- Location: LABCELL_X12_Y3_N42
\datos|R~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~60_combout\ = (\datos|Decoder2~1_combout\ & ((!\control|Selector3~2_combout\ & ((\datos|Mux0~1_combout\))) # (\control|Selector3~2_combout\ & (\datos|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001010001000100000101000100010000010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~1_combout\,
	datab => \datos|ALT_INV_Mux0~0_combout\,
	datac => \datos|ALT_INV_Mux0~1_combout\,
	datad => \control|ALT_INV_Selector3~2_combout\,
	combout => \datos|R~60_combout\);

-- Location: LABCELL_X11_Y3_N36
\datos|R~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~62_combout\ = ( \control|WideOr1~combout\ & ( \control|WideOr0~combout\ & ( (\datos|R~60_combout\) # (\datos|R~61_combout\) ) ) ) # ( !\control|WideOr1~combout\ & ( \control|WideOr0~combout\ & ( (\datos|R~60_combout\) # (\datos|R~61_combout\) ) ) 
-- ) # ( \control|WideOr1~combout\ & ( !\control|WideOr0~combout\ & ( (!\wrinit~input_o\ & (((\datos|R~60_combout\)) # (\datos|R~61_combout\))) # (\wrinit~input_o\ & (((\datain[1]~input_o\)))) ) ) ) # ( !\control|WideOr1~combout\ & ( 
-- !\control|WideOr0~combout\ & ( (\datos|R~60_combout\) # (\datos|R~61_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010100111111001101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~61_combout\,
	datab => \ALT_INV_datain[1]~input_o\,
	datac => \ALT_INV_wrinit~input_o\,
	datad => \datos|ALT_INV_R~60_combout\,
	datae => \control|ALT_INV_WideOr1~combout\,
	dataf => \control|ALT_INV_WideOr0~combout\,
	combout => \datos|R~62_combout\);

-- Location: IOIBUF_X4_Y0_N1
\radd[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_radd(2),
	o => \radd[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\radd[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_radd(0),
	o => \radd[0]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\radd[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_radd(1),
	o => \radd[1]~input_o\);

-- Location: LABCELL_X11_Y3_N12
\datos|R[1][0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[1][0]~11_combout\ = ( \radd[0]~input_o\ & ( !\radd[1]~input_o\ & ( (!\radd[2]~input_o\ & (!\control|WideOr0~combout\ & (\control|WideOr1~combout\ & \wrinit~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_radd[2]~input_o\,
	datab => \control|ALT_INV_WideOr0~combout\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \ALT_INV_wrinit~input_o\,
	datae => \ALT_INV_radd[0]~input_o\,
	dataf => \ALT_INV_radd[1]~input_o\,
	combout => \datos|R[1][0]~11_combout\);

-- Location: LABCELL_X9_Y2_N45
\datos|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Equal0~0_combout\ = ( \control|state.S1~q\ & ( (!\control|state.S2~q\ & (!\control|state.S7~_Duplicate_1_q\ & ((!\control|state.S0~q\) # (\control|state.S4~q\)))) ) ) # ( !\control|state.S1~q\ & ( (!\control|state.S2~q\ & (!\control|state.S0~q\ & 
-- !\control|state.S7~_Duplicate_1_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000101000001000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S2~q\,
	datab => \control|ALT_INV_state.S0~q\,
	datac => \control|ALT_INV_state.S7~_Duplicate_1_q\,
	datad => \control|ALT_INV_state.S4~q\,
	dataf => \control|ALT_INV_state.S1~q\,
	combout => \datos|Equal0~0_combout\);

-- Location: LABCELL_X11_Y2_N21
\datos|R[1][0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[1][0]~12_combout\ = ( !\control|Selector3~1_combout\ & ( (\control|Selector5~0_combout\ & (!\control|Selector4~0_combout\ & !\control|Selector3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_Selector5~0_combout\,
	datab => \control|ALT_INV_Selector4~0_combout\,
	datad => \control|ALT_INV_Selector3~0_combout\,
	dataf => \control|ALT_INV_Selector3~1_combout\,
	combout => \datos|R[1][0]~12_combout\);

-- Location: LABCELL_X10_Y2_N54
\datos|R[1][0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[1][0]~13_combout\ = ( \datos|Decoder2~1_combout\ & ( \datos|R[1][0]~12_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( !\datos|Decoder2~1_combout\ & ( \datos|R[1][0]~12_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( \datos|Decoder2~1_combout\ 
-- & ( !\datos|R[1][0]~12_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( !\datos|Decoder2~1_combout\ & ( !\datos|R[1][0]~12_combout\ & ( (!\datos|Equal0~0_combout\ & (!\control|WideOr0~combout\ & (\control|WideOr1~combout\ & \wrinit~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Equal0~0_combout\,
	datab => \control|ALT_INV_WideOr0~combout\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \ALT_INV_wrinit~input_o\,
	datae => \datos|ALT_INV_Decoder2~1_combout\,
	dataf => \datos|ALT_INV_R[1][0]~12_combout\,
	combout => \datos|R[1][0]~13_combout\);

-- Location: LABCELL_X11_Y3_N48
\datos|R[1][0]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[1][0]~14_combout\ = ( \datos|R[1][0]~11_combout\ & ( \datos|R[1][0]~13_combout\ ) ) # ( !\datos|R[1][0]~11_combout\ & ( \datos|R[1][0]~13_combout\ & ( (\datos|R~4_combout\ & (((\datos|LessThan0~3_combout\ & \datos|LessThan0~1_combout\)) # 
-- (\datos|LessThan0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~4_combout\,
	datab => \datos|ALT_INV_LessThan0~2_combout\,
	datac => \datos|ALT_INV_LessThan0~3_combout\,
	datad => \datos|ALT_INV_LessThan0~1_combout\,
	datae => \datos|ALT_INV_R[1][0]~11_combout\,
	dataf => \datos|ALT_INV_R[1][0]~13_combout\,
	combout => \datos|R[1][0]~14_combout\);

-- Location: FF_X11_Y3_N37
\datos|R[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~62_combout\,
	ena => \datos|R[1][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[1][1]~q\);

-- Location: LABCELL_X10_Y3_N21
\datos|R~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~67_combout\ = ( \datos|Mux7~1_combout\ & ( (!\datos|Decoder2~3_combout\ & ((!\control|Selector0~0_combout\) # (\datos|Mux7~0_combout\))) ) ) # ( !\datos|Mux7~1_combout\ & ( (!\datos|Decoder2~3_combout\ & (\control|Selector0~0_combout\ & 
-- \datos|Mux7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~3_combout\,
	datac => \control|ALT_INV_Selector0~0_combout\,
	datad => \datos|ALT_INV_Mux7~0_combout\,
	dataf => \datos|ALT_INV_Mux7~1_combout\,
	combout => \datos|R~67_combout\);

-- Location: LABCELL_X10_Y3_N18
\datos|R~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~66_combout\ = (\datos|Decoder2~3_combout\ & ((!\control|Selector3~2_combout\ & (\datos|Mux0~1_combout\)) # (\control|Selector3~2_combout\ & ((\datos|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000100000001010100010000000101010001000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~3_combout\,
	datab => \datos|ALT_INV_Mux0~1_combout\,
	datac => \control|ALT_INV_Selector3~2_combout\,
	datad => \datos|ALT_INV_Mux0~0_combout\,
	combout => \datos|R~66_combout\);

-- Location: LABCELL_X10_Y3_N36
\datos|R~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~68_combout\ = ( \control|WideOr0~combout\ & ( \datos|R~66_combout\ ) ) # ( !\control|WideOr0~combout\ & ( \datos|R~66_combout\ & ( (!\wrinit~input_o\) # ((!\control|WideOr1~combout\) # (\datain[1]~input_o\)) ) ) ) # ( \control|WideOr0~combout\ & 
-- ( !\datos|R~66_combout\ & ( \datos|R~67_combout\ ) ) ) # ( !\control|WideOr0~combout\ & ( !\datos|R~66_combout\ & ( (!\wrinit~input_o\ & (\datos|R~67_combout\)) # (\wrinit~input_o\ & ((!\control|WideOr1~combout\ & (\datos|R~67_combout\)) # 
-- (\control|WideOr1~combout\ & ((\datain[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010111010101010101010111111100111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~67_combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \ALT_INV_datain[1]~input_o\,
	datae => \control|ALT_INV_WideOr0~combout\,
	dataf => \datos|ALT_INV_R~66_combout\,
	combout => \datos|R~68_combout\);

-- Location: FF_X10_Y3_N38
\datos|R[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~68_combout\,
	ena => \datos|R[3][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[3][1]~q\);

-- Location: LABCELL_X10_Y3_N9
\datos|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux0~1_combout\ = ( \control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[3][1]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[2][1]~q\ ) ) ) # ( \control|Selector5~0_combout\ & ( 
-- !\control|Selector4~0_combout\ & ( \datos|R[1][1]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( !\control|Selector4~0_combout\ & ( \datos|R[0][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[0][1]~q\,
	datab => \datos|ALT_INV_R[2][1]~q\,
	datac => \datos|ALT_INV_R[1][1]~q\,
	datad => \datos|ALT_INV_R[3][1]~q\,
	datae => \control|ALT_INV_Selector5~0_combout\,
	dataf => \control|ALT_INV_Selector4~0_combout\,
	combout => \datos|Mux0~1_combout\);

-- Location: LABCELL_X9_Y3_N48
\datos|R~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~69_combout\ = ( \control|Selector3~2_combout\ & ( (\datos|Decoder2~4_combout\ & \datos|Mux0~0_combout\) ) ) # ( !\control|Selector3~2_combout\ & ( (\datos|Decoder2~4_combout\ & \datos|Mux0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~4_combout\,
	datac => \datos|ALT_INV_Mux0~1_combout\,
	datad => \datos|ALT_INV_Mux0~0_combout\,
	dataf => \control|ALT_INV_Selector3~2_combout\,
	combout => \datos|R~69_combout\);

-- Location: LABCELL_X9_Y3_N51
\datos|R~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~70_combout\ = ( \datos|Mux7~0_combout\ & ( (!\datos|Decoder2~4_combout\ & ((\datos|Mux7~1_combout\) # (\control|Selector0~0_combout\))) ) ) # ( !\datos|Mux7~0_combout\ & ( (!\datos|Decoder2~4_combout\ & (!\control|Selector0~0_combout\ & 
-- \datos|Mux7~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~4_combout\,
	datac => \control|ALT_INV_Selector0~0_combout\,
	datad => \datos|ALT_INV_Mux7~1_combout\,
	dataf => \datos|ALT_INV_Mux7~0_combout\,
	combout => \datos|R~70_combout\);

-- Location: LABCELL_X9_Y3_N6
\datos|R~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~71_combout\ = ( \control|WideOr0~combout\ & ( \datos|R~70_combout\ ) ) # ( !\control|WideOr0~combout\ & ( \datos|R~70_combout\ & ( (!\wrinit~input_o\) # ((!\control|WideOr1~combout\) # (\datain[1]~input_o\)) ) ) ) # ( \control|WideOr0~combout\ & 
-- ( !\datos|R~70_combout\ & ( \datos|R~69_combout\ ) ) ) # ( !\control|WideOr0~combout\ & ( !\datos|R~70_combout\ & ( (!\wrinit~input_o\ & (((\datos|R~69_combout\)))) # (\wrinit~input_o\ & ((!\control|WideOr1~combout\ & ((\datos|R~69_combout\))) # 
-- (\control|WideOr1~combout\ & (\datain[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011011000011110000111111111111101110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wrinit~input_o\,
	datab => \ALT_INV_datain[1]~input_o\,
	datac => \datos|ALT_INV_R~69_combout\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \control|ALT_INV_WideOr0~combout\,
	dataf => \datos|ALT_INV_R~70_combout\,
	combout => \datos|R~71_combout\);

-- Location: LABCELL_X9_Y3_N36
\datos|R[4][0]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[4][0]~32_combout\ = ( \control|WideOr1~combout\ & ( !\radd[0]~input_o\ & ( (!\control|WideOr0~combout\ & (\radd[2]~input_o\ & (\wrinit~input_o\ & !\radd[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr0~combout\,
	datab => \ALT_INV_radd[2]~input_o\,
	datac => \ALT_INV_wrinit~input_o\,
	datad => \ALT_INV_radd[1]~input_o\,
	datae => \control|ALT_INV_WideOr1~combout\,
	dataf => \ALT_INV_radd[0]~input_o\,
	combout => \datos|R[4][0]~32_combout\);

-- Location: LABCELL_X9_Y2_N12
\datos|R[4][0]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[4][0]~33_combout\ = ( \control|Selector3~0_combout\ & ( (!\control|Selector4~0_combout\ & !\control|Selector5~0_combout\) ) ) # ( !\control|Selector3~0_combout\ & ( (!\control|Selector4~0_combout\ & (!\control|Selector5~0_combout\ & 
-- \control|Selector3~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_Selector4~0_combout\,
	datab => \control|ALT_INV_Selector5~0_combout\,
	datac => \control|ALT_INV_Selector3~1_combout\,
	dataf => \control|ALT_INV_Selector3~0_combout\,
	combout => \datos|R[4][0]~33_combout\);

-- Location: LABCELL_X9_Y2_N18
\datos|R[4][0]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[4][0]~34_combout\ = ( \datos|Decoder2~4_combout\ & ( \datos|R[4][0]~33_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( !\datos|Decoder2~4_combout\ & ( \datos|R[4][0]~33_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( \datos|Decoder2~4_combout\ 
-- & ( !\datos|R[4][0]~33_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( !\datos|Decoder2~4_combout\ & ( !\datos|R[4][0]~33_combout\ & ( (!\control|WideOr0~combout\ & (\wrinit~input_o\ & (\control|WideOr1~combout\ & !\datos|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr0~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \datos|ALT_INV_Equal0~0_combout\,
	datae => \datos|ALT_INV_Decoder2~4_combout\,
	dataf => \datos|ALT_INV_R[4][0]~33_combout\,
	combout => \datos|R[4][0]~34_combout\);

-- Location: LABCELL_X9_Y3_N12
\datos|R[4][0]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[4][0]~35_combout\ = ( \datos|R[4][0]~32_combout\ & ( \datos|R[4][0]~34_combout\ ) ) # ( !\datos|R[4][0]~32_combout\ & ( \datos|R[4][0]~34_combout\ & ( (\datos|R~4_combout\ & (((\datos|LessThan0~1_combout\ & \datos|LessThan0~3_combout\)) # 
-- (\datos|LessThan0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_LessThan0~1_combout\,
	datab => \datos|ALT_INV_R~4_combout\,
	datac => \datos|ALT_INV_LessThan0~3_combout\,
	datad => \datos|ALT_INV_LessThan0~2_combout\,
	datae => \datos|ALT_INV_R[4][0]~32_combout\,
	dataf => \datos|ALT_INV_R[4][0]~34_combout\,
	combout => \datos|R[4][0]~35_combout\);

-- Location: FF_X9_Y3_N7
\datos|R[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~71_combout\,
	ena => \datos|R[4][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[4][1]~q\);

-- Location: LABCELL_X12_Y3_N9
\datos|R~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~76_combout\ = ( \datos|Mux7~1_combout\ & ( (!\datos|Decoder2~6_combout\ & ((!\control|Selector0~0_combout\) # (\datos|Mux7~0_combout\))) ) ) # ( !\datos|Mux7~1_combout\ & ( (\datos|Mux7~0_combout\ & (\control|Selector0~0_combout\ & 
-- !\datos|Decoder2~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000011011101000000001101110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux7~0_combout\,
	datab => \control|ALT_INV_Selector0~0_combout\,
	datad => \datos|ALT_INV_Decoder2~6_combout\,
	dataf => \datos|ALT_INV_Mux7~1_combout\,
	combout => \datos|R~76_combout\);

-- Location: LABCELL_X12_Y3_N30
\datos|R~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~75_combout\ = (\datos|Decoder2~6_combout\ & ((!\control|Selector3~2_combout\ & (\datos|Mux0~1_combout\)) # (\control|Selector3~2_combout\ & ((\datos|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001010000001100000101000000110000010100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux0~1_combout\,
	datab => \datos|ALT_INV_Mux0~0_combout\,
	datac => \datos|ALT_INV_Decoder2~6_combout\,
	datad => \control|ALT_INV_Selector3~2_combout\,
	combout => \datos|R~75_combout\);

-- Location: LABCELL_X11_Y3_N42
\datos|R~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~77_combout\ = ( \control|WideOr1~combout\ & ( \control|WideOr0~combout\ & ( (\datos|R~75_combout\) # (\datos|R~76_combout\) ) ) ) # ( !\control|WideOr1~combout\ & ( \control|WideOr0~combout\ & ( (\datos|R~75_combout\) # (\datos|R~76_combout\) ) ) 
-- ) # ( \control|WideOr1~combout\ & ( !\control|WideOr0~combout\ & ( (!\wrinit~input_o\ & (((\datos|R~75_combout\)) # (\datos|R~76_combout\))) # (\wrinit~input_o\ & (((\datain[1]~input_o\)))) ) ) ) # ( !\control|WideOr1~combout\ & ( 
-- !\control|WideOr0~combout\ & ( (\datos|R~75_combout\) # (\datos|R~76_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010100111111001101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~76_combout\,
	datab => \ALT_INV_datain[1]~input_o\,
	datac => \ALT_INV_wrinit~input_o\,
	datad => \datos|ALT_INV_R~75_combout\,
	datae => \control|ALT_INV_WideOr1~combout\,
	dataf => \control|ALT_INV_WideOr0~combout\,
	combout => \datos|R~77_combout\);

-- Location: FF_X11_Y3_N44
\datos|R[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~77_combout\,
	ena => \datos|R[6][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[6][1]~q\);

-- Location: LABCELL_X9_Y3_N27
\datos|R~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~79_combout\ = ( \control|Selector0~0_combout\ & ( (!\datos|Decoder2~7_combout\ & \datos|Mux7~0_combout\) ) ) # ( !\control|Selector0~0_combout\ & ( (!\datos|Decoder2~7_combout\ & \datos|Mux7~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Decoder2~7_combout\,
	datac => \datos|ALT_INV_Mux7~0_combout\,
	datad => \datos|ALT_INV_Mux7~1_combout\,
	dataf => \control|ALT_INV_Selector0~0_combout\,
	combout => \datos|R~79_combout\);

-- Location: LABCELL_X9_Y3_N24
\datos|R~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~78_combout\ = ( \control|Selector3~2_combout\ & ( (\datos|Decoder2~7_combout\ & \datos|Mux0~0_combout\) ) ) # ( !\control|Selector3~2_combout\ & ( (\datos|Decoder2~7_combout\ & \datos|Mux0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Decoder2~7_combout\,
	datac => \datos|ALT_INV_Mux0~1_combout\,
	datad => \datos|ALT_INV_Mux0~0_combout\,
	dataf => \control|ALT_INV_Selector3~2_combout\,
	combout => \datos|R~78_combout\);

-- Location: LABCELL_X10_Y3_N48
\datos|R~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~80_combout\ = ( \control|WideOr0~combout\ & ( \datos|R~78_combout\ ) ) # ( !\control|WideOr0~combout\ & ( \datos|R~78_combout\ & ( ((!\wrinit~input_o\) # (!\control|WideOr1~combout\)) # (\datain[1]~input_o\) ) ) ) # ( \control|WideOr0~combout\ & 
-- ( !\datos|R~78_combout\ & ( \datos|R~79_combout\ ) ) ) # ( !\control|WideOr0~combout\ & ( !\datos|R~78_combout\ & ( (!\wrinit~input_o\ & (((\datos|R~79_combout\)))) # (\wrinit~input_o\ & ((!\control|WideOr1~combout\ & ((\datos|R~79_combout\))) # 
-- (\control|WideOr1~combout\ & (\datain[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111101000000001111111111111101111111011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_datain[1]~input_o\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \datos|ALT_INV_R~79_combout\,
	datae => \control|ALT_INV_WideOr0~combout\,
	dataf => \datos|ALT_INV_R~78_combout\,
	combout => \datos|R~80_combout\);

-- Location: LABCELL_X10_Y2_N0
\datos|R[7][0]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[7][0]~53_combout\ = ( \radd[0]~input_o\ & ( \control|WideOr1~combout\ & ( (\radd[1]~input_o\ & (\radd[2]~input_o\ & (!\control|WideOr0~combout\ & \wrinit~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_radd[1]~input_o\,
	datab => \ALT_INV_radd[2]~input_o\,
	datac => \control|ALT_INV_WideOr0~combout\,
	datad => \ALT_INV_wrinit~input_o\,
	datae => \ALT_INV_radd[0]~input_o\,
	dataf => \control|ALT_INV_WideOr1~combout\,
	combout => \datos|R[7][0]~53_combout\);

-- Location: LABCELL_X9_Y2_N3
\datos|R[7][0]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[7][0]~54_combout\ = ( \control|Selector3~0_combout\ & ( (\control|Selector4~0_combout\ & \control|Selector5~0_combout\) ) ) # ( !\control|Selector3~0_combout\ & ( (\control|Selector4~0_combout\ & (\control|Selector5~0_combout\ & 
-- \control|Selector3~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_Selector4~0_combout\,
	datac => \control|ALT_INV_Selector5~0_combout\,
	datad => \control|ALT_INV_Selector3~1_combout\,
	dataf => \control|ALT_INV_Selector3~0_combout\,
	combout => \datos|R[7][0]~54_combout\);

-- Location: LABCELL_X9_Y2_N36
\datos|R[7][0]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[7][0]~55_combout\ = ( \datos|R[7][0]~54_combout\ & ( \datos|Decoder2~7_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( !\datos|R[7][0]~54_combout\ & ( \datos|Decoder2~7_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( \datos|R[7][0]~54_combout\ 
-- & ( !\datos|Decoder2~7_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( !\datos|R[7][0]~54_combout\ & ( !\datos|Decoder2~7_combout\ & ( (!\control|WideOr0~combout\ & (\wrinit~input_o\ & (\control|WideOr1~combout\ & !\datos|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr0~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \datos|ALT_INV_Equal0~0_combout\,
	datae => \datos|ALT_INV_R[7][0]~54_combout\,
	dataf => \datos|ALT_INV_Decoder2~7_combout\,
	combout => \datos|R[7][0]~55_combout\);

-- Location: LABCELL_X9_Y3_N0
\datos|R[7][0]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[7][0]~56_combout\ = ( \datos|R[7][0]~53_combout\ & ( \datos|R[7][0]~55_combout\ ) ) # ( !\datos|R[7][0]~53_combout\ & ( \datos|R[7][0]~55_combout\ & ( (\datos|R~4_combout\ & (((\datos|LessThan0~1_combout\ & \datos|LessThan0~3_combout\)) # 
-- (\datos|LessThan0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_LessThan0~1_combout\,
	datab => \datos|ALT_INV_R~4_combout\,
	datac => \datos|ALT_INV_LessThan0~3_combout\,
	datad => \datos|ALT_INV_LessThan0~2_combout\,
	datae => \datos|ALT_INV_R[7][0]~53_combout\,
	dataf => \datos|ALT_INV_R[7][0]~55_combout\,
	combout => \datos|R[7][0]~56_combout\);

-- Location: FF_X10_Y3_N50
\datos|R[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~80_combout\,
	ena => \datos|R[7][0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[7][1]~q\);

-- Location: LABCELL_X10_Y3_N3
\datos|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux0~0_combout\ = ( \control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[7][1]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[6][1]~q\ ) ) ) # ( \control|Selector5~0_combout\ & ( 
-- !\control|Selector4~0_combout\ & ( \datos|R[5][1]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( !\control|Selector4~0_combout\ & ( \datos|R[4][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[5][1]~q\,
	datab => \datos|ALT_INV_R[4][1]~q\,
	datac => \datos|ALT_INV_R[6][1]~q\,
	datad => \datos|ALT_INV_R[7][1]~q\,
	datae => \control|ALT_INV_Selector5~0_combout\,
	dataf => \control|ALT_INV_Selector4~0_combout\,
	combout => \datos|Mux0~0_combout\);

-- Location: LABCELL_X10_Y3_N54
\datos|R~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~72_combout\ = ( \datos|Mux0~1_combout\ & ( (\datos|Decoder2~5_combout\ & ((!\control|Selector3~2_combout\) # (\datos|Mux0~0_combout\))) ) ) # ( !\datos|Mux0~1_combout\ & ( (\datos|Decoder2~5_combout\ & (\control|Selector3~2_combout\ & 
-- \datos|Mux0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~5_combout\,
	datac => \control|ALT_INV_Selector3~2_combout\,
	datad => \datos|ALT_INV_Mux0~0_combout\,
	dataf => \datos|ALT_INV_Mux0~1_combout\,
	combout => \datos|R~72_combout\);

-- Location: LABCELL_X9_Y3_N42
\datos|R~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~74_combout\ = ( \datain[1]~input_o\ & ( \datos|R~72_combout\ ) ) # ( !\datain[1]~input_o\ & ( \datos|R~72_combout\ & ( (!\wrinit~input_o\) # ((!\control|WideOr1~combout\) # (\control|WideOr0~combout\)) ) ) ) # ( \datain[1]~input_o\ & ( 
-- !\datos|R~72_combout\ & ( ((\wrinit~input_o\ & (\control|WideOr1~combout\ & !\control|WideOr0~combout\))) # (\datos|R~73_combout\) ) ) ) # ( !\datain[1]~input_o\ & ( !\datos|R~72_combout\ & ( (\datos|R~73_combout\ & ((!\wrinit~input_o\) # 
-- ((!\control|WideOr1~combout\) # (\control|WideOr0~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101111000100001111111111101111111011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wrinit~input_o\,
	datab => \control|ALT_INV_WideOr1~combout\,
	datac => \control|ALT_INV_WideOr0~combout\,
	datad => \datos|ALT_INV_R~73_combout\,
	datae => \ALT_INV_datain[1]~input_o\,
	dataf => \datos|ALT_INV_R~72_combout\,
	combout => \datos|R~74_combout\);

-- Location: LABCELL_X9_Y3_N57
\datos|R[5][0]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[5][0]~39_combout\ = ( \radd[2]~input_o\ & ( !\radd[1]~input_o\ & ( (\wrinit~input_o\ & (\control|WideOr1~combout\ & (\radd[0]~input_o\ & !\control|WideOr0~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wrinit~input_o\,
	datab => \control|ALT_INV_WideOr1~combout\,
	datac => \ALT_INV_radd[0]~input_o\,
	datad => \control|ALT_INV_WideOr0~combout\,
	datae => \ALT_INV_radd[2]~input_o\,
	dataf => \ALT_INV_radd[1]~input_o\,
	combout => \datos|R[5][0]~39_combout\);

-- Location: LABCELL_X9_Y2_N15
\datos|R[5][0]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[5][0]~40_combout\ = ( \control|Selector3~0_combout\ & ( (!\control|Selector4~0_combout\ & \control|Selector5~0_combout\) ) ) # ( !\control|Selector3~0_combout\ & ( (!\control|Selector4~0_combout\ & (\control|Selector5~0_combout\ & 
-- \control|Selector3~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_Selector4~0_combout\,
	datab => \control|ALT_INV_Selector5~0_combout\,
	datad => \control|ALT_INV_Selector3~1_combout\,
	dataf => \control|ALT_INV_Selector3~0_combout\,
	combout => \datos|R[5][0]~40_combout\);

-- Location: LABCELL_X9_Y2_N21
\datos|R[5][0]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[5][0]~41_combout\ = ( \datos|Decoder2~5_combout\ & ( \datos|R[5][0]~40_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( !\datos|Decoder2~5_combout\ & ( \datos|R[5][0]~40_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( \datos|Decoder2~5_combout\ 
-- & ( !\datos|R[5][0]~40_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( !\datos|Decoder2~5_combout\ & ( !\datos|R[5][0]~40_combout\ & ( (!\control|WideOr0~combout\ & (\wrinit~input_o\ & (!\datos|Equal0~0_combout\ & \control|WideOr1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr0~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \datos|ALT_INV_Equal0~0_combout\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \datos|ALT_INV_Decoder2~5_combout\,
	dataf => \datos|ALT_INV_R[5][0]~40_combout\,
	combout => \datos|R[5][0]~41_combout\);

-- Location: LABCELL_X9_Y3_N15
\datos|R[5][0]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[5][0]~42_combout\ = ( \datos|R[5][0]~39_combout\ & ( \datos|R[5][0]~41_combout\ ) ) # ( !\datos|R[5][0]~39_combout\ & ( \datos|R[5][0]~41_combout\ & ( (\datos|R~4_combout\ & (((\datos|LessThan0~1_combout\ & \datos|LessThan0~3_combout\)) # 
-- (\datos|LessThan0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_LessThan0~1_combout\,
	datab => \datos|ALT_INV_R~4_combout\,
	datac => \datos|ALT_INV_LessThan0~2_combout\,
	datad => \datos|ALT_INV_LessThan0~3_combout\,
	datae => \datos|ALT_INV_R[5][0]~39_combout\,
	dataf => \datos|ALT_INV_R[5][0]~41_combout\,
	combout => \datos|R[5][0]~42_combout\);

-- Location: FF_X9_Y3_N44
\datos|R[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~74_combout\,
	ena => \datos|R[5][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[5][1]~q\);

-- Location: LABCELL_X10_Y3_N0
\datos|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux7~0_combout\ = ( \control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[7][1]~q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[6][1]~q\ ) ) ) # ( \control|Selector2~0_combout\ & ( 
-- !\control|Selector1~0_combout\ & ( \datos|R[5][1]~q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( !\control|Selector1~0_combout\ & ( \datos|R[4][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[5][1]~q\,
	datab => \datos|ALT_INV_R[4][1]~q\,
	datac => \datos|ALT_INV_R[7][1]~q\,
	datad => \datos|ALT_INV_R[6][1]~q\,
	datae => \control|ALT_INV_Selector2~0_combout\,
	dataf => \control|ALT_INV_Selector1~0_combout\,
	combout => \datos|Mux7~0_combout\);

-- Location: MLABCELL_X8_Y2_N30
\datos|Decoder2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder2~0_combout\ = ( !\control|state.S5~DUPLICATE_q\ & ( \control|state.S4~q\ & ( (!\control|ci[2]~DUPLICATE_q\ & (!\control|ci\(0) & !\control|ci\(1))) ) ) ) # ( \control|state.S5~DUPLICATE_q\ & ( !\control|state.S4~q\ & ( 
-- (\control|ci[2]~DUPLICATE_q\ & (\control|ci\(0) & (!\control|state.S2~q\ & \control|ci\(1)))) ) ) ) # ( !\control|state.S5~DUPLICATE_q\ & ( !\control|state.S4~q\ & ( (!\control|state.S2~q\) # ((!\control|ci[2]~DUPLICATE_q\ & (!\control|ci\(0) & 
-- !\control|ci\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011110000000000000001000010001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datab => \control|ALT_INV_ci\(0),
	datac => \control|ALT_INV_state.S2~q\,
	datad => \control|ALT_INV_ci\(1),
	datae => \control|ALT_INV_state.S5~DUPLICATE_q\,
	dataf => \control|ALT_INV_state.S4~q\,
	combout => \datos|Decoder2~0_combout\);

-- Location: LABCELL_X12_Y3_N6
\datos|R~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~58_combout\ = ( \datos|Mux7~1_combout\ & ( (!\datos|Decoder2~0_combout\ & ((!\control|Selector0~0_combout\) # (\datos|Mux7~0_combout\))) ) ) # ( !\datos|Mux7~1_combout\ & ( (\datos|Mux7~0_combout\ & (\control|Selector0~0_combout\ & 
-- !\datos|Decoder2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000011010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux7~0_combout\,
	datab => \control|ALT_INV_Selector0~0_combout\,
	datac => \datos|ALT_INV_Decoder2~0_combout\,
	dataf => \datos|ALT_INV_Mux7~1_combout\,
	combout => \datos|R~58_combout\);

-- Location: LABCELL_X12_Y3_N33
\datos|R~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~57_combout\ = ( \datos|Decoder2~0_combout\ & ( (!\control|Selector3~2_combout\ & (\datos|Mux0~1_combout\)) # (\control|Selector3~2_combout\ & ((\datos|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux0~1_combout\,
	datab => \datos|ALT_INV_Mux0~0_combout\,
	datac => \control|ALT_INV_Selector3~2_combout\,
	dataf => \datos|ALT_INV_Decoder2~0_combout\,
	combout => \datos|R~57_combout\);

-- Location: LABCELL_X11_Y3_N0
\datos|R~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~59_combout\ = ( \datos|R~58_combout\ & ( \datos|R~57_combout\ & ( (!\wrinit~input_o\) # (((!\control|WideOr1~combout\) # (\control|WideOr0~combout\)) # (\datain[1]~input_o\)) ) ) ) # ( !\datos|R~58_combout\ & ( \datos|R~57_combout\ & ( 
-- (!\wrinit~input_o\) # (((!\control|WideOr1~combout\) # (\control|WideOr0~combout\)) # (\datain[1]~input_o\)) ) ) ) # ( \datos|R~58_combout\ & ( !\datos|R~57_combout\ & ( (!\wrinit~input_o\) # (((!\control|WideOr1~combout\) # (\control|WideOr0~combout\)) # 
-- (\datain[1]~input_o\)) ) ) ) # ( !\datos|R~58_combout\ & ( !\datos|R~57_combout\ & ( (\wrinit~input_o\ & (\datain[1]~input_o\ & (\control|WideOr1~combout\ & !\control|WideOr0~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000111110111111111111111011111111111111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wrinit~input_o\,
	datab => \ALT_INV_datain[1]~input_o\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \control|ALT_INV_WideOr0~combout\,
	datae => \datos|ALT_INV_R~58_combout\,
	dataf => \datos|ALT_INV_R~57_combout\,
	combout => \datos|R~59_combout\);

-- Location: LABCELL_X11_Y3_N54
\datos|R[0][0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[0][0]~3_combout\ = ( !\radd[1]~input_o\ & ( !\control|WideOr0~combout\ & ( (\control|WideOr1~combout\ & (!\radd[2]~input_o\ & (!\radd[0]~input_o\ & \wrinit~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr1~combout\,
	datab => \ALT_INV_radd[2]~input_o\,
	datac => \ALT_INV_radd[0]~input_o\,
	datad => \ALT_INV_wrinit~input_o\,
	datae => \ALT_INV_radd[1]~input_o\,
	dataf => \control|ALT_INV_WideOr0~combout\,
	combout => \datos|R[0][0]~3_combout\);

-- Location: LABCELL_X11_Y2_N18
\datos|R[0][0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[0][0]~5_combout\ = ( !\control|Selector3~1_combout\ & ( (!\control|Selector5~0_combout\ & (!\control|Selector4~0_combout\ & !\control|Selector3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_Selector5~0_combout\,
	datab => \control|ALT_INV_Selector4~0_combout\,
	datac => \control|ALT_INV_Selector3~0_combout\,
	dataf => \control|ALT_INV_Selector3~1_combout\,
	combout => \datos|R[0][0]~5_combout\);

-- Location: LABCELL_X11_Y3_N30
\datos|R[0][0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[0][0]~6_combout\ = ( \datos|R[0][0]~5_combout\ & ( \datos|Decoder2~0_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( !\datos|R[0][0]~5_combout\ & ( \datos|Decoder2~0_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( \datos|R[0][0]~5_combout\ & ( 
-- !\datos|Decoder2~0_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( !\datos|R[0][0]~5_combout\ & ( !\datos|Decoder2~0_combout\ & ( (\wrinit~input_o\ & (!\control|WideOr0~combout\ & (\control|WideOr1~combout\ & !\datos|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wrinit~input_o\,
	datab => \control|ALT_INV_WideOr0~combout\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \datos|ALT_INV_Equal0~0_combout\,
	datae => \datos|ALT_INV_R[0][0]~5_combout\,
	dataf => \datos|ALT_INV_Decoder2~0_combout\,
	combout => \datos|R[0][0]~6_combout\);

-- Location: LABCELL_X11_Y3_N9
\datos|R[0][0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[0][0]~7_combout\ = ( \datos|R[0][0]~3_combout\ & ( \datos|R[0][0]~6_combout\ ) ) # ( !\datos|R[0][0]~3_combout\ & ( \datos|R[0][0]~6_combout\ & ( (\datos|R~4_combout\ & (((\datos|LessThan0~1_combout\ & \datos|LessThan0~3_combout\)) # 
-- (\datos|LessThan0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~4_combout\,
	datab => \datos|ALT_INV_LessThan0~2_combout\,
	datac => \datos|ALT_INV_LessThan0~1_combout\,
	datad => \datos|ALT_INV_LessThan0~3_combout\,
	datae => \datos|ALT_INV_R[0][0]~3_combout\,
	dataf => \datos|ALT_INV_R[0][0]~6_combout\,
	combout => \datos|R[0][0]~7_combout\);

-- Location: FF_X11_Y3_N1
\datos|R[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~59_combout\,
	ena => \datos|R[0][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[0][1]~q\);

-- Location: LABCELL_X10_Y3_N6
\datos|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux7~1_combout\ = ( \control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[3][1]~q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[2][1]~q\ ) ) ) # ( \control|Selector2~0_combout\ & ( 
-- !\control|Selector1~0_combout\ & ( \datos|R[1][1]~q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( !\control|Selector1~0_combout\ & ( \datos|R[0][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[0][1]~q\,
	datab => \datos|ALT_INV_R[2][1]~q\,
	datac => \datos|ALT_INV_R[3][1]~q\,
	datad => \datos|ALT_INV_R[1][1]~q\,
	datae => \control|ALT_INV_Selector2~0_combout\,
	dataf => \control|ALT_INV_Selector1~0_combout\,
	combout => \datos|Mux7~1_combout\);

-- Location: LABCELL_X9_Y3_N18
\datos|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|LessThan0~0_combout\ = ( \datos|Mux6~0_combout\ & ( \control|Selector3~2_combout\ & ( (!\datos|Mux3~0_combout\ & ((\datos|Mux6~1_combout\) # (\control|Selector0~0_combout\))) ) ) ) # ( !\datos|Mux6~0_combout\ & ( \control|Selector3~2_combout\ & ( 
-- (!\control|Selector0~0_combout\ & (\datos|Mux6~1_combout\ & !\datos|Mux3~0_combout\)) ) ) ) # ( \datos|Mux6~0_combout\ & ( !\control|Selector3~2_combout\ & ( (!\datos|Mux3~1_combout\ & ((\datos|Mux6~1_combout\) # (\control|Selector0~0_combout\))) ) ) ) # 
-- ( !\datos|Mux6~0_combout\ & ( !\control|Selector3~2_combout\ & ( (!\control|Selector0~0_combout\ & (!\datos|Mux3~1_combout\ & \datos|Mux6~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000010011000100110000001010000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_Selector0~0_combout\,
	datab => \datos|ALT_INV_Mux3~1_combout\,
	datac => \datos|ALT_INV_Mux6~1_combout\,
	datad => \datos|ALT_INV_Mux3~0_combout\,
	datae => \datos|ALT_INV_Mux6~0_combout\,
	dataf => \control|ALT_INV_Selector3~2_combout\,
	combout => \datos|LessThan0~0_combout\);

-- Location: LABCELL_X9_Y3_N30
\datos|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|LessThan0~3_combout\ = ( !\control|Selector3~2_combout\ & ( (!\datos|Mux0~1_combout\ & (((!\control|Selector0~0_combout\ & (\datos|Mux7~1_combout\)) # (\control|Selector0~0_combout\ & ((\datos|Mux7~0_combout\)))) # (\datos|LessThan0~0_combout\))) # 
-- (\datos|Mux0~1_combout\ & (\datos|LessThan0~0_combout\ & ((!\control|Selector0~0_combout\ & (\datos|Mux7~1_combout\)) # (\control|Selector0~0_combout\ & ((\datos|Mux7~0_combout\)))))) ) ) # ( \control|Selector3~2_combout\ & ( (!\datos|Mux0~0_combout\ & 
-- (((!\control|Selector0~0_combout\ & (\datos|Mux7~1_combout\)) # (\control|Selector0~0_combout\ & ((\datos|Mux7~0_combout\)))) # (\datos|LessThan0~0_combout\))) # (\datos|Mux0~0_combout\ & (\datos|LessThan0~0_combout\ & ((!\control|Selector0~0_combout\ & 
-- (\datos|Mux7~1_combout\)) # (\control|Selector0~0_combout\ & ((\datos|Mux7~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101000000110000010100000011000011110101111100111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux7~1_combout\,
	datab => \datos|ALT_INV_Mux7~0_combout\,
	datac => \datos|ALT_INV_Mux0~0_combout\,
	datad => \control|ALT_INV_Selector0~0_combout\,
	datae => \control|ALT_INV_Selector3~2_combout\,
	dataf => \datos|ALT_INV_LessThan0~0_combout\,
	datag => \datos|ALT_INV_Mux0~1_combout\,
	combout => \datos|LessThan0~3_combout\);

-- Location: LABCELL_X11_Y3_N24
\datos|R[6][0]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[6][0]~46_combout\ = ( \radd[1]~input_o\ & ( !\control|WideOr0~combout\ & ( (\control|WideOr1~combout\ & (\radd[2]~input_o\ & (!\radd[0]~input_o\ & \wrinit~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr1~combout\,
	datab => \ALT_INV_radd[2]~input_o\,
	datac => \ALT_INV_radd[0]~input_o\,
	datad => \ALT_INV_wrinit~input_o\,
	datae => \ALT_INV_radd[1]~input_o\,
	dataf => \control|ALT_INV_WideOr0~combout\,
	combout => \datos|R[6][0]~46_combout\);

-- Location: LABCELL_X11_Y2_N24
\datos|R[6][0]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[6][0]~47_combout\ = ( \control|Selector3~1_combout\ & ( (\control|Selector4~0_combout\ & !\control|Selector5~0_combout\) ) ) # ( !\control|Selector3~1_combout\ & ( (\control|Selector3~0_combout\ & (\control|Selector4~0_combout\ & 
-- !\control|Selector5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_Selector3~0_combout\,
	datab => \control|ALT_INV_Selector4~0_combout\,
	datac => \control|ALT_INV_Selector5~0_combout\,
	dataf => \control|ALT_INV_Selector3~1_combout\,
	combout => \datos|R[6][0]~47_combout\);

-- Location: LABCELL_X11_Y3_N33
\datos|R[6][0]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[6][0]~48_combout\ = ( \datos|R[6][0]~47_combout\ & ( \datos|Decoder2~6_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( !\datos|R[6][0]~47_combout\ & ( \datos|Decoder2~6_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( \datos|R[6][0]~47_combout\ 
-- & ( !\datos|Decoder2~6_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( !\datos|R[6][0]~47_combout\ & ( !\datos|Decoder2~6_combout\ & ( (\wrinit~input_o\ & (!\control|WideOr0~combout\ & (!\datos|Equal0~0_combout\ & \control|WideOr1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wrinit~input_o\,
	datab => \control|ALT_INV_WideOr0~combout\,
	datac => \datos|ALT_INV_Equal0~0_combout\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \datos|ALT_INV_R[6][0]~47_combout\,
	dataf => \datos|ALT_INV_Decoder2~6_combout\,
	combout => \datos|R[6][0]~48_combout\);

-- Location: LABCELL_X11_Y3_N6
\datos|R[6][0]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[6][0]~49_combout\ = ( \datos|R[6][0]~46_combout\ & ( \datos|R[6][0]~48_combout\ ) ) # ( !\datos|R[6][0]~46_combout\ & ( \datos|R[6][0]~48_combout\ & ( (\datos|R~4_combout\ & (((\datos|LessThan0~3_combout\ & \datos|LessThan0~1_combout\)) # 
-- (\datos|LessThan0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~4_combout\,
	datab => \datos|ALT_INV_LessThan0~2_combout\,
	datac => \datos|ALT_INV_LessThan0~3_combout\,
	datad => \datos|ALT_INV_LessThan0~1_combout\,
	datae => \datos|ALT_INV_R[6][0]~46_combout\,
	dataf => \datos|ALT_INV_R[6][0]~48_combout\,
	combout => \datos|R[6][0]~49_combout\);

-- Location: FF_X12_Y1_N14
\datos|R[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~101_combout\,
	ena => \datos|R[6][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[6][2]~q\);

-- Location: MLABCELL_X8_Y1_N54
\datos|R~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~96_combout\ = ( \control|Selector3~2_combout\ & ( (\datos|Decoder2~5_combout\ & \datos|Mux2~0_combout\) ) ) # ( !\control|Selector3~2_combout\ & ( (\datos|Decoder2~5_combout\ & \datos|Mux2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Decoder2~5_combout\,
	datac => \datos|ALT_INV_Mux2~1_combout\,
	datad => \datos|ALT_INV_Mux2~0_combout\,
	dataf => \control|ALT_INV_Selector3~2_combout\,
	combout => \datos|R~96_combout\);

-- Location: MLABCELL_X8_Y1_N57
\datos|R~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~97_combout\ = ( \datos|Mux5~0_combout\ & ( (!\datos|Decoder2~5_combout\ & ((\datos|Mux5~1_combout\) # (\control|Selector0~0_combout\))) ) ) # ( !\datos|Mux5~0_combout\ & ( (!\control|Selector0~0_combout\ & (!\datos|Decoder2~5_combout\ & 
-- \datos|Mux5~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_Selector0~0_combout\,
	datab => \datos|ALT_INV_Decoder2~5_combout\,
	datac => \datos|ALT_INV_Mux5~1_combout\,
	dataf => \datos|ALT_INV_Mux5~0_combout\,
	combout => \datos|R~97_combout\);

-- Location: MLABCELL_X8_Y1_N24
\datos|R~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~98_combout\ = ( \wrinit~input_o\ & ( \control|WideOr1~combout\ & ( (!\control|WideOr0~combout\ & (\datain[2]~input_o\)) # (\control|WideOr0~combout\ & (((\datos|R~97_combout\) # (\datos|R~96_combout\)))) ) ) ) # ( !\wrinit~input_o\ & ( 
-- \control|WideOr1~combout\ & ( (\datos|R~97_combout\) # (\datos|R~96_combout\) ) ) ) # ( \wrinit~input_o\ & ( !\control|WideOr1~combout\ & ( (\datos|R~97_combout\) # (\datos|R~96_combout\) ) ) ) # ( !\wrinit~input_o\ & ( !\control|WideOr1~combout\ & ( 
-- (\datos|R~97_combout\) # (\datos|R~96_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111111111110010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr0~combout\,
	datab => \ALT_INV_datain[2]~input_o\,
	datac => \datos|ALT_INV_R~96_combout\,
	datad => \datos|ALT_INV_R~97_combout\,
	datae => \ALT_INV_wrinit~input_o\,
	dataf => \control|ALT_INV_WideOr1~combout\,
	combout => \datos|R~98_combout\);

-- Location: FF_X8_Y1_N25
\datos|R[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~98_combout\,
	ena => \datos|R[5][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[5][2]~q\);

-- Location: LABCELL_X12_Y1_N33
\datos|R~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~103_combout\ = ( \datos|Mux5~0_combout\ & ( (!\datos|Decoder2~7_combout\ & ((\control|Selector0~0_combout\) # (\datos|Mux5~1_combout\))) ) ) # ( !\datos|Mux5~0_combout\ & ( (\datos|Mux5~1_combout\ & (!\control|Selector0~0_combout\ & 
-- !\datos|Decoder2~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux5~1_combout\,
	datac => \control|ALT_INV_Selector0~0_combout\,
	datad => \datos|ALT_INV_Decoder2~7_combout\,
	dataf => \datos|ALT_INV_Mux5~0_combout\,
	combout => \datos|R~103_combout\);

-- Location: LABCELL_X12_Y1_N42
\datos|R~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~102_combout\ = ( \datos|Mux2~0_combout\ & ( (\datos|Decoder2~7_combout\ & ((\datos|Mux2~1_combout\) # (\control|Selector3~2_combout\))) ) ) # ( !\datos|Mux2~0_combout\ & ( (\datos|Decoder2~7_combout\ & (!\control|Selector3~2_combout\ & 
-- \datos|Mux2~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Decoder2~7_combout\,
	datac => \control|ALT_INV_Selector3~2_combout\,
	datad => \datos|ALT_INV_Mux2~1_combout\,
	dataf => \datos|ALT_INV_Mux2~0_combout\,
	combout => \datos|R~102_combout\);

-- Location: LABCELL_X12_Y1_N48
\datos|R~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~104_combout\ = ( \wrinit~input_o\ & ( \datos|R~102_combout\ & ( ((!\control|WideOr1~combout\) # (\datain[2]~input_o\)) # (\control|WideOr0~combout\) ) ) ) # ( !\wrinit~input_o\ & ( \datos|R~102_combout\ ) ) # ( \wrinit~input_o\ & ( 
-- !\datos|R~102_combout\ & ( (!\control|WideOr0~combout\ & ((!\control|WideOr1~combout\ & (\datos|R~103_combout\)) # (\control|WideOr1~combout\ & ((\datain[2]~input_o\))))) # (\control|WideOr0~combout\ & (\datos|R~103_combout\)) ) ) ) # ( !\wrinit~input_o\ 
-- & ( !\datos|R~102_combout\ & ( \datos|R~103_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010001110111111111111111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~103_combout\,
	datab => \control|ALT_INV_WideOr0~combout\,
	datac => \ALT_INV_datain[2]~input_o\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \ALT_INV_wrinit~input_o\,
	dataf => \datos|ALT_INV_R~102_combout\,
	combout => \datos|R~104_combout\);

-- Location: FF_X12_Y1_N49
\datos|R[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~104_combout\,
	ena => \datos|R[7][0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[7][2]~q\);

-- Location: LABCELL_X11_Y1_N12
\datos|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux5~0_combout\ = ( \datos|R[7][2]~q\ & ( \control|Selector2~0_combout\ & ( (\control|Selector1~0_combout\) # (\datos|R[5][2]~q\) ) ) ) # ( !\datos|R[7][2]~q\ & ( \control|Selector2~0_combout\ & ( (\datos|R[5][2]~q\ & 
-- !\control|Selector1~0_combout\) ) ) ) # ( \datos|R[7][2]~q\ & ( !\control|Selector2~0_combout\ & ( (!\control|Selector1~0_combout\ & (\datos|R[4][2]~q\)) # (\control|Selector1~0_combout\ & ((\datos|R[6][2]~q\))) ) ) ) # ( !\datos|R[7][2]~q\ & ( 
-- !\control|Selector2~0_combout\ & ( (!\control|Selector1~0_combout\ & (\datos|R[4][2]~q\)) # (\control|Selector1~0_combout\ & ((\datos|R[6][2]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[4][2]~q\,
	datab => \datos|ALT_INV_R[6][2]~q\,
	datac => \datos|ALT_INV_R[5][2]~q\,
	datad => \control|ALT_INV_Selector1~0_combout\,
	datae => \datos|ALT_INV_R[7][2]~q\,
	dataf => \control|ALT_INV_Selector2~0_combout\,
	combout => \datos|Mux5~0_combout\);

-- Location: LABCELL_X9_Y1_N27
\datos|R~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~88_combout\ = ( \datos|Mux5~0_combout\ & ( (!\datos|Decoder2~2_combout\ & ((\control|Selector0~0_combout\) # (\datos|Mux5~1_combout\))) ) ) # ( !\datos|Mux5~0_combout\ & ( (\datos|Mux5~1_combout\ & (!\control|Selector0~0_combout\ & 
-- !\datos|Decoder2~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000001110111000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux5~1_combout\,
	datab => \control|ALT_INV_Selector0~0_combout\,
	datad => \datos|ALT_INV_Decoder2~2_combout\,
	dataf => \datos|ALT_INV_Mux5~0_combout\,
	combout => \datos|R~88_combout\);

-- Location: LABCELL_X9_Y1_N21
\datos|R~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~87_combout\ = ( \datos|Mux2~0_combout\ & ( (\datos|Decoder2~2_combout\ & ((\control|Selector3~2_combout\) # (\datos|Mux2~1_combout\))) ) ) # ( !\datos|Mux2~0_combout\ & ( (\datos|Mux2~1_combout\ & (!\control|Selector3~2_combout\ & 
-- \datos|Decoder2~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Mux2~1_combout\,
	datac => \control|ALT_INV_Selector3~2_combout\,
	datad => \datos|ALT_INV_Decoder2~2_combout\,
	dataf => \datos|ALT_INV_Mux2~0_combout\,
	combout => \datos|R~87_combout\);

-- Location: LABCELL_X11_Y1_N42
\datos|R~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~89_combout\ = ( \control|WideOr0~combout\ & ( \wrinit~input_o\ & ( (\datos|R~87_combout\) # (\datos|R~88_combout\) ) ) ) # ( !\control|WideOr0~combout\ & ( \wrinit~input_o\ & ( (!\control|WideOr1~combout\ & (((\datos|R~87_combout\)) # 
-- (\datos|R~88_combout\))) # (\control|WideOr1~combout\ & (((\datain[2]~input_o\)))) ) ) ) # ( \control|WideOr0~combout\ & ( !\wrinit~input_o\ & ( (\datos|R~87_combout\) # (\datos|R~88_combout\) ) ) ) # ( !\control|WideOr0~combout\ & ( !\wrinit~input_o\ & ( 
-- (\datos|R~87_combout\) # (\datos|R~88_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100100111101011110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr1~combout\,
	datab => \datos|ALT_INV_R~88_combout\,
	datac => \ALT_INV_datain[2]~input_o\,
	datad => \datos|ALT_INV_R~87_combout\,
	datae => \control|ALT_INV_WideOr0~combout\,
	dataf => \ALT_INV_wrinit~input_o\,
	combout => \datos|R~89_combout\);

-- Location: FF_X11_Y1_N44
\datos|R[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~89_combout\,
	ena => \datos|R[2][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[2][2]~q\);

-- Location: LABCELL_X12_Y1_N57
\datos|R~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~91_combout\ = ( \datos|Mux5~1_combout\ & ( (!\datos|Decoder2~3_combout\ & ((!\control|Selector0~0_combout\) # (\datos|Mux5~0_combout\))) ) ) # ( !\datos|Mux5~1_combout\ & ( (!\datos|Decoder2~3_combout\ & (\control|Selector0~0_combout\ & 
-- \datos|Mux5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~3_combout\,
	datac => \control|ALT_INV_Selector0~0_combout\,
	datad => \datos|ALT_INV_Mux5~0_combout\,
	dataf => \datos|ALT_INV_Mux5~1_combout\,
	combout => \datos|R~91_combout\);

-- Location: LABCELL_X12_Y1_N54
\datos|R~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~90_combout\ = ( \datos|Mux2~0_combout\ & ( (\datos|Decoder2~3_combout\ & ((\datos|Mux2~1_combout\) # (\control|Selector3~2_combout\))) ) ) # ( !\datos|Mux2~0_combout\ & ( (\datos|Decoder2~3_combout\ & (!\control|Selector3~2_combout\ & 
-- \datos|Mux2~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~3_combout\,
	datac => \control|ALT_INV_Selector3~2_combout\,
	datad => \datos|ALT_INV_Mux2~1_combout\,
	dataf => \datos|ALT_INV_Mux2~0_combout\,
	combout => \datos|R~90_combout\);

-- Location: LABCELL_X12_Y1_N36
\datos|R~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~92_combout\ = ( \datos|R~91_combout\ & ( \datos|R~90_combout\ & ( ((!\wrinit~input_o\) # ((!\control|WideOr1~combout\) # (\datain[2]~input_o\))) # (\control|WideOr0~combout\) ) ) ) # ( !\datos|R~91_combout\ & ( \datos|R~90_combout\ & ( 
-- ((!\wrinit~input_o\) # ((!\control|WideOr1~combout\) # (\datain[2]~input_o\))) # (\control|WideOr0~combout\) ) ) ) # ( \datos|R~91_combout\ & ( !\datos|R~90_combout\ & ( ((!\wrinit~input_o\) # ((!\control|WideOr1~combout\) # (\datain[2]~input_o\))) # 
-- (\control|WideOr0~combout\) ) ) ) # ( !\datos|R~91_combout\ & ( !\datos|R~90_combout\ & ( (!\control|WideOr0~combout\ & (\wrinit~input_o\ & (\datain[2]~input_o\ & \control|WideOr1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111111101111111111111110111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr0~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \ALT_INV_datain[2]~input_o\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \datos|ALT_INV_R~91_combout\,
	dataf => \datos|ALT_INV_R~90_combout\,
	combout => \datos|R~92_combout\);

-- Location: FF_X12_Y1_N37
\datos|R[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~92_combout\,
	ena => \datos|R[3][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[3][2]~q\);

-- Location: LABCELL_X9_Y1_N24
\datos|R~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~85_combout\ = ( \datos|Mux5~0_combout\ & ( (!\datos|Decoder2~1_combout\ & ((\control|Selector0~0_combout\) # (\datos|Mux5~1_combout\))) ) ) # ( !\datos|Mux5~0_combout\ & ( (\datos|Mux5~1_combout\ & (!\control|Selector0~0_combout\ & 
-- !\datos|Decoder2~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux5~1_combout\,
	datab => \control|ALT_INV_Selector0~0_combout\,
	datac => \datos|ALT_INV_Decoder2~1_combout\,
	dataf => \datos|ALT_INV_Mux5~0_combout\,
	combout => \datos|R~85_combout\);

-- Location: LABCELL_X9_Y1_N18
\datos|R~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~84_combout\ = ( \datos|Mux2~0_combout\ & ( (\datos|Decoder2~1_combout\ & ((\control|Selector3~2_combout\) # (\datos|Mux2~1_combout\))) ) ) # ( !\datos|Mux2~0_combout\ & ( (\datos|Mux2~1_combout\ & (\datos|Decoder2~1_combout\ & 
-- !\control|Selector3~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Mux2~1_combout\,
	datac => \datos|ALT_INV_Decoder2~1_combout\,
	datad => \control|ALT_INV_Selector3~2_combout\,
	dataf => \datos|ALT_INV_Mux2~0_combout\,
	combout => \datos|R~84_combout\);

-- Location: LABCELL_X10_Y1_N30
\datos|R~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~86_combout\ = ( \control|WideOr0~combout\ & ( \datos|R~84_combout\ ) ) # ( !\control|WideOr0~combout\ & ( \datos|R~84_combout\ & ( ((!\control|WideOr1~combout\) # (!\wrinit~input_o\)) # (\datain[2]~input_o\) ) ) ) # ( \control|WideOr0~combout\ & 
-- ( !\datos|R~84_combout\ & ( \datos|R~85_combout\ ) ) ) # ( !\control|WideOr0~combout\ & ( !\datos|R~84_combout\ & ( (!\control|WideOr1~combout\ & (((\datos|R~85_combout\)))) # (\control|WideOr1~combout\ & ((!\wrinit~input_o\ & ((\datos|R~85_combout\))) # 
-- (\wrinit~input_o\ & (\datain[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110101001100110011001111111111111101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_datain[2]~input_o\,
	datab => \datos|ALT_INV_R~85_combout\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \ALT_INV_wrinit~input_o\,
	datae => \control|ALT_INV_WideOr0~combout\,
	dataf => \datos|ALT_INV_R~84_combout\,
	combout => \datos|R~86_combout\);

-- Location: FF_X10_Y1_N31
\datos|R[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~86_combout\,
	ena => \datos|R[1][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[1][2]~q\);

-- Location: LABCELL_X11_Y1_N51
\datos|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux5~1_combout\ = ( \control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[3][2]~q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[2][2]~q\ ) ) ) # ( \control|Selector2~0_combout\ & ( 
-- !\control|Selector1~0_combout\ & ( \datos|R[1][2]~q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( !\control|Selector1~0_combout\ & ( \datos|R[0][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[0][2]~q\,
	datab => \datos|ALT_INV_R[2][2]~q\,
	datac => \datos|ALT_INV_R[3][2]~q\,
	datad => \datos|ALT_INV_R[1][2]~q\,
	datae => \control|ALT_INV_Selector2~0_combout\,
	dataf => \control|ALT_INV_Selector1~0_combout\,
	combout => \datos|Mux5~1_combout\);

-- Location: MLABCELL_X8_Y1_N21
\datos|R~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~94_combout\ = ( \datos|Mux5~0_combout\ & ( (!\datos|Decoder2~4_combout\ & ((\datos|Mux5~1_combout\) # (\control|Selector0~0_combout\))) ) ) # ( !\datos|Mux5~0_combout\ & ( (!\control|Selector0~0_combout\ & (!\datos|Decoder2~4_combout\ & 
-- \datos|Mux5~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_Selector0~0_combout\,
	datab => \datos|ALT_INV_Decoder2~4_combout\,
	datac => \datos|ALT_INV_Mux5~1_combout\,
	dataf => \datos|ALT_INV_Mux5~0_combout\,
	combout => \datos|R~94_combout\);

-- Location: MLABCELL_X8_Y1_N18
\datos|R~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~93_combout\ = ( \control|Selector3~2_combout\ & ( (\datos|Decoder2~4_combout\ & \datos|Mux2~0_combout\) ) ) # ( !\control|Selector3~2_combout\ & ( (\datos|Decoder2~4_combout\ & \datos|Mux2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Decoder2~4_combout\,
	datac => \datos|ALT_INV_Mux2~1_combout\,
	datad => \datos|ALT_INV_Mux2~0_combout\,
	dataf => \control|ALT_INV_Selector3~2_combout\,
	combout => \datos|R~93_combout\);

-- Location: MLABCELL_X8_Y1_N48
\datos|R~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~95_combout\ = ( \control|WideOr0~combout\ & ( \control|WideOr1~combout\ & ( (\datos|R~93_combout\) # (\datos|R~94_combout\) ) ) ) # ( !\control|WideOr0~combout\ & ( \control|WideOr1~combout\ & ( (!\wrinit~input_o\ & (((\datos|R~93_combout\)) # 
-- (\datos|R~94_combout\))) # (\wrinit~input_o\ & (((\datain[2]~input_o\)))) ) ) ) # ( \control|WideOr0~combout\ & ( !\control|WideOr1~combout\ & ( (\datos|R~93_combout\) # (\datos|R~94_combout\) ) ) ) # ( !\control|WideOr0~combout\ & ( 
-- !\control|WideOr1~combout\ & ( (\datos|R~93_combout\) # (\datos|R~94_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111001100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~94_combout\,
	datab => \ALT_INV_datain[2]~input_o\,
	datac => \datos|ALT_INV_R~93_combout\,
	datad => \ALT_INV_wrinit~input_o\,
	datae => \control|ALT_INV_WideOr0~combout\,
	dataf => \control|ALT_INV_WideOr1~combout\,
	combout => \datos|R~95_combout\);

-- Location: FF_X8_Y1_N49
\datos|R[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~95_combout\,
	ena => \datos|R[4][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[4][2]~q\);

-- Location: LABCELL_X11_Y1_N54
\datos|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux2~0_combout\ = ( \datos|R[7][2]~q\ & ( \control|Selector4~0_combout\ & ( (\datos|R[6][2]~q\) # (\control|Selector5~0_combout\) ) ) ) # ( !\datos|R[7][2]~q\ & ( \control|Selector4~0_combout\ & ( (!\control|Selector5~0_combout\ & 
-- \datos|R[6][2]~q\) ) ) ) # ( \datos|R[7][2]~q\ & ( !\control|Selector4~0_combout\ & ( (!\control|Selector5~0_combout\ & (\datos|R[4][2]~q\)) # (\control|Selector5~0_combout\ & ((\datos|R[5][2]~q\))) ) ) ) # ( !\datos|R[7][2]~q\ & ( 
-- !\control|Selector4~0_combout\ & ( (!\control|Selector5~0_combout\ & (\datos|R[4][2]~q\)) # (\control|Selector5~0_combout\ & ((\datos|R[5][2]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[4][2]~q\,
	datab => \control|ALT_INV_Selector5~0_combout\,
	datac => \datos|ALT_INV_R[5][2]~q\,
	datad => \datos|ALT_INV_R[6][2]~q\,
	datae => \datos|ALT_INV_R[7][2]~q\,
	dataf => \control|ALT_INV_Selector4~0_combout\,
	combout => \datos|Mux2~0_combout\);

-- Location: LABCELL_X12_Y1_N24
\datos|R~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~81_combout\ = ( \control|Selector3~2_combout\ & ( (\datos|Mux2~0_combout\ & \datos|Decoder2~0_combout\) ) ) # ( !\control|Selector3~2_combout\ & ( (\datos|Decoder2~0_combout\ & \datos|Mux2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux2~0_combout\,
	datab => \datos|ALT_INV_Decoder2~0_combout\,
	datad => \datos|ALT_INV_Mux2~1_combout\,
	dataf => \control|ALT_INV_Selector3~2_combout\,
	combout => \datos|R~81_combout\);

-- Location: LABCELL_X12_Y1_N45
\datos|R~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~82_combout\ = ( \datos|Mux5~0_combout\ & ( (!\datos|Decoder2~0_combout\ & ((\control|Selector0~0_combout\) # (\datos|Mux5~1_combout\))) ) ) # ( !\datos|Mux5~0_combout\ & ( (\datos|Mux5~1_combout\ & (!\datos|Decoder2~0_combout\ & 
-- !\control|Selector0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux5~1_combout\,
	datac => \datos|ALT_INV_Decoder2~0_combout\,
	datad => \control|ALT_INV_Selector0~0_combout\,
	dataf => \datos|ALT_INV_Mux5~0_combout\,
	combout => \datos|R~82_combout\);

-- Location: LABCELL_X12_Y1_N18
\datos|R~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~83_combout\ = ( \datos|R~82_combout\ & ( \wrinit~input_o\ & ( ((!\control|WideOr1~combout\) # (\datain[2]~input_o\)) # (\control|WideOr0~combout\) ) ) ) # ( !\datos|R~82_combout\ & ( \wrinit~input_o\ & ( (!\control|WideOr0~combout\ & 
-- ((!\control|WideOr1~combout\ & (\datos|R~81_combout\)) # (\control|WideOr1~combout\ & ((\datain[2]~input_o\))))) # (\control|WideOr0~combout\ & (\datos|R~81_combout\)) ) ) ) # ( \datos|R~82_combout\ & ( !\wrinit~input_o\ ) ) # ( !\datos|R~82_combout\ & ( 
-- !\wrinit~input_o\ & ( \datos|R~81_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111101010101000111011111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~81_combout\,
	datab => \control|ALT_INV_WideOr0~combout\,
	datac => \ALT_INV_datain[2]~input_o\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \datos|ALT_INV_R~82_combout\,
	dataf => \ALT_INV_wrinit~input_o\,
	combout => \datos|R~83_combout\);

-- Location: FF_X11_Y1_N38
\datos|R[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \datos|R~83_combout\,
	sload => VCC,
	ena => \datos|R[0][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[0][2]~q\);

-- Location: LABCELL_X11_Y1_N48
\datos|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux2~1_combout\ = ( \control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[3][2]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[2][2]~q\ ) ) ) # ( \control|Selector5~0_combout\ & ( 
-- !\control|Selector4~0_combout\ & ( \datos|R[1][2]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( !\control|Selector4~0_combout\ & ( \datos|R[0][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[0][2]~q\,
	datab => \datos|ALT_INV_R[2][2]~q\,
	datac => \datos|ALT_INV_R[1][2]~q\,
	datad => \datos|ALT_INV_R[3][2]~q\,
	datae => \control|ALT_INV_Selector5~0_combout\,
	dataf => \control|ALT_INV_Selector4~0_combout\,
	combout => \datos|Mux2~1_combout\);

-- Location: LABCELL_X12_Y1_N30
\datos|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux2~2_combout\ = ( \control|Selector3~2_combout\ & ( \datos|Mux2~0_combout\ ) ) # ( !\control|Selector3~2_combout\ & ( \datos|Mux2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Mux2~1_combout\,
	datac => \datos|ALT_INV_Mux2~0_combout\,
	dataf => \control|ALT_INV_Selector3~2_combout\,
	combout => \datos|Mux2~2_combout\);

-- Location: LABCELL_X12_Y1_N27
\datos|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux5~2_combout\ = ( \datos|Mux5~1_combout\ & ( (!\control|Selector0~0_combout\) # (\datos|Mux5~0_combout\) ) ) # ( !\datos|Mux5~1_combout\ & ( (\control|Selector0~0_combout\ & \datos|Mux5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \control|ALT_INV_Selector0~0_combout\,
	datad => \datos|ALT_INV_Mux5~0_combout\,
	dataf => \datos|ALT_INV_Mux5~1_combout\,
	combout => \datos|Mux5~2_combout\);

-- Location: LABCELL_X10_Y1_N36
\datos|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux1~2_combout\ = ( \datos|Mux1~1_combout\ & ( (!\control|Selector3~2_combout\) # (\datos|Mux1~0_combout\) ) ) # ( !\datos|Mux1~1_combout\ & ( (\datos|Mux1~0_combout\ & \control|Selector3~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \datos|ALT_INV_Mux1~0_combout\,
	datad => \control|ALT_INV_Selector3~2_combout\,
	dataf => \datos|ALT_INV_Mux1~1_combout\,
	combout => \datos|Mux1~2_combout\);

-- Location: LABCELL_X12_Y1_N9
\datos|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|LessThan0~1_combout\ = ( \datos|Mux1~2_combout\ & ( (\datos|Mux4~2_combout\ & (!\datos|Mux2~2_combout\ $ (\datos|Mux5~2_combout\))) ) ) # ( !\datos|Mux1~2_combout\ & ( (!\datos|Mux4~2_combout\ & (!\datos|Mux2~2_combout\ $ (\datos|Mux5~2_combout\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000100010100010000010001001000100000100010100010000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux4~2_combout\,
	datab => \datos|ALT_INV_Mux2~2_combout\,
	datad => \datos|ALT_INV_Mux5~2_combout\,
	dataf => \datos|ALT_INV_Mux1~2_combout\,
	combout => \datos|LessThan0~1_combout\);

-- Location: LABCELL_X9_Y3_N54
\datos|R[3][0]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[3][0]~25_combout\ = ( \radd[1]~input_o\ & ( !\radd[2]~input_o\ & ( (\wrinit~input_o\ & (\control|WideOr1~combout\ & (!\control|WideOr0~combout\ & \radd[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wrinit~input_o\,
	datab => \control|ALT_INV_WideOr1~combout\,
	datac => \control|ALT_INV_WideOr0~combout\,
	datad => \ALT_INV_radd[0]~input_o\,
	datae => \ALT_INV_radd[1]~input_o\,
	dataf => \ALT_INV_radd[2]~input_o\,
	combout => \datos|R[3][0]~25_combout\);

-- Location: LABCELL_X9_Y2_N0
\datos|R[3][0]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[3][0]~26_combout\ = ( !\control|Selector3~0_combout\ & ( (\control|Selector4~0_combout\ & (\control|Selector5~0_combout\ & !\control|Selector3~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_Selector4~0_combout\,
	datab => \control|ALT_INV_Selector5~0_combout\,
	datac => \control|ALT_INV_Selector3~1_combout\,
	dataf => \control|ALT_INV_Selector3~0_combout\,
	combout => \datos|R[3][0]~26_combout\);

-- Location: LABCELL_X9_Y2_N39
\datos|R[3][0]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[3][0]~27_combout\ = ( \datos|R[3][0]~26_combout\ & ( \datos|Decoder2~3_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( !\datos|R[3][0]~26_combout\ & ( \datos|Decoder2~3_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( \datos|R[3][0]~26_combout\ 
-- & ( !\datos|Decoder2~3_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( !\datos|R[3][0]~26_combout\ & ( !\datos|Decoder2~3_combout\ & ( (!\control|WideOr0~combout\ & (\wrinit~input_o\ & (!\datos|Equal0~0_combout\ & \control|WideOr1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr0~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \datos|ALT_INV_Equal0~0_combout\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \datos|ALT_INV_R[3][0]~26_combout\,
	dataf => \datos|ALT_INV_Decoder2~3_combout\,
	combout => \datos|R[3][0]~27_combout\);

-- Location: LABCELL_X9_Y3_N3
\datos|R[3][0]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[3][0]~28_combout\ = ( \datos|R[3][0]~25_combout\ & ( \datos|R[3][0]~27_combout\ ) ) # ( !\datos|R[3][0]~25_combout\ & ( \datos|R[3][0]~27_combout\ & ( (\datos|R~4_combout\ & (((\datos|LessThan0~1_combout\ & \datos|LessThan0~3_combout\)) # 
-- (\datos|LessThan0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_LessThan0~1_combout\,
	datab => \datos|ALT_INV_R~4_combout\,
	datac => \datos|ALT_INV_LessThan0~2_combout\,
	datad => \datos|ALT_INV_LessThan0~3_combout\,
	datae => \datos|ALT_INV_R[3][0]~25_combout\,
	dataf => \datos|ALT_INV_R[3][0]~27_combout\,
	combout => \datos|R[3][0]~28_combout\);

-- Location: FF_X11_Y1_N1
\datos|R[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~116_combout\,
	ena => \datos|R[3][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[3][3]~q\);

-- Location: LABCELL_X9_Y1_N45
\datos|R~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~112_combout\ = ( \datos|Mux4~1_combout\ & ( (!\datos|Decoder2~2_combout\ & ((!\control|Selector0~0_combout\) # (\datos|Mux4~0_combout\))) ) ) # ( !\datos|Mux4~1_combout\ & ( (!\datos|Decoder2~2_combout\ & (\control|Selector0~0_combout\ & 
-- \datos|Mux4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~2_combout\,
	datac => \control|ALT_INV_Selector0~0_combout\,
	datad => \datos|ALT_INV_Mux4~0_combout\,
	dataf => \datos|ALT_INV_Mux4~1_combout\,
	combout => \datos|R~112_combout\);

-- Location: LABCELL_X9_Y1_N42
\datos|R~111\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~111_combout\ = ( \datos|Mux1~1_combout\ & ( (\datos|Decoder2~2_combout\ & ((!\control|Selector3~2_combout\) # (\datos|Mux1~0_combout\))) ) ) # ( !\datos|Mux1~1_combout\ & ( (\datos|Decoder2~2_combout\ & (\datos|Mux1~0_combout\ & 
-- \control|Selector3~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~2_combout\,
	datac => \datos|ALT_INV_Mux1~0_combout\,
	datad => \control|ALT_INV_Selector3~2_combout\,
	dataf => \datos|ALT_INV_Mux1~1_combout\,
	combout => \datos|R~111_combout\);

-- Location: LABCELL_X9_Y1_N30
\datos|R~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~113_combout\ = ( \control|WideOr1~combout\ & ( \datos|R~111_combout\ & ( ((!\wrinit~input_o\) # (\datain[3]~input_o\)) # (\control|WideOr0~combout\) ) ) ) # ( !\control|WideOr1~combout\ & ( \datos|R~111_combout\ ) ) # ( \control|WideOr1~combout\ 
-- & ( !\datos|R~111_combout\ & ( (!\control|WideOr0~combout\ & ((!\wrinit~input_o\ & ((\datos|R~112_combout\))) # (\wrinit~input_o\ & (\datain[3]~input_o\)))) # (\control|WideOr0~combout\ & (((\datos|R~112_combout\)))) ) ) ) # ( !\control|WideOr1~combout\ & 
-- ( !\datos|R~111_combout\ & ( \datos|R~112_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000101111011111111111111111111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr0~combout\,
	datab => \ALT_INV_datain[3]~input_o\,
	datac => \ALT_INV_wrinit~input_o\,
	datad => \datos|ALT_INV_R~112_combout\,
	datae => \control|ALT_INV_WideOr1~combout\,
	dataf => \datos|ALT_INV_R~111_combout\,
	combout => \datos|R~113_combout\);

-- Location: FF_X9_Y1_N31
\datos|R[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~113_combout\,
	ena => \datos|R[2][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[2][3]~q\);

-- Location: LABCELL_X9_Y1_N0
\datos|R~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~105_combout\ = ( \datos|Mux1~1_combout\ & ( (\datos|Decoder2~0_combout\ & ((!\control|Selector3~2_combout\) # (\datos|Mux1~0_combout\))) ) ) # ( !\datos|Mux1~1_combout\ & ( (\datos|Decoder2~0_combout\ & (\datos|Mux1~0_combout\ & 
-- \control|Selector3~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~0_combout\,
	datac => \datos|ALT_INV_Mux1~0_combout\,
	datad => \control|ALT_INV_Selector3~2_combout\,
	dataf => \datos|ALT_INV_Mux1~1_combout\,
	combout => \datos|R~105_combout\);

-- Location: LABCELL_X9_Y1_N3
\datos|R~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~106_combout\ = ( \datos|Mux4~1_combout\ & ( (!\datos|Decoder2~0_combout\ & ((!\control|Selector0~0_combout\) # (\datos|Mux4~0_combout\))) ) ) # ( !\datos|Mux4~1_combout\ & ( (!\datos|Decoder2~0_combout\ & (\control|Selector0~0_combout\ & 
-- \datos|Mux4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~0_combout\,
	datac => \control|ALT_INV_Selector0~0_combout\,
	datad => \datos|ALT_INV_Mux4~0_combout\,
	dataf => \datos|ALT_INV_Mux4~1_combout\,
	combout => \datos|R~106_combout\);

-- Location: LABCELL_X10_Y2_N24
\datos|R~107\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~107_combout\ = ( \datos|R~106_combout\ & ( \control|WideOr1~combout\ & ( ((!\wrinit~input_o\) # (\control|WideOr0~combout\)) # (\datain[3]~input_o\) ) ) ) # ( !\datos|R~106_combout\ & ( \control|WideOr1~combout\ & ( (!\wrinit~input_o\ & 
-- (((\datos|R~105_combout\)))) # (\wrinit~input_o\ & ((!\control|WideOr0~combout\ & (\datain[3]~input_o\)) # (\control|WideOr0~combout\ & ((\datos|R~105_combout\))))) ) ) ) # ( \datos|R~106_combout\ & ( !\control|WideOr1~combout\ ) ) # ( 
-- !\datos|R~106_combout\ & ( !\control|WideOr1~combout\ & ( \datos|R~105_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100110101001100111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_datain[3]~input_o\,
	datab => \datos|ALT_INV_R~105_combout\,
	datac => \ALT_INV_wrinit~input_o\,
	datad => \control|ALT_INV_WideOr0~combout\,
	datae => \datos|ALT_INV_R~106_combout\,
	dataf => \control|ALT_INV_WideOr1~combout\,
	combout => \datos|R~107_combout\);

-- Location: FF_X10_Y2_N26
\datos|R[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~107_combout\,
	ena => \datos|R[0][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[0][3]~q\);

-- Location: LABCELL_X10_Y2_N48
\datos|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux1~1_combout\ = ( \control|Selector5~0_combout\ & ( \datos|R[0][3]~q\ & ( (!\control|Selector4~0_combout\ & (\datos|R[1][3]~q\)) # (\control|Selector4~0_combout\ & ((\datos|R[3][3]~q\))) ) ) ) # ( !\control|Selector5~0_combout\ & ( 
-- \datos|R[0][3]~q\ & ( (!\control|Selector4~0_combout\) # (\datos|R[2][3]~q\) ) ) ) # ( \control|Selector5~0_combout\ & ( !\datos|R[0][3]~q\ & ( (!\control|Selector4~0_combout\ & (\datos|R[1][3]~q\)) # (\control|Selector4~0_combout\ & 
-- ((\datos|R[3][3]~q\))) ) ) ) # ( !\control|Selector5~0_combout\ & ( !\datos|R[0][3]~q\ & ( (\datos|R[2][3]~q\ & \control|Selector4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010011001111111111000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[1][3]~q\,
	datab => \datos|ALT_INV_R[3][3]~q\,
	datac => \datos|ALT_INV_R[2][3]~q\,
	datad => \control|ALT_INV_Selector4~0_combout\,
	datae => \control|ALT_INV_Selector5~0_combout\,
	dataf => \datos|ALT_INV_R[0][3]~q\,
	combout => \datos|Mux1~1_combout\);

-- Location: LABCELL_X9_Y1_N48
\datos|R~123\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~123_combout\ = ( \datos|Mux1~1_combout\ & ( (\datos|Decoder2~6_combout\ & ((!\control|Selector3~2_combout\) # (\datos|Mux1~0_combout\))) ) ) # ( !\datos|Mux1~1_combout\ & ( (\datos|Decoder2~6_combout\ & (\datos|Mux1~0_combout\ & 
-- \control|Selector3~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011000000110011001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Decoder2~6_combout\,
	datac => \datos|ALT_INV_Mux1~0_combout\,
	datad => \control|ALT_INV_Selector3~2_combout\,
	dataf => \datos|ALT_INV_Mux1~1_combout\,
	combout => \datos|R~123_combout\);

-- Location: LABCELL_X9_Y1_N6
\datos|R~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~125_combout\ = ( \control|WideOr1~combout\ & ( \datos|R~123_combout\ & ( ((!\wrinit~input_o\) # (\datain[3]~input_o\)) # (\control|WideOr0~combout\) ) ) ) # ( !\control|WideOr1~combout\ & ( \datos|R~123_combout\ ) ) # ( \control|WideOr1~combout\ 
-- & ( !\datos|R~123_combout\ & ( (!\control|WideOr0~combout\ & ((!\wrinit~input_o\ & ((\datos|R~124_combout\))) # (\wrinit~input_o\ & (\datain[3]~input_o\)))) # (\control|WideOr0~combout\ & (((\datos|R~124_combout\)))) ) ) ) # ( !\control|WideOr1~combout\ & 
-- ( !\datos|R~123_combout\ & ( \datos|R~124_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110010011111111111111111111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr0~combout\,
	datab => \ALT_INV_datain[3]~input_o\,
	datac => \datos|ALT_INV_R~124_combout\,
	datad => \ALT_INV_wrinit~input_o\,
	datae => \control|ALT_INV_WideOr1~combout\,
	dataf => \datos|ALT_INV_R~123_combout\,
	combout => \datos|R~125_combout\);

-- Location: FF_X9_Y1_N7
\datos|R[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~125_combout\,
	ena => \datos|R[6][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[6][3]~q\);

-- Location: LABCELL_X10_Y1_N21
\datos|R~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~118_combout\ = ( \control|Selector0~0_combout\ & ( (!\datos|Decoder2~4_combout\ & \datos|Mux4~0_combout\) ) ) # ( !\control|Selector0~0_combout\ & ( (!\datos|Decoder2~4_combout\ & \datos|Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~4_combout\,
	datac => \datos|ALT_INV_Mux4~1_combout\,
	datad => \datos|ALT_INV_Mux4~0_combout\,
	dataf => \control|ALT_INV_Selector0~0_combout\,
	combout => \datos|R~118_combout\);

-- Location: LABCELL_X10_Y1_N18
\datos|R~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~117_combout\ = ( \datos|Mux1~1_combout\ & ( (\datos|Decoder2~4_combout\ & ((!\control|Selector3~2_combout\) # (\datos|Mux1~0_combout\))) ) ) # ( !\datos|Mux1~1_combout\ & ( (\datos|Decoder2~4_combout\ & (\datos|Mux1~0_combout\ & 
-- \control|Selector3~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~4_combout\,
	datac => \datos|ALT_INV_Mux1~0_combout\,
	datad => \control|ALT_INV_Selector3~2_combout\,
	dataf => \datos|ALT_INV_Mux1~1_combout\,
	combout => \datos|R~117_combout\);

-- Location: LABCELL_X10_Y1_N6
\datos|R~119\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~119_combout\ = ( \datos|R~118_combout\ & ( \datos|R~117_combout\ & ( (!\control|WideOr1~combout\) # (((!\wrinit~input_o\) # (\control|WideOr0~combout\)) # (\datain[3]~input_o\)) ) ) ) # ( !\datos|R~118_combout\ & ( \datos|R~117_combout\ & ( 
-- (!\control|WideOr1~combout\) # (((!\wrinit~input_o\) # (\control|WideOr0~combout\)) # (\datain[3]~input_o\)) ) ) ) # ( \datos|R~118_combout\ & ( !\datos|R~117_combout\ & ( (!\control|WideOr1~combout\) # (((!\wrinit~input_o\) # (\control|WideOr0~combout\)) 
-- # (\datain[3]~input_o\)) ) ) ) # ( !\datos|R~118_combout\ & ( !\datos|R~117_combout\ & ( (\control|WideOr1~combout\ & (\datain[3]~input_o\ & (!\control|WideOr0~combout\ & \wrinit~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000111111111011111111111111101111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr1~combout\,
	datab => \ALT_INV_datain[3]~input_o\,
	datac => \control|ALT_INV_WideOr0~combout\,
	datad => \ALT_INV_wrinit~input_o\,
	datae => \datos|ALT_INV_R~118_combout\,
	dataf => \datos|ALT_INV_R~117_combout\,
	combout => \datos|R~119_combout\);

-- Location: FF_X10_Y1_N8
\datos|R[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~119_combout\,
	ena => \datos|R[4][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[4][3]~q\);

-- Location: LABCELL_X9_Y1_N57
\datos|R~127\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~127_combout\ = ( \datos|Mux4~1_combout\ & ( (!\datos|Decoder2~7_combout\ & ((!\control|Selector0~0_combout\) # (\datos|Mux4~0_combout\))) ) ) # ( !\datos|Mux4~1_combout\ & ( (!\datos|Decoder2~7_combout\ & (\control|Selector0~0_combout\ & 
-- \datos|Mux4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Decoder2~7_combout\,
	datac => \control|ALT_INV_Selector0~0_combout\,
	datad => \datos|ALT_INV_Mux4~0_combout\,
	dataf => \datos|ALT_INV_Mux4~1_combout\,
	combout => \datos|R~127_combout\);

-- Location: LABCELL_X9_Y1_N54
\datos|R~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~126_combout\ = ( \datos|Mux1~1_combout\ & ( (\datos|Decoder2~7_combout\ & ((!\control|Selector3~2_combout\) # (\datos|Mux1~0_combout\))) ) ) # ( !\datos|Mux1~1_combout\ & ( (\datos|Decoder2~7_combout\ & (\datos|Mux1~0_combout\ & 
-- \control|Selector3~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011000000110011001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Decoder2~7_combout\,
	datac => \datos|ALT_INV_Mux1~0_combout\,
	datad => \control|ALT_INV_Selector3~2_combout\,
	dataf => \datos|ALT_INV_Mux1~1_combout\,
	combout => \datos|R~126_combout\);

-- Location: LABCELL_X9_Y1_N12
\datos|R~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~128_combout\ = ( \datos|R~127_combout\ & ( \datos|R~126_combout\ & ( (((!\wrinit~input_o\) # (!\control|WideOr1~combout\)) # (\datain[3]~input_o\)) # (\control|WideOr0~combout\) ) ) ) # ( !\datos|R~127_combout\ & ( \datos|R~126_combout\ & ( 
-- (((!\wrinit~input_o\) # (!\control|WideOr1~combout\)) # (\datain[3]~input_o\)) # (\control|WideOr0~combout\) ) ) ) # ( \datos|R~127_combout\ & ( !\datos|R~126_combout\ & ( (((!\wrinit~input_o\) # (!\control|WideOr1~combout\)) # (\datain[3]~input_o\)) # 
-- (\control|WideOr0~combout\) ) ) ) # ( !\datos|R~127_combout\ & ( !\datos|R~126_combout\ & ( (!\control|WideOr0~combout\ & (\datain[3]~input_o\ & (\wrinit~input_o\ & \control|WideOr1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111111111011111111111111101111111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr0~combout\,
	datab => \ALT_INV_datain[3]~input_o\,
	datac => \ALT_INV_wrinit~input_o\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \datos|ALT_INV_R~127_combout\,
	dataf => \datos|ALT_INV_R~126_combout\,
	combout => \datos|R~128_combout\);

-- Location: FF_X9_Y1_N14
\datos|R[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~128_combout\,
	ena => \datos|R[7][0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[7][3]~q\);

-- Location: LABCELL_X10_Y1_N51
\datos|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux1~0_combout\ = ( \control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[7][3]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[6][3]~q\ ) ) ) # ( \control|Selector5~0_combout\ & ( 
-- !\control|Selector4~0_combout\ & ( \datos|R[5][3]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( !\control|Selector4~0_combout\ & ( \datos|R[4][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[6][3]~q\,
	datab => \datos|ALT_INV_R[4][3]~q\,
	datac => \datos|ALT_INV_R[5][3]~q\,
	datad => \datos|ALT_INV_R[7][3]~q\,
	datae => \control|ALT_INV_Selector5~0_combout\,
	dataf => \control|ALT_INV_Selector4~0_combout\,
	combout => \datos|Mux1~0_combout\);

-- Location: LABCELL_X9_Y1_N36
\datos|R~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~108_combout\ = ( \datos|Mux1~1_combout\ & ( (\datos|Decoder2~1_combout\ & ((!\control|Selector3~2_combout\) # (\datos|Mux1~0_combout\))) ) ) # ( !\datos|Mux1~1_combout\ & ( (\datos|Decoder2~1_combout\ & (\datos|Mux1~0_combout\ & 
-- \control|Selector3~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~1_combout\,
	datac => \datos|ALT_INV_Mux1~0_combout\,
	datad => \control|ALT_INV_Selector3~2_combout\,
	dataf => \datos|ALT_INV_Mux1~1_combout\,
	combout => \datos|R~108_combout\);

-- Location: LABCELL_X9_Y1_N39
\datos|R~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~109_combout\ = ( \datos|Mux4~1_combout\ & ( (!\datos|Decoder2~1_combout\ & ((!\control|Selector0~0_combout\) # (\datos|Mux4~0_combout\))) ) ) # ( !\datos|Mux4~1_combout\ & ( (!\datos|Decoder2~1_combout\ & (\control|Selector0~0_combout\ & 
-- \datos|Mux4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~1_combout\,
	datac => \control|ALT_INV_Selector0~0_combout\,
	datad => \datos|ALT_INV_Mux4~0_combout\,
	dataf => \datos|ALT_INV_Mux4~1_combout\,
	combout => \datos|R~109_combout\);

-- Location: LABCELL_X9_Y1_N15
\datos|R~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~110_combout\ = ( \datos|R~108_combout\ & ( \datos|R~109_combout\ & ( (((!\control|WideOr1~combout\) # (!\wrinit~input_o\)) # (\datain[3]~input_o\)) # (\control|WideOr0~combout\) ) ) ) # ( !\datos|R~108_combout\ & ( \datos|R~109_combout\ & ( 
-- (((!\control|WideOr1~combout\) # (!\wrinit~input_o\)) # (\datain[3]~input_o\)) # (\control|WideOr0~combout\) ) ) ) # ( \datos|R~108_combout\ & ( !\datos|R~109_combout\ & ( (((!\control|WideOr1~combout\) # (!\wrinit~input_o\)) # (\datain[3]~input_o\)) # 
-- (\control|WideOr0~combout\) ) ) ) # ( !\datos|R~108_combout\ & ( !\datos|R~109_combout\ & ( (!\control|WideOr0~combout\ & (\datain[3]~input_o\ & (\control|WideOr1~combout\ & \wrinit~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111111111011111111111111101111111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr0~combout\,
	datab => \ALT_INV_datain[3]~input_o\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \ALT_INV_wrinit~input_o\,
	datae => \datos|ALT_INV_R~108_combout\,
	dataf => \datos|ALT_INV_R~109_combout\,
	combout => \datos|R~110_combout\);

-- Location: FF_X10_Y2_N2
\datos|R[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \datos|R~110_combout\,
	sload => VCC,
	ena => \datos|R[1][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[1][3]~q\);

-- Location: LABCELL_X10_Y2_N9
\datos|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux4~1_combout\ = ( \control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[3][3]~q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[2][3]~q\ ) ) ) # ( \control|Selector2~0_combout\ & ( 
-- !\control|Selector1~0_combout\ & ( \datos|R[1][3]~q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( !\control|Selector1~0_combout\ & ( \datos|R[0][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[1][3]~q\,
	datab => \datos|ALT_INV_R[2][3]~q\,
	datac => \datos|ALT_INV_R[3][3]~q\,
	datad => \datos|ALT_INV_R[0][3]~q\,
	datae => \control|ALT_INV_Selector2~0_combout\,
	dataf => \control|ALT_INV_Selector1~0_combout\,
	combout => \datos|Mux4~1_combout\);

-- Location: LABCELL_X10_Y1_N57
\datos|R~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~121_combout\ = ( \datos|Mux4~1_combout\ & ( (!\datos|Decoder2~5_combout\ & ((!\control|Selector0~0_combout\) # (\datos|Mux4~0_combout\))) ) ) # ( !\datos|Mux4~1_combout\ & ( (\control|Selector0~0_combout\ & (!\datos|Decoder2~5_combout\ & 
-- \datos|Mux4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010010001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_Selector0~0_combout\,
	datab => \datos|ALT_INV_Decoder2~5_combout\,
	datad => \datos|ALT_INV_Mux4~0_combout\,
	dataf => \datos|ALT_INV_Mux4~1_combout\,
	combout => \datos|R~121_combout\);

-- Location: LABCELL_X10_Y1_N54
\datos|R~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~120_combout\ = ( \datos|Mux1~1_combout\ & ( (\datos|Decoder2~5_combout\ & ((!\control|Selector3~2_combout\) # (\datos|Mux1~0_combout\))) ) ) # ( !\datos|Mux1~1_combout\ & ( (\datos|Decoder2~5_combout\ & (\datos|Mux1~0_combout\ & 
-- \control|Selector3~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011000000110011001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Decoder2~5_combout\,
	datac => \datos|ALT_INV_Mux1~0_combout\,
	datad => \control|ALT_INV_Selector3~2_combout\,
	dataf => \datos|ALT_INV_Mux1~1_combout\,
	combout => \datos|R~120_combout\);

-- Location: LABCELL_X10_Y1_N42
\datos|R~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~122_combout\ = ( \datos|R~120_combout\ & ( \wrinit~input_o\ & ( (!\control|WideOr1~combout\) # ((\control|WideOr0~combout\) # (\datain[3]~input_o\)) ) ) ) # ( !\datos|R~120_combout\ & ( \wrinit~input_o\ & ( (!\control|WideOr1~combout\ & 
-- (((\datos|R~121_combout\)))) # (\control|WideOr1~combout\ & ((!\control|WideOr0~combout\ & (\datain[3]~input_o\)) # (\control|WideOr0~combout\ & ((\datos|R~121_combout\))))) ) ) ) # ( \datos|R~120_combout\ & ( !\wrinit~input_o\ ) ) # ( 
-- !\datos|R~120_combout\ & ( !\wrinit~input_o\ & ( \datos|R~121_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100010000101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr1~combout\,
	datab => \ALT_INV_datain[3]~input_o\,
	datac => \control|ALT_INV_WideOr0~combout\,
	datad => \datos|ALT_INV_R~121_combout\,
	datae => \datos|ALT_INV_R~120_combout\,
	dataf => \ALT_INV_wrinit~input_o\,
	combout => \datos|R~122_combout\);

-- Location: FF_X10_Y1_N44
\datos|R[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~122_combout\,
	ena => \datos|R[5][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[5][3]~q\);

-- Location: LABCELL_X10_Y1_N0
\datos|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux4~0_combout\ = ( \datos|R[7][3]~q\ & ( \datos|R[4][3]~q\ & ( (!\control|Selector1~0_combout\ & (((!\control|Selector2~0_combout\)) # (\datos|R[5][3]~q\))) # (\control|Selector1~0_combout\ & (((\control|Selector2~0_combout\) # 
-- (\datos|R[6][3]~q\)))) ) ) ) # ( !\datos|R[7][3]~q\ & ( \datos|R[4][3]~q\ & ( (!\control|Selector1~0_combout\ & (((!\control|Selector2~0_combout\)) # (\datos|R[5][3]~q\))) # (\control|Selector1~0_combout\ & (((\datos|R[6][3]~q\ & 
-- !\control|Selector2~0_combout\)))) ) ) ) # ( \datos|R[7][3]~q\ & ( !\datos|R[4][3]~q\ & ( (!\control|Selector1~0_combout\ & (\datos|R[5][3]~q\ & ((\control|Selector2~0_combout\)))) # (\control|Selector1~0_combout\ & (((\control|Selector2~0_combout\) # 
-- (\datos|R[6][3]~q\)))) ) ) ) # ( !\datos|R[7][3]~q\ & ( !\datos|R[4][3]~q\ & ( (!\control|Selector1~0_combout\ & (\datos|R[5][3]~q\ & ((\control|Selector2~0_combout\)))) # (\control|Selector1~0_combout\ & (((\datos|R[6][3]~q\ & 
-- !\control|Selector2~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010000001010111011110101111001000101010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_Selector1~0_combout\,
	datab => \datos|ALT_INV_R[5][3]~q\,
	datac => \datos|ALT_INV_R[6][3]~q\,
	datad => \control|ALT_INV_Selector2~0_combout\,
	datae => \datos|ALT_INV_R[7][3]~q\,
	dataf => \datos|ALT_INV_R[4][3]~q\,
	combout => \datos|Mux4~0_combout\);

-- Location: LABCELL_X10_Y1_N39
\datos|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux4~2_combout\ = ( \datos|Mux4~1_combout\ & ( (!\control|Selector0~0_combout\) # (\datos|Mux4~0_combout\) ) ) # ( !\datos|Mux4~1_combout\ & ( (\control|Selector0~0_combout\ & \datos|Mux4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_Selector0~0_combout\,
	datad => \datos|ALT_INV_Mux4~0_combout\,
	dataf => \datos|ALT_INV_Mux4~1_combout\,
	combout => \datos|Mux4~2_combout\);

-- Location: LABCELL_X12_Y1_N6
\datos|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|LessThan0~2_combout\ = ( \datos|Mux1~2_combout\ & ( (\datos|Mux4~2_combout\ & (!\datos|Mux2~2_combout\ & \datos|Mux5~2_combout\)) ) ) # ( !\datos|Mux1~2_combout\ & ( ((!\datos|Mux2~2_combout\ & \datos|Mux5~2_combout\)) # (\datos|Mux4~2_combout\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux4~2_combout\,
	datab => \datos|ALT_INV_Mux2~2_combout\,
	datac => \datos|ALT_INV_Mux5~2_combout\,
	dataf => \datos|ALT_INV_Mux1~2_combout\,
	combout => \datos|LessThan0~2_combout\);

-- Location: LABCELL_X11_Y3_N15
\datos|R[2][0]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[2][0]~18_combout\ = ( \radd[1]~input_o\ & ( !\radd[0]~input_o\ & ( (!\radd[2]~input_o\ & (!\control|WideOr0~combout\ & (\wrinit~input_o\ & \control|WideOr1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_radd[2]~input_o\,
	datab => \control|ALT_INV_WideOr0~combout\,
	datac => \ALT_INV_wrinit~input_o\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \ALT_INV_radd[1]~input_o\,
	dataf => \ALT_INV_radd[0]~input_o\,
	combout => \datos|R[2][0]~18_combout\);

-- Location: LABCELL_X11_Y2_N27
\datos|R[2][0]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[2][0]~19_combout\ = ( !\control|Selector3~1_combout\ & ( (\control|Selector4~0_combout\ & (!\control|Selector5~0_combout\ & !\control|Selector3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \control|ALT_INV_Selector4~0_combout\,
	datac => \control|ALT_INV_Selector5~0_combout\,
	datad => \control|ALT_INV_Selector3~0_combout\,
	dataf => \control|ALT_INV_Selector3~1_combout\,
	combout => \datos|R[2][0]~19_combout\);

-- Location: LABCELL_X10_Y2_N57
\datos|R[2][0]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[2][0]~20_combout\ = ( \datos|Decoder2~2_combout\ & ( \datos|R[2][0]~19_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( !\datos|Decoder2~2_combout\ & ( \datos|R[2][0]~19_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( \datos|Decoder2~2_combout\ 
-- & ( !\datos|R[2][0]~19_combout\ & ( !\datos|Equal0~0_combout\ ) ) ) # ( !\datos|Decoder2~2_combout\ & ( !\datos|R[2][0]~19_combout\ & ( (!\datos|Equal0~0_combout\ & (!\control|WideOr0~combout\ & (\wrinit~input_o\ & \control|WideOr1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Equal0~0_combout\,
	datab => \control|ALT_INV_WideOr0~combout\,
	datac => \ALT_INV_wrinit~input_o\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \datos|ALT_INV_Decoder2~2_combout\,
	dataf => \datos|ALT_INV_R[2][0]~19_combout\,
	combout => \datos|R[2][0]~20_combout\);

-- Location: LABCELL_X11_Y3_N51
\datos|R[2][0]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[2][0]~21_combout\ = ( \datos|R[2][0]~18_combout\ & ( \datos|R[2][0]~20_combout\ ) ) # ( !\datos|R[2][0]~18_combout\ & ( \datos|R[2][0]~20_combout\ & ( (\datos|R~4_combout\ & (((\datos|LessThan0~1_combout\ & \datos|LessThan0~3_combout\)) # 
-- (\datos|LessThan0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~4_combout\,
	datab => \datos|ALT_INV_LessThan0~2_combout\,
	datac => \datos|ALT_INV_LessThan0~1_combout\,
	datad => \datos|ALT_INV_LessThan0~3_combout\,
	datae => \datos|ALT_INV_R[2][0]~18_combout\,
	dataf => \datos|ALT_INV_R[2][0]~20_combout\,
	combout => \datos|R[2][0]~21_combout\);

-- Location: FF_X8_Y1_N31
\datos|R[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~17_combout\,
	ena => \datos|R[2][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[2][0]~q\);

-- Location: LABCELL_X12_Y3_N51
\datos|R~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~23_combout\ = ( \datos|Mux6~0_combout\ & ( (!\datos|Decoder2~3_combout\ & ((\datos|Mux6~1_combout\) # (\control|Selector0~0_combout\))) ) ) # ( !\datos|Mux6~0_combout\ & ( (!\datos|Decoder2~3_combout\ & (!\control|Selector0~0_combout\ & 
-- \datos|Mux6~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Decoder2~3_combout\,
	datac => \control|ALT_INV_Selector0~0_combout\,
	datad => \datos|ALT_INV_Mux6~1_combout\,
	dataf => \datos|ALT_INV_Mux6~0_combout\,
	combout => \datos|R~23_combout\);

-- Location: LABCELL_X12_Y3_N48
\datos|R~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~22_combout\ = ( \control|Selector3~2_combout\ & ( (\datos|Decoder2~3_combout\ & \datos|Mux3~0_combout\) ) ) # ( !\control|Selector3~2_combout\ & ( (\datos|Decoder2~3_combout\ & \datos|Mux3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Decoder2~3_combout\,
	datac => \datos|ALT_INV_Mux3~1_combout\,
	datad => \datos|ALT_INV_Mux3~0_combout\,
	dataf => \control|ALT_INV_Selector3~2_combout\,
	combout => \datos|R~22_combout\);

-- Location: LABCELL_X12_Y3_N0
\datos|R~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~24_combout\ = ( \control|WideOr1~combout\ & ( \datos|R~22_combout\ & ( ((!\wrinit~input_o\) # (\control|WideOr0~combout\)) # (\datain[0]~input_o\) ) ) ) # ( !\control|WideOr1~combout\ & ( \datos|R~22_combout\ ) ) # ( \control|WideOr1~combout\ & ( 
-- !\datos|R~22_combout\ & ( (!\wrinit~input_o\ & (((\datos|R~23_combout\)))) # (\wrinit~input_o\ & ((!\control|WideOr0~combout\ & (\datain[0]~input_o\)) # (\control|WideOr0~combout\ & ((\datos|R~23_combout\))))) ) ) ) # ( !\control|WideOr1~combout\ & ( 
-- !\datos|R~22_combout\ & ( \datos|R~23_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000111010000111111111111111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_datain[0]~input_o\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \datos|ALT_INV_R~23_combout\,
	datad => \control|ALT_INV_WideOr0~combout\,
	datae => \control|ALT_INV_WideOr1~combout\,
	dataf => \datos|ALT_INV_R~22_combout\,
	combout => \datos|R~24_combout\);

-- Location: FF_X12_Y3_N1
\datos|R[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~24_combout\,
	ena => \datos|R[3][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[3][0]~q\);

-- Location: LABCELL_X12_Y2_N0
\datos|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~0_combout\ = ( \datos|Decoder2~0_combout\ & ( \control|Selector3~2_combout\ & ( \datos|Mux3~0_combout\ ) ) ) # ( \datos|Decoder2~0_combout\ & ( !\control|Selector3~2_combout\ & ( \datos|Mux3~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux3~0_combout\,
	datac => \datos|ALT_INV_Mux3~1_combout\,
	datae => \datos|ALT_INV_Decoder2~0_combout\,
	dataf => \control|ALT_INV_Selector3~2_combout\,
	combout => \datos|R~0_combout\);

-- Location: LABCELL_X10_Y2_N36
\datos|R~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~1_combout\ = ( \datos|Mux6~0_combout\ & ( (!\datos|Decoder2~0_combout\ & ((\control|Selector0~0_combout\) # (\datos|Mux6~1_combout\))) ) ) # ( !\datos|Mux6~0_combout\ & ( (\datos|Mux6~1_combout\ & (!\datos|Decoder2~0_combout\ & 
-- !\control|Selector0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Mux6~1_combout\,
	datac => \datos|ALT_INV_Decoder2~0_combout\,
	datad => \control|ALT_INV_Selector0~0_combout\,
	dataf => \datos|ALT_INV_Mux6~0_combout\,
	combout => \datos|R~1_combout\);

-- Location: LABCELL_X10_Y2_N30
\datos|R~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~2_combout\ = ( \datos|R~1_combout\ & ( \control|WideOr1~combout\ & ( ((!\wrinit~input_o\) # (\control|WideOr0~combout\)) # (\datain[0]~input_o\) ) ) ) # ( !\datos|R~1_combout\ & ( \control|WideOr1~combout\ & ( (!\wrinit~input_o\ & 
-- (((\datos|R~0_combout\)))) # (\wrinit~input_o\ & ((!\control|WideOr0~combout\ & (\datain[0]~input_o\)) # (\control|WideOr0~combout\ & ((\datos|R~0_combout\))))) ) ) ) # ( \datos|R~1_combout\ & ( !\control|WideOr1~combout\ ) ) # ( !\datos|R~1_combout\ & ( 
-- !\control|WideOr1~combout\ & ( \datos|R~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100110101001100111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_datain[0]~input_o\,
	datab => \datos|ALT_INV_R~0_combout\,
	datac => \ALT_INV_wrinit~input_o\,
	datad => \control|ALT_INV_WideOr0~combout\,
	datae => \datos|ALT_INV_R~1_combout\,
	dataf => \control|ALT_INV_WideOr1~combout\,
	combout => \datos|R~2_combout\);

-- Location: FF_X10_Y2_N31
\datos|R[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~2_combout\,
	ena => \datos|R[0][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[0][0]~q\);

-- Location: LABCELL_X10_Y2_N15
\datos|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux3~1_combout\ = ( \control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[3][0]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[2][0]~q\ ) ) ) # ( \control|Selector5~0_combout\ & ( 
-- !\control|Selector4~0_combout\ & ( \datos|R[1][0]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( !\control|Selector4~0_combout\ & ( \datos|R[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[1][0]~q\,
	datab => \datos|ALT_INV_R[2][0]~q\,
	datac => \datos|ALT_INV_R[3][0]~q\,
	datad => \datos|ALT_INV_R[0][0]~q\,
	datae => \control|ALT_INV_Selector5~0_combout\,
	dataf => \control|ALT_INV_Selector4~0_combout\,
	combout => \datos|Mux3~1_combout\);

-- Location: LABCELL_X12_Y2_N39
\datos|R~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~8_combout\ = ( \datos|Decoder2~1_combout\ & ( \datos|Mux3~0_combout\ & ( (\control|Selector3~2_combout\) # (\datos|Mux3~1_combout\) ) ) ) # ( \datos|Decoder2~1_combout\ & ( !\datos|Mux3~0_combout\ & ( (\datos|Mux3~1_combout\ & 
-- !\control|Selector3~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux3~1_combout\,
	datac => \control|ALT_INV_Selector3~2_combout\,
	datae => \datos|ALT_INV_Decoder2~1_combout\,
	dataf => \datos|ALT_INV_Mux3~0_combout\,
	combout => \datos|R~8_combout\);

-- Location: LABCELL_X12_Y2_N21
\datos|R~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~10_combout\ = ( \wrinit~input_o\ & ( \datos|R~8_combout\ & ( ((!\control|WideOr1~combout\) # (\control|WideOr0~combout\)) # (\datain[0]~input_o\) ) ) ) # ( !\wrinit~input_o\ & ( \datos|R~8_combout\ ) ) # ( \wrinit~input_o\ & ( 
-- !\datos|R~8_combout\ & ( (!\control|WideOr1~combout\ & (((\datos|R~9_combout\)))) # (\control|WideOr1~combout\ & ((!\control|WideOr0~combout\ & (\datain[0]~input_o\)) # (\control|WideOr0~combout\ & ((\datos|R~9_combout\))))) ) ) ) # ( !\wrinit~input_o\ & 
-- ( !\datos|R~8_combout\ & ( \datos|R~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000111010000111111111111111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_datain[0]~input_o\,
	datab => \control|ALT_INV_WideOr1~combout\,
	datac => \datos|ALT_INV_R~9_combout\,
	datad => \control|ALT_INV_WideOr0~combout\,
	datae => \ALT_INV_wrinit~input_o\,
	dataf => \datos|ALT_INV_R~8_combout\,
	combout => \datos|R~10_combout\);

-- Location: FF_X10_Y2_N38
\datos|R[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \datos|R~10_combout\,
	sload => VCC,
	ena => \datos|R[1][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[1][0]~q\);

-- Location: LABCELL_X10_Y2_N12
\datos|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux6~1_combout\ = ( \control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[3][0]~q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[2][0]~q\ ) ) ) # ( \control|Selector2~0_combout\ & ( 
-- !\control|Selector1~0_combout\ & ( \datos|R[1][0]~q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( !\control|Selector1~0_combout\ & ( \datos|R[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[1][0]~q\,
	datab => \datos|ALT_INV_R[2][0]~q\,
	datac => \datos|ALT_INV_R[0][0]~q\,
	datad => \datos|ALT_INV_R[3][0]~q\,
	datae => \control|ALT_INV_Selector2~0_combout\,
	dataf => \control|ALT_INV_Selector1~0_combout\,
	combout => \datos|Mux6~1_combout\);

-- Location: LABCELL_X12_Y3_N27
\datos|R~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~51_combout\ = ( \datos|Mux6~0_combout\ & ( (!\datos|Decoder2~7_combout\ & ((\datos|Mux6~1_combout\) # (\control|Selector0~0_combout\))) ) ) # ( !\datos|Mux6~0_combout\ & ( (!\datos|Decoder2~7_combout\ & (!\control|Selector0~0_combout\ & 
-- \datos|Mux6~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Decoder2~7_combout\,
	datac => \control|ALT_INV_Selector0~0_combout\,
	datad => \datos|ALT_INV_Mux6~1_combout\,
	dataf => \datos|ALT_INV_Mux6~0_combout\,
	combout => \datos|R~51_combout\);

-- Location: LABCELL_X12_Y3_N24
\datos|R~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~50_combout\ = ( \control|Selector3~2_combout\ & ( (\datos|Decoder2~7_combout\ & \datos|Mux3~0_combout\) ) ) # ( !\control|Selector3~2_combout\ & ( (\datos|Decoder2~7_combout\ & \datos|Mux3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Decoder2~7_combout\,
	datac => \datos|ALT_INV_Mux3~1_combout\,
	datad => \datos|ALT_INV_Mux3~0_combout\,
	dataf => \control|ALT_INV_Selector3~2_combout\,
	combout => \datos|R~50_combout\);

-- Location: LABCELL_X12_Y3_N36
\datos|R~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~52_combout\ = ( \datos|R~51_combout\ & ( \datos|R~50_combout\ & ( ((!\wrinit~input_o\) # ((!\control|WideOr1~combout\) # (\control|WideOr0~combout\))) # (\datain[0]~input_o\) ) ) ) # ( !\datos|R~51_combout\ & ( \datos|R~50_combout\ & ( 
-- ((!\wrinit~input_o\) # ((!\control|WideOr1~combout\) # (\control|WideOr0~combout\))) # (\datain[0]~input_o\) ) ) ) # ( \datos|R~51_combout\ & ( !\datos|R~50_combout\ & ( ((!\wrinit~input_o\) # ((!\control|WideOr1~combout\) # (\control|WideOr0~combout\))) 
-- # (\datain[0]~input_o\) ) ) ) # ( !\datos|R~51_combout\ & ( !\datos|R~50_combout\ & ( (\datain[0]~input_o\ & (\wrinit~input_o\ & (\control|WideOr1~combout\ & !\control|WideOr0~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000111111011111111111111101111111111111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_datain[0]~input_o\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \control|ALT_INV_WideOr0~combout\,
	datae => \datos|ALT_INV_R~51_combout\,
	dataf => \datos|ALT_INV_R~50_combout\,
	combout => \datos|R~52_combout\);

-- Location: FF_X12_Y3_N37
\datos|R[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~52_combout\,
	ena => \datos|R[7][0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[7][0]~q\);

-- Location: MLABCELL_X8_Y1_N45
\datos|R~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~37_combout\ = ( \datos|Mux6~1_combout\ & ( (!\datos|Decoder2~5_combout\ & ((!\control|Selector0~0_combout\) # (\datos|Mux6~0_combout\))) ) ) # ( !\datos|Mux6~1_combout\ & ( (\control|Selector0~0_combout\ & (!\datos|Decoder2~5_combout\ & 
-- \datos|Mux6~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_Selector0~0_combout\,
	datab => \datos|ALT_INV_Decoder2~5_combout\,
	datac => \datos|ALT_INV_Mux6~0_combout\,
	dataf => \datos|ALT_INV_Mux6~1_combout\,
	combout => \datos|R~37_combout\);

-- Location: MLABCELL_X8_Y1_N42
\datos|R~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~36_combout\ = ( \control|Selector3~2_combout\ & ( (\datos|Decoder2~5_combout\ & \datos|Mux3~0_combout\) ) ) # ( !\control|Selector3~2_combout\ & ( (\datos|Decoder2~5_combout\ & \datos|Mux3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Decoder2~5_combout\,
	datac => \datos|ALT_INV_Mux3~1_combout\,
	datad => \datos|ALT_INV_Mux3~0_combout\,
	dataf => \control|ALT_INV_Selector3~2_combout\,
	combout => \datos|R~36_combout\);

-- Location: MLABCELL_X8_Y1_N12
\datos|R~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~38_combout\ = ( \wrinit~input_o\ & ( \datain[0]~input_o\ & ( (((\control|WideOr1~combout\ & !\control|WideOr0~combout\)) # (\datos|R~36_combout\)) # (\datos|R~37_combout\) ) ) ) # ( !\wrinit~input_o\ & ( \datain[0]~input_o\ & ( 
-- (\datos|R~36_combout\) # (\datos|R~37_combout\) ) ) ) # ( \wrinit~input_o\ & ( !\datain[0]~input_o\ & ( (!\control|WideOr1~combout\ & (((\datos|R~36_combout\)) # (\datos|R~37_combout\))) # (\control|WideOr1~combout\ & (\control|WideOr0~combout\ & 
-- ((\datos|R~36_combout\) # (\datos|R~37_combout\)))) ) ) ) # ( !\wrinit~input_o\ & ( !\datain[0]~input_o\ & ( (\datos|R~36_combout\) # (\datos|R~37_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001000111010111100110011111111110111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr1~combout\,
	datab => \datos|ALT_INV_R~37_combout\,
	datac => \control|ALT_INV_WideOr0~combout\,
	datad => \datos|ALT_INV_R~36_combout\,
	datae => \ALT_INV_wrinit~input_o\,
	dataf => \ALT_INV_datain[0]~input_o\,
	combout => \datos|R~38_combout\);

-- Location: FF_X8_Y1_N13
\datos|R[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~38_combout\,
	ena => \datos|R[5][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[5][0]~q\);

-- Location: LABCELL_X11_Y1_N9
\datos|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux6~0_combout\ = ( \control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[7][0]~q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[6][0]~q\ ) ) ) # ( \control|Selector2~0_combout\ & ( 
-- !\control|Selector1~0_combout\ & ( \datos|R[5][0]~q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( !\control|Selector1~0_combout\ & ( \datos|R[4][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[6][0]~q\,
	datab => \datos|ALT_INV_R[4][0]~q\,
	datac => \datos|ALT_INV_R[7][0]~q\,
	datad => \datos|ALT_INV_R[5][0]~q\,
	datae => \control|ALT_INV_Selector2~0_combout\,
	dataf => \control|ALT_INV_Selector1~0_combout\,
	combout => \datos|Mux6~0_combout\);

-- Location: MLABCELL_X8_Y1_N39
\datos|R~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~30_combout\ = ( \datos|Mux6~1_combout\ & ( (!\datos|Decoder2~4_combout\ & ((!\control|Selector0~0_combout\) # (\datos|Mux6~0_combout\))) ) ) # ( !\datos|Mux6~1_combout\ & ( (\control|Selector0~0_combout\ & (!\datos|Decoder2~4_combout\ & 
-- \datos|Mux6~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_Selector0~0_combout\,
	datab => \datos|ALT_INV_Decoder2~4_combout\,
	datac => \datos|ALT_INV_Mux6~0_combout\,
	dataf => \datos|ALT_INV_Mux6~1_combout\,
	combout => \datos|R~30_combout\);

-- Location: MLABCELL_X8_Y1_N36
\datos|R~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~29_combout\ = ( \control|Selector3~2_combout\ & ( (\datos|Decoder2~4_combout\ & \datos|Mux3~0_combout\) ) ) # ( !\control|Selector3~2_combout\ & ( (\datos|Decoder2~4_combout\ & \datos|Mux3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Decoder2~4_combout\,
	datac => \datos|ALT_INV_Mux3~1_combout\,
	datad => \datos|ALT_INV_Mux3~0_combout\,
	dataf => \control|ALT_INV_Selector3~2_combout\,
	combout => \datos|R~29_combout\);

-- Location: MLABCELL_X8_Y1_N6
\datos|R~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~31_combout\ = ( \wrinit~input_o\ & ( \control|WideOr1~combout\ & ( (!\control|WideOr0~combout\ & (((\datain[0]~input_o\)))) # (\control|WideOr0~combout\ & (((\datos|R~29_combout\)) # (\datos|R~30_combout\))) ) ) ) # ( !\wrinit~input_o\ & ( 
-- \control|WideOr1~combout\ & ( (\datos|R~29_combout\) # (\datos|R~30_combout\) ) ) ) # ( \wrinit~input_o\ & ( !\control|WideOr1~combout\ & ( (\datos|R~29_combout\) # (\datos|R~30_combout\) ) ) ) # ( !\wrinit~input_o\ & ( !\control|WideOr1~combout\ & ( 
-- (\datos|R~29_combout\) # (\datos|R~30_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111001111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr0~combout\,
	datab => \datos|ALT_INV_R~30_combout\,
	datac => \datos|ALT_INV_R~29_combout\,
	datad => \ALT_INV_datain[0]~input_o\,
	datae => \ALT_INV_wrinit~input_o\,
	dataf => \control|ALT_INV_WideOr1~combout\,
	combout => \datos|R~31_combout\);

-- Location: FF_X8_Y1_N7
\datos|R[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~31_combout\,
	ena => \datos|R[4][0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[4][0]~q\);

-- Location: LABCELL_X11_Y1_N6
\datos|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux3~0_combout\ = ( \control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[7][0]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[6][0]~q\ ) ) ) # ( \control|Selector5~0_combout\ & ( 
-- !\control|Selector4~0_combout\ & ( \datos|R[5][0]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( !\control|Selector4~0_combout\ & ( \datos|R[4][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[6][0]~q\,
	datab => \datos|ALT_INV_R[4][0]~q\,
	datac => \datos|ALT_INV_R[5][0]~q\,
	datad => \datos|ALT_INV_R[7][0]~q\,
	datae => \control|ALT_INV_Selector5~0_combout\,
	dataf => \control|ALT_INV_Selector4~0_combout\,
	combout => \datos|Mux3~0_combout\);

-- Location: LABCELL_X12_Y2_N24
\datos|R~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~43_combout\ = ( \datos|Mux3~1_combout\ & ( \control|Selector3~2_combout\ & ( (\datos|Decoder2~6_combout\ & \datos|Mux3~0_combout\) ) ) ) # ( !\datos|Mux3~1_combout\ & ( \control|Selector3~2_combout\ & ( (\datos|Decoder2~6_combout\ & 
-- \datos|Mux3~0_combout\) ) ) ) # ( \datos|Mux3~1_combout\ & ( !\control|Selector3~2_combout\ & ( \datos|Decoder2~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~6_combout\,
	datac => \datos|ALT_INV_Mux3~0_combout\,
	datae => \datos|ALT_INV_Mux3~1_combout\,
	dataf => \control|ALT_INV_Selector3~2_combout\,
	combout => \datos|R~43_combout\);

-- Location: LABCELL_X12_Y2_N33
\datos|R~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~44_combout\ = ( \datos|Mux6~0_combout\ & ( !\datos|Decoder2~6_combout\ & ( (\control|Selector0~0_combout\) # (\datos|Mux6~1_combout\) ) ) ) # ( !\datos|Mux6~0_combout\ & ( !\datos|Decoder2~6_combout\ & ( (\datos|Mux6~1_combout\ & 
-- !\control|Selector0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Mux6~1_combout\,
	datac => \control|ALT_INV_Selector0~0_combout\,
	datae => \datos|ALT_INV_Mux6~0_combout\,
	dataf => \datos|ALT_INV_Decoder2~6_combout\,
	combout => \datos|R~44_combout\);

-- Location: LABCELL_X12_Y2_N9
\datos|R~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~45_combout\ = ( \wrinit~input_o\ & ( \datos|R~44_combout\ & ( ((!\control|WideOr1~combout\) # (\control|WideOr0~combout\)) # (\datain[0]~input_o\) ) ) ) # ( !\wrinit~input_o\ & ( \datos|R~44_combout\ ) ) # ( \wrinit~input_o\ & ( 
-- !\datos|R~44_combout\ & ( (!\control|WideOr1~combout\ & (((\datos|R~43_combout\)))) # (\control|WideOr1~combout\ & ((!\control|WideOr0~combout\ & (\datain[0]~input_o\)) # (\control|WideOr0~combout\ & ((\datos|R~43_combout\))))) ) ) ) # ( !\wrinit~input_o\ 
-- & ( !\datos|R~44_combout\ & ( \datos|R~43_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000100001101111111111111111111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_datain[0]~input_o\,
	datab => \control|ALT_INV_WideOr1~combout\,
	datac => \control|ALT_INV_WideOr0~combout\,
	datad => \datos|ALT_INV_R~43_combout\,
	datae => \ALT_INV_wrinit~input_o\,
	dataf => \datos|ALT_INV_R~44_combout\,
	combout => \datos|R~45_combout\);

-- Location: FF_X12_Y1_N2
\datos|R[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \datos|R~45_combout\,
	sload => VCC,
	ena => \datos|R[6][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[6][0]~q\);

-- Location: LABCELL_X11_Y1_N30
\datos|dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|dataout~2_combout\ = ( \datos|R[4][0]~q\ & ( \radd[0]~input_o\ & ( (!\radd[1]~input_o\ & (\datos|R[5][0]~q\)) # (\radd[1]~input_o\ & ((\datos|R[7][0]~q\))) ) ) ) # ( !\datos|R[4][0]~q\ & ( \radd[0]~input_o\ & ( (!\radd[1]~input_o\ & 
-- (\datos|R[5][0]~q\)) # (\radd[1]~input_o\ & ((\datos|R[7][0]~q\))) ) ) ) # ( \datos|R[4][0]~q\ & ( !\radd[0]~input_o\ & ( (!\radd[1]~input_o\) # (\datos|R[6][0]~q\) ) ) ) # ( !\datos|R[4][0]~q\ & ( !\radd[0]~input_o\ & ( (\datos|R[6][0]~q\ & 
-- \radd[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[6][0]~q\,
	datab => \ALT_INV_radd[1]~input_o\,
	datac => \datos|ALT_INV_R[5][0]~q\,
	datad => \datos|ALT_INV_R[7][0]~q\,
	datae => \datos|ALT_INV_R[4][0]~q\,
	dataf => \ALT_INV_radd[0]~input_o\,
	combout => \datos|dataout~2_combout\);

-- Location: LABCELL_X9_Y2_N42
\datos|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|process_0~0_combout\ = ( \wrinit~input_o\ & ( (!\control|state.S2~q\ & (\control|state.S0~q\ & (\control|state.S1~q\ & !\control|state.S4~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S2~q\,
	datab => \control|ALT_INV_state.S0~q\,
	datac => \control|ALT_INV_state.S1~q\,
	datad => \control|ALT_INV_state.S4~q\,
	dataf => \ALT_INV_wrinit~input_o\,
	combout => \datos|process_0~0_combout\);

-- Location: LABCELL_X10_Y2_N42
\datos|dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|dataout~0_combout\ = ( \radd[0]~input_o\ & ( \datos|R[0][0]~q\ & ( (!\radd[1]~input_o\ & (\datos|R[1][0]~q\)) # (\radd[1]~input_o\ & ((\datos|R[3][0]~q\))) ) ) ) # ( !\radd[0]~input_o\ & ( \datos|R[0][0]~q\ & ( (!\radd[1]~input_o\) # 
-- (\datos|R[2][0]~q\) ) ) ) # ( \radd[0]~input_o\ & ( !\datos|R[0][0]~q\ & ( (!\radd[1]~input_o\ & (\datos|R[1][0]~q\)) # (\radd[1]~input_o\ & ((\datos|R[3][0]~q\))) ) ) ) # ( !\radd[0]~input_o\ & ( !\datos|R[0][0]~q\ & ( (\datos|R[2][0]~q\ & 
-- \radd[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100000101111111110011111100110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[1][0]~q\,
	datab => \datos|ALT_INV_R[2][0]~q\,
	datac => \ALT_INV_radd[1]~input_o\,
	datad => \datos|ALT_INV_R[3][0]~q\,
	datae => \ALT_INV_radd[0]~input_o\,
	dataf => \datos|ALT_INV_R[0][0]~q\,
	combout => \datos|dataout~0_combout\);

-- Location: LABCELL_X10_Y2_N18
\datos|dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|dataout~3_combout\ = ( \datos|process_0~0_combout\ & ( \datos|dataout~0_combout\ & ( (\datain[0]~input_o\ & !\datos|dataout[3]~1_combout\) ) ) ) # ( !\datos|process_0~0_combout\ & ( \datos|dataout~0_combout\ & ( (!\datos|dataout[3]~1_combout\ & 
-- ((!\radd[2]~input_o\) # (\datos|dataout~2_combout\))) ) ) ) # ( \datos|process_0~0_combout\ & ( !\datos|dataout~0_combout\ & ( (\datain[0]~input_o\ & !\datos|dataout[3]~1_combout\) ) ) ) # ( !\datos|process_0~0_combout\ & ( !\datos|dataout~0_combout\ & ( 
-- (!\datos|dataout[3]~1_combout\ & (\datos|dataout~2_combout\ & \radd[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100010001000100010011001100000011000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_datain[0]~input_o\,
	datab => \datos|ALT_INV_dataout[3]~1_combout\,
	datac => \datos|ALT_INV_dataout~2_combout\,
	datad => \ALT_INV_radd[2]~input_o\,
	datae => \datos|ALT_INV_process_0~0_combout\,
	dataf => \datos|ALT_INV_dataout~0_combout\,
	combout => \datos|dataout~3_combout\);

-- Location: LABCELL_X9_Y2_N24
\datos|dataout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|dataout[3]~4_combout\ = ( \control|state.S4~q\ & ( \control|state.S0~q\ & ( (!\control|state.S2~q\ & !\control|state.S7~_Duplicate_1_q\) ) ) ) # ( !\control|state.S4~q\ & ( \control|state.S0~q\ & ( (!\control|state.S2~q\ & ((!\control|state.S1~q\ & 
-- ((\control|state.S7~_Duplicate_1_q\))) # (\control|state.S1~q\ & (\wrinit~input_o\ & !\control|state.S7~_Duplicate_1_q\)))) ) ) ) # ( \control|state.S4~q\ & ( !\control|state.S0~q\ & ( (!\control|state.S2~q\ & !\control|state.S7~_Duplicate_1_q\) ) ) ) # ( 
-- !\control|state.S4~q\ & ( !\control|state.S0~q\ & ( (!\control|state.S2~q\ & !\control|state.S7~_Duplicate_1_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000010000101000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S1~q\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_state.S2~q\,
	datad => \control|ALT_INV_state.S7~_Duplicate_1_q\,
	datae => \control|ALT_INV_state.S4~q\,
	dataf => \control|ALT_INV_state.S0~q\,
	combout => \datos|dataout[3]~4_combout\);

-- Location: DDIOOUTCELL_X52_Y0_N10
\datos|dataout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|dataout~3_combout\,
	ena => \datos|dataout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|dataout\(0));

-- Location: LABCELL_X10_Y3_N12
\datos|dataout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|dataout~5_combout\ = ( \datos|R[0][1]~q\ & ( \radd[0]~input_o\ & ( (!\radd[1]~input_o\ & (\datos|R[1][1]~q\)) # (\radd[1]~input_o\ & ((\datos|R[3][1]~q\))) ) ) ) # ( !\datos|R[0][1]~q\ & ( \radd[0]~input_o\ & ( (!\radd[1]~input_o\ & 
-- (\datos|R[1][1]~q\)) # (\radd[1]~input_o\ & ((\datos|R[3][1]~q\))) ) ) ) # ( \datos|R[0][1]~q\ & ( !\radd[0]~input_o\ & ( (!\radd[1]~input_o\) # (\datos|R[2][1]~q\) ) ) ) # ( !\datos|R[0][1]~q\ & ( !\radd[0]~input_o\ & ( (\radd[1]~input_o\ & 
-- \datos|R[2][1]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[1][1]~q\,
	datab => \ALT_INV_radd[1]~input_o\,
	datac => \datos|ALT_INV_R[3][1]~q\,
	datad => \datos|ALT_INV_R[2][1]~q\,
	datae => \datos|ALT_INV_R[0][1]~q\,
	dataf => \ALT_INV_radd[0]~input_o\,
	combout => \datos|dataout~5_combout\);

-- Location: LABCELL_X10_Y3_N24
\datos|dataout~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|dataout~6_combout\ = ( \datos|R[6][1]~q\ & ( \radd[0]~input_o\ & ( (!\radd[1]~input_o\ & ((\datos|R[5][1]~q\))) # (\radd[1]~input_o\ & (\datos|R[7][1]~q\)) ) ) ) # ( !\datos|R[6][1]~q\ & ( \radd[0]~input_o\ & ( (!\radd[1]~input_o\ & 
-- ((\datos|R[5][1]~q\))) # (\radd[1]~input_o\ & (\datos|R[7][1]~q\)) ) ) ) # ( \datos|R[6][1]~q\ & ( !\radd[0]~input_o\ & ( (\datos|R[4][1]~q\) # (\radd[1]~input_o\) ) ) ) # ( !\datos|R[6][1]~q\ & ( !\radd[0]~input_o\ & ( (!\radd[1]~input_o\ & 
-- \datos|R[4][1]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[7][1]~q\,
	datab => \ALT_INV_radd[1]~input_o\,
	datac => \datos|ALT_INV_R[5][1]~q\,
	datad => \datos|ALT_INV_R[4][1]~q\,
	datae => \datos|ALT_INV_R[6][1]~q\,
	dataf => \ALT_INV_radd[0]~input_o\,
	combout => \datos|dataout~6_combout\);

-- Location: LABCELL_X11_Y3_N18
\datos|dataout~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|dataout~7_combout\ = ( \datos|process_0~0_combout\ & ( \datain[1]~input_o\ & ( !\datos|dataout[3]~1_combout\ ) ) ) # ( !\datos|process_0~0_combout\ & ( \datain[1]~input_o\ & ( (!\datos|dataout[3]~1_combout\ & ((!\radd[2]~input_o\ & 
-- (\datos|dataout~5_combout\)) # (\radd[2]~input_o\ & ((\datos|dataout~6_combout\))))) ) ) ) # ( !\datos|process_0~0_combout\ & ( !\datain[1]~input_o\ & ( (!\datos|dataout[3]~1_combout\ & ((!\radd[2]~input_o\ & (\datos|dataout~5_combout\)) # 
-- (\radd[2]~input_o\ & ((\datos|dataout~6_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000000000000000000001000000011100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_dataout~5_combout\,
	datab => \ALT_INV_radd[2]~input_o\,
	datac => \datos|ALT_INV_dataout[3]~1_combout\,
	datad => \datos|ALT_INV_dataout~6_combout\,
	datae => \datos|ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_datain[1]~input_o\,
	combout => \datos|dataout~7_combout\);

-- Location: DDIOOUTCELL_X52_Y0_N27
\datos|dataout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|dataout~7_combout\,
	ena => \datos|dataout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|dataout\(1));

-- Location: LABCELL_X11_Y1_N36
\datos|dataout~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|dataout~9_combout\ = ( \datos|R[7][2]~q\ & ( \radd[0]~input_o\ & ( (\datos|R[5][2]~q\) # (\radd[1]~input_o\) ) ) ) # ( !\datos|R[7][2]~q\ & ( \radd[0]~input_o\ & ( (!\radd[1]~input_o\ & \datos|R[5][2]~q\) ) ) ) # ( \datos|R[7][2]~q\ & ( 
-- !\radd[0]~input_o\ & ( (!\radd[1]~input_o\ & (\datos|R[4][2]~q\)) # (\radd[1]~input_o\ & ((\datos|R[6][2]~q\))) ) ) ) # ( !\datos|R[7][2]~q\ & ( !\radd[0]~input_o\ & ( (!\radd[1]~input_o\ & (\datos|R[4][2]~q\)) # (\radd[1]~input_o\ & 
-- ((\datos|R[6][2]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[4][2]~q\,
	datab => \ALT_INV_radd[1]~input_o\,
	datac => \datos|ALT_INV_R[5][2]~q\,
	datad => \datos|ALT_INV_R[6][2]~q\,
	datae => \datos|ALT_INV_R[7][2]~q\,
	dataf => \ALT_INV_radd[0]~input_o\,
	combout => \datos|dataout~9_combout\);

-- Location: LABCELL_X11_Y1_N18
\datos|dataout~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|dataout~8_combout\ = ( \datos|R[3][2]~q\ & ( \radd[0]~input_o\ & ( (\radd[1]~input_o\) # (\datos|R[1][2]~q\) ) ) ) # ( !\datos|R[3][2]~q\ & ( \radd[0]~input_o\ & ( (\datos|R[1][2]~q\ & !\radd[1]~input_o\) ) ) ) # ( \datos|R[3][2]~q\ & ( 
-- !\radd[0]~input_o\ & ( (!\radd[1]~input_o\ & (\datos|R[0][2]~q\)) # (\radd[1]~input_o\ & ((\datos|R[2][2]~q\))) ) ) ) # ( !\datos|R[3][2]~q\ & ( !\radd[0]~input_o\ & ( (!\radd[1]~input_o\ & (\datos|R[0][2]~q\)) # (\radd[1]~input_o\ & 
-- ((\datos|R[2][2]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[1][2]~q\,
	datab => \ALT_INV_radd[1]~input_o\,
	datac => \datos|ALT_INV_R[0][2]~q\,
	datad => \datos|ALT_INV_R[2][2]~q\,
	datae => \datos|ALT_INV_R[3][2]~q\,
	dataf => \ALT_INV_radd[0]~input_o\,
	combout => \datos|dataout~8_combout\);

-- Location: LABCELL_X11_Y1_N24
\datos|dataout~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|dataout~10_combout\ = ( \datos|process_0~0_combout\ & ( \datos|dataout~8_combout\ & ( (!\datos|dataout[3]~1_combout\ & \datain[2]~input_o\) ) ) ) # ( !\datos|process_0~0_combout\ & ( \datos|dataout~8_combout\ & ( (!\datos|dataout[3]~1_combout\ & 
-- ((!\radd[2]~input_o\) # (\datos|dataout~9_combout\))) ) ) ) # ( \datos|process_0~0_combout\ & ( !\datos|dataout~8_combout\ & ( (!\datos|dataout[3]~1_combout\ & \datain[2]~input_o\) ) ) ) # ( !\datos|process_0~0_combout\ & ( !\datos|dataout~8_combout\ & ( 
-- (!\datos|dataout[3]~1_combout\ & (\datos|dataout~9_combout\ & \radd[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000001010101010100010101000100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_dataout[3]~1_combout\,
	datab => \datos|ALT_INV_dataout~9_combout\,
	datac => \ALT_INV_radd[2]~input_o\,
	datad => \ALT_INV_datain[2]~input_o\,
	datae => \datos|ALT_INV_process_0~0_combout\,
	dataf => \datos|ALT_INV_dataout~8_combout\,
	combout => \datos|dataout~10_combout\);

-- Location: DDIOOUTCELL_X60_Y0_N10
\datos|dataout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|dataout~10_combout\,
	ena => \datos|dataout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|dataout\(2));

-- Location: LABCELL_X10_Y1_N48
\datos|dataout~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|dataout~12_combout\ = ( \radd[0]~input_o\ & ( \radd[1]~input_o\ & ( \datos|R[7][3]~q\ ) ) ) # ( !\radd[0]~input_o\ & ( \radd[1]~input_o\ & ( \datos|R[6][3]~q\ ) ) ) # ( \radd[0]~input_o\ & ( !\radd[1]~input_o\ & ( \datos|R[5][3]~q\ ) ) ) # ( 
-- !\radd[0]~input_o\ & ( !\radd[1]~input_o\ & ( \datos|R[4][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[6][3]~q\,
	datab => \datos|ALT_INV_R[4][3]~q\,
	datac => \datos|ALT_INV_R[7][3]~q\,
	datad => \datos|ALT_INV_R[5][3]~q\,
	datae => \ALT_INV_radd[0]~input_o\,
	dataf => \ALT_INV_radd[1]~input_o\,
	combout => \datos|dataout~12_combout\);

-- Location: LABCELL_X10_Y2_N6
\datos|dataout~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|dataout~11_combout\ = ( \radd[0]~input_o\ & ( \radd[1]~input_o\ & ( \datos|R[3][3]~q\ ) ) ) # ( !\radd[0]~input_o\ & ( \radd[1]~input_o\ & ( \datos|R[2][3]~q\ ) ) ) # ( \radd[0]~input_o\ & ( !\radd[1]~input_o\ & ( \datos|R[1][3]~q\ ) ) ) # ( 
-- !\radd[0]~input_o\ & ( !\radd[1]~input_o\ & ( \datos|R[0][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[1][3]~q\,
	datab => \datos|ALT_INV_R[2][3]~q\,
	datac => \datos|ALT_INV_R[0][3]~q\,
	datad => \datos|ALT_INV_R[3][3]~q\,
	datae => \ALT_INV_radd[0]~input_o\,
	dataf => \ALT_INV_radd[1]~input_o\,
	combout => \datos|dataout~11_combout\);

-- Location: LABCELL_X10_Y1_N24
\datos|dataout~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|dataout~13_combout\ = ( \datain[3]~input_o\ & ( \datos|dataout~11_combout\ & ( (!\datos|dataout[3]~1_combout\ & (((!\radd[2]~input_o\) # (\datos|dataout~12_combout\)) # (\datos|process_0~0_combout\))) ) ) ) # ( !\datain[3]~input_o\ & ( 
-- \datos|dataout~11_combout\ & ( (!\datos|process_0~0_combout\ & (!\datos|dataout[3]~1_combout\ & ((!\radd[2]~input_o\) # (\datos|dataout~12_combout\)))) ) ) ) # ( \datain[3]~input_o\ & ( !\datos|dataout~11_combout\ & ( (!\datos|dataout[3]~1_combout\ & 
-- (((\radd[2]~input_o\ & \datos|dataout~12_combout\)) # (\datos|process_0~0_combout\))) ) ) ) # ( !\datain[3]~input_o\ & ( !\datos|dataout~11_combout\ & ( (!\datos|process_0~0_combout\ & (!\datos|dataout[3]~1_combout\ & (\radd[2]~input_o\ & 
-- \datos|dataout~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000010001000100110010000000100010001100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_process_0~0_combout\,
	datab => \datos|ALT_INV_dataout[3]~1_combout\,
	datac => \ALT_INV_radd[2]~input_o\,
	datad => \datos|ALT_INV_dataout~12_combout\,
	datae => \ALT_INV_datain[3]~input_o\,
	dataf => \datos|ALT_INV_dataout~11_combout\,
	combout => \datos|dataout~13_combout\);

-- Location: DDIOOUTCELL_X80_Y0_N10
\datos|dataout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|dataout~13_combout\,
	ena => \datos|dataout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|dataout\(3));

-- Location: DDIOOUTCELL_X89_Y6_N30
\control|state.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \control|state.S7~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|state.S7~q\);

-- Location: LABCELL_X57_Y9_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


