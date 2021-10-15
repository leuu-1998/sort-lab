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

-- DATE "10/14/2021 21:01:26"

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
-- radd[2]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- radd[0]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- radd[1]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- go	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- resetn	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datain[0]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wrinit	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datain[1]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datain[2]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datain[3]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \go~input_o\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \control|Selector2~0_combout\ : std_logic;
SIGNAL \control|ci[0]~DUPLICATE_q\ : std_logic;
SIGNAL \control|Selector5~0_combout\ : std_logic;
SIGNAL \control|WideOr0~0_combout\ : std_logic;
SIGNAL \control|state.S4~q\ : std_logic;
SIGNAL \control|Selector1~0_combout\ : std_logic;
SIGNAL \control|Selector4~0_combout\ : std_logic;
SIGNAL \control|state.S5~q\ : std_logic;
SIGNAL \control|WideOr4~combout\ : std_logic;
SIGNAL \control|Selector0~0_combout\ : std_logic;
SIGNAL \control|Selector3~0_combout\ : std_logic;
SIGNAL \control|Selector9~0_combout\ : std_logic;
SIGNAL \control|state.S3~q\ : std_logic;
SIGNAL \control|state.S4~DUPLICATE_q\ : std_logic;
SIGNAL \control|cj[1]~DUPLICATE_q\ : std_logic;
SIGNAL \control|cj[2]~DUPLICATE_q\ : std_logic;
SIGNAL \control|Selector11~0_combout\ : std_logic;
SIGNAL \control|state.S5~DUPLICATE_q\ : std_logic;
SIGNAL \control|ci[2]~DUPLICATE_q\ : std_logic;
SIGNAL \control|Equal1~0_combout\ : std_logic;
SIGNAL \control|Selector12~0_combout\ : std_logic;
SIGNAL \control|state.S7~_Duplicate_1_q\ : std_logic;
SIGNAL \control|Selector6~0_combout\ : std_logic;
SIGNAL \control|state.S0~q\ : std_logic;
SIGNAL \control|Selector7~0_combout\ : std_logic;
SIGNAL \control|state.S1~q\ : std_logic;
SIGNAL \control|Selector8~0_combout\ : std_logic;
SIGNAL \control|state.S2~q\ : std_logic;
SIGNAL \control|WideOr2~combout\ : std_logic;
SIGNAL \wrinit~input_o\ : std_logic;
SIGNAL \control|WideOr1~combout\ : std_logic;
SIGNAL \control|WideOr0~combout\ : std_logic;
SIGNAL \datain[0]~input_o\ : std_logic;
SIGNAL \datos|Decoder2~0_combout\ : std_logic;
SIGNAL \datos|Decoder2~1_combout\ : std_logic;
SIGNAL \datos|Decoder2~6_combout\ : std_logic;
SIGNAL \datos|R~44_combout\ : std_logic;
SIGNAL \datos|R~45_combout\ : std_logic;
SIGNAL \datain[1]~input_o\ : std_logic;
SIGNAL \datos|Equal1~0_combout\ : std_logic;
SIGNAL \datos|Decoder2~4_combout\ : std_logic;
SIGNAL \datos|R~60_combout\ : std_logic;
SIGNAL \datos|R~61_combout\ : std_logic;
SIGNAL \datain[3]~input_o\ : std_logic;
SIGNAL \datos|R~86_combout\ : std_logic;
SIGNAL \datos|R~87_combout\ : std_logic;
SIGNAL \datain[2]~input_o\ : std_logic;
SIGNAL \datos|R~68_combout\ : std_logic;
SIGNAL \datos|R~69_combout\ : std_logic;
SIGNAL \datos|R[5][2]~12_combout\ : std_logic;
SIGNAL \datos|R[5][2]~13_combout\ : std_logic;
SIGNAL \datos|process_0~0_combout\ : std_logic;
SIGNAL \radd[2]~input_o\ : std_logic;
SIGNAL \radd[1]~input_o\ : std_logic;
SIGNAL \radd[0]~input_o\ : std_logic;
SIGNAL \datos|R[5][2]~11_combout\ : std_logic;
SIGNAL \datos|R~4_combout\ : std_logic;
SIGNAL \datos|Mux5~2_combout\ : std_logic;
SIGNAL \datos|R~5_combout\ : std_logic;
SIGNAL \datos|R[5][2]~14_combout\ : std_logic;
SIGNAL \datos|R[5][2]~q\ : std_logic;
SIGNAL \datos|Decoder2~2_combout\ : std_logic;
SIGNAL \datos|R~72_combout\ : std_logic;
SIGNAL \datos|R~73_combout\ : std_logic;
SIGNAL \datos|R[7][3]~23_combout\ : std_logic;
SIGNAL \datos|Decoder1~0_combout\ : std_logic;
SIGNAL \datos|R[7][3]~24_combout\ : std_logic;
SIGNAL \datos|R[7][3]~25_combout\ : std_logic;
SIGNAL \datos|R[7][2]~q\ : std_logic;
SIGNAL \datos|R~70_combout\ : std_logic;
SIGNAL \datos|R~71_combout\ : std_logic;
SIGNAL \datos|R[6][2]~q\ : std_logic;
SIGNAL \datos|Mux1~0_combout\ : std_logic;
SIGNAL \datos|R~80_combout\ : std_logic;
SIGNAL \datos|R~81_combout\ : std_logic;
SIGNAL \datos|R[1][2]~q\ : std_logic;
SIGNAL \datos|R~76_combout\ : std_logic;
SIGNAL \datos|R~77_combout\ : std_logic;
SIGNAL \datos|R[0][2]~q\ : std_logic;
SIGNAL \datos|Decoder2~5_combout\ : std_logic;
SIGNAL \datos|R~78_combout\ : std_logic;
SIGNAL \datos|R~79_combout\ : std_logic;
SIGNAL \datos|R[3][2]~40_combout\ : std_logic;
SIGNAL \datos|R[3][2]~41_combout\ : std_logic;
SIGNAL \datos|R[3][2]~42_combout\ : std_logic;
SIGNAL \datos|R[3][2]~43_combout\ : std_logic;
SIGNAL \datos|R[3][2]~q\ : std_logic;
SIGNAL \datos|Mux1~1_combout\ : std_logic;
SIGNAL \datos|Mux1~2_combout\ : std_logic;
SIGNAL \datos|R~66_combout\ : std_logic;
SIGNAL \datos|R~67_combout\ : std_logic;
SIGNAL \datos|R[4][2]~3_combout\ : std_logic;
SIGNAL \datos|R[4][2]~6_combout\ : std_logic;
SIGNAL \datos|R[4][2]~7_combout\ : std_logic;
SIGNAL \datos|R[4][2]~8_combout\ : std_logic;
SIGNAL \datos|R[4][2]~q\ : std_logic;
SIGNAL \datos|Mux5~0_combout\ : std_logic;
SIGNAL \datos|Decoder2~3_combout\ : std_logic;
SIGNAL \datos|R~74_combout\ : std_logic;
SIGNAL \datos|R~75_combout\ : std_logic;
SIGNAL \datos|R[2][2]~28_combout\ : std_logic;
SIGNAL \datos|R[2][2]~29_combout\ : std_logic;
SIGNAL \datos|R[2][2]~30_combout\ : std_logic;
SIGNAL \datos|R[2][2]~31_combout\ : std_logic;
SIGNAL \datos|R[2][2]~q\ : std_logic;
SIGNAL \datos|Mux5~1_combout\ : std_logic;
SIGNAL \datos|LessThan0~0_combout\ : std_logic;
SIGNAL \datos|R[6][2]~17_combout\ : std_logic;
SIGNAL \datos|R[6][2]~18_combout\ : std_logic;
SIGNAL \datos|R[6][2]~19_combout\ : std_logic;
SIGNAL \datos|R[6][2]~20_combout\ : std_logic;
SIGNAL \datos|R[6][3]~q\ : std_logic;
SIGNAL \datos|R~84_combout\ : std_logic;
SIGNAL \datos|R~85_combout\ : std_logic;
SIGNAL \datos|R[5][3]~q\ : std_logic;
SIGNAL \datos|R~82_combout\ : std_logic;
SIGNAL \datos|R~83_combout\ : std_logic;
SIGNAL \datos|R[4][3]~q\ : std_logic;
SIGNAL \datos|Mux4~0_combout\ : std_logic;
SIGNAL \datos|R~88_combout\ : std_logic;
SIGNAL \datos|R~89_combout\ : std_logic;
SIGNAL \datos|R[7][3]~q\ : std_logic;
SIGNAL \datos|Mux0~0_combout\ : std_logic;
SIGNAL \datos|R~92_combout\ : std_logic;
SIGNAL \datos|R~93_combout\ : std_logic;
SIGNAL \datos|R[0][3]~q\ : std_logic;
SIGNAL \datos|R~94_combout\ : std_logic;
SIGNAL \datos|R~95_combout\ : std_logic;
SIGNAL \datos|R[3][3]~q\ : std_logic;
SIGNAL \datos|R~96_combout\ : std_logic;
SIGNAL \datos|R~97_combout\ : std_logic;
SIGNAL \datos|R[1][3]~DUPLICATE_q\ : std_logic;
SIGNAL \datos|Mux0~1_combout\ : std_logic;
SIGNAL \datos|Mux0~2_combout\ : std_logic;
SIGNAL \datos|R~90_combout\ : std_logic;
SIGNAL \datos|R~91_combout\ : std_logic;
SIGNAL \datos|R[2][3]~q\ : std_logic;
SIGNAL \datos|R[1][3]~q\ : std_logic;
SIGNAL \datos|Mux4~1_combout\ : std_logic;
SIGNAL \datos|Mux4~2_combout\ : std_logic;
SIGNAL \datos|R~2_combout\ : std_logic;
SIGNAL \datos|R[0][2]~34_combout\ : std_logic;
SIGNAL \datos|R[0][2]~35_combout\ : std_logic;
SIGNAL \datos|R[0][2]~36_combout\ : std_logic;
SIGNAL \datos|R[0][2]~37_combout\ : std_logic;
SIGNAL \datos|R[0][1]~q\ : std_logic;
SIGNAL \datos|R~58_combout\ : std_logic;
SIGNAL \datos|R~59_combout\ : std_logic;
SIGNAL \datos|R[2][1]~q\ : std_logic;
SIGNAL \datos|R~62_combout\ : std_logic;
SIGNAL \datos|R~63_combout\ : std_logic;
SIGNAL \datos|R[3][1]~q\ : std_logic;
SIGNAL \datos|R~64_combout\ : std_logic;
SIGNAL \datos|R~65_combout\ : std_logic;
SIGNAL \datos|R[1][1]~q\ : std_logic;
SIGNAL \datos|Mux7~1_combout\ : std_logic;
SIGNAL \datos|R~52_combout\ : std_logic;
SIGNAL \datos|R~53_combout\ : std_logic;
SIGNAL \datos|R[5][1]~q\ : std_logic;
SIGNAL \datos|R~54_combout\ : std_logic;
SIGNAL \datos|R~55_combout\ : std_logic;
SIGNAL \datos|R[6][1]~q\ : std_logic;
SIGNAL \datos|R~50_combout\ : std_logic;
SIGNAL \datos|R~51_combout\ : std_logic;
SIGNAL \datos|R[4][1]~q\ : std_logic;
SIGNAL \datos|Mux7~0_combout\ : std_logic;
SIGNAL \datos|R~56_combout\ : std_logic;
SIGNAL \datos|R~57_combout\ : std_logic;
SIGNAL \datos|R[7][1]~q\ : std_logic;
SIGNAL \datos|Mux2~0_combout\ : std_logic;
SIGNAL \datos|Mux2~1_combout\ : std_logic;
SIGNAL \datos|Mux2~2_combout\ : std_logic;
SIGNAL \datos|R~98_combout\ : std_logic;
SIGNAL \datos|R[1][2]~46_combout\ : std_logic;
SIGNAL \datos|R[1][2]~47_combout\ : std_logic;
SIGNAL \datos|R[1][2]~48_combout\ : std_logic;
SIGNAL \datos|R[1][2]~49_combout\ : std_logic;
SIGNAL \datos|R[1][0]~q\ : std_logic;
SIGNAL \datos|R~38_combout\ : std_logic;
SIGNAL \datos|R~39_combout\ : std_logic;
SIGNAL \datos|R[3][0]~q\ : std_logic;
SIGNAL \datos|R~26_combout\ : std_logic;
SIGNAL \datos|R~27_combout\ : std_logic;
SIGNAL \datos|R[2][0]~q\ : std_logic;
SIGNAL \datos|Mux6~1_combout\ : std_logic;
SIGNAL \datos|R~9_combout\ : std_logic;
SIGNAL \datos|R~10_combout\ : std_logic;
SIGNAL \datos|R[5][0]~q\ : std_logic;
SIGNAL \datos|R~15_combout\ : std_logic;
SIGNAL \datos|R~16_combout\ : std_logic;
SIGNAL \datos|R[6][0]~DUPLICATE_q\ : std_logic;
SIGNAL \datos|R~21_combout\ : std_logic;
SIGNAL \datos|R~22_combout\ : std_logic;
SIGNAL \datos|R[7][0]~q\ : std_logic;
SIGNAL \datos|Mux3~0_combout\ : std_logic;
SIGNAL \datos|Mux3~1_combout\ : std_logic;
SIGNAL \datos|Mux3~2_combout\ : std_logic;
SIGNAL \datos|R~0_combout\ : std_logic;
SIGNAL \datos|R~1_combout\ : std_logic;
SIGNAL \datos|R[4][0]~q\ : std_logic;
SIGNAL \datos|Mux6~0_combout\ : std_logic;
SIGNAL \datos|R~32_combout\ : std_logic;
SIGNAL \datos|R~33_combout\ : std_logic;
SIGNAL \datos|R[0][0]~q\ : std_logic;
SIGNAL \datos|Mux11~1_combout\ : std_logic;
SIGNAL \datos|R[6][0]~q\ : std_logic;
SIGNAL \datos|Mux11~0_combout\ : std_logic;
SIGNAL \datos|Mux11~2_combout\ : std_logic;
SIGNAL \datos|dataout[0]~0_combout\ : std_logic;
SIGNAL \datos|Mux10~0_combout\ : std_logic;
SIGNAL \datos|Mux10~1_combout\ : std_logic;
SIGNAL \datos|Mux10~2_combout\ : std_logic;
SIGNAL \datos|Mux9~0_combout\ : std_logic;
SIGNAL \datos|Mux9~1_combout\ : std_logic;
SIGNAL \datos|Mux9~2_combout\ : std_logic;
SIGNAL \datos|Mux8~0_combout\ : std_logic;
SIGNAL \datos|Mux8~1_combout\ : std_logic;
SIGNAL \datos|Mux8~2_combout\ : std_logic;
SIGNAL \control|state.S7~q\ : std_logic;
SIGNAL \datos|dataout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \control|ci\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \datos|R8\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \control|cj\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \control|ALT_INV_cj[1]~DUPLICATE_q\ : std_logic;
SIGNAL \control|ALT_INV_cj[2]~DUPLICATE_q\ : std_logic;
SIGNAL \control|ALT_INV_ci[0]~DUPLICATE_q\ : std_logic;
SIGNAL \control|ALT_INV_ci[2]~DUPLICATE_q\ : std_logic;
SIGNAL \datos|ALT_INV_R[1][3]~DUPLICATE_q\ : std_logic;
SIGNAL \control|ALT_INV_state.S5~DUPLICATE_q\ : std_logic;
SIGNAL \control|ALT_INV_state.S4~DUPLICATE_q\ : std_logic;
SIGNAL \datos|ALT_INV_R[6][0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_datain[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_datain[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_datain[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_wrinit~input_o\ : std_logic;
SIGNAL \ALT_INV_datain[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_go~input_o\ : std_logic;
SIGNAL \ALT_INV_radd[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_radd[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_radd[2]~input_o\ : std_logic;
SIGNAL \control|ALT_INV_WideOr4~combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~96_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~94_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~92_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~90_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~88_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~86_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~84_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~82_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R8\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datos|ALT_INV_R~80_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~78_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~76_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~74_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~72_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~70_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~68_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~66_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~64_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~62_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~60_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~58_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~56_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~54_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~52_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~50_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[1][2]~48_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[1][2]~47_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[1][2]~46_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~44_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder2~6_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[3][2]~42_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[3][2]~41_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[3][2]~40_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~38_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder2~5_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[0][2]~36_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[0][2]~35_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[0][2]~34_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~32_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder2~4_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[2][2]~30_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[2][2]~29_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[2][2]~28_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~26_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder2~3_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[7][3]~24_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder1~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[7][3]~23_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~21_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder2~2_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[6][2]~19_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[6][2]~18_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[6][2]~17_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~15_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[5][2]~13_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[5][2]~12_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[5][2]~11_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~9_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder2~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[4][2]~7_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[4][2]~6_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~5_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~4_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[4][2]~3_combout\ : std_logic;
SIGNAL \datos|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~2_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \control|ALT_INV_cj\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \datos|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder2~0_combout\ : std_logic;
SIGNAL \control|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \control|ALT_INV_ci\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \control|ALT_INV_state.S1~q\ : std_logic;
SIGNAL \datos|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[1][3]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[3][3]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[0][3]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[2][3]~q\ : std_logic;
SIGNAL \datos|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[7][3]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[6][3]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[5][3]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[4][3]~q\ : std_logic;
SIGNAL \datos|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[1][2]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[3][2]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[0][2]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[2][2]~q\ : std_logic;
SIGNAL \datos|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[7][2]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[6][2]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[5][2]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[4][2]~q\ : std_logic;
SIGNAL \datos|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[1][1]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[3][1]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[0][1]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[2][1]~q\ : std_logic;
SIGNAL \datos|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[7][1]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[6][1]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[5][1]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[4][1]~q\ : std_logic;
SIGNAL \control|ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \control|ALT_INV_state.S0~q\ : std_logic;
SIGNAL \control|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \control|ALT_INV_state.S3~q\ : std_logic;
SIGNAL \control|ALT_INV_state.S2~q\ : std_logic;
SIGNAL \control|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \control|ALT_INV_state.S5~q\ : std_logic;
SIGNAL \control|ALT_INV_state.S4~q\ : std_logic;
SIGNAL \datos|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[1][0]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[3][0]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[0][0]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[2][0]~q\ : std_logic;
SIGNAL \datos|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[7][0]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[6][0]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[5][0]~q\ : std_logic;
SIGNAL \datos|ALT_INV_R[4][0]~q\ : std_logic;
SIGNAL \control|ALT_INV_state.S7~_Duplicate_1_q\ : std_logic;
SIGNAL \datos|ALT_INV_R~98_combout\ : std_logic;

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
\control|ALT_INV_cj[1]~DUPLICATE_q\ <= NOT \control|cj[1]~DUPLICATE_q\;
\control|ALT_INV_cj[2]~DUPLICATE_q\ <= NOT \control|cj[2]~DUPLICATE_q\;
\control|ALT_INV_ci[0]~DUPLICATE_q\ <= NOT \control|ci[0]~DUPLICATE_q\;
\control|ALT_INV_ci[2]~DUPLICATE_q\ <= NOT \control|ci[2]~DUPLICATE_q\;
\datos|ALT_INV_R[1][3]~DUPLICATE_q\ <= NOT \datos|R[1][3]~DUPLICATE_q\;
\control|ALT_INV_state.S5~DUPLICATE_q\ <= NOT \control|state.S5~DUPLICATE_q\;
\control|ALT_INV_state.S4~DUPLICATE_q\ <= NOT \control|state.S4~DUPLICATE_q\;
\datos|ALT_INV_R[6][0]~DUPLICATE_q\ <= NOT \datos|R[6][0]~DUPLICATE_q\;
\ALT_INV_datain[3]~input_o\ <= NOT \datain[3]~input_o\;
\ALT_INV_datain[2]~input_o\ <= NOT \datain[2]~input_o\;
\ALT_INV_datain[1]~input_o\ <= NOT \datain[1]~input_o\;
\ALT_INV_wrinit~input_o\ <= NOT \wrinit~input_o\;
\ALT_INV_datain[0]~input_o\ <= NOT \datain[0]~input_o\;
\ALT_INV_go~input_o\ <= NOT \go~input_o\;
\ALT_INV_radd[1]~input_o\ <= NOT \radd[1]~input_o\;
\ALT_INV_radd[0]~input_o\ <= NOT \radd[0]~input_o\;
\ALT_INV_radd[2]~input_o\ <= NOT \radd[2]~input_o\;
\control|ALT_INV_WideOr4~combout\ <= NOT \control|WideOr4~combout\;
\datos|ALT_INV_R~96_combout\ <= NOT \datos|R~96_combout\;
\datos|ALT_INV_R~94_combout\ <= NOT \datos|R~94_combout\;
\datos|ALT_INV_R~92_combout\ <= NOT \datos|R~92_combout\;
\datos|ALT_INV_R~90_combout\ <= NOT \datos|R~90_combout\;
\datos|ALT_INV_R~88_combout\ <= NOT \datos|R~88_combout\;
\datos|ALT_INV_R~86_combout\ <= NOT \datos|R~86_combout\;
\datos|ALT_INV_R~84_combout\ <= NOT \datos|R~84_combout\;
\datos|ALT_INV_R~82_combout\ <= NOT \datos|R~82_combout\;
\datos|ALT_INV_R8\(3) <= NOT \datos|R8\(3);
\datos|ALT_INV_R~80_combout\ <= NOT \datos|R~80_combout\;
\datos|ALT_INV_R~78_combout\ <= NOT \datos|R~78_combout\;
\datos|ALT_INV_R~76_combout\ <= NOT \datos|R~76_combout\;
\datos|ALT_INV_R~74_combout\ <= NOT \datos|R~74_combout\;
\datos|ALT_INV_R~72_combout\ <= NOT \datos|R~72_combout\;
\datos|ALT_INV_R~70_combout\ <= NOT \datos|R~70_combout\;
\datos|ALT_INV_R~68_combout\ <= NOT \datos|R~68_combout\;
\datos|ALT_INV_R~66_combout\ <= NOT \datos|R~66_combout\;
\datos|ALT_INV_R8\(2) <= NOT \datos|R8\(2);
\datos|ALT_INV_R~64_combout\ <= NOT \datos|R~64_combout\;
\datos|ALT_INV_R~62_combout\ <= NOT \datos|R~62_combout\;
\datos|ALT_INV_R~60_combout\ <= NOT \datos|R~60_combout\;
\datos|ALT_INV_R~58_combout\ <= NOT \datos|R~58_combout\;
\datos|ALT_INV_R~56_combout\ <= NOT \datos|R~56_combout\;
\datos|ALT_INV_R~54_combout\ <= NOT \datos|R~54_combout\;
\datos|ALT_INV_R~52_combout\ <= NOT \datos|R~52_combout\;
\datos|ALT_INV_R~50_combout\ <= NOT \datos|R~50_combout\;
\datos|ALT_INV_R8\(1) <= NOT \datos|R8\(1);
\datos|ALT_INV_R[1][2]~48_combout\ <= NOT \datos|R[1][2]~48_combout\;
\datos|ALT_INV_R[1][2]~47_combout\ <= NOT \datos|R[1][2]~47_combout\;
\datos|ALT_INV_R[1][2]~46_combout\ <= NOT \datos|R[1][2]~46_combout\;
\datos|ALT_INV_R~44_combout\ <= NOT \datos|R~44_combout\;
\datos|ALT_INV_Decoder2~6_combout\ <= NOT \datos|Decoder2~6_combout\;
\datos|ALT_INV_R[3][2]~42_combout\ <= NOT \datos|R[3][2]~42_combout\;
\datos|ALT_INV_R[3][2]~41_combout\ <= NOT \datos|R[3][2]~41_combout\;
\datos|ALT_INV_R[3][2]~40_combout\ <= NOT \datos|R[3][2]~40_combout\;
\datos|ALT_INV_R~38_combout\ <= NOT \datos|R~38_combout\;
\datos|ALT_INV_Decoder2~5_combout\ <= NOT \datos|Decoder2~5_combout\;
\datos|ALT_INV_R[0][2]~36_combout\ <= NOT \datos|R[0][2]~36_combout\;
\datos|ALT_INV_R[0][2]~35_combout\ <= NOT \datos|R[0][2]~35_combout\;
\datos|ALT_INV_R[0][2]~34_combout\ <= NOT \datos|R[0][2]~34_combout\;
\datos|ALT_INV_R~32_combout\ <= NOT \datos|R~32_combout\;
\datos|ALT_INV_Decoder2~4_combout\ <= NOT \datos|Decoder2~4_combout\;
\datos|ALT_INV_R[2][2]~30_combout\ <= NOT \datos|R[2][2]~30_combout\;
\datos|ALT_INV_R[2][2]~29_combout\ <= NOT \datos|R[2][2]~29_combout\;
\datos|ALT_INV_R[2][2]~28_combout\ <= NOT \datos|R[2][2]~28_combout\;
\datos|ALT_INV_R~26_combout\ <= NOT \datos|R~26_combout\;
\datos|ALT_INV_Decoder2~3_combout\ <= NOT \datos|Decoder2~3_combout\;
\datos|ALT_INV_R[7][3]~24_combout\ <= NOT \datos|R[7][3]~24_combout\;
\datos|ALT_INV_Decoder1~0_combout\ <= NOT \datos|Decoder1~0_combout\;
\datos|ALT_INV_R[7][3]~23_combout\ <= NOT \datos|R[7][3]~23_combout\;
\datos|ALT_INV_R~21_combout\ <= NOT \datos|R~21_combout\;
\datos|ALT_INV_Decoder2~2_combout\ <= NOT \datos|Decoder2~2_combout\;
\datos|ALT_INV_R[6][2]~19_combout\ <= NOT \datos|R[6][2]~19_combout\;
\datos|ALT_INV_R[6][2]~18_combout\ <= NOT \datos|R[6][2]~18_combout\;
\datos|ALT_INV_R[6][2]~17_combout\ <= NOT \datos|R[6][2]~17_combout\;
\datos|ALT_INV_R~15_combout\ <= NOT \datos|R~15_combout\;
\datos|ALT_INV_R[5][2]~13_combout\ <= NOT \datos|R[5][2]~13_combout\;
\datos|ALT_INV_R[5][2]~12_combout\ <= NOT \datos|R[5][2]~12_combout\;
\datos|ALT_INV_R[5][2]~11_combout\ <= NOT \datos|R[5][2]~11_combout\;
\datos|ALT_INV_R~9_combout\ <= NOT \datos|R~9_combout\;
\datos|ALT_INV_Decoder2~1_combout\ <= NOT \datos|Decoder2~1_combout\;
\datos|ALT_INV_R[4][2]~7_combout\ <= NOT \datos|R[4][2]~7_combout\;
\datos|ALT_INV_R[4][2]~6_combout\ <= NOT \datos|R[4][2]~6_combout\;
\datos|ALT_INV_R~5_combout\ <= NOT \datos|R~5_combout\;
\datos|ALT_INV_Mux1~2_combout\ <= NOT \datos|Mux1~2_combout\;
\datos|ALT_INV_Mux5~2_combout\ <= NOT \datos|Mux5~2_combout\;
\datos|ALT_INV_R~4_combout\ <= NOT \datos|R~4_combout\;
\datos|ALT_INV_R[4][2]~3_combout\ <= NOT \datos|R[4][2]~3_combout\;
\datos|ALT_INV_process_0~0_combout\ <= NOT \datos|process_0~0_combout\;
\datos|ALT_INV_Mux3~2_combout\ <= NOT \datos|Mux3~2_combout\;
\datos|ALT_INV_Mux3~1_combout\ <= NOT \datos|Mux3~1_combout\;
\datos|ALT_INV_Mux3~0_combout\ <= NOT \datos|Mux3~0_combout\;
\datos|ALT_INV_Mux2~2_combout\ <= NOT \datos|Mux2~2_combout\;
\datos|ALT_INV_Mux2~1_combout\ <= NOT \datos|Mux2~1_combout\;
\datos|ALT_INV_Mux2~0_combout\ <= NOT \datos|Mux2~0_combout\;
\datos|ALT_INV_Mux7~1_combout\ <= NOT \datos|Mux7~1_combout\;
\datos|ALT_INV_Mux7~0_combout\ <= NOT \datos|Mux7~0_combout\;
\datos|ALT_INV_LessThan0~0_combout\ <= NOT \datos|LessThan0~0_combout\;
\datos|ALT_INV_Mux1~1_combout\ <= NOT \datos|Mux1~1_combout\;
\datos|ALT_INV_Mux1~0_combout\ <= NOT \datos|Mux1~0_combout\;
\datos|ALT_INV_Mux5~1_combout\ <= NOT \datos|Mux5~1_combout\;
\datos|ALT_INV_Mux5~0_combout\ <= NOT \datos|Mux5~0_combout\;
\datos|ALT_INV_R~2_combout\ <= NOT \datos|R~2_combout\;
\datos|ALT_INV_Mux0~2_combout\ <= NOT \datos|Mux0~2_combout\;
\datos|ALT_INV_Mux0~1_combout\ <= NOT \datos|Mux0~1_combout\;
\datos|ALT_INV_Mux0~0_combout\ <= NOT \datos|Mux0~0_combout\;
\control|ALT_INV_cj\(1) <= NOT \control|cj\(1);
\control|ALT_INV_cj\(0) <= NOT \control|cj\(0);
\control|ALT_INV_cj\(2) <= NOT \control|cj\(2);
\datos|ALT_INV_Mux4~2_combout\ <= NOT \datos|Mux4~2_combout\;
\datos|ALT_INV_Mux4~1_combout\ <= NOT \datos|Mux4~1_combout\;
\datos|ALT_INV_Mux4~0_combout\ <= NOT \datos|Mux4~0_combout\;
\datos|ALT_INV_R~0_combout\ <= NOT \datos|R~0_combout\;
\datos|ALT_INV_Mux6~1_combout\ <= NOT \datos|Mux6~1_combout\;
\datos|ALT_INV_Mux6~0_combout\ <= NOT \datos|Mux6~0_combout\;
\datos|ALT_INV_Decoder2~0_combout\ <= NOT \datos|Decoder2~0_combout\;
\datos|ALT_INV_R8\(0) <= NOT \datos|R8\(0);
\control|ALT_INV_Equal1~0_combout\ <= NOT \control|Equal1~0_combout\;
\control|ALT_INV_ci\(0) <= NOT \control|ci\(0);
\control|ALT_INV_ci\(1) <= NOT \control|ci\(1);
\control|ALT_INV_ci\(2) <= NOT \control|ci\(2);
\control|ALT_INV_state.S1~q\ <= NOT \control|state.S1~q\;
\datos|ALT_INV_Mux8~1_combout\ <= NOT \datos|Mux8~1_combout\;
\datos|ALT_INV_R[1][3]~q\ <= NOT \datos|R[1][3]~q\;
\datos|ALT_INV_R[3][3]~q\ <= NOT \datos|R[3][3]~q\;
\datos|ALT_INV_R[0][3]~q\ <= NOT \datos|R[0][3]~q\;
\datos|ALT_INV_R[2][3]~q\ <= NOT \datos|R[2][3]~q\;
\datos|ALT_INV_Mux8~0_combout\ <= NOT \datos|Mux8~0_combout\;
\datos|ALT_INV_R[7][3]~q\ <= NOT \datos|R[7][3]~q\;
\datos|ALT_INV_R[6][3]~q\ <= NOT \datos|R[6][3]~q\;
\datos|ALT_INV_R[5][3]~q\ <= NOT \datos|R[5][3]~q\;
\datos|ALT_INV_R[4][3]~q\ <= NOT \datos|R[4][3]~q\;
\datos|ALT_INV_Mux9~1_combout\ <= NOT \datos|Mux9~1_combout\;
\datos|ALT_INV_R[1][2]~q\ <= NOT \datos|R[1][2]~q\;
\datos|ALT_INV_R[3][2]~q\ <= NOT \datos|R[3][2]~q\;
\datos|ALT_INV_R[0][2]~q\ <= NOT \datos|R[0][2]~q\;
\datos|ALT_INV_R[2][2]~q\ <= NOT \datos|R[2][2]~q\;
\datos|ALT_INV_Mux9~0_combout\ <= NOT \datos|Mux9~0_combout\;
\datos|ALT_INV_R[7][2]~q\ <= NOT \datos|R[7][2]~q\;
\datos|ALT_INV_R[6][2]~q\ <= NOT \datos|R[6][2]~q\;
\datos|ALT_INV_R[5][2]~q\ <= NOT \datos|R[5][2]~q\;
\datos|ALT_INV_R[4][2]~q\ <= NOT \datos|R[4][2]~q\;
\datos|ALT_INV_Mux10~1_combout\ <= NOT \datos|Mux10~1_combout\;
\datos|ALT_INV_R[1][1]~q\ <= NOT \datos|R[1][1]~q\;
\datos|ALT_INV_R[3][1]~q\ <= NOT \datos|R[3][1]~q\;
\datos|ALT_INV_R[0][1]~q\ <= NOT \datos|R[0][1]~q\;
\datos|ALT_INV_R[2][1]~q\ <= NOT \datos|R[2][1]~q\;
\datos|ALT_INV_Mux10~0_combout\ <= NOT \datos|Mux10~0_combout\;
\datos|ALT_INV_R[7][1]~q\ <= NOT \datos|R[7][1]~q\;
\datos|ALT_INV_R[6][1]~q\ <= NOT \datos|R[6][1]~q\;
\datos|ALT_INV_R[5][1]~q\ <= NOT \datos|R[5][1]~q\;
\datos|ALT_INV_R[4][1]~q\ <= NOT \datos|R[4][1]~q\;
\control|ALT_INV_WideOr2~combout\ <= NOT \control|WideOr2~combout\;
\control|ALT_INV_state.S0~q\ <= NOT \control|state.S0~q\;
\control|ALT_INV_WideOr1~combout\ <= NOT \control|WideOr1~combout\;
\control|ALT_INV_state.S3~q\ <= NOT \control|state.S3~q\;
\control|ALT_INV_state.S2~q\ <= NOT \control|state.S2~q\;
\control|ALT_INV_WideOr0~combout\ <= NOT \control|WideOr0~combout\;
\control|ALT_INV_state.S5~q\ <= NOT \control|state.S5~q\;
\control|ALT_INV_state.S4~q\ <= NOT \control|state.S4~q\;
\datos|ALT_INV_Mux11~1_combout\ <= NOT \datos|Mux11~1_combout\;
\datos|ALT_INV_R[1][0]~q\ <= NOT \datos|R[1][0]~q\;
\datos|ALT_INV_R[3][0]~q\ <= NOT \datos|R[3][0]~q\;
\datos|ALT_INV_R[0][0]~q\ <= NOT \datos|R[0][0]~q\;
\datos|ALT_INV_R[2][0]~q\ <= NOT \datos|R[2][0]~q\;
\datos|ALT_INV_Mux11~0_combout\ <= NOT \datos|Mux11~0_combout\;
\datos|ALT_INV_R[7][0]~q\ <= NOT \datos|R[7][0]~q\;
\datos|ALT_INV_R[6][0]~q\ <= NOT \datos|R[6][0]~q\;
\datos|ALT_INV_R[5][0]~q\ <= NOT \datos|R[5][0]~q\;
\datos|ALT_INV_R[4][0]~q\ <= NOT \datos|R[4][0]~q\;
\control|ALT_INV_state.S7~_Duplicate_1_q\ <= NOT \control|state.S7~_Duplicate_1_q\;
\datos|ALT_INV_R~98_combout\ <= NOT \datos|R~98_combout\;

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

-- Location: FF_X12_Y3_N32
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

-- Location: LABCELL_X12_Y3_N30
\control|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector2~0_combout\ = ( \control|state.S4~DUPLICATE_q\ & ( (\control|ci\(0)) # (\control|state.S5~DUPLICATE_q\) ) ) # ( !\control|state.S4~DUPLICATE_q\ & ( (!\control|ci\(0) & (\control|state.S5~DUPLICATE_q\)) # (\control|ci\(0) & 
-- (((\control|state.S3~q\) # (\control|state.S2~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100111111010101010011111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S5~DUPLICATE_q\,
	datab => \control|ALT_INV_state.S2~q\,
	datac => \control|ALT_INV_state.S3~q\,
	datad => \control|ALT_INV_ci\(0),
	dataf => \control|ALT_INV_state.S4~DUPLICATE_q\,
	combout => \control|Selector2~0_combout\);

-- Location: FF_X12_Y3_N31
\control|ci[0]~DUPLICATE\ : dffeas
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
	q => \control|ci[0]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y3_N6
\control|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector5~0_combout\ = ( \control|ci[0]~DUPLICATE_q\ & ( (!\control|state.S3~q\ & (\control|state.S2~q\)) # (\control|state.S3~q\ & ((!\control|cj\(0)))) ) ) # ( !\control|ci[0]~DUPLICATE_q\ & ( (\control|state.S3~q\ & !\control|cj\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001110111001000100111011100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S3~q\,
	datab => \control|ALT_INV_state.S2~q\,
	datad => \control|ALT_INV_cj\(0),
	dataf => \control|ALT_INV_ci[0]~DUPLICATE_q\,
	combout => \control|Selector5~0_combout\);

-- Location: LABCELL_X11_Y3_N57
\control|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|WideOr0~0_combout\ = ( !\control|state.S5~DUPLICATE_q\ & ( !\control|state.S4~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \control|ALT_INV_state.S5~DUPLICATE_q\,
	dataf => \control|ALT_INV_state.S4~DUPLICATE_q\,
	combout => \control|WideOr0~0_combout\);

-- Location: FF_X12_Y3_N7
\control|cj[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \control|Selector5~0_combout\,
	clrn => \resetn~input_o\,
	ena => \control|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|cj\(0));

-- Location: FF_X11_Y3_N7
\control|state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \control|state.S3~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|state.S4~q\);

-- Location: LABCELL_X12_Y3_N54
\control|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector1~0_combout\ = ( \control|ci\(1) & ( \control|state.S5~DUPLICATE_q\ & ( ((!\control|ci\(0)) # ((\control|state.S2~q\) # (\control|state.S3~q\))) # (\control|state.S4~q\) ) ) ) # ( !\control|ci\(1) & ( \control|state.S5~DUPLICATE_q\ & ( 
-- \control|ci\(0) ) ) ) # ( \control|ci\(1) & ( !\control|state.S5~DUPLICATE_q\ & ( ((\control|state.S2~q\) # (\control|state.S3~q\)) # (\control|state.S4~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111111111111100110011001100111101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S4~q\,
	datab => \control|ALT_INV_ci\(0),
	datac => \control|ALT_INV_state.S3~q\,
	datad => \control|ALT_INV_state.S2~q\,
	datae => \control|ALT_INV_ci\(1),
	dataf => \control|ALT_INV_state.S5~DUPLICATE_q\,
	combout => \control|Selector1~0_combout\);

-- Location: FF_X12_Y3_N55
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

-- Location: LABCELL_X12_Y3_N12
\control|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector4~0_combout\ = ( \control|ci\(1) & ( (!\control|state.S3~q\ & (((\control|state.S2~q\)))) # (\control|state.S3~q\ & (!\control|cj\(0) $ (((!\control|cj\(1)))))) ) ) # ( !\control|ci\(1) & ( (\control|state.S3~q\ & (!\control|cj\(0) $ 
-- (!\control|cj\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010000011011010011100001101101001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S3~q\,
	datab => \control|ALT_INV_cj\(0),
	datac => \control|ALT_INV_state.S2~q\,
	datad => \control|ALT_INV_cj\(1),
	dataf => \control|ALT_INV_ci\(1),
	combout => \control|Selector4~0_combout\);

-- Location: FF_X12_Y3_N14
\control|cj[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \control|Selector4~0_combout\,
	clrn => \resetn~input_o\,
	ena => \control|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|cj\(1));

-- Location: FF_X11_Y3_N46
\control|state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \control|Selector11~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|state.S5~q\);

-- Location: LABCELL_X12_Y3_N9
\control|WideOr4\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|WideOr4~combout\ = (!\control|state.S3~q\ & (!\control|state.S2~q\ & !\control|state.S4~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S3~q\,
	datab => \control|ALT_INV_state.S2~q\,
	datac => \control|ALT_INV_state.S4~DUPLICATE_q\,
	combout => \control|WideOr4~combout\);

-- Location: LABCELL_X12_Y3_N51
\control|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector0~0_combout\ = ( \control|ci\(1) & ( (!\control|ci\(2) & (\control|state.S5~q\ & ((\control|ci\(0))))) # (\control|ci\(2) & ((!\control|WideOr4~combout\) # ((\control|state.S5~q\ & !\control|ci\(0))))) ) ) # ( !\control|ci\(1) & ( 
-- (\control|ci\(2) & ((!\control|WideOr4~combout\) # (\control|state.S5~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011101000000001101110100000101110111000000010111011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S5~q\,
	datab => \control|ALT_INV_WideOr4~combout\,
	datac => \control|ALT_INV_ci\(0),
	datad => \control|ALT_INV_ci\(2),
	dataf => \control|ALT_INV_ci\(1),
	combout => \control|Selector0~0_combout\);

-- Location: FF_X12_Y3_N53
\control|ci[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \control|Selector0~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|ci\(2));

-- Location: LABCELL_X12_Y3_N0
\control|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector3~0_combout\ = ( \control|cj\(2) & ( \control|ci\(2) & ( (!\control|state.S3~q\ & (\control|state.S2~q\)) # (\control|state.S3~q\ & (((!\control|cj\(0)) # (!\control|cj\(1))))) ) ) ) # ( !\control|cj\(2) & ( \control|ci\(2) & ( 
-- (!\control|state.S3~q\ & (\control|state.S2~q\)) # (\control|state.S3~q\ & (((\control|cj\(0) & \control|cj\(1))))) ) ) ) # ( \control|cj\(2) & ( !\control|ci\(2) & ( (\control|state.S3~q\ & ((!\control|cj\(0)) # (!\control|cj\(1)))) ) ) ) # ( 
-- !\control|cj\(2) & ( !\control|ci\(2) & ( (\control|state.S3~q\ & (\control|cj\(0) & \control|cj\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101010101010101000000100010001001110111011101110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S3~q\,
	datab => \control|ALT_INV_state.S2~q\,
	datac => \control|ALT_INV_cj\(0),
	datad => \control|ALT_INV_cj\(1),
	datae => \control|ALT_INV_cj\(2),
	dataf => \control|ALT_INV_ci\(2),
	combout => \control|Selector3~0_combout\);

-- Location: FF_X12_Y3_N2
\control|cj[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \control|Selector3~0_combout\,
	clrn => \resetn~input_o\,
	ena => \control|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|cj\(2));

-- Location: LABCELL_X12_Y3_N36
\control|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector9~0_combout\ = ( \control|state.S2~q\ ) # ( !\control|state.S2~q\ & ( (\control|state.S4~q\ & ((!\control|cj\(2)) # ((!\control|cj\(1)) # (!\control|cj\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001110000011110000111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_cj\(2),
	datab => \control|ALT_INV_cj\(1),
	datac => \control|ALT_INV_state.S4~q\,
	datad => \control|ALT_INV_cj\(0),
	dataf => \control|ALT_INV_state.S2~q\,
	combout => \control|Selector9~0_combout\);

-- Location: FF_X12_Y3_N38
\control|state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \control|Selector9~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|state.S3~q\);

-- Location: FF_X11_Y3_N8
\control|state.S4~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \control|state.S3~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|state.S4~DUPLICATE_q\);

-- Location: FF_X12_Y3_N13
\control|cj[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \control|Selector4~0_combout\,
	clrn => \resetn~input_o\,
	ena => \control|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|cj[1]~DUPLICATE_q\);

-- Location: FF_X12_Y3_N1
\control|cj[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \control|Selector3~0_combout\,
	clrn => \resetn~input_o\,
	ena => \control|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|cj[2]~DUPLICATE_q\);

-- Location: LABCELL_X11_Y3_N45
\control|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector11~0_combout\ = ( \control|cj[1]~DUPLICATE_q\ & ( \control|cj[2]~DUPLICATE_q\ & ( (\control|state.S4~DUPLICATE_q\ & \control|cj\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \control|ALT_INV_state.S4~DUPLICATE_q\,
	datac => \control|ALT_INV_cj\(0),
	datae => \control|ALT_INV_cj[1]~DUPLICATE_q\,
	dataf => \control|ALT_INV_cj[2]~DUPLICATE_q\,
	combout => \control|Selector11~0_combout\);

-- Location: FF_X11_Y3_N47
\control|state.S5~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \control|Selector11~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|state.S5~DUPLICATE_q\);

-- Location: FF_X12_Y3_N52
\control|ci[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \control|Selector0~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|ci[2]~DUPLICATE_q\);

-- Location: LABCELL_X13_Y3_N54
\control|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Equal1~0_combout\ = ( \control|ci\(1) & ( \control|ci[2]~DUPLICATE_q\ & ( !\control|ci[0]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \control|ALT_INV_ci[0]~DUPLICATE_q\,
	datae => \control|ALT_INV_ci\(1),
	dataf => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	combout => \control|Equal1~0_combout\);

-- Location: LABCELL_X11_Y3_N30
\control|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector12~0_combout\ = ( \control|state.S7~_Duplicate_1_q\ & ( \control|state.S0~q\ & ( (!\control|state.S5~DUPLICATE_q\ & (!\go~input_o\ & (\control|state.S1~q\))) # (\control|state.S5~DUPLICATE_q\ & (((\control|Equal1~0_combout\)))) ) ) ) # ( 
-- !\control|state.S7~_Duplicate_1_q\ & ( \control|state.S0~q\ & ( (\control|state.S5~DUPLICATE_q\ & \control|Equal1~0_combout\) ) ) ) # ( \control|state.S7~_Duplicate_1_q\ & ( !\control|state.S0~q\ & ( (!\control|state.S5~DUPLICATE_q\ & (\go~input_o\ & 
-- (!\control|state.S1~q\))) # (\control|state.S5~DUPLICATE_q\ & (((\control|Equal1~0_combout\)))) ) ) ) # ( !\control|state.S7~_Duplicate_1_q\ & ( !\control|state.S0~q\ & ( (\control|state.S5~DUPLICATE_q\ & \control|Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010000000111001100000000001100110000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_go~input_o\,
	datab => \control|ALT_INV_state.S5~DUPLICATE_q\,
	datac => \control|ALT_INV_state.S1~q\,
	datad => \control|ALT_INV_Equal1~0_combout\,
	datae => \control|ALT_INV_state.S7~_Duplicate_1_q\,
	dataf => \control|ALT_INV_state.S0~q\,
	combout => \control|Selector12~0_combout\);

-- Location: FF_X11_Y3_N32
\control|state.S7~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \control|Selector12~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|state.S7~_Duplicate_1_q\);

-- Location: LABCELL_X11_Y3_N24
\control|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector6~0_combout\ = (!\control|state.S7~_Duplicate_1_q\ & ((!\go~input_o\) # (\control|state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011001100100010001100110010001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_go~input_o\,
	datab => \control|ALT_INV_state.S7~_Duplicate_1_q\,
	datad => \control|ALT_INV_state.S0~q\,
	combout => \control|Selector6~0_combout\);

-- Location: FF_X11_Y3_N25
\control|state.S0\ : dffeas
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
	q => \control|state.S0~q\);

-- Location: LABCELL_X11_Y3_N27
\control|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector7~0_combout\ = (!\go~input_o\ & ((!\control|state.S0~q\) # (\control|state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101010101000001010101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_go~input_o\,
	datac => \control|ALT_INV_state.S0~q\,
	datad => \control|ALT_INV_state.S1~q\,
	combout => \control|Selector7~0_combout\);

-- Location: FF_X11_Y3_N29
\control|state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \control|Selector7~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|state.S1~q\);

-- Location: LABCELL_X11_Y3_N18
\control|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector8~0_combout\ = ( \control|state.S2~q\ & ( \control|state.S0~q\ & ( (!\control|state.S5~DUPLICATE_q\ & (\control|state.S1~q\)) # (\control|state.S5~DUPLICATE_q\ & ((!\control|Equal1~0_combout\))) ) ) ) # ( !\control|state.S2~q\ & ( 
-- \control|state.S0~q\ & ( (!\control|state.S5~DUPLICATE_q\ & (\go~input_o\ & (\control|state.S1~q\))) # (\control|state.S5~DUPLICATE_q\ & (((!\control|Equal1~0_combout\)))) ) ) ) # ( \control|state.S2~q\ & ( !\control|state.S0~q\ & ( 
-- (!\control|state.S5~DUPLICATE_q\ & (\go~input_o\)) # (\control|state.S5~DUPLICATE_q\ & ((!\control|Equal1~0_combout\))) ) ) ) # ( !\control|state.S2~q\ & ( !\control|state.S0~q\ & ( (!\control|state.S5~DUPLICATE_q\ & (\go~input_o\ & 
-- (\control|state.S1~q\))) # (\control|state.S5~DUPLICATE_q\ & (((!\control|Equal1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100000100011101110100010000110111000001000011111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_go~input_o\,
	datab => \control|ALT_INV_state.S5~DUPLICATE_q\,
	datac => \control|ALT_INV_state.S1~q\,
	datad => \control|ALT_INV_Equal1~0_combout\,
	datae => \control|ALT_INV_state.S2~q\,
	dataf => \control|ALT_INV_state.S0~q\,
	combout => \control|Selector8~0_combout\);

-- Location: FF_X11_Y3_N19
\control|state.S2\ : dffeas
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
	q => \control|state.S2~q\);

-- Location: LABCELL_X11_Y3_N0
\control|WideOr2\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|WideOr2~combout\ = ( !\control|state.S4~DUPLICATE_q\ & ( (!\control|state.S2~q\ & \control|state.S0~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \control|ALT_INV_state.S2~q\,
	datac => \control|ALT_INV_state.S0~q\,
	dataf => \control|ALT_INV_state.S4~DUPLICATE_q\,
	combout => \control|WideOr2~combout\);

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

-- Location: LABCELL_X12_Y3_N42
\control|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|WideOr1~combout\ = ( !\control|state.S2~q\ & ( (!\control|state.S7~_Duplicate_1_q\ & !\control|state.S3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \control|ALT_INV_state.S7~_Duplicate_1_q\,
	datad => \control|ALT_INV_state.S3~q\,
	dataf => \control|ALT_INV_state.S2~q\,
	combout => \control|WideOr1~combout\);

-- Location: LABCELL_X12_Y3_N33
\control|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|WideOr0~combout\ = ( !\control|state.S7~_Duplicate_1_q\ & ( (!\control|state.S5~DUPLICATE_q\ & !\control|state.S4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S5~DUPLICATE_q\,
	datad => \control|ALT_INV_state.S4~q\,
	dataf => \control|ALT_INV_state.S7~_Duplicate_1_q\,
	combout => \control|WideOr0~combout\);

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

-- Location: LABCELL_X13_Y3_N18
\datos|Decoder2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder2~0_combout\ = ( \control|ci[2]~DUPLICATE_q\ & ( (!\control|ci[0]~DUPLICATE_q\ & !\control|ci\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci[0]~DUPLICATE_q\,
	datac => \control|ALT_INV_ci\(1),
	dataf => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	combout => \datos|Decoder2~0_combout\);

-- Location: LABCELL_X13_Y3_N12
\datos|Decoder2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder2~1_combout\ = ( \control|ci[2]~DUPLICATE_q\ & ( (\control|ci[0]~DUPLICATE_q\ & !\control|ci\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \control|ALT_INV_ci[0]~DUPLICATE_q\,
	datad => \control|ALT_INV_ci\(1),
	dataf => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	combout => \datos|Decoder2~1_combout\);

-- Location: LABCELL_X13_Y3_N48
\datos|Decoder2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder2~6_combout\ = ( !\control|ci[2]~DUPLICATE_q\ & ( (\control|ci[0]~DUPLICATE_q\ & !\control|ci\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \control|ALT_INV_ci[0]~DUPLICATE_q\,
	datad => \control|ALT_INV_ci\(1),
	dataf => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	combout => \datos|Decoder2~6_combout\);

-- Location: MLABCELL_X8_Y2_N39
\datos|R~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~44_combout\ = ( \datos|Decoder2~6_combout\ & ( \datos|R8\(0) ) ) # ( !\datos|Decoder2~6_combout\ & ( (!\control|ci[2]~DUPLICATE_q\ & (\datos|Mux6~1_combout\)) # (\control|ci[2]~DUPLICATE_q\ & ((\datos|Mux6~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux6~1_combout\,
	datab => \datos|ALT_INV_Mux6~0_combout\,
	datac => \datos|ALT_INV_R8\(0),
	datad => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	dataf => \datos|ALT_INV_Decoder2~6_combout\,
	combout => \datos|R~44_combout\);

-- Location: LABCELL_X10_Y3_N39
\datos|R~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~45_combout\ = ( \datain[0]~input_o\ & ( \datos|R~44_combout\ ) ) # ( !\datain[0]~input_o\ & ( \datos|R~44_combout\ & ( (!\control|WideOr2~combout\) # ((!\wrinit~input_o\) # ((!\control|WideOr1~combout\) # (!\control|WideOr0~combout\))) ) ) ) # ( 
-- \datain[0]~input_o\ & ( !\datos|R~44_combout\ & ( (\control|WideOr2~combout\ & (\wrinit~input_o\ & (\control|WideOr1~combout\ & \control|WideOr0~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \control|ALT_INV_WideOr0~combout\,
	datae => \ALT_INV_datain[0]~input_o\,
	dataf => \datos|ALT_INV_R~44_combout\,
	combout => \datos|R~45_combout\);

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

-- Location: LABCELL_X12_Y2_N57
\datos|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Equal1~0_combout\ = ( !\control|WideOr0~combout\ & ( (!\control|WideOr2~combout\ & \control|WideOr1~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \control|ALT_INV_WideOr2~combout\,
	datad => \control|ALT_INV_WideOr1~combout\,
	dataf => \control|ALT_INV_WideOr0~combout\,
	combout => \datos|Equal1~0_combout\);

-- Location: FF_X8_Y2_N8
\datos|R8[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \datos|Mux2~2_combout\,
	sload => VCC,
	ena => \datos|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R8\(1));

-- Location: LABCELL_X13_Y3_N51
\datos|Decoder2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder2~4_combout\ = ( !\control|ci[2]~DUPLICATE_q\ & ( (!\control|ci[0]~DUPLICATE_q\ & !\control|ci\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci[0]~DUPLICATE_q\,
	datad => \control|ALT_INV_ci\(1),
	dataf => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	combout => \datos|Decoder2~4_combout\);

-- Location: MLABCELL_X8_Y2_N27
\datos|R~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~60_combout\ = ( \datos|Decoder2~4_combout\ & ( \datos|R8\(1) ) ) # ( !\datos|Decoder2~4_combout\ & ( (!\control|ci[2]~DUPLICATE_q\ & ((\datos|Mux7~1_combout\))) # (\control|ci[2]~DUPLICATE_q\ & (\datos|Mux7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux7~0_combout\,
	datab => \datos|ALT_INV_R8\(1),
	datac => \datos|ALT_INV_Mux7~1_combout\,
	datad => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	dataf => \datos|ALT_INV_Decoder2~4_combout\,
	combout => \datos|R~60_combout\);

-- Location: LABCELL_X11_Y2_N54
\datos|R~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~61_combout\ = ( \control|WideOr0~combout\ & ( \datain[1]~input_o\ & ( ((\control|WideOr2~combout\ & (\wrinit~input_o\ & \control|WideOr1~combout\))) # (\datos|R~60_combout\) ) ) ) # ( !\control|WideOr0~combout\ & ( \datain[1]~input_o\ & ( 
-- \datos|R~60_combout\ ) ) ) # ( \control|WideOr0~combout\ & ( !\datain[1]~input_o\ & ( (\datos|R~60_combout\ & ((!\control|WideOr2~combout\) # ((!\wrinit~input_o\) # (!\control|WideOr1~combout\)))) ) ) ) # ( !\control|WideOr0~combout\ & ( 
-- !\datain[1]~input_o\ & ( \datos|R~60_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111000001111000011110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \datos|ALT_INV_R~60_combout\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \control|ALT_INV_WideOr0~combout\,
	dataf => \ALT_INV_datain[1]~input_o\,
	combout => \datos|R~61_combout\);

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

-- Location: LABCELL_X10_Y2_N48
\datos|R~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~86_combout\ = ( \control|Equal1~0_combout\ & ( \datos|R8\(3) ) ) # ( !\control|Equal1~0_combout\ & ( (!\control|ci[2]~DUPLICATE_q\ & (\datos|Mux4~1_combout\)) # (\control|ci[2]~DUPLICATE_q\ & ((\datos|Mux4~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux4~1_combout\,
	datab => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datac => \datos|ALT_INV_Mux4~0_combout\,
	datad => \datos|ALT_INV_R8\(3),
	dataf => \control|ALT_INV_Equal1~0_combout\,
	combout => \datos|R~86_combout\);

-- Location: LABCELL_X10_Y2_N6
\datos|R~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~87_combout\ = ( \datain[3]~input_o\ & ( \datos|R~86_combout\ ) ) # ( !\datain[3]~input_o\ & ( \datos|R~86_combout\ & ( (!\control|WideOr1~combout\) # ((!\wrinit~input_o\) # ((!\control|WideOr2~combout\) # (!\control|WideOr0~combout\))) ) ) ) # ( 
-- \datain[3]~input_o\ & ( !\datos|R~86_combout\ & ( (\control|WideOr1~combout\ & (\wrinit~input_o\ & (\control|WideOr2~combout\ & \control|WideOr0~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr1~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr2~combout\,
	datad => \control|ALT_INV_WideOr0~combout\,
	datae => \ALT_INV_datain[3]~input_o\,
	dataf => \datos|ALT_INV_R~86_combout\,
	combout => \datos|R~87_combout\);

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

-- Location: LABCELL_X13_Y2_N54
\datos|R~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~68_combout\ = ( \datos|Decoder2~1_combout\ & ( \datos|R8\(2) ) ) # ( !\datos|Decoder2~1_combout\ & ( (!\control|ci[2]~DUPLICATE_q\ & (\datos|Mux5~1_combout\)) # (\control|ci[2]~DUPLICATE_q\ & ((\datos|Mux5~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux5~1_combout\,
	datab => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datac => \datos|ALT_INV_Mux5~0_combout\,
	datad => \datos|ALT_INV_R8\(2),
	dataf => \datos|ALT_INV_Decoder2~1_combout\,
	combout => \datos|R~68_combout\);

-- Location: LABCELL_X9_Y2_N33
\datos|R~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~69_combout\ = ( \datain[2]~input_o\ & ( \datos|R~68_combout\ ) ) # ( !\datain[2]~input_o\ & ( \datos|R~68_combout\ & ( (!\control|WideOr2~combout\) # ((!\control|WideOr0~combout\) # ((!\control|WideOr1~combout\) # (!\wrinit~input_o\))) ) ) ) # ( 
-- \datain[2]~input_o\ & ( !\datos|R~68_combout\ & ( (\control|WideOr2~combout\ & (\control|WideOr0~combout\ & (\control|WideOr1~combout\ & \wrinit~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \control|ALT_INV_WideOr0~combout\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \ALT_INV_wrinit~input_o\,
	datae => \ALT_INV_datain[2]~input_o\,
	dataf => \datos|ALT_INV_R~68_combout\,
	combout => \datos|R~69_combout\);

-- Location: LABCELL_X11_Y3_N51
\datos|R[5][2]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[5][2]~12_combout\ = ( \control|cj[2]~DUPLICATE_q\ & ( (\control|cj\(0) & !\control|cj[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \control|ALT_INV_cj\(0),
	datac => \control|ALT_INV_cj[1]~DUPLICATE_q\,
	dataf => \control|ALT_INV_cj[2]~DUPLICATE_q\,
	combout => \datos|R[5][2]~12_combout\);

-- Location: LABCELL_X10_Y3_N9
\datos|R[5][2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[5][2]~13_combout\ = ( !\datos|Decoder2~1_combout\ & ( !\datos|R[5][2]~12_combout\ & ( (!\control|WideOr2~combout\) # ((!\wrinit~input_o\) # ((!\control|WideOr1~combout\) # (!\control|WideOr0~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \control|ALT_INV_WideOr0~combout\,
	datae => \datos|ALT_INV_Decoder2~1_combout\,
	dataf => \datos|ALT_INV_R[5][2]~12_combout\,
	combout => \datos|R[5][2]~13_combout\);

-- Location: LABCELL_X11_Y3_N36
\datos|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|process_0~0_combout\ = ( !\control|state.S5~DUPLICATE_q\ & ( !\control|state.S4~DUPLICATE_q\ & ( (!\control|state.S7~_Duplicate_1_q\ & (!\control|state.S3~q\ & (\wrinit~input_o\ & !\control|state.S2~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S7~_Duplicate_1_q\,
	datab => \control|ALT_INV_state.S3~q\,
	datac => \ALT_INV_wrinit~input_o\,
	datad => \control|ALT_INV_state.S2~q\,
	datae => \control|ALT_INV_state.S5~DUPLICATE_q\,
	dataf => \control|ALT_INV_state.S4~DUPLICATE_q\,
	combout => \datos|process_0~0_combout\);

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

-- Location: LABCELL_X10_Y3_N0
\datos|R[5][2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[5][2]~11_combout\ = ( \radd[0]~input_o\ & ( (\control|WideOr2~combout\ & (\datos|process_0~0_combout\ & (\radd[2]~input_o\ & !\radd[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \datos|ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_radd[2]~input_o\,
	datad => \ALT_INV_radd[1]~input_o\,
	dataf => \ALT_INV_radd[0]~input_o\,
	combout => \datos|R[5][2]~11_combout\);

-- Location: LABCELL_X11_Y3_N15
\datos|R~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~4_combout\ = ( !\control|state.S3~q\ & ( \control|state.S4~DUPLICATE_q\ & ( (!\control|state.S2~q\ & !\control|state.S7~_Duplicate_1_q\) ) ) ) # ( !\control|state.S3~q\ & ( !\control|state.S4~DUPLICATE_q\ & ( (!\control|state.S0~q\ & 
-- (\control|state.S5~DUPLICATE_q\ & (!\control|state.S2~q\ & !\control|state.S7~_Duplicate_1_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S0~q\,
	datab => \control|ALT_INV_state.S5~DUPLICATE_q\,
	datac => \control|ALT_INV_state.S2~q\,
	datad => \control|ALT_INV_state.S7~_Duplicate_1_q\,
	datae => \control|ALT_INV_state.S3~q\,
	dataf => \control|ALT_INV_state.S4~DUPLICATE_q\,
	combout => \datos|R~4_combout\);

-- Location: LABCELL_X13_Y2_N39
\datos|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux5~2_combout\ = ( \datos|Mux5~0_combout\ & ( (\datos|Mux5~1_combout\) # (\control|ci[2]~DUPLICATE_q\) ) ) # ( !\datos|Mux5~0_combout\ & ( (!\control|ci[2]~DUPLICATE_q\ & \datos|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datad => \datos|ALT_INV_Mux5~1_combout\,
	dataf => \datos|ALT_INV_Mux5~0_combout\,
	combout => \datos|Mux5~2_combout\);

-- Location: LABCELL_X13_Y2_N12
\datos|R~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~5_combout\ = ( \datos|Mux5~2_combout\ & ( (\datos|R~4_combout\ & ((!\datos|Mux0~2_combout\ & ((!\datos|Mux1~2_combout\) # (\datos|Mux4~2_combout\))) # (\datos|Mux0~2_combout\ & (\datos|Mux4~2_combout\ & !\datos|Mux1~2_combout\)))) ) ) # ( 
-- !\datos|Mux5~2_combout\ & ( (\datos|R~4_combout\ & (!\datos|Mux0~2_combout\ & \datos|Mux4~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010001000101000001000100010100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~4_combout\,
	datab => \datos|ALT_INV_Mux0~2_combout\,
	datac => \datos|ALT_INV_Mux4~2_combout\,
	datad => \datos|ALT_INV_Mux1~2_combout\,
	dataf => \datos|ALT_INV_Mux5~2_combout\,
	combout => \datos|R~5_combout\);

-- Location: LABCELL_X10_Y2_N54
\datos|R[5][2]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[5][2]~14_combout\ = ( \datos|LessThan0~0_combout\ & ( \datos|R~5_combout\ & ( !\datos|R[5][2]~13_combout\ ) ) ) # ( !\datos|LessThan0~0_combout\ & ( \datos|R~5_combout\ & ( !\datos|R[5][2]~13_combout\ ) ) ) # ( \datos|LessThan0~0_combout\ & ( 
-- !\datos|R~5_combout\ & ( (!\datos|R[5][2]~13_combout\ & \datos|R[5][2]~11_combout\) ) ) ) # ( !\datos|LessThan0~0_combout\ & ( !\datos|R~5_combout\ & ( (!\datos|R[5][2]~13_combout\ & (((\datos|R~98_combout\ & \datos|R~2_combout\)) # 
-- (\datos|R[5][2]~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101010001000100010001010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[5][2]~13_combout\,
	datab => \datos|ALT_INV_R[5][2]~11_combout\,
	datac => \datos|ALT_INV_R~98_combout\,
	datad => \datos|ALT_INV_R~2_combout\,
	datae => \datos|ALT_INV_LessThan0~0_combout\,
	dataf => \datos|ALT_INV_R~5_combout\,
	combout => \datos|R[5][2]~14_combout\);

-- Location: FF_X9_Y2_N34
\datos|R[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~69_combout\,
	ena => \datos|R[5][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[5][2]~q\);

-- Location: LABCELL_X13_Y3_N15
\datos|Decoder2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder2~2_combout\ = ( \control|ci[2]~DUPLICATE_q\ & ( (\control|ci[0]~DUPLICATE_q\ & \control|ci\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci[0]~DUPLICATE_q\,
	datad => \control|ALT_INV_ci\(1),
	dataf => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	combout => \datos|Decoder2~2_combout\);

-- Location: LABCELL_X13_Y2_N48
\datos|R~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~72_combout\ = ( \control|ci[2]~DUPLICATE_q\ & ( (!\datos|Decoder2~2_combout\ & (\datos|Mux5~0_combout\)) # (\datos|Decoder2~2_combout\ & ((\datos|R8\(2)))) ) ) # ( !\control|ci[2]~DUPLICATE_q\ & ( (!\datos|Decoder2~2_combout\ & 
-- (\datos|Mux5~1_combout\)) # (\datos|Decoder2~2_combout\ & ((\datos|R8\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux5~0_combout\,
	datab => \datos|ALT_INV_Decoder2~2_combout\,
	datac => \datos|ALT_INV_Mux5~1_combout\,
	datad => \datos|ALT_INV_R8\(2),
	dataf => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	combout => \datos|R~72_combout\);

-- Location: LABCELL_X12_Y2_N48
\datos|R~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~73_combout\ = ( \control|WideOr2~combout\ & ( \control|WideOr0~combout\ & ( (!\control|WideOr1~combout\ & (((\datos|R~72_combout\)))) # (\control|WideOr1~combout\ & ((!\wrinit~input_o\ & ((\datos|R~72_combout\))) # (\wrinit~input_o\ & 
-- (\datain[2]~input_o\)))) ) ) ) # ( !\control|WideOr2~combout\ & ( \control|WideOr0~combout\ & ( \datos|R~72_combout\ ) ) ) # ( \control|WideOr2~combout\ & ( !\control|WideOr0~combout\ & ( \datos|R~72_combout\ ) ) ) # ( !\control|WideOr2~combout\ & ( 
-- !\control|WideOr0~combout\ & ( \datos|R~72_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr1~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \ALT_INV_datain[2]~input_o\,
	datad => \datos|ALT_INV_R~72_combout\,
	datae => \control|ALT_INV_WideOr2~combout\,
	dataf => \control|ALT_INV_WideOr0~combout\,
	combout => \datos|R~73_combout\);

-- Location: LABCELL_X10_Y3_N45
\datos|R[7][3]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[7][3]~23_combout\ = ( \radd[2]~input_o\ & ( (\control|WideOr2~combout\ & (\datos|process_0~0_combout\ & (\radd[1]~input_o\ & \radd[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \datos|ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_radd[1]~input_o\,
	datad => \ALT_INV_radd[0]~input_o\,
	dataf => \ALT_INV_radd[2]~input_o\,
	combout => \datos|R[7][3]~23_combout\);

-- Location: LABCELL_X12_Y3_N48
\datos|Decoder1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder1~0_combout\ = ( \control|cj\(1) & ( (\control|cj\(0) & \control|cj\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \control|ALT_INV_cj\(0),
	datad => \control|ALT_INV_cj\(2),
	dataf => \control|ALT_INV_cj\(1),
	combout => \datos|Decoder1~0_combout\);

-- Location: LABCELL_X12_Y3_N18
\datos|R[7][3]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[7][3]~24_combout\ = ( !\datos|Decoder2~2_combout\ & ( !\datos|Decoder1~0_combout\ & ( (!\wrinit~input_o\) # ((!\control|WideOr2~combout\) # ((!\control|WideOr0~combout\) # (!\control|WideOr1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wrinit~input_o\,
	datab => \control|ALT_INV_WideOr2~combout\,
	datac => \control|ALT_INV_WideOr0~combout\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \datos|ALT_INV_Decoder2~2_combout\,
	dataf => \datos|ALT_INV_Decoder1~0_combout\,
	combout => \datos|R[7][3]~24_combout\);

-- Location: LABCELL_X11_Y2_N27
\datos|R[7][3]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[7][3]~25_combout\ = ( \datos|R[7][3]~23_combout\ & ( !\datos|R[7][3]~24_combout\ ) ) # ( !\datos|R[7][3]~23_combout\ & ( !\datos|R[7][3]~24_combout\ & ( ((\datos|R~2_combout\ & (!\datos|LessThan0~0_combout\ & \datos|R~98_combout\))) # 
-- (\datos|R~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110011111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~2_combout\,
	datab => \datos|ALT_INV_R~5_combout\,
	datac => \datos|ALT_INV_LessThan0~0_combout\,
	datad => \datos|ALT_INV_R~98_combout\,
	datae => \datos|ALT_INV_R[7][3]~23_combout\,
	dataf => \datos|ALT_INV_R[7][3]~24_combout\,
	combout => \datos|R[7][3]~25_combout\);

-- Location: FF_X12_Y2_N49
\datos|R[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~73_combout\,
	ena => \datos|R[7][3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[7][2]~q\);

-- Location: LABCELL_X13_Y2_N57
\datos|R~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~70_combout\ = ( \datos|Mux5~0_combout\ & ( (!\control|Equal1~0_combout\ & (((\control|ci[2]~DUPLICATE_q\)) # (\datos|Mux5~1_combout\))) # (\control|Equal1~0_combout\ & (((\datos|R8\(2))))) ) ) # ( !\datos|Mux5~0_combout\ & ( 
-- (!\control|Equal1~0_combout\ & (\datos|Mux5~1_combout\ & (!\control|ci[2]~DUPLICATE_q\))) # (\control|Equal1~0_combout\ & (((\datos|R8\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001111010001000000111101110111000011110111011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux5~1_combout\,
	datab => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datac => \datos|ALT_INV_R8\(2),
	datad => \control|ALT_INV_Equal1~0_combout\,
	dataf => \datos|ALT_INV_Mux5~0_combout\,
	combout => \datos|R~70_combout\);

-- Location: LABCELL_X10_Y2_N9
\datos|R~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~71_combout\ = ( \datain[2]~input_o\ & ( \datos|R~70_combout\ ) ) # ( !\datain[2]~input_o\ & ( \datos|R~70_combout\ & ( (!\control|WideOr1~combout\) # ((!\wrinit~input_o\) # ((!\control|WideOr0~combout\) # (!\control|WideOr2~combout\))) ) ) ) # ( 
-- \datain[2]~input_o\ & ( !\datos|R~70_combout\ & ( (\control|WideOr1~combout\ & (\wrinit~input_o\ & (\control|WideOr0~combout\ & \control|WideOr2~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr1~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr0~combout\,
	datad => \control|ALT_INV_WideOr2~combout\,
	datae => \ALT_INV_datain[2]~input_o\,
	dataf => \datos|ALT_INV_R~70_combout\,
	combout => \datos|R~71_combout\);

-- Location: FF_X10_Y2_N10
\datos|R[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~71_combout\,
	ena => \datos|R[6][2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[6][2]~q\);

-- Location: LABCELL_X13_Y2_N21
\datos|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux1~0_combout\ = ( \control|cj\(0) & ( \control|cj[1]~DUPLICATE_q\ & ( \datos|R[7][2]~q\ ) ) ) # ( !\control|cj\(0) & ( \control|cj[1]~DUPLICATE_q\ & ( \datos|R[6][2]~q\ ) ) ) # ( \control|cj\(0) & ( !\control|cj[1]~DUPLICATE_q\ & ( 
-- \datos|R[5][2]~q\ ) ) ) # ( !\control|cj\(0) & ( !\control|cj[1]~DUPLICATE_q\ & ( \datos|R[4][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[4][2]~q\,
	datab => \datos|ALT_INV_R[5][2]~q\,
	datac => \datos|ALT_INV_R[7][2]~q\,
	datad => \datos|ALT_INV_R[6][2]~q\,
	datae => \control|ALT_INV_cj\(0),
	dataf => \control|ALT_INV_cj[1]~DUPLICATE_q\,
	combout => \datos|Mux1~0_combout\);

-- Location: LABCELL_X12_Y2_N54
\datos|R~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~80_combout\ = ( \control|ci[2]~DUPLICATE_q\ & ( (!\datos|Decoder2~6_combout\ & (\datos|Mux5~0_combout\)) # (\datos|Decoder2~6_combout\ & ((\datos|R8\(2)))) ) ) # ( !\control|ci[2]~DUPLICATE_q\ & ( (!\datos|Decoder2~6_combout\ & 
-- ((\datos|Mux5~1_combout\))) # (\datos|Decoder2~6_combout\ & (\datos|R8\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux5~0_combout\,
	datab => \datos|ALT_INV_R8\(2),
	datac => \datos|ALT_INV_Mux5~1_combout\,
	datad => \datos|ALT_INV_Decoder2~6_combout\,
	dataf => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	combout => \datos|R~80_combout\);

-- Location: LABCELL_X12_Y2_N15
\datos|R~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~81_combout\ = ( \datain[2]~input_o\ & ( \datos|R~80_combout\ ) ) # ( !\datain[2]~input_o\ & ( \datos|R~80_combout\ & ( (!\control|WideOr1~combout\) # ((!\wrinit~input_o\) # ((!\control|WideOr2~combout\) # (!\control|WideOr0~combout\))) ) ) ) # ( 
-- \datain[2]~input_o\ & ( !\datos|R~80_combout\ & ( (\control|WideOr1~combout\ & (\wrinit~input_o\ & (\control|WideOr2~combout\ & \control|WideOr0~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr1~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr2~combout\,
	datad => \control|ALT_INV_WideOr0~combout\,
	datae => \ALT_INV_datain[2]~input_o\,
	dataf => \datos|ALT_INV_R~80_combout\,
	combout => \datos|R~81_combout\);

-- Location: FF_X12_Y2_N16
\datos|R[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~81_combout\,
	ena => \datos|R[1][2]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[1][2]~q\);

-- Location: LABCELL_X12_Y2_N30
\datos|R~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~76_combout\ = ( \datos|Decoder2~4_combout\ & ( \datos|R8\(2) ) ) # ( !\datos|Decoder2~4_combout\ & ( (!\control|ci[2]~DUPLICATE_q\ & ((\datos|Mux5~1_combout\))) # (\control|ci[2]~DUPLICATE_q\ & (\datos|Mux5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux5~0_combout\,
	datab => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datac => \datos|ALT_INV_Mux5~1_combout\,
	datad => \datos|ALT_INV_R8\(2),
	dataf => \datos|ALT_INV_Decoder2~4_combout\,
	combout => \datos|R~76_combout\);

-- Location: LABCELL_X11_Y2_N9
\datos|R~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~77_combout\ = ( \control|WideOr0~combout\ & ( \datain[2]~input_o\ & ( ((\control|WideOr2~combout\ & (\wrinit~input_o\ & \control|WideOr1~combout\))) # (\datos|R~76_combout\) ) ) ) # ( !\control|WideOr0~combout\ & ( \datain[2]~input_o\ & ( 
-- \datos|R~76_combout\ ) ) ) # ( \control|WideOr0~combout\ & ( !\datain[2]~input_o\ & ( (\datos|R~76_combout\ & ((!\control|WideOr2~combout\) # ((!\wrinit~input_o\) # (!\control|WideOr1~combout\)))) ) ) ) # ( !\control|WideOr0~combout\ & ( 
-- !\datain[2]~input_o\ & ( \datos|R~76_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111000000000111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \datos|ALT_INV_R~76_combout\,
	datae => \control|ALT_INV_WideOr0~combout\,
	dataf => \ALT_INV_datain[2]~input_o\,
	combout => \datos|R~77_combout\);

-- Location: FF_X11_Y2_N10
\datos|R[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~77_combout\,
	ena => \datos|R[0][2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[0][2]~q\);

-- Location: LABCELL_X13_Y2_N42
\datos|Decoder2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder2~5_combout\ = ( \control|ci[0]~DUPLICATE_q\ & ( !\control|ci[2]~DUPLICATE_q\ & ( \control|ci\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \control|ALT_INV_ci\(1),
	datae => \control|ALT_INV_ci[0]~DUPLICATE_q\,
	dataf => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	combout => \datos|Decoder2~5_combout\);

-- Location: LABCELL_X13_Y2_N30
\datos|R~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~78_combout\ = ( \control|ci[2]~DUPLICATE_q\ & ( (!\datos|Decoder2~5_combout\ & (\datos|Mux5~0_combout\)) # (\datos|Decoder2~5_combout\ & ((\datos|R8\(2)))) ) ) # ( !\control|ci[2]~DUPLICATE_q\ & ( (!\datos|Decoder2~5_combout\ & 
-- (\datos|Mux5~1_combout\)) # (\datos|Decoder2~5_combout\ & ((\datos|R8\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux5~1_combout\,
	datab => \datos|ALT_INV_Decoder2~5_combout\,
	datac => \datos|ALT_INV_Mux5~0_combout\,
	datad => \datos|ALT_INV_R8\(2),
	dataf => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	combout => \datos|R~78_combout\);

-- Location: LABCELL_X12_Y2_N9
\datos|R~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~79_combout\ = ( \datain[2]~input_o\ & ( \datos|R~78_combout\ ) ) # ( !\datain[2]~input_o\ & ( \datos|R~78_combout\ & ( (!\control|WideOr1~combout\) # ((!\wrinit~input_o\) # ((!\control|WideOr2~combout\) # (!\control|WideOr0~combout\))) ) ) ) # ( 
-- \datain[2]~input_o\ & ( !\datos|R~78_combout\ & ( (\control|WideOr1~combout\ & (\wrinit~input_o\ & (\control|WideOr2~combout\ & \control|WideOr0~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr1~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr2~combout\,
	datad => \control|ALT_INV_WideOr0~combout\,
	datae => \ALT_INV_datain[2]~input_o\,
	dataf => \datos|ALT_INV_R~78_combout\,
	combout => \datos|R~79_combout\);

-- Location: LABCELL_X10_Y3_N51
\datos|R[3][2]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[3][2]~40_combout\ = ( !\radd[2]~input_o\ & ( (\control|WideOr2~combout\ & (\datos|process_0~0_combout\ & (\radd[0]~input_o\ & \radd[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \datos|ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_radd[0]~input_o\,
	datad => \ALT_INV_radd[1]~input_o\,
	dataf => \ALT_INV_radd[2]~input_o\,
	combout => \datos|R[3][2]~40_combout\);

-- Location: LABCELL_X13_Y2_N51
\datos|R[3][2]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[3][2]~41_combout\ = ( \control|cj[1]~DUPLICATE_q\ & ( (\control|cj\(0) & !\control|cj[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \control|ALT_INV_cj\(0),
	datad => \control|ALT_INV_cj[2]~DUPLICATE_q\,
	dataf => \control|ALT_INV_cj[1]~DUPLICATE_q\,
	combout => \datos|R[3][2]~41_combout\);

-- Location: LABCELL_X12_Y2_N36
\datos|R[3][2]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[3][2]~42_combout\ = ( \control|WideOr1~combout\ & ( \wrinit~input_o\ & ( (!\datos|R[3][2]~41_combout\ & (!\datos|Decoder2~5_combout\ & ((!\control|WideOr2~combout\) # (!\control|WideOr0~combout\)))) ) ) ) # ( !\control|WideOr1~combout\ & ( 
-- \wrinit~input_o\ & ( (!\datos|R[3][2]~41_combout\ & !\datos|Decoder2~5_combout\) ) ) ) # ( \control|WideOr1~combout\ & ( !\wrinit~input_o\ & ( (!\datos|R[3][2]~41_combout\ & !\datos|Decoder2~5_combout\) ) ) ) # ( !\control|WideOr1~combout\ & ( 
-- !\wrinit~input_o\ & ( (!\datos|R[3][2]~41_combout\ & !\datos|Decoder2~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[3][2]~41_combout\,
	datab => \control|ALT_INV_WideOr2~combout\,
	datac => \control|ALT_INV_WideOr0~combout\,
	datad => \datos|ALT_INV_Decoder2~5_combout\,
	datae => \control|ALT_INV_WideOr1~combout\,
	dataf => \ALT_INV_wrinit~input_o\,
	combout => \datos|R[3][2]~42_combout\);

-- Location: LABCELL_X12_Y2_N42
\datos|R[3][2]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[3][2]~43_combout\ = ( !\datos|R[3][2]~42_combout\ & ( \datos|R~98_combout\ & ( (((\datos|R~2_combout\ & !\datos|LessThan0~0_combout\)) # (\datos|R~5_combout\)) # (\datos|R[3][2]~40_combout\) ) ) ) # ( !\datos|R[3][2]~42_combout\ & ( 
-- !\datos|R~98_combout\ & ( (\datos|R~5_combout\) # (\datos|R[3][2]~40_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111000000000000000001110101111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[3][2]~40_combout\,
	datab => \datos|ALT_INV_R~2_combout\,
	datac => \datos|ALT_INV_LessThan0~0_combout\,
	datad => \datos|ALT_INV_R~5_combout\,
	datae => \datos|ALT_INV_R[3][2]~42_combout\,
	dataf => \datos|ALT_INV_R~98_combout\,
	combout => \datos|R[3][2]~43_combout\);

-- Location: FF_X12_Y2_N10
\datos|R[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~79_combout\,
	ena => \datos|R[3][2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[3][2]~q\);

-- Location: LABCELL_X13_Y2_N24
\datos|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux1~1_combout\ = ( \control|cj\(0) & ( \control|cj[1]~DUPLICATE_q\ & ( \datos|R[3][2]~q\ ) ) ) # ( !\control|cj\(0) & ( \control|cj[1]~DUPLICATE_q\ & ( \datos|R[2][2]~q\ ) ) ) # ( \control|cj\(0) & ( !\control|cj[1]~DUPLICATE_q\ & ( 
-- \datos|R[1][2]~q\ ) ) ) # ( !\control|cj\(0) & ( !\control|cj[1]~DUPLICATE_q\ & ( \datos|R[0][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[2][2]~q\,
	datab => \datos|ALT_INV_R[1][2]~q\,
	datac => \datos|ALT_INV_R[0][2]~q\,
	datad => \datos|ALT_INV_R[3][2]~q\,
	datae => \control|ALT_INV_cj\(0),
	dataf => \control|ALT_INV_cj[1]~DUPLICATE_q\,
	combout => \datos|Mux1~1_combout\);

-- Location: LABCELL_X13_Y2_N36
\datos|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux1~2_combout\ = (!\control|cj[2]~DUPLICATE_q\ & ((\datos|Mux1~1_combout\))) # (\control|cj[2]~DUPLICATE_q\ & (\datos|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux1~0_combout\,
	datab => \control|ALT_INV_cj[2]~DUPLICATE_q\,
	datac => \datos|ALT_INV_Mux1~1_combout\,
	combout => \datos|Mux1~2_combout\);

-- Location: FF_X13_Y2_N38
\datos|R8[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|Mux1~2_combout\,
	ena => \datos|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R8\(2));

-- Location: LABCELL_X12_Y2_N21
\datos|R~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~66_combout\ = ( \datos|Mux5~0_combout\ & ( (!\datos|Decoder2~0_combout\ & (((\control|ci[2]~DUPLICATE_q\)) # (\datos|Mux5~1_combout\))) # (\datos|Decoder2~0_combout\ & (((\datos|R8\(2))))) ) ) # ( !\datos|Mux5~0_combout\ & ( 
-- (!\datos|Decoder2~0_combout\ & (\datos|Mux5~1_combout\ & (!\control|ci[2]~DUPLICATE_q\))) # (\datos|Decoder2~0_combout\ & (((\datos|R8\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001111010001000000111101110111000011110111011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux5~1_combout\,
	datab => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datac => \datos|ALT_INV_R8\(2),
	datad => \datos|ALT_INV_Decoder2~0_combout\,
	dataf => \datos|ALT_INV_Mux5~0_combout\,
	combout => \datos|R~66_combout\);

-- Location: LABCELL_X10_Y2_N3
\datos|R~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~67_combout\ = ( \datain[2]~input_o\ & ( \datos|R~66_combout\ ) ) # ( !\datain[2]~input_o\ & ( \datos|R~66_combout\ & ( (!\control|WideOr1~combout\) # ((!\wrinit~input_o\) # ((!\control|WideOr0~combout\) # (!\control|WideOr2~combout\))) ) ) ) # ( 
-- \datain[2]~input_o\ & ( !\datos|R~66_combout\ & ( (\control|WideOr1~combout\ & (\wrinit~input_o\ & (\control|WideOr0~combout\ & \control|WideOr2~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr1~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr0~combout\,
	datad => \control|ALT_INV_WideOr2~combout\,
	datae => \ALT_INV_datain[2]~input_o\,
	dataf => \datos|ALT_INV_R~66_combout\,
	combout => \datos|R~67_combout\);

-- Location: LABCELL_X10_Y3_N57
\datos|R[4][2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[4][2]~3_combout\ = ( !\radd[1]~input_o\ & ( (\control|WideOr2~combout\ & (\radd[2]~input_o\ & (!\radd[0]~input_o\ & \datos|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \ALT_INV_radd[2]~input_o\,
	datac => \ALT_INV_radd[0]~input_o\,
	datad => \datos|ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_radd[1]~input_o\,
	combout => \datos|R[4][2]~3_combout\);

-- Location: LABCELL_X12_Y3_N39
\datos|R[4][2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[4][2]~6_combout\ = ( !\control|cj\(1) & ( (\control|cj\(2) & !\control|cj\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_cj\(2),
	datad => \control|ALT_INV_cj\(0),
	dataf => \control|ALT_INV_cj\(1),
	combout => \datos|R[4][2]~6_combout\);

-- Location: LABCELL_X12_Y3_N21
\datos|R[4][2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[4][2]~7_combout\ = ( !\datos|Decoder2~0_combout\ & ( !\datos|R[4][2]~6_combout\ & ( (!\wrinit~input_o\) # ((!\control|WideOr2~combout\) # ((!\control|WideOr1~combout\) # (!\control|WideOr0~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wrinit~input_o\,
	datab => \control|ALT_INV_WideOr2~combout\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \control|ALT_INV_WideOr0~combout\,
	datae => \datos|ALT_INV_Decoder2~0_combout\,
	dataf => \datos|ALT_INV_R[4][2]~6_combout\,
	combout => \datos|R[4][2]~7_combout\);

-- Location: LABCELL_X10_Y2_N21
\datos|R[4][2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[4][2]~8_combout\ = ( \datos|R[4][2]~3_combout\ & ( !\datos|R[4][2]~7_combout\ ) ) # ( !\datos|R[4][2]~3_combout\ & ( !\datos|R[4][2]~7_combout\ & ( ((!\datos|LessThan0~0_combout\ & (\datos|R~2_combout\ & \datos|R~98_combout\))) # 
-- (\datos|R~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100101111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_LessThan0~0_combout\,
	datab => \datos|ALT_INV_R~2_combout\,
	datac => \datos|ALT_INV_R~5_combout\,
	datad => \datos|ALT_INV_R~98_combout\,
	datae => \datos|ALT_INV_R[4][2]~3_combout\,
	dataf => \datos|ALT_INV_R[4][2]~7_combout\,
	combout => \datos|R[4][2]~8_combout\);

-- Location: FF_X10_Y2_N4
\datos|R[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~67_combout\,
	ena => \datos|R[4][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[4][2]~q\);

-- Location: LABCELL_X13_Y2_N18
\datos|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux5~0_combout\ = ( \control|ci[0]~DUPLICATE_q\ & ( \control|ci\(1) & ( \datos|R[7][2]~q\ ) ) ) # ( !\control|ci[0]~DUPLICATE_q\ & ( \control|ci\(1) & ( \datos|R[6][2]~q\ ) ) ) # ( \control|ci[0]~DUPLICATE_q\ & ( !\control|ci\(1) & ( 
-- \datos|R[5][2]~q\ ) ) ) # ( !\control|ci[0]~DUPLICATE_q\ & ( !\control|ci\(1) & ( \datos|R[4][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[4][2]~q\,
	datab => \datos|ALT_INV_R[5][2]~q\,
	datac => \datos|ALT_INV_R[6][2]~q\,
	datad => \datos|ALT_INV_R[7][2]~q\,
	datae => \control|ALT_INV_ci[0]~DUPLICATE_q\,
	dataf => \control|ALT_INV_ci\(1),
	combout => \datos|Mux5~0_combout\);

-- Location: LABCELL_X13_Y3_N6
\datos|Decoder2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder2~3_combout\ = ( !\control|ci[2]~DUPLICATE_q\ & ( (!\control|ci[0]~DUPLICATE_q\ & \control|ci\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci[0]~DUPLICATE_q\,
	datac => \control|ALT_INV_ci\(1),
	dataf => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	combout => \datos|Decoder2~3_combout\);

-- Location: LABCELL_X12_Y2_N18
\datos|R~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~74_combout\ = ( \datos|Decoder2~3_combout\ & ( \datos|R8\(2) ) ) # ( !\datos|Decoder2~3_combout\ & ( (!\control|ci[2]~DUPLICATE_q\ & (\datos|Mux5~1_combout\)) # (\control|ci[2]~DUPLICATE_q\ & ((\datos|Mux5~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux5~1_combout\,
	datab => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datac => \datos|ALT_INV_Mux5~0_combout\,
	datad => \datos|ALT_INV_R8\(2),
	dataf => \datos|ALT_INV_Decoder2~3_combout\,
	combout => \datos|R~74_combout\);

-- Location: LABCELL_X11_Y2_N30
\datos|R~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~75_combout\ = ( \datain[2]~input_o\ & ( \control|WideOr1~combout\ & ( ((\control|WideOr0~combout\ & (\wrinit~input_o\ & \control|WideOr2~combout\))) # (\datos|R~74_combout\) ) ) ) # ( !\datain[2]~input_o\ & ( \control|WideOr1~combout\ & ( 
-- (\datos|R~74_combout\ & ((!\control|WideOr0~combout\) # ((!\wrinit~input_o\) # (!\control|WideOr2~combout\)))) ) ) ) # ( \datain[2]~input_o\ & ( !\control|WideOr1~combout\ & ( \datos|R~74_combout\ ) ) ) # ( !\datain[2]~input_o\ & ( 
-- !\control|WideOr1~combout\ & ( \datos|R~74_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111100000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr0~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr2~combout\,
	datad => \datos|ALT_INV_R~74_combout\,
	datae => \ALT_INV_datain[2]~input_o\,
	dataf => \control|ALT_INV_WideOr1~combout\,
	combout => \datos|R~75_combout\);

-- Location: LABCELL_X10_Y3_N3
\datos|R[2][2]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[2][2]~28_combout\ = ( !\radd[2]~input_o\ & ( (\control|WideOr2~combout\ & (\datos|process_0~0_combout\ & (!\radd[0]~input_o\ & \radd[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \datos|ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_radd[0]~input_o\,
	datad => \ALT_INV_radd[1]~input_o\,
	dataf => \ALT_INV_radd[2]~input_o\,
	combout => \datos|R[2][2]~28_combout\);

-- Location: LABCELL_X12_Y3_N45
\datos|R[2][2]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[2][2]~29_combout\ = ( \control|cj\(1) & ( (!\control|cj\(0) & !\control|cj\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_cj\(0),
	datad => \control|ALT_INV_cj\(2),
	dataf => \control|ALT_INV_cj\(1),
	combout => \datos|R[2][2]~29_combout\);

-- Location: LABCELL_X12_Y3_N27
\datos|R[2][2]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[2][2]~30_combout\ = ( !\datos|R[2][2]~29_combout\ & ( !\datos|Decoder2~3_combout\ & ( (!\wrinit~input_o\) # ((!\control|WideOr2~combout\) # ((!\control|WideOr1~combout\) # (!\control|WideOr0~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wrinit~input_o\,
	datab => \control|ALT_INV_WideOr2~combout\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \control|ALT_INV_WideOr0~combout\,
	datae => \datos|ALT_INV_R[2][2]~29_combout\,
	dataf => \datos|ALT_INV_Decoder2~3_combout\,
	combout => \datos|R[2][2]~30_combout\);

-- Location: LABCELL_X12_Y2_N3
\datos|R[2][2]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[2][2]~31_combout\ = ( \datos|R[2][2]~28_combout\ & ( !\datos|R[2][2]~30_combout\ ) ) # ( !\datos|R[2][2]~28_combout\ & ( !\datos|R[2][2]~30_combout\ & ( ((\datos|R~98_combout\ & (\datos|R~2_combout\ & !\datos|LessThan0~0_combout\))) # 
-- (\datos|R~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100001111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~98_combout\,
	datab => \datos|ALT_INV_R~2_combout\,
	datac => \datos|ALT_INV_R~5_combout\,
	datad => \datos|ALT_INV_LessThan0~0_combout\,
	datae => \datos|ALT_INV_R[2][2]~28_combout\,
	dataf => \datos|ALT_INV_R[2][2]~30_combout\,
	combout => \datos|R[2][2]~31_combout\);

-- Location: FF_X11_Y2_N31
\datos|R[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~75_combout\,
	ena => \datos|R[2][2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[2][2]~q\);

-- Location: LABCELL_X13_Y2_N27
\datos|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux5~1_combout\ = ( \control|ci[0]~DUPLICATE_q\ & ( \control|ci\(1) & ( \datos|R[3][2]~q\ ) ) ) # ( !\control|ci[0]~DUPLICATE_q\ & ( \control|ci\(1) & ( \datos|R[2][2]~q\ ) ) ) # ( \control|ci[0]~DUPLICATE_q\ & ( !\control|ci\(1) & ( 
-- \datos|R[1][2]~q\ ) ) ) # ( !\control|ci[0]~DUPLICATE_q\ & ( !\control|ci\(1) & ( \datos|R[0][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[2][2]~q\,
	datab => \datos|ALT_INV_R[1][2]~q\,
	datac => \datos|ALT_INV_R[3][2]~q\,
	datad => \datos|ALT_INV_R[0][2]~q\,
	datae => \control|ALT_INV_ci[0]~DUPLICATE_q\,
	dataf => \control|ALT_INV_ci\(1),
	combout => \datos|Mux5~1_combout\);

-- Location: LABCELL_X12_Y2_N24
\datos|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|LessThan0~0_combout\ = ( \control|cj[2]~DUPLICATE_q\ & ( \datos|Mux5~0_combout\ & ( !\datos|Mux1~0_combout\ $ (((!\datos|Mux5~1_combout\ & !\control|ci[2]~DUPLICATE_q\))) ) ) ) # ( !\control|cj[2]~DUPLICATE_q\ & ( \datos|Mux5~0_combout\ & ( 
-- !\datos|Mux1~1_combout\ $ (((!\datos|Mux5~1_combout\ & !\control|ci[2]~DUPLICATE_q\))) ) ) ) # ( \control|cj[2]~DUPLICATE_q\ & ( !\datos|Mux5~0_combout\ & ( !\datos|Mux1~0_combout\ $ (((!\datos|Mux5~1_combout\) # (\control|ci[2]~DUPLICATE_q\))) ) ) ) # ( 
-- !\control|cj[2]~DUPLICATE_q\ & ( !\datos|Mux5~0_combout\ & ( !\datos|Mux1~1_combout\ $ (((!\datos|Mux5~1_combout\) # (\control|ci[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010111011010010110100101101110111100010000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux5~1_combout\,
	datab => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datac => \datos|ALT_INV_Mux1~0_combout\,
	datad => \datos|ALT_INV_Mux1~1_combout\,
	datae => \control|ALT_INV_cj[2]~DUPLICATE_q\,
	dataf => \datos|ALT_INV_Mux5~0_combout\,
	combout => \datos|LessThan0~0_combout\);

-- Location: LABCELL_X10_Y3_N42
\datos|R[6][2]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[6][2]~17_combout\ = ( !\radd[0]~input_o\ & ( (\control|WideOr2~combout\ & (\datos|process_0~0_combout\ & (\radd[2]~input_o\ & \radd[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \datos|ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_radd[2]~input_o\,
	datad => \ALT_INV_radd[1]~input_o\,
	dataf => \ALT_INV_radd[0]~input_o\,
	combout => \datos|R[6][2]~17_combout\);

-- Location: LABCELL_X11_Y3_N3
\datos|R[6][2]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[6][2]~18_combout\ = ( \control|cj[1]~DUPLICATE_q\ & ( (\control|cj\(2) & !\control|cj\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_cj\(2),
	datac => \control|ALT_INV_cj\(0),
	dataf => \control|ALT_INV_cj[1]~DUPLICATE_q\,
	combout => \datos|R[6][2]~18_combout\);

-- Location: LABCELL_X10_Y2_N30
\datos|R[6][2]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[6][2]~19_combout\ = ( !\datos|R[6][2]~18_combout\ & ( !\control|Equal1~0_combout\ & ( (!\control|WideOr2~combout\) # ((!\wrinit~input_o\) # ((!\control|WideOr1~combout\) # (!\control|WideOr0~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \control|ALT_INV_WideOr0~combout\,
	datae => \datos|ALT_INV_R[6][2]~18_combout\,
	dataf => \control|ALT_INV_Equal1~0_combout\,
	combout => \datos|R[6][2]~19_combout\);

-- Location: LABCELL_X10_Y2_N18
\datos|R[6][2]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[6][2]~20_combout\ = ( \datos|R[6][2]~17_combout\ & ( !\datos|R[6][2]~19_combout\ ) ) # ( !\datos|R[6][2]~17_combout\ & ( !\datos|R[6][2]~19_combout\ & ( ((!\datos|LessThan0~0_combout\ & (\datos|R~2_combout\ & \datos|R~98_combout\))) # 
-- (\datos|R~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_LessThan0~0_combout\,
	datab => \datos|ALT_INV_R~2_combout\,
	datac => \datos|ALT_INV_R~98_combout\,
	datad => \datos|ALT_INV_R~5_combout\,
	datae => \datos|ALT_INV_R[6][2]~17_combout\,
	dataf => \datos|ALT_INV_R[6][2]~19_combout\,
	combout => \datos|R[6][2]~20_combout\);

-- Location: FF_X10_Y2_N8
\datos|R[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~87_combout\,
	ena => \datos|R[6][2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[6][3]~q\);

-- Location: LABCELL_X10_Y2_N12
\datos|R~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~84_combout\ = ( \datos|Decoder2~1_combout\ & ( \datos|R8\(3) ) ) # ( !\datos|Decoder2~1_combout\ & ( (!\control|ci[2]~DUPLICATE_q\ & ((\datos|Mux4~1_combout\))) # (\control|ci[2]~DUPLICATE_q\ & (\datos|Mux4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R8\(3),
	datab => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datac => \datos|ALT_INV_Mux4~0_combout\,
	datad => \datos|ALT_INV_Mux4~1_combout\,
	dataf => \datos|ALT_INV_Decoder2~1_combout\,
	combout => \datos|R~84_combout\);

-- Location: LABCELL_X9_Y2_N30
\datos|R~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~85_combout\ = ( \datain[3]~input_o\ & ( \datos|R~84_combout\ ) ) # ( !\datain[3]~input_o\ & ( \datos|R~84_combout\ & ( (!\control|WideOr2~combout\) # ((!\control|WideOr0~combout\) # ((!\wrinit~input_o\) # (!\control|WideOr1~combout\))) ) ) ) # ( 
-- \datain[3]~input_o\ & ( !\datos|R~84_combout\ & ( (\control|WideOr2~combout\ & (\control|WideOr0~combout\ & (\wrinit~input_o\ & \control|WideOr1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \control|ALT_INV_WideOr0~combout\,
	datac => \ALT_INV_wrinit~input_o\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \ALT_INV_datain[3]~input_o\,
	dataf => \datos|ALT_INV_R~84_combout\,
	combout => \datos|R~85_combout\);

-- Location: FF_X9_Y2_N32
\datos|R[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~85_combout\,
	ena => \datos|R[5][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[5][3]~q\);

-- Location: LABCELL_X10_Y2_N15
\datos|R~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~82_combout\ = ( \datos|Mux4~0_combout\ & ( (!\datos|Decoder2~0_combout\ & (((\datos|Mux4~1_combout\) # (\control|ci[2]~DUPLICATE_q\)))) # (\datos|Decoder2~0_combout\ & (\datos|R8\(3))) ) ) # ( !\datos|Mux4~0_combout\ & ( 
-- (!\datos|Decoder2~0_combout\ & (((!\control|ci[2]~DUPLICATE_q\ & \datos|Mux4~1_combout\)))) # (\datos|Decoder2~0_combout\ & (\datos|R8\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001010101000011000101010100111111010101010011111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R8\(3),
	datab => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datac => \datos|ALT_INV_Mux4~1_combout\,
	datad => \datos|ALT_INV_Decoder2~0_combout\,
	dataf => \datos|ALT_INV_Mux4~0_combout\,
	combout => \datos|R~82_combout\);

-- Location: LABCELL_X10_Y2_N0
\datos|R~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~83_combout\ = ( \datain[3]~input_o\ & ( \datos|R~82_combout\ ) ) # ( !\datain[3]~input_o\ & ( \datos|R~82_combout\ & ( (!\control|WideOr1~combout\) # ((!\wrinit~input_o\) # ((!\control|WideOr2~combout\) # (!\control|WideOr0~combout\))) ) ) ) # ( 
-- \datain[3]~input_o\ & ( !\datos|R~82_combout\ & ( (\control|WideOr1~combout\ & (\wrinit~input_o\ & (\control|WideOr2~combout\ & \control|WideOr0~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr1~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr2~combout\,
	datad => \control|ALT_INV_WideOr0~combout\,
	datae => \ALT_INV_datain[3]~input_o\,
	dataf => \datos|ALT_INV_R~82_combout\,
	combout => \datos|R~83_combout\);

-- Location: FF_X10_Y2_N1
\datos|R[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~83_combout\,
	ena => \datos|R[4][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[4][3]~q\);

-- Location: LABCELL_X9_Y2_N39
\datos|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux4~0_combout\ = ( \control|ci[0]~DUPLICATE_q\ & ( \control|ci\(1) & ( \datos|R[7][3]~q\ ) ) ) # ( !\control|ci[0]~DUPLICATE_q\ & ( \control|ci\(1) & ( \datos|R[6][3]~q\ ) ) ) # ( \control|ci[0]~DUPLICATE_q\ & ( !\control|ci\(1) & ( 
-- \datos|R[5][3]~q\ ) ) ) # ( !\control|ci[0]~DUPLICATE_q\ & ( !\control|ci\(1) & ( \datos|R[4][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[6][3]~q\,
	datab => \datos|ALT_INV_R[5][3]~q\,
	datac => \datos|ALT_INV_R[4][3]~q\,
	datad => \datos|ALT_INV_R[7][3]~q\,
	datae => \control|ALT_INV_ci[0]~DUPLICATE_q\,
	dataf => \control|ALT_INV_ci\(1),
	combout => \datos|Mux4~0_combout\);

-- Location: LABCELL_X10_Y2_N51
\datos|R~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~88_combout\ = ( \datos|Decoder2~2_combout\ & ( \datos|R8\(3) ) ) # ( !\datos|Decoder2~2_combout\ & ( (!\control|ci[2]~DUPLICATE_q\ & (\datos|Mux4~1_combout\)) # (\control|ci[2]~DUPLICATE_q\ & ((\datos|Mux4~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux4~1_combout\,
	datab => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datac => \datos|ALT_INV_Mux4~0_combout\,
	datad => \datos|ALT_INV_R8\(3),
	dataf => \datos|ALT_INV_Decoder2~2_combout\,
	combout => \datos|R~88_combout\);

-- Location: LABCELL_X11_Y2_N45
\datos|R~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~89_combout\ = ( \control|WideOr0~combout\ & ( \datos|R~88_combout\ & ( (!\control|WideOr2~combout\) # ((!\wrinit~input_o\) # ((!\control|WideOr1~combout\) # (\datain[3]~input_o\))) ) ) ) # ( !\control|WideOr0~combout\ & ( \datos|R~88_combout\ ) ) 
-- # ( \control|WideOr0~combout\ & ( !\datos|R~88_combout\ & ( (\control|WideOr2~combout\ & (\wrinit~input_o\ & (\datain[3]~input_o\ & \control|WideOr1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111111111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \ALT_INV_datain[3]~input_o\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \control|ALT_INV_WideOr0~combout\,
	dataf => \datos|ALT_INV_R~88_combout\,
	combout => \datos|R~89_combout\);

-- Location: FF_X11_Y2_N46
\datos|R[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~89_combout\,
	ena => \datos|R[7][3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[7][3]~q\);

-- Location: LABCELL_X9_Y2_N48
\datos|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux0~0_combout\ = ( \control|cj\(0) & ( \control|cj[1]~DUPLICATE_q\ & ( \datos|R[7][3]~q\ ) ) ) # ( !\control|cj\(0) & ( \control|cj[1]~DUPLICATE_q\ & ( \datos|R[6][3]~q\ ) ) ) # ( \control|cj\(0) & ( !\control|cj[1]~DUPLICATE_q\ & ( 
-- \datos|R[5][3]~q\ ) ) ) # ( !\control|cj\(0) & ( !\control|cj[1]~DUPLICATE_q\ & ( \datos|R[4][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[7][3]~q\,
	datab => \datos|ALT_INV_R[5][3]~q\,
	datac => \datos|ALT_INV_R[6][3]~q\,
	datad => \datos|ALT_INV_R[4][3]~q\,
	datae => \control|ALT_INV_cj\(0),
	dataf => \control|ALT_INV_cj[1]~DUPLICATE_q\,
	combout => \datos|Mux0~0_combout\);

-- Location: LABCELL_X10_Y2_N27
\datos|R~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~92_combout\ = ( \datos|Mux4~0_combout\ & ( (!\datos|Decoder2~4_combout\ & (((\control|ci[2]~DUPLICATE_q\)) # (\datos|Mux4~1_combout\))) # (\datos|Decoder2~4_combout\ & (((\datos|R8\(3))))) ) ) # ( !\datos|Mux4~0_combout\ & ( 
-- (!\datos|Decoder2~4_combout\ & (\datos|Mux4~1_combout\ & (!\control|ci[2]~DUPLICATE_q\))) # (\datos|Decoder2~4_combout\ & (((\datos|R8\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001111010000000100111101110000011111110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux4~1_combout\,
	datab => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datac => \datos|ALT_INV_Decoder2~4_combout\,
	datad => \datos|ALT_INV_R8\(3),
	dataf => \datos|ALT_INV_Mux4~0_combout\,
	combout => \datos|R~92_combout\);

-- Location: LABCELL_X11_Y2_N12
\datos|R~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~93_combout\ = ( \datain[3]~input_o\ & ( \datos|R~92_combout\ ) ) # ( !\datain[3]~input_o\ & ( \datos|R~92_combout\ & ( (!\control|WideOr2~combout\) # ((!\wrinit~input_o\) # ((!\control|WideOr0~combout\) # (!\control|WideOr1~combout\))) ) ) ) # ( 
-- \datain[3]~input_o\ & ( !\datos|R~92_combout\ & ( (\control|WideOr2~combout\ & (\wrinit~input_o\ & (\control|WideOr0~combout\ & \control|WideOr1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr0~combout\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \ALT_INV_datain[3]~input_o\,
	dataf => \datos|ALT_INV_R~92_combout\,
	combout => \datos|R~93_combout\);

-- Location: FF_X11_Y2_N13
\datos|R[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~93_combout\,
	ena => \datos|R[0][2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[0][3]~q\);

-- Location: LABCELL_X10_Y2_N36
\datos|R~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~94_combout\ = ( \datos|Decoder2~5_combout\ & ( \datos|R8\(3) ) ) # ( !\datos|Decoder2~5_combout\ & ( (!\control|ci[2]~DUPLICATE_q\ & (\datos|Mux4~1_combout\)) # (\control|ci[2]~DUPLICATE_q\ & ((\datos|Mux4~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux4~1_combout\,
	datab => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datac => \datos|ALT_INV_Mux4~0_combout\,
	datad => \datos|ALT_INV_R8\(3),
	dataf => \datos|ALT_INV_Decoder2~5_combout\,
	combout => \datos|R~94_combout\);

-- Location: LABCELL_X10_Y3_N30
\datos|R~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~95_combout\ = ( \datain[3]~input_o\ & ( \datos|R~94_combout\ ) ) # ( !\datain[3]~input_o\ & ( \datos|R~94_combout\ & ( (!\control|WideOr2~combout\) # ((!\wrinit~input_o\) # ((!\control|WideOr0~combout\) # (!\control|WideOr1~combout\))) ) ) ) # ( 
-- \datain[3]~input_o\ & ( !\datos|R~94_combout\ & ( (\control|WideOr2~combout\ & (\wrinit~input_o\ & (\control|WideOr0~combout\ & \control|WideOr1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr0~combout\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \ALT_INV_datain[3]~input_o\,
	dataf => \datos|ALT_INV_R~94_combout\,
	combout => \datos|R~95_combout\);

-- Location: FF_X10_Y3_N32
\datos|R[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~95_combout\,
	ena => \datos|R[3][2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[3][3]~q\);

-- Location: LABCELL_X10_Y2_N39
\datos|R~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~96_combout\ = ( \datos|Mux4~0_combout\ & ( (!\datos|Decoder2~6_combout\ & (((\control|ci[2]~DUPLICATE_q\)) # (\datos|Mux4~1_combout\))) # (\datos|Decoder2~6_combout\ & (((\datos|R8\(3))))) ) ) # ( !\datos|Mux4~0_combout\ & ( 
-- (!\datos|Decoder2~6_combout\ & (\datos|Mux4~1_combout\ & (!\control|ci[2]~DUPLICATE_q\))) # (\datos|Decoder2~6_combout\ & (((\datos|R8\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001111010000000100111101110000011111110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux4~1_combout\,
	datab => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datac => \datos|ALT_INV_Decoder2~6_combout\,
	datad => \datos|ALT_INV_R8\(3),
	dataf => \datos|ALT_INV_Mux4~0_combout\,
	combout => \datos|R~96_combout\);

-- Location: LABCELL_X10_Y3_N36
\datos|R~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~97_combout\ = ( \datain[3]~input_o\ & ( \datos|R~96_combout\ ) ) # ( !\datain[3]~input_o\ & ( \datos|R~96_combout\ & ( (!\control|WideOr2~combout\) # ((!\wrinit~input_o\) # ((!\control|WideOr0~combout\) # (!\control|WideOr1~combout\))) ) ) ) # ( 
-- \datain[3]~input_o\ & ( !\datos|R~96_combout\ & ( (\control|WideOr2~combout\ & (\wrinit~input_o\ & (\control|WideOr0~combout\ & \control|WideOr1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr0~combout\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \ALT_INV_datain[3]~input_o\,
	dataf => \datos|ALT_INV_R~96_combout\,
	combout => \datos|R~97_combout\);

-- Location: FF_X10_Y3_N38
\datos|R[1][3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~97_combout\,
	ena => \datos|R[1][2]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[1][3]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y3_N18
\datos|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux0~1_combout\ = ( \datos|R[2][3]~q\ & ( \control|cj\(0) & ( (!\control|cj[1]~DUPLICATE_q\ & ((\datos|R[1][3]~DUPLICATE_q\))) # (\control|cj[1]~DUPLICATE_q\ & (\datos|R[3][3]~q\)) ) ) ) # ( !\datos|R[2][3]~q\ & ( \control|cj\(0) & ( 
-- (!\control|cj[1]~DUPLICATE_q\ & ((\datos|R[1][3]~DUPLICATE_q\))) # (\control|cj[1]~DUPLICATE_q\ & (\datos|R[3][3]~q\)) ) ) ) # ( \datos|R[2][3]~q\ & ( !\control|cj\(0) & ( (\control|cj[1]~DUPLICATE_q\) # (\datos|R[0][3]~q\) ) ) ) # ( !\datos|R[2][3]~q\ & 
-- ( !\control|cj\(0) & ( (\datos|R[0][3]~q\ & !\control|cj[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[0][3]~q\,
	datab => \datos|ALT_INV_R[3][3]~q\,
	datac => \datos|ALT_INV_R[1][3]~DUPLICATE_q\,
	datad => \control|ALT_INV_cj[1]~DUPLICATE_q\,
	datae => \datos|ALT_INV_R[2][3]~q\,
	dataf => \control|ALT_INV_cj\(0),
	combout => \datos|Mux0~1_combout\);

-- Location: MLABCELL_X8_Y2_N12
\datos|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux0~2_combout\ = ( \datos|Mux0~1_combout\ & ( (!\control|cj[2]~DUPLICATE_q\) # (\datos|Mux0~0_combout\) ) ) # ( !\datos|Mux0~1_combout\ & ( (\control|cj[2]~DUPLICATE_q\ & \datos|Mux0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \control|ALT_INV_cj[2]~DUPLICATE_q\,
	datad => \datos|ALT_INV_Mux0~0_combout\,
	dataf => \datos|ALT_INV_Mux0~1_combout\,
	combout => \datos|Mux0~2_combout\);

-- Location: FF_X10_Y2_N38
\datos|R8[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \datos|Mux0~2_combout\,
	sload => VCC,
	ena => \datos|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R8\(3));

-- Location: LABCELL_X10_Y2_N24
\datos|R~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~90_combout\ = ( \datos|Decoder2~3_combout\ & ( \datos|R8\(3) ) ) # ( !\datos|Decoder2~3_combout\ & ( (!\control|ci[2]~DUPLICATE_q\ & (\datos|Mux4~1_combout\)) # (\control|ci[2]~DUPLICATE_q\ & ((\datos|Mux4~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux4~1_combout\,
	datab => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datac => \datos|ALT_INV_R8\(3),
	datad => \datos|ALT_INV_Mux4~0_combout\,
	dataf => \datos|ALT_INV_Decoder2~3_combout\,
	combout => \datos|R~90_combout\);

-- Location: LABCELL_X11_Y2_N48
\datos|R~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~91_combout\ = ( \datain[3]~input_o\ & ( \control|WideOr1~combout\ & ( ((\control|WideOr0~combout\ & (\wrinit~input_o\ & \control|WideOr2~combout\))) # (\datos|R~90_combout\) ) ) ) # ( !\datain[3]~input_o\ & ( \control|WideOr1~combout\ & ( 
-- (\datos|R~90_combout\ & ((!\control|WideOr0~combout\) # ((!\wrinit~input_o\) # (!\control|WideOr2~combout\)))) ) ) ) # ( \datain[3]~input_o\ & ( !\control|WideOr1~combout\ & ( \datos|R~90_combout\ ) ) ) # ( !\datain[3]~input_o\ & ( 
-- !\control|WideOr1~combout\ & ( \datos|R~90_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111100000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr0~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr2~combout\,
	datad => \datos|ALT_INV_R~90_combout\,
	datae => \ALT_INV_datain[3]~input_o\,
	dataf => \control|ALT_INV_WideOr1~combout\,
	combout => \datos|R~91_combout\);

-- Location: FF_X11_Y2_N49
\datos|R[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~91_combout\,
	ena => \datos|R[2][2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[2][3]~q\);

-- Location: FF_X10_Y3_N37
\datos|R[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~97_combout\,
	ena => \datos|R[1][2]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[1][3]~q\);

-- Location: LABCELL_X10_Y3_N15
\datos|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux4~1_combout\ = ( \control|ci[0]~DUPLICATE_q\ & ( \control|ci\(1) & ( \datos|R[3][3]~q\ ) ) ) # ( !\control|ci[0]~DUPLICATE_q\ & ( \control|ci\(1) & ( \datos|R[2][3]~q\ ) ) ) # ( \control|ci[0]~DUPLICATE_q\ & ( !\control|ci\(1) & ( 
-- \datos|R[1][3]~q\ ) ) ) # ( !\control|ci[0]~DUPLICATE_q\ & ( !\control|ci\(1) & ( \datos|R[0][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[2][3]~q\,
	datab => \datos|ALT_INV_R[3][3]~q\,
	datac => \datos|ALT_INV_R[1][3]~q\,
	datad => \datos|ALT_INV_R[0][3]~q\,
	datae => \control|ALT_INV_ci[0]~DUPLICATE_q\,
	dataf => \control|ALT_INV_ci\(1),
	combout => \datos|Mux4~1_combout\);

-- Location: LABCELL_X10_Y2_N42
\datos|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux4~2_combout\ = ( \datos|Mux4~0_combout\ & ( (\control|ci[2]~DUPLICATE_q\) # (\datos|Mux4~1_combout\) ) ) # ( !\datos|Mux4~0_combout\ & ( (\datos|Mux4~1_combout\ & !\control|ci[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \datos|ALT_INV_Mux4~1_combout\,
	datad => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	dataf => \datos|ALT_INV_Mux4~0_combout\,
	combout => \datos|Mux4~2_combout\);

-- Location: LABCELL_X10_Y2_N45
\datos|R~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~2_combout\ = ( !\control|WideOr0~combout\ & ( (!\control|WideOr2~combout\ & (\control|WideOr1~combout\ & (!\datos|Mux4~2_combout\ $ (\datos|Mux0~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000010000000001000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \datos|ALT_INV_Mux4~2_combout\,
	datac => \datos|ALT_INV_Mux0~2_combout\,
	datad => \control|ALT_INV_WideOr1~combout\,
	dataf => \control|ALT_INV_WideOr0~combout\,
	combout => \datos|R~2_combout\);

-- Location: LABCELL_X10_Y3_N48
\datos|R[0][2]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[0][2]~34_combout\ = ( !\radd[0]~input_o\ & ( (\control|WideOr2~combout\ & (\datos|process_0~0_combout\ & (!\radd[2]~input_o\ & !\radd[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \datos|ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_radd[2]~input_o\,
	datad => \ALT_INV_radd[1]~input_o\,
	dataf => \ALT_INV_radd[0]~input_o\,
	combout => \datos|R[0][2]~34_combout\);

-- Location: LABCELL_X10_Y3_N54
\datos|R[0][2]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[0][2]~35_combout\ = ( !\control|cj\(0) & ( (!\control|cj[2]~DUPLICATE_q\ & !\control|cj[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \control|ALT_INV_cj[2]~DUPLICATE_q\,
	datad => \control|ALT_INV_cj[1]~DUPLICATE_q\,
	dataf => \control|ALT_INV_cj\(0),
	combout => \datos|R[0][2]~35_combout\);

-- Location: LABCELL_X10_Y3_N6
\datos|R[0][2]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[0][2]~36_combout\ = ( !\datos|Decoder2~4_combout\ & ( !\datos|R[0][2]~35_combout\ & ( (!\control|WideOr2~combout\) # ((!\wrinit~input_o\) # ((!\control|WideOr0~combout\) # (!\control|WideOr1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr0~combout\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \datos|ALT_INV_Decoder2~4_combout\,
	dataf => \datos|ALT_INV_R[0][2]~35_combout\,
	combout => \datos|R[0][2]~36_combout\);

-- Location: LABCELL_X11_Y2_N24
\datos|R[0][2]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[0][2]~37_combout\ = ( \datos|R[0][2]~34_combout\ & ( !\datos|R[0][2]~36_combout\ ) ) # ( !\datos|R[0][2]~34_combout\ & ( !\datos|R[0][2]~36_combout\ & ( ((\datos|R~2_combout\ & (\datos|R~98_combout\ & !\datos|LessThan0~0_combout\))) # 
-- (\datos|R~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110011111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~2_combout\,
	datab => \datos|ALT_INV_R~5_combout\,
	datac => \datos|ALT_INV_R~98_combout\,
	datad => \datos|ALT_INV_LessThan0~0_combout\,
	datae => \datos|ALT_INV_R[0][2]~34_combout\,
	dataf => \datos|ALT_INV_R[0][2]~36_combout\,
	combout => \datos|R[0][2]~37_combout\);

-- Location: FF_X11_Y2_N55
\datos|R[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~61_combout\,
	ena => \datos|R[0][2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[0][1]~q\);

-- Location: MLABCELL_X8_Y2_N51
\datos|R~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~58_combout\ = ( \datos|Decoder2~3_combout\ & ( \datos|R8\(1) ) ) # ( !\datos|Decoder2~3_combout\ & ( (!\control|ci[2]~DUPLICATE_q\ & (\datos|Mux7~1_combout\)) # (\control|ci[2]~DUPLICATE_q\ & ((\datos|Mux7~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datab => \datos|ALT_INV_R8\(1),
	datac => \datos|ALT_INV_Mux7~1_combout\,
	datad => \datos|ALT_INV_Mux7~0_combout\,
	dataf => \datos|ALT_INV_Decoder2~3_combout\,
	combout => \datos|R~58_combout\);

-- Location: LABCELL_X11_Y2_N18
\datos|R~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~59_combout\ = ( \control|WideOr0~combout\ & ( \datain[1]~input_o\ & ( ((\control|WideOr2~combout\ & (\wrinit~input_o\ & \control|WideOr1~combout\))) # (\datos|R~58_combout\) ) ) ) # ( !\control|WideOr0~combout\ & ( \datain[1]~input_o\ & ( 
-- \datos|R~58_combout\ ) ) ) # ( \control|WideOr0~combout\ & ( !\datain[1]~input_o\ & ( (\datos|R~58_combout\ & ((!\control|WideOr2~combout\) # ((!\wrinit~input_o\) # (!\control|WideOr1~combout\)))) ) ) ) # ( !\control|WideOr0~combout\ & ( 
-- !\datain[1]~input_o\ & ( \datos|R~58_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111000001111000011110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \datos|ALT_INV_R~58_combout\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \control|ALT_INV_WideOr0~combout\,
	dataf => \ALT_INV_datain[1]~input_o\,
	combout => \datos|R~59_combout\);

-- Location: FF_X11_Y2_N19
\datos|R[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~59_combout\,
	ena => \datos|R[2][2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[2][1]~q\);

-- Location: MLABCELL_X8_Y2_N6
\datos|R~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~62_combout\ = ( \datos|Decoder2~5_combout\ & ( \datos|R8\(1) ) ) # ( !\datos|Decoder2~5_combout\ & ( (!\control|ci[2]~DUPLICATE_q\ & ((\datos|Mux7~1_combout\))) # (\control|ci[2]~DUPLICATE_q\ & (\datos|Mux7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux7~0_combout\,
	datab => \datos|ALT_INV_Mux7~1_combout\,
	datac => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datad => \datos|ALT_INV_R8\(1),
	dataf => \datos|ALT_INV_Decoder2~5_combout\,
	combout => \datos|R~62_combout\);

-- Location: LABCELL_X12_Y2_N6
\datos|R~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~63_combout\ = ( \datain[1]~input_o\ & ( \datos|R~62_combout\ ) ) # ( !\datain[1]~input_o\ & ( \datos|R~62_combout\ & ( (!\control|WideOr1~combout\) # ((!\wrinit~input_o\) # ((!\control|WideOr0~combout\) # (!\control|WideOr2~combout\))) ) ) ) # ( 
-- \datain[1]~input_o\ & ( !\datos|R~62_combout\ & ( (\control|WideOr1~combout\ & (\wrinit~input_o\ & (\control|WideOr0~combout\ & \control|WideOr2~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr1~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr0~combout\,
	datad => \control|ALT_INV_WideOr2~combout\,
	datae => \ALT_INV_datain[1]~input_o\,
	dataf => \datos|ALT_INV_R~62_combout\,
	combout => \datos|R~63_combout\);

-- Location: FF_X12_Y2_N7
\datos|R[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~63_combout\,
	ena => \datos|R[3][2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[3][1]~q\);

-- Location: MLABCELL_X8_Y2_N24
\datos|R~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~64_combout\ = ( \datos|Decoder2~6_combout\ & ( \datos|R8\(1) ) ) # ( !\datos|Decoder2~6_combout\ & ( (!\control|ci[2]~DUPLICATE_q\ & ((\datos|Mux7~1_combout\))) # (\control|ci[2]~DUPLICATE_q\ & (\datos|Mux7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux7~0_combout\,
	datab => \datos|ALT_INV_R8\(1),
	datac => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datad => \datos|ALT_INV_Mux7~1_combout\,
	dataf => \datos|ALT_INV_Decoder2~6_combout\,
	combout => \datos|R~64_combout\);

-- Location: LABCELL_X12_Y2_N12
\datos|R~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~65_combout\ = ( \datain[1]~input_o\ & ( \datos|R~64_combout\ ) ) # ( !\datain[1]~input_o\ & ( \datos|R~64_combout\ & ( (!\control|WideOr1~combout\) # ((!\wrinit~input_o\) # ((!\control|WideOr0~combout\) # (!\control|WideOr2~combout\))) ) ) ) # ( 
-- \datain[1]~input_o\ & ( !\datos|R~64_combout\ & ( (\control|WideOr1~combout\ & (\wrinit~input_o\ & (\control|WideOr0~combout\ & \control|WideOr2~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr1~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr0~combout\,
	datad => \control|ALT_INV_WideOr2~combout\,
	datae => \ALT_INV_datain[1]~input_o\,
	dataf => \datos|ALT_INV_R~64_combout\,
	combout => \datos|R~65_combout\);

-- Location: FF_X12_Y2_N13
\datos|R[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~65_combout\,
	ena => \datos|R[1][2]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[1][1]~q\);

-- Location: LABCELL_X13_Y3_N39
\datos|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux7~1_combout\ = ( \control|ci\(1) & ( \control|ci[0]~DUPLICATE_q\ & ( \datos|R[3][1]~q\ ) ) ) # ( !\control|ci\(1) & ( \control|ci[0]~DUPLICATE_q\ & ( \datos|R[1][1]~q\ ) ) ) # ( \control|ci\(1) & ( !\control|ci[0]~DUPLICATE_q\ & ( 
-- \datos|R[2][1]~q\ ) ) ) # ( !\control|ci\(1) & ( !\control|ci[0]~DUPLICATE_q\ & ( \datos|R[0][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[0][1]~q\,
	datab => \datos|ALT_INV_R[2][1]~q\,
	datac => \datos|ALT_INV_R[3][1]~q\,
	datad => \datos|ALT_INV_R[1][1]~q\,
	datae => \control|ALT_INV_ci\(1),
	dataf => \control|ALT_INV_ci[0]~DUPLICATE_q\,
	combout => \datos|Mux7~1_combout\);

-- Location: MLABCELL_X8_Y2_N45
\datos|R~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~52_combout\ = ( \datos|R8\(1) & ( ((!\control|ci[2]~DUPLICATE_q\ & ((\datos|Mux7~1_combout\))) # (\control|ci[2]~DUPLICATE_q\ & (\datos|Mux7~0_combout\))) # (\datos|Decoder2~1_combout\) ) ) # ( !\datos|R8\(1) & ( (!\datos|Decoder2~1_combout\ & 
-- ((!\control|ci[2]~DUPLICATE_q\ & ((\datos|Mux7~1_combout\))) # (\control|ci[2]~DUPLICATE_q\ & (\datos|Mux7~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101000000111111010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux7~0_combout\,
	datab => \datos|ALT_INV_Mux7~1_combout\,
	datac => \datos|ALT_INV_Decoder2~1_combout\,
	datad => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	dataf => \datos|ALT_INV_R8\(1),
	combout => \datos|R~52_combout\);

-- Location: LABCELL_X9_Y2_N6
\datos|R~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~53_combout\ = ( \datain[1]~input_o\ & ( \datos|R~52_combout\ ) ) # ( !\datain[1]~input_o\ & ( \datos|R~52_combout\ & ( (!\control|WideOr2~combout\) # ((!\control|WideOr0~combout\) # ((!\wrinit~input_o\) # (!\control|WideOr1~combout\))) ) ) ) # ( 
-- \datain[1]~input_o\ & ( !\datos|R~52_combout\ & ( (\control|WideOr2~combout\ & (\control|WideOr0~combout\ & (\wrinit~input_o\ & \control|WideOr1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \control|ALT_INV_WideOr0~combout\,
	datac => \ALT_INV_wrinit~input_o\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \ALT_INV_datain[1]~input_o\,
	dataf => \datos|ALT_INV_R~52_combout\,
	combout => \datos|R~53_combout\);

-- Location: FF_X9_Y2_N8
\datos|R[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~53_combout\,
	ena => \datos|R[5][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[5][1]~q\);

-- Location: MLABCELL_X8_Y2_N57
\datos|R~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~54_combout\ = ( \datos|R8\(1) & ( ((!\control|ci[2]~DUPLICATE_q\ & (\datos|Mux7~1_combout\)) # (\control|ci[2]~DUPLICATE_q\ & ((\datos|Mux7~0_combout\)))) # (\control|Equal1~0_combout\) ) ) # ( !\datos|R8\(1) & ( (!\control|Equal1~0_combout\ & 
-- ((!\control|ci[2]~DUPLICATE_q\ & (\datos|Mux7~1_combout\)) # (\control|ci[2]~DUPLICATE_q\ & ((\datos|Mux7~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datab => \control|ALT_INV_Equal1~0_combout\,
	datac => \datos|ALT_INV_Mux7~1_combout\,
	datad => \datos|ALT_INV_Mux7~0_combout\,
	dataf => \datos|ALT_INV_R8\(1),
	combout => \datos|R~54_combout\);

-- Location: LABCELL_X9_Y2_N42
\datos|R~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~55_combout\ = ( \datain[1]~input_o\ & ( \datos|R~54_combout\ ) ) # ( !\datain[1]~input_o\ & ( \datos|R~54_combout\ & ( (!\control|WideOr2~combout\) # ((!\control|WideOr0~combout\) # ((!\wrinit~input_o\) # (!\control|WideOr1~combout\))) ) ) ) # ( 
-- \datain[1]~input_o\ & ( !\datos|R~54_combout\ & ( (\control|WideOr2~combout\ & (\control|WideOr0~combout\ & (\wrinit~input_o\ & \control|WideOr1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \control|ALT_INV_WideOr0~combout\,
	datac => \ALT_INV_wrinit~input_o\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \ALT_INV_datain[1]~input_o\,
	dataf => \datos|ALT_INV_R~54_combout\,
	combout => \datos|R~55_combout\);

-- Location: FF_X9_Y2_N44
\datos|R[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~55_combout\,
	ena => \datos|R[6][2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[6][1]~q\);

-- Location: MLABCELL_X8_Y2_N42
\datos|R~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~50_combout\ = ( \datos|R8\(1) & ( ((!\control|ci[2]~DUPLICATE_q\ & ((\datos|Mux7~1_combout\))) # (\control|ci[2]~DUPLICATE_q\ & (\datos|Mux7~0_combout\))) # (\datos|Decoder2~0_combout\) ) ) # ( !\datos|R8\(1) & ( (!\datos|Decoder2~0_combout\ & 
-- ((!\control|ci[2]~DUPLICATE_q\ & ((\datos|Mux7~1_combout\))) # (\control|ci[2]~DUPLICATE_q\ & (\datos|Mux7~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101111111110011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux7~0_combout\,
	datab => \datos|ALT_INV_Mux7~1_combout\,
	datac => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datad => \datos|ALT_INV_Decoder2~0_combout\,
	dataf => \datos|ALT_INV_R8\(1),
	combout => \datos|R~50_combout\);

-- Location: LABCELL_X9_Y2_N0
\datos|R~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~51_combout\ = ( \datain[1]~input_o\ & ( \datos|R~50_combout\ ) ) # ( !\datain[1]~input_o\ & ( \datos|R~50_combout\ & ( (!\control|WideOr2~combout\) # ((!\control|WideOr0~combout\) # ((!\wrinit~input_o\) # (!\control|WideOr1~combout\))) ) ) ) # ( 
-- \datain[1]~input_o\ & ( !\datos|R~50_combout\ & ( (\control|WideOr2~combout\ & (\control|WideOr0~combout\ & (\wrinit~input_o\ & \control|WideOr1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \control|ALT_INV_WideOr0~combout\,
	datac => \ALT_INV_wrinit~input_o\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \ALT_INV_datain[1]~input_o\,
	dataf => \datos|ALT_INV_R~50_combout\,
	combout => \datos|R~51_combout\);

-- Location: FF_X9_Y2_N2
\datos|R[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~51_combout\,
	ena => \datos|R[4][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[4][1]~q\);

-- Location: LABCELL_X9_Y2_N27
\datos|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux7~0_combout\ = ( \control|ci[0]~DUPLICATE_q\ & ( \control|ci\(1) & ( \datos|R[7][1]~q\ ) ) ) # ( !\control|ci[0]~DUPLICATE_q\ & ( \control|ci\(1) & ( \datos|R[6][1]~q\ ) ) ) # ( \control|ci[0]~DUPLICATE_q\ & ( !\control|ci\(1) & ( 
-- \datos|R[5][1]~q\ ) ) ) # ( !\control|ci[0]~DUPLICATE_q\ & ( !\control|ci\(1) & ( \datos|R[4][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[7][1]~q\,
	datab => \datos|ALT_INV_R[5][1]~q\,
	datac => \datos|ALT_INV_R[6][1]~q\,
	datad => \datos|ALT_INV_R[4][1]~q\,
	datae => \control|ALT_INV_ci[0]~DUPLICATE_q\,
	dataf => \control|ALT_INV_ci\(1),
	combout => \datos|Mux7~0_combout\);

-- Location: MLABCELL_X8_Y2_N48
\datos|R~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~56_combout\ = ( \datos|Decoder2~2_combout\ & ( \datos|R8\(1) ) ) # ( !\datos|Decoder2~2_combout\ & ( (!\control|ci[2]~DUPLICATE_q\ & ((\datos|Mux7~1_combout\))) # (\control|ci[2]~DUPLICATE_q\ & (\datos|Mux7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datab => \datos|ALT_INV_R8\(1),
	datac => \datos|ALT_INV_Mux7~0_combout\,
	datad => \datos|ALT_INV_Mux7~1_combout\,
	dataf => \datos|ALT_INV_Decoder2~2_combout\,
	combout => \datos|R~56_combout\);

-- Location: LABCELL_X11_Y2_N0
\datos|R~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~57_combout\ = ( \datain[1]~input_o\ & ( \datos|R~56_combout\ ) ) # ( !\datain[1]~input_o\ & ( \datos|R~56_combout\ & ( (!\control|WideOr2~combout\) # ((!\wrinit~input_o\) # ((!\control|WideOr0~combout\) # (!\control|WideOr1~combout\))) ) ) ) # ( 
-- \datain[1]~input_o\ & ( !\datos|R~56_combout\ & ( (\control|WideOr2~combout\ & (\wrinit~input_o\ & (\control|WideOr0~combout\ & \control|WideOr1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr0~combout\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \ALT_INV_datain[1]~input_o\,
	dataf => \datos|ALT_INV_R~56_combout\,
	combout => \datos|R~57_combout\);

-- Location: FF_X11_Y2_N1
\datos|R[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~57_combout\,
	ena => \datos|R[7][3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[7][1]~q\);

-- Location: LABCELL_X9_Y2_N24
\datos|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux2~0_combout\ = ( \control|cj\(0) & ( \control|cj[1]~DUPLICATE_q\ & ( \datos|R[7][1]~q\ ) ) ) # ( !\control|cj\(0) & ( \control|cj[1]~DUPLICATE_q\ & ( \datos|R[6][1]~q\ ) ) ) # ( \control|cj\(0) & ( !\control|cj[1]~DUPLICATE_q\ & ( 
-- \datos|R[5][1]~q\ ) ) ) # ( !\control|cj\(0) & ( !\control|cj[1]~DUPLICATE_q\ & ( \datos|R[4][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[7][1]~q\,
	datab => \datos|ALT_INV_R[5][1]~q\,
	datac => \datos|ALT_INV_R[4][1]~q\,
	datad => \datos|ALT_INV_R[6][1]~q\,
	datae => \control|ALT_INV_cj\(0),
	dataf => \control|ALT_INV_cj[1]~DUPLICATE_q\,
	combout => \datos|Mux2~0_combout\);

-- Location: LABCELL_X13_Y3_N36
\datos|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux2~1_combout\ = ( \control|cj[1]~DUPLICATE_q\ & ( \control|cj\(0) & ( \datos|R[3][1]~q\ ) ) ) # ( !\control|cj[1]~DUPLICATE_q\ & ( \control|cj\(0) & ( \datos|R[1][1]~q\ ) ) ) # ( \control|cj[1]~DUPLICATE_q\ & ( !\control|cj\(0) & ( 
-- \datos|R[2][1]~q\ ) ) ) # ( !\control|cj[1]~DUPLICATE_q\ & ( !\control|cj\(0) & ( \datos|R[0][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[0][1]~q\,
	datab => \datos|ALT_INV_R[2][1]~q\,
	datac => \datos|ALT_INV_R[1][1]~q\,
	datad => \datos|ALT_INV_R[3][1]~q\,
	datae => \control|ALT_INV_cj[1]~DUPLICATE_q\,
	dataf => \control|ALT_INV_cj\(0),
	combout => \datos|Mux2~1_combout\);

-- Location: LABCELL_X13_Y2_N33
\datos|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux2~2_combout\ = ( \datos|Mux2~1_combout\ & ( (!\control|cj[2]~DUPLICATE_q\) # (\datos|Mux2~0_combout\) ) ) # ( !\datos|Mux2~1_combout\ & ( (\control|cj[2]~DUPLICATE_q\ & \datos|Mux2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \control|ALT_INV_cj[2]~DUPLICATE_q\,
	datad => \datos|ALT_INV_Mux2~0_combout\,
	dataf => \datos|ALT_INV_Mux2~1_combout\,
	combout => \datos|Mux2~2_combout\);

-- Location: MLABCELL_X8_Y2_N30
\datos|R~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~98_combout\ = ( !\control|ci[2]~DUPLICATE_q\ & ( (!\datos|Mux2~2_combout\ & (((!\datos|Mux3~2_combout\ & ((\datos|Mux6~1_combout\)))) # (\datos|Mux7~1_combout\))) # (\datos|Mux2~2_combout\ & (!\datos|Mux3~2_combout\ & (\datos|Mux7~1_combout\ & 
-- ((\datos|Mux6~1_combout\))))) ) ) # ( \control|ci[2]~DUPLICATE_q\ & ( (!\datos|Mux2~2_combout\ & (((!\datos|Mux3~2_combout\ & (\datos|Mux6~0_combout\))) # (\datos|Mux7~0_combout\))) # (\datos|Mux2~2_combout\ & (!\datos|Mux3~2_combout\ & 
-- (\datos|Mux7~0_combout\ & (\datos|Mux6~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000010101000111010001110100011100000101010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux2~2_combout\,
	datab => \datos|ALT_INV_Mux3~2_combout\,
	datac => \datos|ALT_INV_Mux7~0_combout\,
	datad => \datos|ALT_INV_Mux6~0_combout\,
	datae => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	dataf => \datos|ALT_INV_Mux6~1_combout\,
	datag => \datos|ALT_INV_Mux7~1_combout\,
	combout => \datos|R~98_combout\);

-- Location: LABCELL_X10_Y3_N24
\datos|R[1][2]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[1][2]~46_combout\ = ( !\radd[1]~input_o\ & ( \radd[0]~input_o\ & ( (\control|WideOr2~combout\ & (\datos|process_0~0_combout\ & !\radd[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \datos|ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_radd[2]~input_o\,
	datae => \ALT_INV_radd[1]~input_o\,
	dataf => \ALT_INV_radd[0]~input_o\,
	combout => \datos|R[1][2]~46_combout\);

-- Location: LABCELL_X12_Y3_N15
\datos|R[1][2]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[1][2]~47_combout\ = ( !\control|cj\(1) & ( (\control|cj\(0) & !\control|cj\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \control|ALT_INV_cj\(0),
	datad => \control|ALT_INV_cj\(2),
	dataf => \control|ALT_INV_cj\(1),
	combout => \datos|R[1][2]~47_combout\);

-- Location: LABCELL_X12_Y3_N24
\datos|R[1][2]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[1][2]~48_combout\ = ( !\datos|Decoder2~6_combout\ & ( !\datos|R[1][2]~47_combout\ & ( (!\wrinit~input_o\) # ((!\control|WideOr2~combout\) # ((!\control|WideOr0~combout\) # (!\control|WideOr1~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wrinit~input_o\,
	datab => \control|ALT_INV_WideOr2~combout\,
	datac => \control|ALT_INV_WideOr0~combout\,
	datad => \control|ALT_INV_WideOr1~combout\,
	datae => \datos|ALT_INV_Decoder2~6_combout\,
	dataf => \datos|ALT_INV_R[1][2]~47_combout\,
	combout => \datos|R[1][2]~48_combout\);

-- Location: LABCELL_X12_Y2_N0
\datos|R[1][2]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[1][2]~49_combout\ = ( \datos|R[1][2]~46_combout\ & ( !\datos|R[1][2]~48_combout\ ) ) # ( !\datos|R[1][2]~46_combout\ & ( !\datos|R[1][2]~48_combout\ & ( ((\datos|R~98_combout\ & (\datos|R~2_combout\ & !\datos|LessThan0~0_combout\))) # 
-- (\datos|R~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~98_combout\,
	datab => \datos|ALT_INV_R~2_combout\,
	datac => \datos|ALT_INV_LessThan0~0_combout\,
	datad => \datos|ALT_INV_R~5_combout\,
	datae => \datos|ALT_INV_R[1][2]~46_combout\,
	dataf => \datos|ALT_INV_R[1][2]~48_combout\,
	combout => \datos|R[1][2]~49_combout\);

-- Location: FF_X10_Y3_N40
\datos|R[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~45_combout\,
	ena => \datos|R[1][2]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[1][0]~q\);

-- Location: MLABCELL_X8_Y2_N36
\datos|R~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~38_combout\ = ( \datos|R8\(0) & ( ((!\control|ci[2]~DUPLICATE_q\ & (\datos|Mux6~1_combout\)) # (\control|ci[2]~DUPLICATE_q\ & ((\datos|Mux6~0_combout\)))) # (\datos|Decoder2~5_combout\) ) ) # ( !\datos|R8\(0) & ( (!\datos|Decoder2~5_combout\ & 
-- ((!\control|ci[2]~DUPLICATE_q\ & (\datos|Mux6~1_combout\)) # (\control|ci[2]~DUPLICATE_q\ & ((\datos|Mux6~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000000001010011111111110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux6~1_combout\,
	datab => \datos|ALT_INV_Mux6~0_combout\,
	datac => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datad => \datos|ALT_INV_Decoder2~5_combout\,
	dataf => \datos|ALT_INV_R8\(0),
	combout => \datos|R~38_combout\);

-- Location: LABCELL_X10_Y3_N33
\datos|R~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~39_combout\ = ( \datain[0]~input_o\ & ( \datos|R~38_combout\ ) ) # ( !\datain[0]~input_o\ & ( \datos|R~38_combout\ & ( (!\control|WideOr2~combout\) # ((!\wrinit~input_o\) # ((!\control|WideOr1~combout\) # (!\control|WideOr0~combout\))) ) ) ) # ( 
-- \datain[0]~input_o\ & ( !\datos|R~38_combout\ & ( (\control|WideOr2~combout\ & (\wrinit~input_o\ & (\control|WideOr1~combout\ & \control|WideOr0~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \control|ALT_INV_WideOr0~combout\,
	datae => \ALT_INV_datain[0]~input_o\,
	dataf => \datos|ALT_INV_R~38_combout\,
	combout => \datos|R~39_combout\);

-- Location: FF_X10_Y3_N34
\datos|R[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~39_combout\,
	ena => \datos|R[3][2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[3][0]~q\);

-- Location: MLABCELL_X8_Y2_N0
\datos|R~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~26_combout\ = ( \datos|Mux6~1_combout\ & ( (!\datos|Decoder2~3_combout\ & (((!\control|ci[2]~DUPLICATE_q\)) # (\datos|Mux6~0_combout\))) # (\datos|Decoder2~3_combout\ & (((\datos|R8\(0))))) ) ) # ( !\datos|Mux6~1_combout\ & ( 
-- (!\datos|Decoder2~3_combout\ & (\datos|Mux6~0_combout\ & ((\control|ci[2]~DUPLICATE_q\)))) # (\datos|Decoder2~3_combout\ & (((\datos|R8\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010011000000110101001111110011010100111111001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux6~0_combout\,
	datab => \datos|ALT_INV_R8\(0),
	datac => \datos|ALT_INV_Decoder2~3_combout\,
	datad => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	dataf => \datos|ALT_INV_Mux6~1_combout\,
	combout => \datos|R~26_combout\);

-- Location: LABCELL_X11_Y2_N39
\datos|R~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~27_combout\ = ( \control|WideOr0~combout\ & ( \control|WideOr1~combout\ & ( (!\wrinit~input_o\ & (\datos|R~26_combout\)) # (\wrinit~input_o\ & ((!\control|WideOr2~combout\ & (\datos|R~26_combout\)) # (\control|WideOr2~combout\ & 
-- ((\datain[0]~input_o\))))) ) ) ) # ( !\control|WideOr0~combout\ & ( \control|WideOr1~combout\ & ( \datos|R~26_combout\ ) ) ) # ( \control|WideOr0~combout\ & ( !\control|WideOr1~combout\ & ( \datos|R~26_combout\ ) ) ) # ( !\control|WideOr0~combout\ & ( 
-- !\control|WideOr1~combout\ & ( \datos|R~26_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~26_combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \ALT_INV_datain[0]~input_o\,
	datad => \control|ALT_INV_WideOr2~combout\,
	datae => \control|ALT_INV_WideOr0~combout\,
	dataf => \control|ALT_INV_WideOr1~combout\,
	combout => \datos|R~27_combout\);

-- Location: FF_X11_Y2_N40
\datos|R[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~27_combout\,
	ena => \datos|R[2][2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[2][0]~q\);

-- Location: LABCELL_X13_Y3_N0
\datos|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux6~1_combout\ = ( \control|ci\(1) & ( \control|ci[0]~DUPLICATE_q\ & ( \datos|R[3][0]~q\ ) ) ) # ( !\control|ci\(1) & ( \control|ci[0]~DUPLICATE_q\ & ( \datos|R[1][0]~q\ ) ) ) # ( \control|ci\(1) & ( !\control|ci[0]~DUPLICATE_q\ & ( 
-- \datos|R[2][0]~q\ ) ) ) # ( !\control|ci\(1) & ( !\control|ci[0]~DUPLICATE_q\ & ( \datos|R[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[0][0]~q\,
	datab => \datos|ALT_INV_R[1][0]~q\,
	datac => \datos|ALT_INV_R[3][0]~q\,
	datad => \datos|ALT_INV_R[2][0]~q\,
	datae => \control|ALT_INV_ci\(1),
	dataf => \control|ALT_INV_ci[0]~DUPLICATE_q\,
	combout => \datos|Mux6~1_combout\);

-- Location: MLABCELL_X8_Y2_N18
\datos|R~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~9_combout\ = ( \datos|Mux6~1_combout\ & ( (!\datos|Decoder2~1_combout\ & (((!\control|ci[2]~DUPLICATE_q\)) # (\datos|Mux6~0_combout\))) # (\datos|Decoder2~1_combout\ & (((\datos|R8\(0))))) ) ) # ( !\datos|Mux6~1_combout\ & ( 
-- (!\datos|Decoder2~1_combout\ & (\datos|Mux6~0_combout\ & ((\control|ci[2]~DUPLICATE_q\)))) # (\datos|Decoder2~1_combout\ & (((\datos|R8\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110011000001010011001111110101001100111111010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux6~0_combout\,
	datab => \datos|ALT_INV_R8\(0),
	datac => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datad => \datos|ALT_INV_Decoder2~1_combout\,
	dataf => \datos|ALT_INV_Mux6~1_combout\,
	combout => \datos|R~9_combout\);

-- Location: LABCELL_X9_Y2_N9
\datos|R~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~10_combout\ = ( \datain[0]~input_o\ & ( \datos|R~9_combout\ ) ) # ( !\datain[0]~input_o\ & ( \datos|R~9_combout\ & ( (!\control|WideOr2~combout\) # ((!\control|WideOr0~combout\) # ((!\control|WideOr1~combout\) # (!\wrinit~input_o\))) ) ) ) # ( 
-- \datain[0]~input_o\ & ( !\datos|R~9_combout\ & ( (\control|WideOr2~combout\ & (\control|WideOr0~combout\ & (\control|WideOr1~combout\ & \wrinit~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \control|ALT_INV_WideOr0~combout\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \ALT_INV_wrinit~input_o\,
	datae => \ALT_INV_datain[0]~input_o\,
	dataf => \datos|ALT_INV_R~9_combout\,
	combout => \datos|R~10_combout\);

-- Location: FF_X9_Y2_N11
\datos|R[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~10_combout\,
	ena => \datos|R[5][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[5][0]~q\);

-- Location: MLABCELL_X8_Y2_N54
\datos|R~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~15_combout\ = ( \datos|Mux6~0_combout\ & ( (!\control|Equal1~0_combout\ & (((\datos|Mux6~1_combout\)) # (\control|ci[2]~DUPLICATE_q\))) # (\control|Equal1~0_combout\ & (((\datos|R8\(0))))) ) ) # ( !\datos|Mux6~0_combout\ & ( 
-- (!\control|Equal1~0_combout\ & (!\control|ci[2]~DUPLICATE_q\ & (\datos|Mux6~1_combout\))) # (\control|Equal1~0_combout\ & (((\datos|R8\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datab => \control|ALT_INV_Equal1~0_combout\,
	datac => \datos|ALT_INV_Mux6~1_combout\,
	datad => \datos|ALT_INV_R8\(0),
	dataf => \datos|ALT_INV_Mux6~0_combout\,
	combout => \datos|R~15_combout\);

-- Location: LABCELL_X9_Y2_N45
\datos|R~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~16_combout\ = ( \datain[0]~input_o\ & ( \datos|R~15_combout\ ) ) # ( !\datain[0]~input_o\ & ( \datos|R~15_combout\ & ( (!\control|WideOr2~combout\) # ((!\control|WideOr0~combout\) # ((!\control|WideOr1~combout\) # (!\wrinit~input_o\))) ) ) ) # ( 
-- \datain[0]~input_o\ & ( !\datos|R~15_combout\ & ( (\control|WideOr2~combout\ & (\control|WideOr0~combout\ & (\control|WideOr1~combout\ & \wrinit~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \control|ALT_INV_WideOr0~combout\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \ALT_INV_wrinit~input_o\,
	datae => \ALT_INV_datain[0]~input_o\,
	dataf => \datos|ALT_INV_R~15_combout\,
	combout => \datos|R~16_combout\);

-- Location: FF_X9_Y2_N46
\datos|R[6][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~16_combout\,
	ena => \datos|R[6][2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[6][0]~DUPLICATE_q\);

-- Location: MLABCELL_X8_Y2_N21
\datos|R~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~21_combout\ = ( \datos|Mux6~1_combout\ & ( (!\datos|Decoder2~2_combout\ & (((!\control|ci[2]~DUPLICATE_q\)) # (\datos|Mux6~0_combout\))) # (\datos|Decoder2~2_combout\ & (((\datos|R8\(0))))) ) ) # ( !\datos|Mux6~1_combout\ & ( 
-- (!\datos|Decoder2~2_combout\ & (\datos|Mux6~0_combout\ & ((\control|ci[2]~DUPLICATE_q\)))) # (\datos|Decoder2~2_combout\ & (((\datos|R8\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010011000000110101001111110011010100111111001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux6~0_combout\,
	datab => \datos|ALT_INV_R8\(0),
	datac => \datos|ALT_INV_Decoder2~2_combout\,
	datad => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	dataf => \datos|ALT_INV_Mux6~1_combout\,
	combout => \datos|R~21_combout\);

-- Location: LABCELL_X11_Y2_N3
\datos|R~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~22_combout\ = ( \datain[0]~input_o\ & ( \datos|R~21_combout\ ) ) # ( !\datain[0]~input_o\ & ( \datos|R~21_combout\ & ( (!\control|WideOr2~combout\) # ((!\wrinit~input_o\) # ((!\control|WideOr1~combout\) # (!\control|WideOr0~combout\))) ) ) ) # ( 
-- \datain[0]~input_o\ & ( !\datos|R~21_combout\ & ( (\control|WideOr2~combout\ & (\wrinit~input_o\ & (\control|WideOr1~combout\ & \control|WideOr0~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \control|ALT_INV_WideOr0~combout\,
	datae => \ALT_INV_datain[0]~input_o\,
	dataf => \datos|ALT_INV_R~21_combout\,
	combout => \datos|R~22_combout\);

-- Location: FF_X11_Y2_N4
\datos|R[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~22_combout\,
	ena => \datos|R[7][3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[7][0]~q\);

-- Location: LABCELL_X9_Y2_N12
\datos|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux3~0_combout\ = ( \control|cj\(0) & ( \control|cj[1]~DUPLICATE_q\ & ( \datos|R[7][0]~q\ ) ) ) # ( !\control|cj\(0) & ( \control|cj[1]~DUPLICATE_q\ & ( \datos|R[6][0]~DUPLICATE_q\ ) ) ) # ( \control|cj\(0) & ( !\control|cj[1]~DUPLICATE_q\ & ( 
-- \datos|R[5][0]~q\ ) ) ) # ( !\control|cj\(0) & ( !\control|cj[1]~DUPLICATE_q\ & ( \datos|R[4][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[4][0]~q\,
	datab => \datos|ALT_INV_R[5][0]~q\,
	datac => \datos|ALT_INV_R[6][0]~DUPLICATE_q\,
	datad => \datos|ALT_INV_R[7][0]~q\,
	datae => \control|ALT_INV_cj\(0),
	dataf => \control|ALT_INV_cj[1]~DUPLICATE_q\,
	combout => \datos|Mux3~0_combout\);

-- Location: LABCELL_X13_Y3_N3
\datos|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux3~1_combout\ = ( \control|cj[1]~DUPLICATE_q\ & ( \control|cj\(0) & ( \datos|R[3][0]~q\ ) ) ) # ( !\control|cj[1]~DUPLICATE_q\ & ( \control|cj\(0) & ( \datos|R[1][0]~q\ ) ) ) # ( \control|cj[1]~DUPLICATE_q\ & ( !\control|cj\(0) & ( 
-- \datos|R[2][0]~q\ ) ) ) # ( !\control|cj[1]~DUPLICATE_q\ & ( !\control|cj\(0) & ( \datos|R[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[0][0]~q\,
	datab => \datos|ALT_INV_R[1][0]~q\,
	datac => \datos|ALT_INV_R[2][0]~q\,
	datad => \datos|ALT_INV_R[3][0]~q\,
	datae => \control|ALT_INV_cj[1]~DUPLICATE_q\,
	dataf => \control|ALT_INV_cj\(0),
	combout => \datos|Mux3~1_combout\);

-- Location: MLABCELL_X8_Y2_N9
\datos|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux3~2_combout\ = ( \control|cj[2]~DUPLICATE_q\ & ( \datos|Mux3~0_combout\ ) ) # ( !\control|cj[2]~DUPLICATE_q\ & ( \datos|Mux3~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \datos|ALT_INV_Mux3~0_combout\,
	datad => \datos|ALT_INV_Mux3~1_combout\,
	dataf => \control|ALT_INV_cj[2]~DUPLICATE_q\,
	combout => \datos|Mux3~2_combout\);

-- Location: FF_X8_Y2_N11
\datos|R8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|Mux3~2_combout\,
	ena => \datos|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R8\(0));

-- Location: MLABCELL_X8_Y2_N15
\datos|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~0_combout\ = ( \datos|Mux6~1_combout\ & ( (!\datos|Decoder2~0_combout\ & (((!\control|ci[2]~DUPLICATE_q\) # (\datos|Mux6~0_combout\)))) # (\datos|Decoder2~0_combout\ & (\datos|R8\(0))) ) ) # ( !\datos|Mux6~1_combout\ & ( 
-- (!\datos|Decoder2~0_combout\ & (((\datos|Mux6~0_combout\ & \control|ci[2]~DUPLICATE_q\)))) # (\datos|Decoder2~0_combout\ & (\datos|R8\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011011000100010001101110111011000110111011101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~0_combout\,
	datab => \datos|ALT_INV_R8\(0),
	datac => \datos|ALT_INV_Mux6~0_combout\,
	datad => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	dataf => \datos|ALT_INV_Mux6~1_combout\,
	combout => \datos|R~0_combout\);

-- Location: LABCELL_X9_Y2_N3
\datos|R~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~1_combout\ = ( \datain[0]~input_o\ & ( \datos|R~0_combout\ ) ) # ( !\datain[0]~input_o\ & ( \datos|R~0_combout\ & ( (!\control|WideOr2~combout\) # ((!\control|WideOr0~combout\) # ((!\control|WideOr1~combout\) # (!\wrinit~input_o\))) ) ) ) # ( 
-- \datain[0]~input_o\ & ( !\datos|R~0_combout\ & ( (\control|WideOr2~combout\ & (\control|WideOr0~combout\ & (\control|WideOr1~combout\ & \wrinit~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \control|ALT_INV_WideOr0~combout\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \ALT_INV_wrinit~input_o\,
	datae => \ALT_INV_datain[0]~input_o\,
	dataf => \datos|ALT_INV_R~0_combout\,
	combout => \datos|R~1_combout\);

-- Location: FF_X9_Y2_N5
\datos|R[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~1_combout\,
	ena => \datos|R[4][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[4][0]~q\);

-- Location: LABCELL_X9_Y2_N15
\datos|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux6~0_combout\ = ( \control|ci[0]~DUPLICATE_q\ & ( \control|ci\(1) & ( \datos|R[7][0]~q\ ) ) ) # ( !\control|ci[0]~DUPLICATE_q\ & ( \control|ci\(1) & ( \datos|R[6][0]~DUPLICATE_q\ ) ) ) # ( \control|ci[0]~DUPLICATE_q\ & ( !\control|ci\(1) & ( 
-- \datos|R[5][0]~q\ ) ) ) # ( !\control|ci[0]~DUPLICATE_q\ & ( !\control|ci\(1) & ( \datos|R[4][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[4][0]~q\,
	datab => \datos|ALT_INV_R[5][0]~q\,
	datac => \datos|ALT_INV_R[7][0]~q\,
	datad => \datos|ALT_INV_R[6][0]~DUPLICATE_q\,
	datae => \control|ALT_INV_ci[0]~DUPLICATE_q\,
	dataf => \control|ALT_INV_ci\(1),
	combout => \datos|Mux6~0_combout\);

-- Location: MLABCELL_X8_Y2_N3
\datos|R~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~32_combout\ = ( \datos|Mux6~1_combout\ & ( (!\datos|Decoder2~4_combout\ & (((!\control|ci[2]~DUPLICATE_q\)) # (\datos|Mux6~0_combout\))) # (\datos|Decoder2~4_combout\ & (((\datos|R8\(0))))) ) ) # ( !\datos|Mux6~1_combout\ & ( 
-- (!\datos|Decoder2~4_combout\ & (\datos|Mux6~0_combout\ & ((\control|ci[2]~DUPLICATE_q\)))) # (\datos|Decoder2~4_combout\ & (((\datos|R8\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010011000000110101001111110011010100111111001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux6~0_combout\,
	datab => \datos|ALT_INV_R8\(0),
	datac => \datos|ALT_INV_Decoder2~4_combout\,
	datad => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	dataf => \datos|ALT_INV_Mux6~1_combout\,
	combout => \datos|R~32_combout\);

-- Location: LABCELL_X11_Y2_N15
\datos|R~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~33_combout\ = ( \datain[0]~input_o\ & ( \datos|R~32_combout\ ) ) # ( !\datain[0]~input_o\ & ( \datos|R~32_combout\ & ( (!\control|WideOr2~combout\) # ((!\wrinit~input_o\) # ((!\control|WideOr1~combout\) # (!\control|WideOr0~combout\))) ) ) ) # ( 
-- \datain[0]~input_o\ & ( !\datos|R~32_combout\ & ( (\control|WideOr2~combout\ & (\wrinit~input_o\ & (\control|WideOr1~combout\ & \control|WideOr0~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_WideOr2~combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_WideOr1~combout\,
	datad => \control|ALT_INV_WideOr0~combout\,
	datae => \ALT_INV_datain[0]~input_o\,
	dataf => \datos|ALT_INV_R~32_combout\,
	combout => \datos|R~33_combout\);

-- Location: FF_X11_Y2_N16
\datos|R[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~33_combout\,
	ena => \datos|R[0][2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[0][0]~q\);

-- Location: LABCELL_X13_Y3_N30
\datos|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux11~1_combout\ = ( \datos|R[3][0]~q\ & ( \radd[0]~input_o\ & ( (\radd[1]~input_o\) # (\datos|R[1][0]~q\) ) ) ) # ( !\datos|R[3][0]~q\ & ( \radd[0]~input_o\ & ( (\datos|R[1][0]~q\ & !\radd[1]~input_o\) ) ) ) # ( \datos|R[3][0]~q\ & ( 
-- !\radd[0]~input_o\ & ( (!\radd[1]~input_o\ & (\datos|R[0][0]~q\)) # (\radd[1]~input_o\ & ((\datos|R[2][0]~q\))) ) ) ) # ( !\datos|R[3][0]~q\ & ( !\radd[0]~input_o\ & ( (!\radd[1]~input_o\ & (\datos|R[0][0]~q\)) # (\radd[1]~input_o\ & 
-- ((\datos|R[2][0]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[0][0]~q\,
	datab => \datos|ALT_INV_R[1][0]~q\,
	datac => \ALT_INV_radd[1]~input_o\,
	datad => \datos|ALT_INV_R[2][0]~q\,
	datae => \datos|ALT_INV_R[3][0]~q\,
	dataf => \ALT_INV_radd[0]~input_o\,
	combout => \datos|Mux11~1_combout\);

-- Location: FF_X9_Y2_N47
\datos|R[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~16_combout\,
	ena => \datos|R[6][2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[6][0]~q\);

-- Location: LABCELL_X9_Y2_N18
\datos|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux11~0_combout\ = ( \datos|R[6][0]~q\ & ( \radd[0]~input_o\ & ( (!\radd[1]~input_o\ & (\datos|R[5][0]~q\)) # (\radd[1]~input_o\ & ((\datos|R[7][0]~q\))) ) ) ) # ( !\datos|R[6][0]~q\ & ( \radd[0]~input_o\ & ( (!\radd[1]~input_o\ & 
-- (\datos|R[5][0]~q\)) # (\radd[1]~input_o\ & ((\datos|R[7][0]~q\))) ) ) ) # ( \datos|R[6][0]~q\ & ( !\radd[0]~input_o\ & ( (\datos|R[4][0]~q\) # (\radd[1]~input_o\) ) ) ) # ( !\datos|R[6][0]~q\ & ( !\radd[0]~input_o\ & ( (!\radd[1]~input_o\ & 
-- \datos|R[4][0]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_radd[1]~input_o\,
	datab => \datos|ALT_INV_R[5][0]~q\,
	datac => \datos|ALT_INV_R[4][0]~q\,
	datad => \datos|ALT_INV_R[7][0]~q\,
	datae => \datos|ALT_INV_R[6][0]~q\,
	dataf => \ALT_INV_radd[0]~input_o\,
	combout => \datos|Mux11~0_combout\);

-- Location: LABCELL_X13_Y3_N9
\datos|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux11~2_combout\ = ( \datos|Mux11~0_combout\ & ( (\radd[2]~input_o\) # (\datos|Mux11~1_combout\) ) ) # ( !\datos|Mux11~0_combout\ & ( (\datos|Mux11~1_combout\ & !\radd[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Mux11~1_combout\,
	datac => \ALT_INV_radd[2]~input_o\,
	dataf => \datos|ALT_INV_Mux11~0_combout\,
	combout => \datos|Mux11~2_combout\);

-- Location: LABCELL_X12_Y2_N33
\datos|dataout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|dataout[0]~0_combout\ = ( !\control|WideOr0~combout\ & ( (\control|WideOr2~combout\ & !\control|WideOr1~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \control|ALT_INV_WideOr2~combout\,
	datad => \control|ALT_INV_WideOr1~combout\,
	dataf => \control|ALT_INV_WideOr0~combout\,
	combout => \datos|dataout[0]~0_combout\);

-- Location: DDIOOUTCELL_X52_Y0_N10
\datos|dataout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|Mux11~2_combout\,
	ena => \datos|dataout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|dataout\(0));

-- Location: LABCELL_X9_Y2_N54
\datos|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux10~0_combout\ = ( \radd[1]~input_o\ & ( \radd[0]~input_o\ & ( \datos|R[7][1]~q\ ) ) ) # ( !\radd[1]~input_o\ & ( \radd[0]~input_o\ & ( \datos|R[5][1]~q\ ) ) ) # ( \radd[1]~input_o\ & ( !\radd[0]~input_o\ & ( \datos|R[6][1]~q\ ) ) ) # ( 
-- !\radd[1]~input_o\ & ( !\radd[0]~input_o\ & ( \datos|R[4][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[7][1]~q\,
	datab => \datos|ALT_INV_R[6][1]~q\,
	datac => \datos|ALT_INV_R[4][1]~q\,
	datad => \datos|ALT_INV_R[5][1]~q\,
	datae => \ALT_INV_radd[1]~input_o\,
	dataf => \ALT_INV_radd[0]~input_o\,
	combout => \datos|Mux10~0_combout\);

-- Location: LABCELL_X13_Y3_N42
\datos|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux10~1_combout\ = ( \datos|R[0][1]~q\ & ( \radd[0]~input_o\ & ( (!\radd[1]~input_o\ & (\datos|R[1][1]~q\)) # (\radd[1]~input_o\ & ((\datos|R[3][1]~q\))) ) ) ) # ( !\datos|R[0][1]~q\ & ( \radd[0]~input_o\ & ( (!\radd[1]~input_o\ & 
-- (\datos|R[1][1]~q\)) # (\radd[1]~input_o\ & ((\datos|R[3][1]~q\))) ) ) ) # ( \datos|R[0][1]~q\ & ( !\radd[0]~input_o\ & ( (!\radd[1]~input_o\) # (\datos|R[2][1]~q\) ) ) ) # ( !\datos|R[0][1]~q\ & ( !\radd[0]~input_o\ & ( (\datos|R[2][1]~q\ & 
-- \radd[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[1][1]~q\,
	datab => \datos|ALT_INV_R[2][1]~q\,
	datac => \ALT_INV_radd[1]~input_o\,
	datad => \datos|ALT_INV_R[3][1]~q\,
	datae => \datos|ALT_INV_R[0][1]~q\,
	dataf => \ALT_INV_radd[0]~input_o\,
	combout => \datos|Mux10~1_combout\);

-- Location: LABCELL_X13_Y3_N21
\datos|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux10~2_combout\ = ( \datos|Mux10~1_combout\ & ( (!\radd[2]~input_o\) # (\datos|Mux10~0_combout\) ) ) # ( !\datos|Mux10~1_combout\ & ( (\radd[2]~input_o\ & \datos|Mux10~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_radd[2]~input_o\,
	datad => \datos|ALT_INV_Mux10~0_combout\,
	dataf => \datos|ALT_INV_Mux10~1_combout\,
	combout => \datos|Mux10~2_combout\);

-- Location: DDIOOUTCELL_X52_Y0_N27
\datos|dataout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|Mux10~2_combout\,
	ena => \datos|dataout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|dataout\(1));

-- Location: LABCELL_X13_Y2_N0
\datos|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux9~0_combout\ = ( \datos|R[4][2]~q\ & ( \radd[0]~input_o\ & ( (!\radd[1]~input_o\ & (\datos|R[5][2]~q\)) # (\radd[1]~input_o\ & ((\datos|R[7][2]~q\))) ) ) ) # ( !\datos|R[4][2]~q\ & ( \radd[0]~input_o\ & ( (!\radd[1]~input_o\ & 
-- (\datos|R[5][2]~q\)) # (\radd[1]~input_o\ & ((\datos|R[7][2]~q\))) ) ) ) # ( \datos|R[4][2]~q\ & ( !\radd[0]~input_o\ & ( (!\radd[1]~input_o\) # (\datos|R[6][2]~q\) ) ) ) # ( !\datos|R[4][2]~q\ & ( !\radd[0]~input_o\ & ( (\datos|R[6][2]~q\ & 
-- \radd[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[6][2]~q\,
	datab => \ALT_INV_radd[1]~input_o\,
	datac => \datos|ALT_INV_R[5][2]~q\,
	datad => \datos|ALT_INV_R[7][2]~q\,
	datae => \datos|ALT_INV_R[4][2]~q\,
	dataf => \ALT_INV_radd[0]~input_o\,
	combout => \datos|Mux9~0_combout\);

-- Location: LABCELL_X13_Y2_N6
\datos|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux9~1_combout\ = ( \radd[1]~input_o\ & ( \radd[0]~input_o\ & ( \datos|R[3][2]~q\ ) ) ) # ( !\radd[1]~input_o\ & ( \radd[0]~input_o\ & ( \datos|R[1][2]~q\ ) ) ) # ( \radd[1]~input_o\ & ( !\radd[0]~input_o\ & ( \datos|R[2][2]~q\ ) ) ) # ( 
-- !\radd[1]~input_o\ & ( !\radd[0]~input_o\ & ( \datos|R[0][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[0][2]~q\,
	datab => \datos|ALT_INV_R[1][2]~q\,
	datac => \datos|ALT_INV_R[2][2]~q\,
	datad => \datos|ALT_INV_R[3][2]~q\,
	datae => \ALT_INV_radd[1]~input_o\,
	dataf => \ALT_INV_radd[0]~input_o\,
	combout => \datos|Mux9~1_combout\);

-- Location: LABCELL_X13_Y2_N15
\datos|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux9~2_combout\ = ( \datos|Mux9~1_combout\ & ( (!\radd[2]~input_o\) # (\datos|Mux9~0_combout\) ) ) # ( !\datos|Mux9~1_combout\ & ( (\radd[2]~input_o\ & \datos|Mux9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_radd[2]~input_o\,
	datad => \datos|ALT_INV_Mux9~0_combout\,
	dataf => \datos|ALT_INV_Mux9~1_combout\,
	combout => \datos|Mux9~2_combout\);

-- Location: DDIOOUTCELL_X60_Y0_N10
\datos|dataout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|Mux9~2_combout\,
	ena => \datos|dataout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|dataout\(2));

-- Location: LABCELL_X9_Y2_N36
\datos|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux8~0_combout\ = ( \radd[0]~input_o\ & ( \radd[1]~input_o\ & ( \datos|R[7][3]~q\ ) ) ) # ( !\radd[0]~input_o\ & ( \radd[1]~input_o\ & ( \datos|R[6][3]~q\ ) ) ) # ( \radd[0]~input_o\ & ( !\radd[1]~input_o\ & ( \datos|R[5][3]~q\ ) ) ) # ( 
-- !\radd[0]~input_o\ & ( !\radd[1]~input_o\ & ( \datos|R[4][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[6][3]~q\,
	datab => \datos|ALT_INV_R[5][3]~q\,
	datac => \datos|ALT_INV_R[7][3]~q\,
	datad => \datos|ALT_INV_R[4][3]~q\,
	datae => \ALT_INV_radd[0]~input_o\,
	dataf => \ALT_INV_radd[1]~input_o\,
	combout => \datos|Mux8~0_combout\);

-- Location: LABCELL_X10_Y3_N12
\datos|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux8~1_combout\ = ( \radd[0]~input_o\ & ( \radd[1]~input_o\ & ( \datos|R[3][3]~q\ ) ) ) # ( !\radd[0]~input_o\ & ( \radd[1]~input_o\ & ( \datos|R[2][3]~q\ ) ) ) # ( \radd[0]~input_o\ & ( !\radd[1]~input_o\ & ( \datos|R[1][3]~q\ ) ) ) # ( 
-- !\radd[0]~input_o\ & ( !\radd[1]~input_o\ & ( \datos|R[0][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[2][3]~q\,
	datab => \datos|ALT_INV_R[3][3]~q\,
	datac => \datos|ALT_INV_R[0][3]~q\,
	datad => \datos|ALT_INV_R[1][3]~q\,
	datae => \ALT_INV_radd[0]~input_o\,
	dataf => \ALT_INV_radd[1]~input_o\,
	combout => \datos|Mux8~1_combout\);

-- Location: LABCELL_X12_Y1_N30
\datos|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux8~2_combout\ = ( \radd[2]~input_o\ & ( \datos|Mux8~1_combout\ & ( \datos|Mux8~0_combout\ ) ) ) # ( !\radd[2]~input_o\ & ( \datos|Mux8~1_combout\ ) ) # ( \radd[2]~input_o\ & ( !\datos|Mux8~1_combout\ & ( \datos|Mux8~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \datos|ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_radd[2]~input_o\,
	dataf => \datos|ALT_INV_Mux8~1_combout\,
	combout => \datos|Mux8~2_combout\);

-- Location: DDIOOUTCELL_X80_Y0_N10
\datos|dataout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|Mux8~2_combout\,
	ena => \datos|dataout[0]~0_combout\,
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
	d => \control|Selector12~0_combout\,
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


