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

-- DATE "10/15/2021 11:45:52"

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
-- resetn	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datain[0]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wrinit	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datain[1]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datain[2]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datain[3]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL \radd[2]~input_o\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \control|state.S4~DUPLICATE_q\ : std_logic;
SIGNAL \go~input_o\ : std_logic;
SIGNAL \control|state.S5~q\ : std_logic;
SIGNAL \control|state.S0~0_combout\ : std_logic;
SIGNAL \control|state.S0~q\ : std_logic;
SIGNAL \control|Selector6~0_combout\ : std_logic;
SIGNAL \control|state.S1~q\ : std_logic;
SIGNAL \control|ci[1]~DUPLICATE_q\ : std_logic;
SIGNAL \control|Selector1~0_combout\ : std_logic;
SIGNAL \control|Selector0~0_combout\ : std_logic;
SIGNAL \control|ci[2]~DUPLICATE_q\ : std_logic;
SIGNAL \control|Selector7~0_combout\ : std_logic;
SIGNAL \control|state.S2~DUPLICATE_q\ : std_logic;
SIGNAL \control|Selector5~0_combout\ : std_logic;
SIGNAL \control|state.S2~q\ : std_logic;
SIGNAL \control|Selector4~0_combout\ : std_logic;
SIGNAL \control|Selector3~0_combout\ : std_logic;
SIGNAL \control|Selector3~1_combout\ : std_logic;
SIGNAL \control|Selector3~2_combout\ : std_logic;
SIGNAL \control|Selector8~0_combout\ : std_logic;
SIGNAL \control|state.S4~q\ : std_logic;
SIGNAL \control|next_state.S5~0_combout\ : std_logic;
SIGNAL \control|state.S5~DUPLICATE_q\ : std_logic;
SIGNAL \control|Selector2~0_combout\ : std_logic;
SIGNAL \datos|Decoder2~7_combout\ : std_logic;
SIGNAL \wrinit~input_o\ : std_logic;
SIGNAL \control|state.S1~DUPLICATE_q\ : std_logic;
SIGNAL \datos|process_0~0_combout\ : std_logic;
SIGNAL \datain[0]~input_o\ : std_logic;
SIGNAL \datos|Decoder2~3_combout\ : std_logic;
SIGNAL \datos|R~16_combout\ : std_logic;
SIGNAL \radd[1]~input_o\ : std_logic;
SIGNAL \datain[1]~input_o\ : std_logic;
SIGNAL \datos|R~41_combout\ : std_logic;
SIGNAL \datos|R[7][1]~q\ : std_logic;
SIGNAL \datos|Decoder2~1_combout\ : std_logic;
SIGNAL \datos|R~39_combout\ : std_logic;
SIGNAL \datos|R~2_combout\ : std_logic;
SIGNAL \datos|R~3_combout\ : std_logic;
SIGNAL \datos|Decoder2~6_combout\ : std_logic;
SIGNAL \datain[3]~input_o\ : std_logic;
SIGNAL \datos|Decoder2~5_combout\ : std_logic;
SIGNAL \datos|R~59_combout\ : std_logic;
SIGNAL \datos|R[2][3]~21_combout\ : std_logic;
SIGNAL \radd[0]~input_o\ : std_logic;
SIGNAL \datos|Mux11~3_combout\ : std_logic;
SIGNAL \datos|R[0][1]~26_combout\ : std_logic;
SIGNAL \datos|R[0][1]~27_combout\ : std_logic;
SIGNAL \datos|R[0][1]~28_combout\ : std_logic;
SIGNAL \datos|R[0][3]~q\ : std_logic;
SIGNAL \datos|R~61_combout\ : std_logic;
SIGNAL \datos|R[3][0]~30_combout\ : std_logic;
SIGNAL \datos|R[1][0]~35_combout\ : std_logic;
SIGNAL \datos|R[1][0]~36_combout\ : std_logic;
SIGNAL \datos|R[1][0]~37_combout\ : std_logic;
SIGNAL \datos|R[1][3]~DUPLICATE_q\ : std_logic;
SIGNAL \datos|Decoder2~4_combout\ : std_logic;
SIGNAL \datos|R~58_combout\ : std_logic;
SIGNAL \datos|dataout[0]~0_combout\ : std_logic;
SIGNAL \datos|R[2][3]~22_combout\ : std_logic;
SIGNAL \datos|R[2][3]~23_combout\ : std_logic;
SIGNAL \datos|R[2][3]~24_combout\ : std_logic;
SIGNAL \datos|R[2][3]~DUPLICATE_q\ : std_logic;
SIGNAL \datos|Mux7~1_combout\ : std_logic;
SIGNAL \datos|R~57_combout\ : std_logic;
SIGNAL \datos|R[7][3]~q\ : std_logic;
SIGNAL \datos|Decoder2~0_combout\ : std_logic;
SIGNAL \datos|R~54_combout\ : std_logic;
SIGNAL \datos|R[4][0]~1_combout\ : std_logic;
SIGNAL \datos|R[4][0]~4_combout\ : std_logic;
SIGNAL \datos|R[4][0]~5_combout\ : std_logic;
SIGNAL \datos|R[4][0]~6_combout\ : std_logic;
SIGNAL \datos|R[4][3]~q\ : std_logic;
SIGNAL \datos|Decoder2~2_combout\ : std_logic;
SIGNAL \datos|R~56_combout\ : std_logic;
SIGNAL \datos|R[6][2]~13_combout\ : std_logic;
SIGNAL \datos|R[6][2]~14_combout\ : std_logic;
SIGNAL \datos|R[6][2]~15_combout\ : std_logic;
SIGNAL \datos|R[6][3]~q\ : std_logic;
SIGNAL \datos|R~55_combout\ : std_logic;
SIGNAL \datos|R[5][3]~q\ : std_logic;
SIGNAL \datos|Mux7~0_combout\ : std_logic;
SIGNAL \datos|Mux7~2_combout\ : std_logic;
SIGNAL \datos|R~60_combout\ : std_logic;
SIGNAL \datos|R[3][0]~31_combout\ : std_logic;
SIGNAL \datos|R[3][0]~32_combout\ : std_logic;
SIGNAL \datos|R[3][0]~33_combout\ : std_logic;
SIGNAL \datos|R[3][3]~q\ : std_logic;
SIGNAL \datos|Mux0~1_combout\ : std_logic;
SIGNAL \datos|Mux0~0_combout\ : std_logic;
SIGNAL \datos|Mux0~2_combout\ : std_logic;
SIGNAL \datain[2]~input_o\ : std_logic;
SIGNAL \datos|R~47_combout\ : std_logic;
SIGNAL \datos|R[5][2]~q\ : std_logic;
SIGNAL \datos|R~49_combout\ : std_logic;
SIGNAL \datos|R[7][2]~q\ : std_logic;
SIGNAL \datos|R~48_combout\ : std_logic;
SIGNAL \datos|R[6][2]~q\ : std_logic;
SIGNAL \datos|R~46_combout\ : std_logic;
SIGNAL \datos|R[4][2]~DUPLICATE_q\ : std_logic;
SIGNAL \datos|Mux4~0_combout\ : std_logic;
SIGNAL \datos|R~52_combout\ : std_logic;
SIGNAL \datos|R[3][2]~q\ : std_logic;
SIGNAL \datos|R~50_combout\ : std_logic;
SIGNAL \datos|R[2][2]~q\ : std_logic;
SIGNAL \datos|R~51_combout\ : std_logic;
SIGNAL \datos|R[0][2]~q\ : std_logic;
SIGNAL \datos|Mux4~1_combout\ : std_logic;
SIGNAL \datos|Mux4~2_combout\ : std_logic;
SIGNAL \datos|R~53_combout\ : std_logic;
SIGNAL \datos|R[1][2]~q\ : std_logic;
SIGNAL \datos|Mux1~1_combout\ : std_logic;
SIGNAL \datos|R[4][2]~q\ : std_logic;
SIGNAL \datos|Mux1~0_combout\ : std_logic;
SIGNAL \datos|Mux1~2_combout\ : std_logic;
SIGNAL \datos|LessThan0~3_combout\ : std_logic;
SIGNAL \datos|R[5][0]~8_combout\ : std_logic;
SIGNAL \datos|R[5][0]~9_combout\ : std_logic;
SIGNAL \datos|R[5][0]~10_combout\ : std_logic;
SIGNAL \datos|R[5][0]~11_combout\ : std_logic;
SIGNAL \datos|R[5][1]~q\ : std_logic;
SIGNAL \datos|R~38_combout\ : std_logic;
SIGNAL \datos|R[4][1]~q\ : std_logic;
SIGNAL \datos|R~40_combout\ : std_logic;
SIGNAL \datos|R[6][1]~q\ : std_logic;
SIGNAL \datos|Mux2~0_combout\ : std_logic;
SIGNAL \datos|R~43_combout\ : std_logic;
SIGNAL \datos|R[0][1]~q\ : std_logic;
SIGNAL \datos|R~45_combout\ : std_logic;
SIGNAL \datos|R[1][1]~q\ : std_logic;
SIGNAL \datos|R~44_combout\ : std_logic;
SIGNAL \datos|R[3][1]~q\ : std_logic;
SIGNAL \datos|Mux2~1_combout\ : std_logic;
SIGNAL \datos|Mux2~2_combout\ : std_logic;
SIGNAL \datos|R~42_combout\ : std_logic;
SIGNAL \datos|R[2][1]~q\ : std_logic;
SIGNAL \datos|Mux5~1_combout\ : std_logic;
SIGNAL \datos|Mux5~0_combout\ : std_logic;
SIGNAL \datos|Mux5~2_combout\ : std_logic;
SIGNAL \datos|R~20_combout\ : std_logic;
SIGNAL \datos|R[2][0]~q\ : std_logic;
SIGNAL \datos|R~29_combout\ : std_logic;
SIGNAL \datos|R[3][0]~q\ : std_logic;
SIGNAL \datos|R~25_combout\ : std_logic;
SIGNAL \datos|R[0][0]~q\ : std_logic;
SIGNAL \datos|Mux3~1_combout\ : std_logic;
SIGNAL \datos|Mux6~1_combout\ : std_logic;
SIGNAL \datos|LessThan0~1_combout\ : std_logic;
SIGNAL \datos|LessThan0~0_combout\ : std_logic;
SIGNAL \datos|LessThan0~2_combout\ : std_logic;
SIGNAL \datos|R[7][0]~17_combout\ : std_logic;
SIGNAL \datos|R[7][0]~18_combout\ : std_logic;
SIGNAL \datos|R[7][0]~19_combout\ : std_logic;
SIGNAL \datos|R[7][0]~q\ : std_logic;
SIGNAL \datos|R~7_combout\ : std_logic;
SIGNAL \datos|R[5][0]~q\ : std_logic;
SIGNAL \datos|R~12_combout\ : std_logic;
SIGNAL \datos|R[6][0]~q\ : std_logic;
SIGNAL \datos|Mux6~0_combout\ : std_logic;
SIGNAL \datos|Mux6~2_combout\ : std_logic;
SIGNAL \datos|R~0_combout\ : std_logic;
SIGNAL \datos|R[4][0]~q\ : std_logic;
SIGNAL \datos|Mux3~0_combout\ : std_logic;
SIGNAL \datos|Mux3~2_combout\ : std_logic;
SIGNAL \datos|R~34_combout\ : std_logic;
SIGNAL \datos|R[1][0]~q\ : std_logic;
SIGNAL \datos|R[3][0]~DUPLICATE_q\ : std_logic;
SIGNAL \datos|Mux11~1_combout\ : std_logic;
SIGNAL \datos|Mux11~0_combout\ : std_logic;
SIGNAL \datos|Mux11~2_combout\ : std_logic;
SIGNAL \control|state.S7~0_combout\ : std_logic;
SIGNAL \control|state.S7~_Duplicate_1_q\ : std_logic;
SIGNAL \datos|Mux10~0_combout\ : std_logic;
SIGNAL \datos|R[3][1]~DUPLICATE_q\ : std_logic;
SIGNAL \datos|R[0][1]~DUPLICATE_q\ : std_logic;
SIGNAL \datos|Mux10~1_combout\ : std_logic;
SIGNAL \datos|Mux10~2_combout\ : std_logic;
SIGNAL \datos|Mux9~0_combout\ : std_logic;
SIGNAL \datos|Mux9~1_combout\ : std_logic;
SIGNAL \datos|Mux9~2_combout\ : std_logic;
SIGNAL \datos|Mux8~0_combout\ : std_logic;
SIGNAL \datos|R[2][3]~q\ : std_logic;
SIGNAL \datos|R[1][3]~q\ : std_logic;
SIGNAL \datos|Mux8~1_combout\ : std_logic;
SIGNAL \datos|Mux8~2_combout\ : std_logic;
SIGNAL \control|state.S7~q\ : std_logic;
SIGNAL \datos|dataout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \control|ci\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \control|cj\ : std_logic_vector(2 DOWNTO 0);
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
SIGNAL \datos|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[4][0]~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \control|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \control|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \control|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \control|ALT_INV_Selector3~2_combout\ : std_logic;
SIGNAL \control|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \control|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \control|ALT_INV_cj\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \datos|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \control|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \control|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder2~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \control|ALT_INV_state.S2~q\ : std_logic;
SIGNAL \control|ALT_INV_state.S0~q\ : std_logic;
SIGNAL \control|ALT_INV_state.S4~q\ : std_logic;
SIGNAL \control|ALT_INV_state.S1~q\ : std_logic;
SIGNAL \control|ALT_INV_ci\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \control|ALT_INV_state.S5~q\ : std_logic;
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
SIGNAL \control|ALT_INV_state.S2~DUPLICATE_q\ : std_logic;
SIGNAL \control|ALT_INV_state.S4~DUPLICATE_q\ : std_logic;
SIGNAL \control|ALT_INV_state.S1~DUPLICATE_q\ : std_logic;
SIGNAL \control|ALT_INV_ci[1]~DUPLICATE_q\ : std_logic;
SIGNAL \control|ALT_INV_ci[2]~DUPLICATE_q\ : std_logic;
SIGNAL \control|ALT_INV_state.S5~DUPLICATE_q\ : std_logic;
SIGNAL \datos|ALT_INV_R[1][3]~DUPLICATE_q\ : std_logic;
SIGNAL \datos|ALT_INV_R[2][3]~DUPLICATE_q\ : std_logic;
SIGNAL \datos|ALT_INV_R[4][2]~DUPLICATE_q\ : std_logic;
SIGNAL \datos|ALT_INV_R[3][1]~DUPLICATE_q\ : std_logic;
SIGNAL \datos|ALT_INV_R[0][1]~DUPLICATE_q\ : std_logic;
SIGNAL \datos|ALT_INV_R[3][0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_go~input_o\ : std_logic;
SIGNAL \ALT_INV_datain[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_datain[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_datain[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_wrinit~input_o\ : std_logic;
SIGNAL \ALT_INV_datain[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_radd[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_radd[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_radd[2]~input_o\ : std_logic;
SIGNAL \datos|ALT_INV_R[1][0]~36_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[1][0]~35_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder2~7_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[3][0]~32_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[3][0]~31_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[3][0]~30_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder2~6_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[0][1]~27_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[0][1]~26_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder2~5_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[2][3]~23_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[2][3]~22_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[2][3]~21_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder2~4_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[7][0]~18_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[7][0]~17_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder2~3_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[6][2]~14_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[6][2]~13_combout\ : std_logic;
SIGNAL \datos|ALT_INV_dataout[0]~0_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder2~2_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[5][0]~10_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[5][0]~9_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[5][0]~8_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Decoder2~1_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[4][0]~5_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R[4][0]~4_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~3_combout\ : std_logic;
SIGNAL \datos|ALT_INV_R~2_combout\ : std_logic;
SIGNAL \datos|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \datos|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \datos|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \datos|ALT_INV_LessThan0~1_combout\ : std_logic;

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
\datos|ALT_INV_LessThan0~0_combout\ <= NOT \datos|LessThan0~0_combout\;
\datos|ALT_INV_Mux0~1_combout\ <= NOT \datos|Mux0~1_combout\;
\datos|ALT_INV_Mux0~0_combout\ <= NOT \datos|Mux0~0_combout\;
\datos|ALT_INV_Mux7~1_combout\ <= NOT \datos|Mux7~1_combout\;
\datos|ALT_INV_Mux7~0_combout\ <= NOT \datos|Mux7~0_combout\;
\datos|ALT_INV_R[4][0]~1_combout\ <= NOT \datos|R[4][0]~1_combout\;
\datos|ALT_INV_Mux11~3_combout\ <= NOT \datos|Mux11~3_combout\;
\datos|ALT_INV_Mux6~2_combout\ <= NOT \datos|Mux6~2_combout\;
\datos|ALT_INV_Mux6~1_combout\ <= NOT \datos|Mux6~1_combout\;
\datos|ALT_INV_Mux6~0_combout\ <= NOT \datos|Mux6~0_combout\;
\control|ALT_INV_Selector1~0_combout\ <= NOT \control|Selector1~0_combout\;
\control|ALT_INV_Selector2~0_combout\ <= NOT \control|Selector2~0_combout\;
\control|ALT_INV_Selector0~0_combout\ <= NOT \control|Selector0~0_combout\;
\datos|ALT_INV_Mux3~2_combout\ <= NOT \datos|Mux3~2_combout\;
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
\datos|ALT_INV_process_0~0_combout\ <= NOT \datos|process_0~0_combout\;
\control|ALT_INV_state.S2~q\ <= NOT \control|state.S2~q\;
\control|ALT_INV_state.S0~q\ <= NOT \control|state.S0~q\;
\control|ALT_INV_state.S4~q\ <= NOT \control|state.S4~q\;
\control|ALT_INV_state.S1~q\ <= NOT \control|state.S1~q\;
\control|ALT_INV_ci\(0) <= NOT \control|ci\(0);
\control|ALT_INV_ci\(1) <= NOT \control|ci\(1);
\control|ALT_INV_ci\(2) <= NOT \control|ci\(2);
\control|ALT_INV_state.S5~q\ <= NOT \control|state.S5~q\;
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
\control|ALT_INV_state.S2~DUPLICATE_q\ <= NOT \control|state.S2~DUPLICATE_q\;
\control|ALT_INV_state.S4~DUPLICATE_q\ <= NOT \control|state.S4~DUPLICATE_q\;
\control|ALT_INV_state.S1~DUPLICATE_q\ <= NOT \control|state.S1~DUPLICATE_q\;
\control|ALT_INV_ci[1]~DUPLICATE_q\ <= NOT \control|ci[1]~DUPLICATE_q\;
\control|ALT_INV_ci[2]~DUPLICATE_q\ <= NOT \control|ci[2]~DUPLICATE_q\;
\control|ALT_INV_state.S5~DUPLICATE_q\ <= NOT \control|state.S5~DUPLICATE_q\;
\datos|ALT_INV_R[1][3]~DUPLICATE_q\ <= NOT \datos|R[1][3]~DUPLICATE_q\;
\datos|ALT_INV_R[2][3]~DUPLICATE_q\ <= NOT \datos|R[2][3]~DUPLICATE_q\;
\datos|ALT_INV_R[4][2]~DUPLICATE_q\ <= NOT \datos|R[4][2]~DUPLICATE_q\;
\datos|ALT_INV_R[3][1]~DUPLICATE_q\ <= NOT \datos|R[3][1]~DUPLICATE_q\;
\datos|ALT_INV_R[0][1]~DUPLICATE_q\ <= NOT \datos|R[0][1]~DUPLICATE_q\;
\datos|ALT_INV_R[3][0]~DUPLICATE_q\ <= NOT \datos|R[3][0]~DUPLICATE_q\;
\ALT_INV_go~input_o\ <= NOT \go~input_o\;
\ALT_INV_datain[3]~input_o\ <= NOT \datain[3]~input_o\;
\ALT_INV_datain[2]~input_o\ <= NOT \datain[2]~input_o\;
\ALT_INV_datain[1]~input_o\ <= NOT \datain[1]~input_o\;
\ALT_INV_wrinit~input_o\ <= NOT \wrinit~input_o\;
\ALT_INV_datain[0]~input_o\ <= NOT \datain[0]~input_o\;
\ALT_INV_radd[1]~input_o\ <= NOT \radd[1]~input_o\;
\ALT_INV_radd[0]~input_o\ <= NOT \radd[0]~input_o\;
\ALT_INV_radd[2]~input_o\ <= NOT \radd[2]~input_o\;
\datos|ALT_INV_R[1][0]~36_combout\ <= NOT \datos|R[1][0]~36_combout\;
\datos|ALT_INV_R[1][0]~35_combout\ <= NOT \datos|R[1][0]~35_combout\;
\datos|ALT_INV_Decoder2~7_combout\ <= NOT \datos|Decoder2~7_combout\;
\datos|ALT_INV_R[3][0]~32_combout\ <= NOT \datos|R[3][0]~32_combout\;
\datos|ALT_INV_R[3][0]~31_combout\ <= NOT \datos|R[3][0]~31_combout\;
\datos|ALT_INV_R[3][0]~30_combout\ <= NOT \datos|R[3][0]~30_combout\;
\datos|ALT_INV_Decoder2~6_combout\ <= NOT \datos|Decoder2~6_combout\;
\datos|ALT_INV_R[0][1]~27_combout\ <= NOT \datos|R[0][1]~27_combout\;
\datos|ALT_INV_R[0][1]~26_combout\ <= NOT \datos|R[0][1]~26_combout\;
\datos|ALT_INV_Decoder2~5_combout\ <= NOT \datos|Decoder2~5_combout\;
\datos|ALT_INV_R[2][3]~23_combout\ <= NOT \datos|R[2][3]~23_combout\;
\datos|ALT_INV_R[2][3]~22_combout\ <= NOT \datos|R[2][3]~22_combout\;
\datos|ALT_INV_R[2][3]~21_combout\ <= NOT \datos|R[2][3]~21_combout\;
\datos|ALT_INV_Decoder2~4_combout\ <= NOT \datos|Decoder2~4_combout\;
\datos|ALT_INV_R[7][0]~18_combout\ <= NOT \datos|R[7][0]~18_combout\;
\datos|ALT_INV_R[7][0]~17_combout\ <= NOT \datos|R[7][0]~17_combout\;
\datos|ALT_INV_Decoder2~3_combout\ <= NOT \datos|Decoder2~3_combout\;
\datos|ALT_INV_R[6][2]~14_combout\ <= NOT \datos|R[6][2]~14_combout\;
\datos|ALT_INV_R[6][2]~13_combout\ <= NOT \datos|R[6][2]~13_combout\;
\datos|ALT_INV_dataout[0]~0_combout\ <= NOT \datos|dataout[0]~0_combout\;
\datos|ALT_INV_Decoder2~2_combout\ <= NOT \datos|Decoder2~2_combout\;
\datos|ALT_INV_R[5][0]~10_combout\ <= NOT \datos|R[5][0]~10_combout\;
\datos|ALT_INV_R[5][0]~9_combout\ <= NOT \datos|R[5][0]~9_combout\;
\datos|ALT_INV_R[5][0]~8_combout\ <= NOT \datos|R[5][0]~8_combout\;
\datos|ALT_INV_Decoder2~1_combout\ <= NOT \datos|Decoder2~1_combout\;
\datos|ALT_INV_R[4][0]~5_combout\ <= NOT \datos|R[4][0]~5_combout\;
\datos|ALT_INV_R[4][0]~4_combout\ <= NOT \datos|R[4][0]~4_combout\;
\datos|ALT_INV_R~3_combout\ <= NOT \datos|R~3_combout\;
\datos|ALT_INV_R~2_combout\ <= NOT \datos|R~2_combout\;
\datos|ALT_INV_LessThan0~3_combout\ <= NOT \datos|LessThan0~3_combout\;
\datos|ALT_INV_Mux0~2_combout\ <= NOT \datos|Mux0~2_combout\;
\datos|ALT_INV_Mux7~2_combout\ <= NOT \datos|Mux7~2_combout\;
\datos|ALT_INV_LessThan0~2_combout\ <= NOT \datos|LessThan0~2_combout\;
\datos|ALT_INV_LessThan0~1_combout\ <= NOT \datos|LessThan0~1_combout\;

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

-- Location: FF_X9_Y1_N19
\control|state.S4~DUPLICATE\ : dffeas
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
	q => \control|state.S4~DUPLICATE_q\);

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

-- Location: FF_X9_Y1_N8
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

-- Location: LABCELL_X9_Y1_N27
\control|state.S0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|state.S0~0_combout\ = (!\go~input_o\) # (\control|state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_go~input_o\,
	datad => \control|ALT_INV_state.S0~q\,
	combout => \control|state.S0~0_combout\);

-- Location: FF_X9_Y1_N28
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

-- Location: LABCELL_X9_Y1_N21
\control|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector6~0_combout\ = ( !\go~input_o\ & ( (!\control|state.S0~q\) # (\control|state.S1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \control|ALT_INV_state.S0~q\,
	datad => \control|ALT_INV_state.S1~q\,
	dataf => \ALT_INV_go~input_o\,
	combout => \control|Selector6~0_combout\);

-- Location: FF_X9_Y1_N23
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

-- Location: FF_X10_Y1_N32
\control|ci[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \control|Selector1~0_combout\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|ci[1]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y1_N57
\control|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector1~0_combout\ = ( \control|ci[1]~DUPLICATE_q\ & ( (((\control|state.S5~DUPLICATE_q\ & !\control|ci\(0))) # (\control|state.S2~DUPLICATE_q\)) # (\control|state.S4~DUPLICATE_q\) ) ) # ( !\control|ci[1]~DUPLICATE_q\ & ( 
-- (\control|state.S5~DUPLICATE_q\ & \control|ci\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101110011111111110111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S5~DUPLICATE_q\,
	datab => \control|ALT_INV_state.S4~DUPLICATE_q\,
	datac => \control|ALT_INV_ci\(0),
	datad => \control|ALT_INV_state.S2~DUPLICATE_q\,
	dataf => \control|ALT_INV_ci[1]~DUPLICATE_q\,
	combout => \control|Selector1~0_combout\);

-- Location: FF_X10_Y1_N31
\control|ci[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \control|Selector1~0_combout\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|ci\(1));

-- Location: LABCELL_X11_Y1_N33
\control|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector0~0_combout\ = ( \control|state.S4~DUPLICATE_q\ & ( \control|ci\(1) & ( ((\control|state.S5~DUPLICATE_q\ & \control|ci\(0))) # (\control|ci[2]~DUPLICATE_q\) ) ) ) # ( !\control|state.S4~DUPLICATE_q\ & ( \control|ci\(1) & ( 
-- (!\control|ci[2]~DUPLICATE_q\ & (\control|state.S5~DUPLICATE_q\ & ((\control|ci\(0))))) # (\control|ci[2]~DUPLICATE_q\ & (((\control|state.S5~DUPLICATE_q\ & !\control|ci\(0))) # (\control|state.S2~DUPLICATE_q\))) ) ) ) # ( \control|state.S4~DUPLICATE_q\ & 
-- ( !\control|ci\(1) & ( \control|ci[2]~DUPLICATE_q\ ) ) ) # ( !\control|state.S4~DUPLICATE_q\ & ( !\control|ci\(1) & ( (\control|ci[2]~DUPLICATE_q\ & ((\control|state.S2~DUPLICATE_q\) # (\control|state.S5~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101010101010101010100010101001001110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datab => \control|ALT_INV_state.S5~DUPLICATE_q\,
	datac => \control|ALT_INV_state.S2~DUPLICATE_q\,
	datad => \control|ALT_INV_ci\(0),
	datae => \control|ALT_INV_state.S4~DUPLICATE_q\,
	dataf => \control|ALT_INV_ci\(1),
	combout => \control|Selector0~0_combout\);

-- Location: FF_X9_Y1_N46
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

-- Location: LABCELL_X9_Y1_N42
\control|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector7~0_combout\ = ( \control|ci\(0) & ( \control|ci\(1) & ( ((\go~input_o\ & \control|state.S1~q\)) # (\control|state.S5~q\) ) ) ) # ( !\control|ci\(0) & ( \control|ci\(1) & ( (!\go~input_o\ & (\control|state.S5~q\ & 
-- ((!\control|ci[2]~DUPLICATE_q\)))) # (\go~input_o\ & (((\control|state.S5~q\ & !\control|ci[2]~DUPLICATE_q\)) # (\control|state.S1~q\))) ) ) ) # ( \control|ci\(0) & ( !\control|ci\(1) & ( ((\go~input_o\ & \control|state.S1~q\)) # (\control|state.S5~q\) ) 
-- ) ) # ( !\control|ci\(0) & ( !\control|ci\(1) & ( ((\go~input_o\ & \control|state.S1~q\)) # (\control|state.S5~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011100110111000001010011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_go~input_o\,
	datab => \control|ALT_INV_state.S5~q\,
	datac => \control|ALT_INV_state.S1~q\,
	datad => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datae => \control|ALT_INV_ci\(0),
	dataf => \control|ALT_INV_ci\(1),
	combout => \control|Selector7~0_combout\);

-- Location: FF_X9_Y1_N43
\control|state.S2~DUPLICATE\ : dffeas
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
	q => \control|state.S2~DUPLICATE_q\);

-- Location: LABCELL_X10_Y1_N33
\control|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector5~0_combout\ = ( \control|cj\(0) & ( \control|state.S2~DUPLICATE_q\ & ( ((\control|state.S4~DUPLICATE_q\) # (\control|ci\(0))) # (\control|state.S5~DUPLICATE_q\) ) ) ) # ( !\control|cj\(0) & ( \control|state.S2~DUPLICATE_q\ & ( 
-- (!\control|state.S5~DUPLICATE_q\ & (\control|ci\(0) & !\control|state.S4~DUPLICATE_q\)) ) ) ) # ( \control|cj\(0) & ( !\control|state.S2~DUPLICATE_q\ & ( \control|state.S5~DUPLICATE_q\ ) ) ) # ( !\control|cj\(0) & ( !\control|state.S2~DUPLICATE_q\ & ( 
-- (!\control|state.S5~DUPLICATE_q\ & \control|state.S4~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101010101010100100010000000000111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S5~DUPLICATE_q\,
	datab => \control|ALT_INV_ci\(0),
	datad => \control|ALT_INV_state.S4~DUPLICATE_q\,
	datae => \control|ALT_INV_cj\(0),
	dataf => \control|ALT_INV_state.S2~DUPLICATE_q\,
	combout => \control|Selector5~0_combout\);

-- Location: FF_X10_Y1_N35
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|cj\(0));

-- Location: FF_X9_Y1_N44
\control|state.S2\ : dffeas
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
	q => \control|state.S2~q\);

-- Location: LABCELL_X10_Y1_N18
\control|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector4~0_combout\ = ( \control|cj\(1) & ( \control|state.S2~DUPLICATE_q\ & ( ((\control|state.S4~q\) # (\control|state.S5~DUPLICATE_q\)) # (\control|ci\(1)) ) ) ) # ( !\control|cj\(1) & ( \control|state.S2~DUPLICATE_q\ & ( (\control|ci\(1) & 
-- (!\control|state.S5~DUPLICATE_q\ & !\control|state.S4~q\)) ) ) ) # ( \control|cj\(1) & ( !\control|state.S2~DUPLICATE_q\ & ( ((!\control|cj\(0) & \control|state.S4~q\)) # (\control|state.S5~DUPLICATE_q\) ) ) ) # ( !\control|cj\(1) & ( 
-- !\control|state.S2~DUPLICATE_q\ & ( (!\control|state.S5~DUPLICATE_q\ & (\control|cj\(0) & \control|state.S4~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100001100111111001101000100000000000111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci\(1),
	datab => \control|ALT_INV_state.S5~DUPLICATE_q\,
	datac => \control|ALT_INV_cj\(0),
	datad => \control|ALT_INV_state.S4~q\,
	datae => \control|ALT_INV_cj\(1),
	dataf => \control|ALT_INV_state.S2~DUPLICATE_q\,
	combout => \control|Selector4~0_combout\);

-- Location: FF_X10_Y1_N20
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|cj\(1));

-- Location: LABCELL_X9_Y1_N36
\control|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector3~0_combout\ = ( \control|cj\(2) & ( \control|cj\(1) & ( (!\control|cj\(0) & (!\control|state.S2~q\ & (\control|state.S4~q\ & !\control|state.S5~q\))) ) ) ) # ( !\control|cj\(2) & ( \control|cj\(1) & ( (\control|cj\(0) & 
-- (!\control|state.S2~q\ & (\control|state.S4~q\ & !\control|state.S5~q\))) ) ) ) # ( \control|cj\(2) & ( !\control|cj\(1) & ( (!\control|state.S2~q\ & (\control|state.S4~q\ & !\control|state.S5~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000000000000100000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_cj\(0),
	datab => \control|ALT_INV_state.S2~q\,
	datac => \control|ALT_INV_state.S4~q\,
	datad => \control|ALT_INV_state.S5~q\,
	datae => \control|ALT_INV_cj\(2),
	dataf => \control|ALT_INV_cj\(1),
	combout => \control|Selector3~0_combout\);

-- Location: FF_X9_Y1_N47
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

-- Location: LABCELL_X10_Y1_N12
\control|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector3~1_combout\ = ( \control|ci\(2) & ( (!\control|state.S5~DUPLICATE_q\ & (\control|state.S2~DUPLICATE_q\ & ((!\control|state.S4~DUPLICATE_q\) # (\control|cj\(2))))) # (\control|state.S5~DUPLICATE_q\ & (((\control|cj\(2))))) ) ) # ( 
-- !\control|ci\(2) & ( (\control|cj\(2) & (((\control|state.S4~DUPLICATE_q\ & \control|state.S2~DUPLICATE_q\)) # (\control|state.S5~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001111000000010000111100100011000011110010001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S4~DUPLICATE_q\,
	datab => \control|ALT_INV_state.S2~DUPLICATE_q\,
	datac => \control|ALT_INV_cj\(2),
	datad => \control|ALT_INV_state.S5~DUPLICATE_q\,
	dataf => \control|ALT_INV_ci\(2),
	combout => \control|Selector3~1_combout\);

-- Location: LABCELL_X10_Y1_N54
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

-- Location: FF_X10_Y1_N23
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

-- Location: LABCELL_X9_Y1_N18
\control|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector8~0_combout\ = ( \control|state.S2~DUPLICATE_q\ ) # ( !\control|state.S2~DUPLICATE_q\ & ( (\control|state.S4~q\ & ((!\control|cj\(2)) # ((!\control|cj\(1)) # (\control|cj\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101111000000001110111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_cj\(2),
	datab => \control|ALT_INV_cj\(1),
	datac => \control|ALT_INV_cj\(0),
	datad => \control|ALT_INV_state.S4~q\,
	dataf => \control|ALT_INV_state.S2~DUPLICATE_q\,
	combout => \control|Selector8~0_combout\);

-- Location: FF_X9_Y1_N20
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

-- Location: LABCELL_X9_Y1_N6
\control|next_state.S5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|next_state.S5~0_combout\ = (\control|state.S4~q\ & (\control|cj\(1) & (!\control|cj\(0) & \control|cj\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S4~q\,
	datab => \control|ALT_INV_cj\(1),
	datac => \control|ALT_INV_cj\(0),
	datad => \control|ALT_INV_cj\(2),
	combout => \control|next_state.S5~0_combout\);

-- Location: FF_X9_Y1_N7
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

-- Location: LABCELL_X10_Y1_N6
\control|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Selector2~0_combout\ = ( \control|state.S2~DUPLICATE_q\ & ( (\control|ci\(0)) # (\control|state.S5~DUPLICATE_q\) ) ) # ( !\control|state.S2~DUPLICATE_q\ & ( (!\control|ci\(0) & (\control|state.S5~DUPLICATE_q\)) # (\control|ci\(0) & 
-- ((\control|state.S4~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \control|ALT_INV_state.S5~DUPLICATE_q\,
	datac => \control|ALT_INV_state.S4~DUPLICATE_q\,
	datad => \control|ALT_INV_ci\(0),
	dataf => \control|ALT_INV_state.S2~DUPLICATE_q\,
	combout => \control|Selector2~0_combout\);

-- Location: FF_X10_Y1_N8
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

-- Location: LABCELL_X11_Y1_N18
\datos|Decoder2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder2~7_combout\ = ( \control|state.S4~DUPLICATE_q\ & ( !\control|ci\(1) & ( (!\control|ci[2]~DUPLICATE_q\ & (!\control|ci\(0) $ (!\control|state.S5~DUPLICATE_q\))) ) ) ) # ( !\control|state.S4~DUPLICATE_q\ & ( !\control|ci\(1) & ( 
-- (!\control|ci[2]~DUPLICATE_q\ & ((!\control|ci\(0) & ((\control|state.S5~DUPLICATE_q\))) # (\control|ci\(0) & (\control|state.S2~DUPLICATE_q\ & !\control|state.S5~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010100000010100001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci\(0),
	datab => \control|ALT_INV_state.S2~DUPLICATE_q\,
	datac => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datad => \control|ALT_INV_state.S5~DUPLICATE_q\,
	datae => \control|ALT_INV_state.S4~DUPLICATE_q\,
	dataf => \control|ALT_INV_ci\(1),
	combout => \datos|Decoder2~7_combout\);

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

-- Location: FF_X9_Y1_N22
\control|state.S1~DUPLICATE\ : dffeas
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
	q => \control|state.S1~DUPLICATE_q\);

-- Location: LABCELL_X10_Y1_N15
\datos|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|process_0~0_combout\ = ( \control|state.S0~q\ & ( (!\control|state.S4~DUPLICATE_q\ & (!\control|state.S2~DUPLICATE_q\ & (\wrinit~input_o\ & \control|state.S1~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S4~DUPLICATE_q\,
	datab => \control|ALT_INV_state.S2~DUPLICATE_q\,
	datac => \ALT_INV_wrinit~input_o\,
	datad => \control|ALT_INV_state.S1~DUPLICATE_q\,
	dataf => \control|ALT_INV_state.S0~q\,
	combout => \datos|process_0~0_combout\);

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

-- Location: LABCELL_X11_Y1_N51
\datos|Decoder2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder2~3_combout\ = ( \control|state.S4~DUPLICATE_q\ & ( \control|ci\(1) & ( (!\control|ci[2]~DUPLICATE_q\ & (\control|state.S5~DUPLICATE_q\ & \control|ci\(0))) # (\control|ci[2]~DUPLICATE_q\ & ((\control|ci\(0)) # 
-- (\control|state.S5~DUPLICATE_q\))) ) ) ) # ( !\control|state.S4~DUPLICATE_q\ & ( \control|ci\(1) & ( (!\control|ci\(0) & (\control|ci[2]~DUPLICATE_q\ & (\control|state.S5~DUPLICATE_q\))) # (\control|ci\(0) & (\control|state.S2~DUPLICATE_q\ & 
-- ((\control|state.S5~DUPLICATE_q\) # (\control|ci[2]~DUPLICATE_q\)))) ) ) ) # ( \control|state.S4~DUPLICATE_q\ & ( !\control|ci\(1) & ( (\control|ci[2]~DUPLICATE_q\ & (\control|state.S5~DUPLICATE_q\ & \control|ci\(0))) ) ) ) # ( 
-- !\control|state.S4~DUPLICATE_q\ & ( !\control|ci\(1) & ( (\control|ci[2]~DUPLICATE_q\ & (\control|state.S5~DUPLICATE_q\ & (\control|state.S2~DUPLICATE_q\ & \control|ci\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000001000100010001000001110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datab => \control|ALT_INV_state.S5~DUPLICATE_q\,
	datac => \control|ALT_INV_state.S2~DUPLICATE_q\,
	datad => \control|ALT_INV_ci\(0),
	datae => \control|ALT_INV_state.S4~DUPLICATE_q\,
	dataf => \control|ALT_INV_ci\(1),
	combout => \datos|Decoder2~3_combout\);

-- Location: MLABCELL_X8_Y2_N42
\datos|R~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~16_combout\ = ( \datos|Decoder2~3_combout\ & ( (!\datos|process_0~0_combout\ & ((\datos|Mux3~2_combout\))) # (\datos|process_0~0_combout\ & (\datain[0]~input_o\)) ) ) # ( !\datos|Decoder2~3_combout\ & ( (!\datos|process_0~0_combout\ & 
-- (\datos|Mux6~2_combout\)) # (\datos|process_0~0_combout\ & ((\datain[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux6~2_combout\,
	datab => \ALT_INV_datain[0]~input_o\,
	datac => \datos|ALT_INV_process_0~0_combout\,
	datad => \datos|ALT_INV_Mux3~2_combout\,
	dataf => \datos|ALT_INV_Decoder2~3_combout\,
	combout => \datos|R~16_combout\);

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

-- Location: LABCELL_X10_Y2_N0
\datos|R~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~41_combout\ = ( \datos|Mux2~2_combout\ & ( (!\datos|process_0~0_combout\ & (((\datos|Decoder2~3_combout\)) # (\datos|Mux5~2_combout\))) # (\datos|process_0~0_combout\ & (((\datain[1]~input_o\)))) ) ) # ( !\datos|Mux2~2_combout\ & ( 
-- (!\datos|process_0~0_combout\ & (\datos|Mux5~2_combout\ & ((!\datos|Decoder2~3_combout\)))) # (\datos|process_0~0_combout\ & (((\datain[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000011010100110000001101010011111100110101001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux5~2_combout\,
	datab => \ALT_INV_datain[1]~input_o\,
	datac => \datos|ALT_INV_process_0~0_combout\,
	datad => \datos|ALT_INV_Decoder2~3_combout\,
	dataf => \datos|ALT_INV_Mux2~2_combout\,
	combout => \datos|R~41_combout\);

-- Location: FF_X10_Y2_N2
\datos|R[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~41_combout\,
	ena => \datos|R[7][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[7][1]~q\);

-- Location: LABCELL_X9_Y1_N48
\datos|Decoder2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder2~1_combout\ = ( \control|ci\(2) & ( !\control|ci\(1) & ( (!\control|ci\(0) & (((\control|state.S5~q\)))) # (\control|ci\(0) & (!\control|state.S5~q\ & ((\control|state.S4~q\) # (\control|state.S2~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101011010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci\(0),
	datab => \control|ALT_INV_state.S2~q\,
	datac => \control|ALT_INV_state.S4~q\,
	datad => \control|ALT_INV_state.S5~q\,
	datae => \control|ALT_INV_ci\(2),
	dataf => \control|ALT_INV_ci\(1),
	combout => \datos|Decoder2~1_combout\);

-- Location: LABCELL_X9_Y2_N42
\datos|R~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~39_combout\ = ( \datos|Mux2~2_combout\ & ( (!\datos|process_0~0_combout\ & (((\datos|Mux5~2_combout\)) # (\datos|Decoder2~1_combout\))) # (\datos|process_0~0_combout\ & (((\datain[1]~input_o\)))) ) ) # ( !\datos|Mux2~2_combout\ & ( 
-- (!\datos|process_0~0_combout\ & (!\datos|Decoder2~1_combout\ & (\datos|Mux5~2_combout\))) # (\datos|process_0~0_combout\ & (((\datain[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~1_combout\,
	datab => \datos|ALT_INV_process_0~0_combout\,
	datac => \datos|ALT_INV_Mux5~2_combout\,
	datad => \ALT_INV_datain[1]~input_o\,
	dataf => \datos|ALT_INV_Mux2~2_combout\,
	combout => \datos|R~39_combout\);

-- Location: LABCELL_X9_Y1_N9
\datos|R~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~2_combout\ = ( !\control|state.S2~q\ & ( \control|state.S0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \control|ALT_INV_state.S0~q\,
	dataf => \control|ALT_INV_state.S2~q\,
	combout => \datos|R~2_combout\);

-- Location: LABCELL_X9_Y1_N24
\datos|R~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~3_combout\ = ( \datos|R~2_combout\ & ( (\control|state.S4~q\ & !\control|state.S1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \control|ALT_INV_state.S4~q\,
	datad => \control|ALT_INV_state.S1~q\,
	dataf => \datos|ALT_INV_R~2_combout\,
	combout => \datos|R~3_combout\);

-- Location: LABCELL_X11_Y1_N36
\datos|Decoder2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder2~6_combout\ = ( \control|state.S4~DUPLICATE_q\ & ( \control|ci\(1) & ( (!\control|ci[2]~DUPLICATE_q\ & (!\control|ci\(0) $ (!\control|state.S5~DUPLICATE_q\))) ) ) ) # ( !\control|state.S4~DUPLICATE_q\ & ( \control|ci\(1) & ( 
-- (!\control|ci[2]~DUPLICATE_q\ & ((!\control|ci\(0) & ((\control|state.S5~DUPLICATE_q\))) # (\control|ci\(0) & (\control|state.S2~DUPLICATE_q\ & !\control|state.S5~DUPLICATE_q\)))) ) ) ) # ( \control|state.S4~DUPLICATE_q\ & ( !\control|ci\(1) & ( 
-- (\control|ci\(0) & (!\control|ci[2]~DUPLICATE_q\ & \control|state.S5~DUPLICATE_q\)) ) ) ) # ( !\control|state.S4~DUPLICATE_q\ & ( !\control|ci\(1) & ( (\control|ci\(0) & (\control|state.S2~DUPLICATE_q\ & (!\control|ci[2]~DUPLICATE_q\ & 
-- \control|state.S5~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000101000000010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci\(0),
	datab => \control|ALT_INV_state.S2~DUPLICATE_q\,
	datac => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datad => \control|ALT_INV_state.S5~DUPLICATE_q\,
	datae => \control|ALT_INV_state.S4~DUPLICATE_q\,
	dataf => \control|ALT_INV_ci\(1),
	combout => \datos|Decoder2~6_combout\);

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

-- Location: LABCELL_X11_Y1_N0
\datos|Decoder2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder2~5_combout\ = ( !\control|state.S4~DUPLICATE_q\ & ( \control|ci\(1) & ( (!\control|state.S2~DUPLICATE_q\ & ((!\control|state.S5~DUPLICATE_q\) # ((\control|ci\(0) & \control|ci[2]~DUPLICATE_q\)))) ) ) ) # ( \control|state.S4~DUPLICATE_q\ & ( 
-- !\control|ci\(1) & ( (!\control|ci\(0) & (!\control|ci[2]~DUPLICATE_q\ & !\control|state.S5~DUPLICATE_q\)) ) ) ) # ( !\control|state.S4~DUPLICATE_q\ & ( !\control|ci\(1) & ( (!\control|state.S5~DUPLICATE_q\ & ((!\control|state.S2~DUPLICATE_q\) # 
-- ((!\control|ci\(0) & !\control|ci[2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110000000000101000000000000011001100000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci\(0),
	datab => \control|ALT_INV_state.S2~DUPLICATE_q\,
	datac => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datad => \control|ALT_INV_state.S5~DUPLICATE_q\,
	datae => \control|ALT_INV_state.S4~DUPLICATE_q\,
	dataf => \control|ALT_INV_ci\(1),
	combout => \datos|Decoder2~5_combout\);

-- Location: LABCELL_X11_Y2_N54
\datos|R~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~59_combout\ = ( \datain[3]~input_o\ & ( ((!\datos|Decoder2~5_combout\ & ((\datos|Mux7~2_combout\))) # (\datos|Decoder2~5_combout\ & (\datos|Mux0~2_combout\))) # (\datos|process_0~0_combout\) ) ) # ( !\datain[3]~input_o\ & ( 
-- (!\datos|process_0~0_combout\ & ((!\datos|Decoder2~5_combout\ & ((\datos|Mux7~2_combout\))) # (\datos|Decoder2~5_combout\ & (\datos|Mux0~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101000000111111010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux0~2_combout\,
	datab => \datos|ALT_INV_Mux7~2_combout\,
	datac => \datos|ALT_INV_process_0~0_combout\,
	datad => \datos|ALT_INV_Decoder2~5_combout\,
	dataf => \ALT_INV_datain[3]~input_o\,
	combout => \datos|R~59_combout\);

-- Location: LABCELL_X10_Y2_N18
\datos|R[2][3]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[2][3]~21_combout\ = ( \wrinit~input_o\ & ( \control|state.S1~DUPLICATE_q\ & ( (!\control|state.S2~DUPLICATE_q\ & (!\control|state.S4~DUPLICATE_q\ & (!\radd[2]~input_o\ & \control|state.S0~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S2~DUPLICATE_q\,
	datab => \control|ALT_INV_state.S4~DUPLICATE_q\,
	datac => \ALT_INV_radd[2]~input_o\,
	datad => \control|ALT_INV_state.S0~q\,
	datae => \ALT_INV_wrinit~input_o\,
	dataf => \control|ALT_INV_state.S1~DUPLICATE_q\,
	combout => \datos|R[2][3]~21_combout\);

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

-- Location: LABCELL_X9_Y1_N0
\datos|Mux11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux11~3_combout\ = ( !\radd[0]~input_o\ & ( !\radd[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_radd[1]~input_o\,
	dataf => \ALT_INV_radd[0]~input_o\,
	combout => \datos|Mux11~3_combout\);

-- Location: LABCELL_X10_Y1_N42
\datos|R[0][1]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[0][1]~26_combout\ = ( !\control|Selector4~0_combout\ & ( (!\control|Selector5~0_combout\ & (!\control|Selector3~1_combout\ & !\control|Selector3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_Selector5~0_combout\,
	datab => \control|ALT_INV_Selector3~1_combout\,
	datac => \control|ALT_INV_Selector3~0_combout\,
	dataf => \control|ALT_INV_Selector4~0_combout\,
	combout => \datos|R[0][1]~26_combout\);

-- Location: LABCELL_X10_Y1_N48
\datos|R[0][1]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[0][1]~27_combout\ = ( !\datos|Decoder2~5_combout\ & ( !\datos|R[0][1]~26_combout\ & ( (!\datos|R~2_combout\) # ((!\wrinit~input_o\) # ((!\control|state.S1~DUPLICATE_q\) # (\control|state.S4~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~2_combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_state.S1~DUPLICATE_q\,
	datad => \control|ALT_INV_state.S4~DUPLICATE_q\,
	datae => \datos|ALT_INV_Decoder2~5_combout\,
	dataf => \datos|ALT_INV_R[0][1]~26_combout\,
	combout => \datos|R[0][1]~27_combout\);

-- Location: LABCELL_X9_Y2_N54
\datos|R[0][1]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[0][1]~28_combout\ = ( \datos|Mux11~3_combout\ & ( !\datos|R[0][1]~27_combout\ & ( ((\datos|R~3_combout\ & ((\datos|LessThan0~3_combout\) # (\datos|LessThan0~2_combout\)))) # (\datos|R[2][3]~21_combout\) ) ) ) # ( !\datos|Mux11~3_combout\ & ( 
-- !\datos|R[0][1]~27_combout\ & ( (\datos|R~3_combout\ & ((\datos|LessThan0~3_combout\) # (\datos|LessThan0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000111110101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~3_combout\,
	datab => \datos|ALT_INV_LessThan0~2_combout\,
	datac => \datos|ALT_INV_R[2][3]~21_combout\,
	datad => \datos|ALT_INV_LessThan0~3_combout\,
	datae => \datos|ALT_INV_Mux11~3_combout\,
	dataf => \datos|ALT_INV_R[0][1]~27_combout\,
	combout => \datos|R[0][1]~28_combout\);

-- Location: FF_X12_Y2_N8
\datos|R[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \datos|R~59_combout\,
	sload => VCC,
	ena => \datos|R[0][1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[0][3]~q\);

-- Location: LABCELL_X12_Y2_N51
\datos|R~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~61_combout\ = ( \datos|Mux7~2_combout\ & ( (!\datos|process_0~0_combout\ & ((!\datos|Decoder2~7_combout\) # ((\datos|Mux0~2_combout\)))) # (\datos|process_0~0_combout\ & (((\datain[3]~input_o\)))) ) ) # ( !\datos|Mux7~2_combout\ & ( 
-- (!\datos|process_0~0_combout\ & (\datos|Decoder2~7_combout\ & ((\datos|Mux0~2_combout\)))) # (\datos|process_0~0_combout\ & (((\datain[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~7_combout\,
	datab => \datos|ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_datain[3]~input_o\,
	datad => \datos|ALT_INV_Mux0~2_combout\,
	dataf => \datos|ALT_INV_Mux7~2_combout\,
	combout => \datos|R~61_combout\);

-- Location: LABCELL_X10_Y2_N54
\datos|R[3][0]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[3][0]~30_combout\ = ( \wrinit~input_o\ & ( \control|state.S1~DUPLICATE_q\ & ( (\datos|R~2_combout\ & (!\control|state.S4~DUPLICATE_q\ & (!\radd[2]~input_o\ & \radd[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~2_combout\,
	datab => \control|ALT_INV_state.S4~DUPLICATE_q\,
	datac => \ALT_INV_radd[2]~input_o\,
	datad => \ALT_INV_radd[0]~input_o\,
	datae => \ALT_INV_wrinit~input_o\,
	dataf => \control|ALT_INV_state.S1~DUPLICATE_q\,
	combout => \datos|R[3][0]~30_combout\);

-- Location: LABCELL_X10_Y1_N24
\datos|R[1][0]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[1][0]~35_combout\ = ( !\control|Selector4~0_combout\ & ( (\control|Selector5~0_combout\ & (!\control|Selector3~1_combout\ & !\control|Selector3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_Selector5~0_combout\,
	datab => \control|ALT_INV_Selector3~1_combout\,
	datac => \control|ALT_INV_Selector3~0_combout\,
	dataf => \control|ALT_INV_Selector4~0_combout\,
	combout => \datos|R[1][0]~35_combout\);

-- Location: LABCELL_X11_Y1_N15
\datos|R[1][0]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[1][0]~36_combout\ = ( !\datos|R[1][0]~35_combout\ & ( !\datos|Decoder2~7_combout\ & ( (!\wrinit~input_o\) # (((!\datos|R~2_combout\) # (!\control|state.S1~DUPLICATE_q\)) # (\control|state.S4~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wrinit~input_o\,
	datab => \control|ALT_INV_state.S4~DUPLICATE_q\,
	datac => \datos|ALT_INV_R~2_combout\,
	datad => \control|ALT_INV_state.S1~DUPLICATE_q\,
	datae => \datos|ALT_INV_R[1][0]~35_combout\,
	dataf => \datos|ALT_INV_Decoder2~7_combout\,
	combout => \datos|R[1][0]~36_combout\);

-- Location: LABCELL_X9_Y2_N15
\datos|R[1][0]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[1][0]~37_combout\ = ( \datos|R[3][0]~30_combout\ & ( !\datos|R[1][0]~36_combout\ & ( (!\radd[1]~input_o\) # ((\datos|R~3_combout\ & ((\datos|LessThan0~2_combout\) # (\datos|LessThan0~3_combout\)))) ) ) ) # ( !\datos|R[3][0]~30_combout\ & ( 
-- !\datos|R[1][0]~36_combout\ & ( (\datos|R~3_combout\ & ((\datos|LessThan0~2_combout\) # (\datos|LessThan0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101111111110001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~3_combout\,
	datab => \datos|ALT_INV_LessThan0~3_combout\,
	datac => \datos|ALT_INV_LessThan0~2_combout\,
	datad => \ALT_INV_radd[1]~input_o\,
	datae => \datos|ALT_INV_R[3][0]~30_combout\,
	dataf => \datos|ALT_INV_R[1][0]~36_combout\,
	combout => \datos|R[1][0]~37_combout\);

-- Location: FF_X12_Y2_N52
\datos|R[1][3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~61_combout\,
	ena => \datos|R[1][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[1][3]~DUPLICATE_q\);

-- Location: LABCELL_X11_Y1_N24
\datos|Decoder2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder2~4_combout\ = ( \control|state.S4~DUPLICATE_q\ & ( \control|ci\(1) & ( (!\control|ci\(0) & (!\control|ci[2]~DUPLICATE_q\ & !\control|state.S5~DUPLICATE_q\)) ) ) ) # ( !\control|state.S4~DUPLICATE_q\ & ( \control|ci\(1) & ( (!\control|ci\(0) 
-- & (\control|state.S2~DUPLICATE_q\ & (!\control|ci[2]~DUPLICATE_q\ & !\control|state.S5~DUPLICATE_q\))) ) ) ) # ( !\control|state.S4~DUPLICATE_q\ & ( !\control|ci\(1) & ( (\control|ci\(0) & (!\control|state.S2~DUPLICATE_q\ & (!\control|ci[2]~DUPLICATE_q\ & 
-- \control|state.S5~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci\(0),
	datab => \control|ALT_INV_state.S2~DUPLICATE_q\,
	datac => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datad => \control|ALT_INV_state.S5~DUPLICATE_q\,
	datae => \control|ALT_INV_state.S4~DUPLICATE_q\,
	dataf => \control|ALT_INV_ci\(1),
	combout => \datos|Decoder2~4_combout\);

-- Location: LABCELL_X11_Y2_N36
\datos|R~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~58_combout\ = ( \datos|Decoder2~4_combout\ & ( (!\datos|process_0~0_combout\ & (\datos|Mux0~2_combout\)) # (\datos|process_0~0_combout\ & ((\datain[3]~input_o\))) ) ) # ( !\datos|Decoder2~4_combout\ & ( (!\datos|process_0~0_combout\ & 
-- (\datos|Mux7~2_combout\)) # (\datos|process_0~0_combout\ & ((\datain[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux0~2_combout\,
	datab => \datos|ALT_INV_Mux7~2_combout\,
	datac => \datos|ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_datain[3]~input_o\,
	dataf => \datos|ALT_INV_Decoder2~4_combout\,
	combout => \datos|R~58_combout\);

-- Location: MLABCELL_X8_Y2_N9
\datos|dataout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|dataout[0]~0_combout\ = ( !\radd[0]~input_o\ & ( \radd[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_radd[1]~input_o\,
	dataf => \ALT_INV_radd[0]~input_o\,
	combout => \datos|dataout[0]~0_combout\);

-- Location: LABCELL_X10_Y1_N39
\datos|R[2][3]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[2][3]~22_combout\ = ( \control|Selector4~0_combout\ & ( (!\control|Selector5~0_combout\ & (!\control|Selector3~1_combout\ & !\control|Selector3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_Selector5~0_combout\,
	datab => \control|ALT_INV_Selector3~1_combout\,
	datac => \control|ALT_INV_Selector3~0_combout\,
	dataf => \control|ALT_INV_Selector4~0_combout\,
	combout => \datos|R[2][3]~22_combout\);

-- Location: LABCELL_X9_Y1_N57
\datos|R[2][3]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[2][3]~23_combout\ = ( !\datos|Decoder2~4_combout\ & ( !\datos|R[2][3]~22_combout\ & ( ((!\wrinit~input_o\) # ((!\datos|R~2_combout\) # (!\control|state.S1~q\))) # (\control|state.S4~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S4~q\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \datos|ALT_INV_R~2_combout\,
	datad => \control|ALT_INV_state.S1~q\,
	datae => \datos|ALT_INV_Decoder2~4_combout\,
	dataf => \datos|ALT_INV_R[2][3]~22_combout\,
	combout => \datos|R[2][3]~23_combout\);

-- Location: LABCELL_X9_Y2_N57
\datos|R[2][3]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[2][3]~24_combout\ = ( \datos|dataout[0]~0_combout\ & ( !\datos|R[2][3]~23_combout\ & ( ((\datos|R~3_combout\ & ((\datos|LessThan0~3_combout\) # (\datos|LessThan0~2_combout\)))) # (\datos|R[2][3]~21_combout\) ) ) ) # ( 
-- !\datos|dataout[0]~0_combout\ & ( !\datos|R[2][3]~23_combout\ & ( (\datos|R~3_combout\ & ((\datos|LessThan0~3_combout\) # (\datos|LessThan0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~3_combout\,
	datab => \datos|ALT_INV_LessThan0~2_combout\,
	datac => \datos|ALT_INV_LessThan0~3_combout\,
	datad => \datos|ALT_INV_R[2][3]~21_combout\,
	datae => \datos|ALT_INV_dataout[0]~0_combout\,
	dataf => \datos|ALT_INV_R[2][3]~23_combout\,
	combout => \datos|R[2][3]~24_combout\);

-- Location: FF_X11_Y2_N38
\datos|R[2][3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~58_combout\,
	ena => \datos|R[2][3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[2][3]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y2_N30
\datos|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux7~1_combout\ = ( \control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[3][3]~q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[2][3]~DUPLICATE_q\ ) ) ) # ( 
-- \control|Selector2~0_combout\ & ( !\control|Selector1~0_combout\ & ( \datos|R[1][3]~DUPLICATE_q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( !\control|Selector1~0_combout\ & ( \datos|R[0][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[3][3]~q\,
	datab => \datos|ALT_INV_R[0][3]~q\,
	datac => \datos|ALT_INV_R[1][3]~DUPLICATE_q\,
	datad => \datos|ALT_INV_R[2][3]~DUPLICATE_q\,
	datae => \control|ALT_INV_Selector2~0_combout\,
	dataf => \control|ALT_INV_Selector1~0_combout\,
	combout => \datos|Mux7~1_combout\);

-- Location: LABCELL_X11_Y2_N57
\datos|R~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~57_combout\ = ( \datos|Decoder2~3_combout\ & ( (!\datos|process_0~0_combout\ & (\datos|Mux0~2_combout\)) # (\datos|process_0~0_combout\ & ((\datain[3]~input_o\))) ) ) # ( !\datos|Decoder2~3_combout\ & ( (!\datos|process_0~0_combout\ & 
-- (\datos|Mux7~2_combout\)) # (\datos|process_0~0_combout\ & ((\datain[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux0~2_combout\,
	datab => \datos|ALT_INV_Mux7~2_combout\,
	datac => \datos|ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_datain[3]~input_o\,
	dataf => \datos|ALT_INV_Decoder2~3_combout\,
	combout => \datos|R~57_combout\);

-- Location: FF_X10_Y2_N53
\datos|R[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \datos|R~57_combout\,
	sload => VCC,
	ena => \datos|R[7][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[7][3]~q\);

-- Location: LABCELL_X9_Y1_N30
\datos|Decoder2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder2~0_combout\ = ( !\control|ci\(2) & ( \control|ci\(1) & ( (\control|ci\(0) & (!\control|state.S2~q\ & (!\control|state.S4~q\ & \control|state.S5~q\))) ) ) ) # ( \control|ci\(2) & ( !\control|ci\(1) & ( (!\control|ci\(0) & 
-- (!\control|state.S5~q\ & ((\control|state.S4~q\) # (\control|state.S2~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010100000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci\(0),
	datab => \control|ALT_INV_state.S2~q\,
	datac => \control|ALT_INV_state.S4~q\,
	datad => \control|ALT_INV_state.S5~q\,
	datae => \control|ALT_INV_ci\(2),
	dataf => \control|ALT_INV_ci\(1),
	combout => \datos|Decoder2~0_combout\);

-- Location: MLABCELL_X8_Y2_N6
\datos|R~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~54_combout\ = ( \datos|Mux7~2_combout\ & ( (!\datos|process_0~0_combout\ & (((!\datos|Decoder2~0_combout\) # (\datos|Mux0~2_combout\)))) # (\datos|process_0~0_combout\ & (\datain[3]~input_o\)) ) ) # ( !\datos|Mux7~2_combout\ & ( 
-- (!\datos|process_0~0_combout\ & (((\datos|Decoder2~0_combout\ & \datos|Mux0~2_combout\)))) # (\datos|process_0~0_combout\ & (\datain[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110101000001010011010111000101111101011100010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_datain[3]~input_o\,
	datab => \datos|ALT_INV_Decoder2~0_combout\,
	datac => \datos|ALT_INV_process_0~0_combout\,
	datad => \datos|ALT_INV_Mux0~2_combout\,
	dataf => \datos|ALT_INV_Mux7~2_combout\,
	combout => \datos|R~54_combout\);

-- Location: LABCELL_X11_Y2_N42
\datos|R[4][0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[4][0]~1_combout\ = ( \radd[2]~input_o\ & ( !\control|state.S2~DUPLICATE_q\ & ( (\control|state.S1~DUPLICATE_q\ & (!\control|state.S4~DUPLICATE_q\ & (\wrinit~input_o\ & \control|state.S0~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S1~DUPLICATE_q\,
	datab => \control|ALT_INV_state.S4~DUPLICATE_q\,
	datac => \ALT_INV_wrinit~input_o\,
	datad => \control|ALT_INV_state.S0~q\,
	datae => \ALT_INV_radd[2]~input_o\,
	dataf => \control|ALT_INV_state.S2~DUPLICATE_q\,
	combout => \datos|R[4][0]~1_combout\);

-- Location: LABCELL_X10_Y1_N3
\datos|R[4][0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[4][0]~4_combout\ = ( !\control|Selector4~0_combout\ & ( (!\control|Selector5~0_combout\ & ((\control|Selector3~0_combout\) # (\control|Selector3~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_Selector5~0_combout\,
	datab => \control|ALT_INV_Selector3~1_combout\,
	datac => \control|ALT_INV_Selector3~0_combout\,
	dataf => \control|ALT_INV_Selector4~0_combout\,
	combout => \datos|R[4][0]~4_combout\);

-- Location: LABCELL_X9_Y1_N15
\datos|R[4][0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[4][0]~5_combout\ = ( !\datos|R[4][0]~4_combout\ & ( \wrinit~input_o\ & ( (!\datos|Decoder2~0_combout\ & (((!\datos|R~2_combout\) # (!\control|state.S1~q\)) # (\control|state.S4~q\))) ) ) ) # ( !\datos|R[4][0]~4_combout\ & ( !\wrinit~input_o\ & ( 
-- !\datos|Decoder2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000011001100110001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S4~q\,
	datab => \datos|ALT_INV_Decoder2~0_combout\,
	datac => \datos|ALT_INV_R~2_combout\,
	datad => \control|ALT_INV_state.S1~q\,
	datae => \datos|ALT_INV_R[4][0]~4_combout\,
	dataf => \ALT_INV_wrinit~input_o\,
	combout => \datos|R[4][0]~5_combout\);

-- Location: LABCELL_X9_Y2_N6
\datos|R[4][0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[4][0]~6_combout\ = ( \datos|Mux11~3_combout\ & ( !\datos|R[4][0]~5_combout\ & ( ((\datos|R~3_combout\ & ((\datos|LessThan0~3_combout\) # (\datos|LessThan0~2_combout\)))) # (\datos|R[4][0]~1_combout\) ) ) ) # ( !\datos|Mux11~3_combout\ & ( 
-- !\datos|R[4][0]~5_combout\ & ( (\datos|R~3_combout\ & ((\datos|LessThan0~3_combout\) # (\datos|LessThan0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101001101110111011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~3_combout\,
	datab => \datos|ALT_INV_R[4][0]~1_combout\,
	datac => \datos|ALT_INV_LessThan0~2_combout\,
	datad => \datos|ALT_INV_LessThan0~3_combout\,
	datae => \datos|ALT_INV_Mux11~3_combout\,
	dataf => \datos|ALT_INV_R[4][0]~5_combout\,
	combout => \datos|R[4][0]~6_combout\);

-- Location: FF_X8_Y2_N7
\datos|R[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~54_combout\,
	ena => \datos|R[4][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[4][3]~q\);

-- Location: LABCELL_X11_Y1_N6
\datos|Decoder2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Decoder2~2_combout\ = ( \control|state.S4~DUPLICATE_q\ & ( \control|ci\(1) & ( (!\control|ci\(0) & (\control|ci[2]~DUPLICATE_q\ & !\control|state.S5~DUPLICATE_q\)) ) ) ) # ( !\control|state.S4~DUPLICATE_q\ & ( \control|ci\(1) & ( (!\control|ci\(0) 
-- & (\control|state.S2~DUPLICATE_q\ & (\control|ci[2]~DUPLICATE_q\ & !\control|state.S5~DUPLICATE_q\))) ) ) ) # ( !\control|state.S4~DUPLICATE_q\ & ( !\control|ci\(1) & ( (\control|ci\(0) & (!\control|state.S2~DUPLICATE_q\ & (\control|ci[2]~DUPLICATE_q\ & 
-- \control|state.S5~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci\(0),
	datab => \control|ALT_INV_state.S2~DUPLICATE_q\,
	datac => \control|ALT_INV_ci[2]~DUPLICATE_q\,
	datad => \control|ALT_INV_state.S5~DUPLICATE_q\,
	datae => \control|ALT_INV_state.S4~DUPLICATE_q\,
	dataf => \control|ALT_INV_ci\(1),
	combout => \datos|Decoder2~2_combout\);

-- Location: LABCELL_X11_Y2_N51
\datos|R~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~56_combout\ = ( \datos|Mux0~2_combout\ & ( (!\datos|process_0~0_combout\ & (((\datos|Mux7~2_combout\)) # (\datos|Decoder2~2_combout\))) # (\datos|process_0~0_combout\ & (((\datain[3]~input_o\)))) ) ) # ( !\datos|Mux0~2_combout\ & ( 
-- (!\datos|process_0~0_combout\ & (!\datos|Decoder2~2_combout\ & ((\datos|Mux7~2_combout\)))) # (\datos|process_0~0_combout\ & (((\datain[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~2_combout\,
	datab => \datos|ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_datain[3]~input_o\,
	datad => \datos|ALT_INV_Mux7~2_combout\,
	dataf => \datos|ALT_INV_Mux0~2_combout\,
	combout => \datos|R~56_combout\);

-- Location: LABCELL_X10_Y1_N36
\datos|R[6][2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[6][2]~13_combout\ = ( \control|Selector4~0_combout\ & ( (!\control|Selector5~0_combout\ & ((\control|Selector3~0_combout\) # (\control|Selector3~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_Selector5~0_combout\,
	datab => \control|ALT_INV_Selector3~1_combout\,
	datac => \control|ALT_INV_Selector3~0_combout\,
	dataf => \control|ALT_INV_Selector4~0_combout\,
	combout => \datos|R[6][2]~13_combout\);

-- Location: LABCELL_X11_Y1_N42
\datos|R[6][2]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[6][2]~14_combout\ = ( \control|state.S1~DUPLICATE_q\ & ( !\datos|Decoder2~2_combout\ & ( (!\datos|R[6][2]~13_combout\ & (((!\wrinit~input_o\) # (!\datos|R~2_combout\)) # (\control|state.S4~DUPLICATE_q\))) ) ) ) # ( !\control|state.S1~DUPLICATE_q\ 
-- & ( !\datos|Decoder2~2_combout\ & ( !\datos|R[6][2]~13_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[6][2]~13_combout\,
	datab => \control|ALT_INV_state.S4~DUPLICATE_q\,
	datac => \ALT_INV_wrinit~input_o\,
	datad => \datos|ALT_INV_R~2_combout\,
	datae => \control|ALT_INV_state.S1~DUPLICATE_q\,
	dataf => \datos|ALT_INV_Decoder2~2_combout\,
	combout => \datos|R[6][2]~14_combout\);

-- Location: LABCELL_X9_Y2_N9
\datos|R[6][2]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[6][2]~15_combout\ = ( \datos|dataout[0]~0_combout\ & ( !\datos|R[6][2]~14_combout\ & ( ((\datos|R~3_combout\ & ((\datos|LessThan0~2_combout\) # (\datos|LessThan0~3_combout\)))) # (\datos|R[4][0]~1_combout\) ) ) ) # ( !\datos|dataout[0]~0_combout\ 
-- & ( !\datos|R[6][2]~14_combout\ & ( (\datos|R~3_combout\ & ((\datos|LessThan0~2_combout\) # (\datos|LessThan0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101001101110111011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~3_combout\,
	datab => \datos|ALT_INV_R[4][0]~1_combout\,
	datac => \datos|ALT_INV_LessThan0~3_combout\,
	datad => \datos|ALT_INV_LessThan0~2_combout\,
	datae => \datos|ALT_INV_dataout[0]~0_combout\,
	dataf => \datos|ALT_INV_R[6][2]~14_combout\,
	combout => \datos|R[6][2]~15_combout\);

-- Location: FF_X11_Y2_N52
\datos|R[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~56_combout\,
	ena => \datos|R[6][2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[6][3]~q\);

-- Location: MLABCELL_X8_Y2_N39
\datos|R~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~55_combout\ = ( \datos|Mux7~2_combout\ & ( (!\datos|process_0~0_combout\ & ((!\datos|Decoder2~1_combout\) # ((\datos|Mux0~2_combout\)))) # (\datos|process_0~0_combout\ & (((\datain[3]~input_o\)))) ) ) # ( !\datos|Mux7~2_combout\ & ( 
-- (!\datos|process_0~0_combout\ & (\datos|Decoder2~1_combout\ & ((\datos|Mux0~2_combout\)))) # (\datos|process_0~0_combout\ & (((\datain[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_process_0~0_combout\,
	datab => \datos|ALT_INV_Decoder2~1_combout\,
	datac => \ALT_INV_datain[3]~input_o\,
	datad => \datos|ALT_INV_Mux0~2_combout\,
	dataf => \datos|ALT_INV_Mux7~2_combout\,
	combout => \datos|R~55_combout\);

-- Location: FF_X8_Y2_N40
\datos|R[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~55_combout\,
	ena => \datos|R[5][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[5][3]~q\);

-- Location: LABCELL_X10_Y2_N27
\datos|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux7~0_combout\ = ( \control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[7][3]~q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[6][3]~q\ ) ) ) # ( \control|Selector2~0_combout\ & ( 
-- !\control|Selector1~0_combout\ & ( \datos|R[5][3]~q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( !\control|Selector1~0_combout\ & ( \datos|R[4][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[7][3]~q\,
	datab => \datos|ALT_INV_R[4][3]~q\,
	datac => \datos|ALT_INV_R[6][3]~q\,
	datad => \datos|ALT_INV_R[5][3]~q\,
	datae => \control|ALT_INV_Selector2~0_combout\,
	dataf => \control|ALT_INV_Selector1~0_combout\,
	combout => \datos|Mux7~0_combout\);

-- Location: LABCELL_X10_Y2_N48
\datos|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux7~2_combout\ = ( \control|Selector0~0_combout\ & ( \datos|Mux7~0_combout\ ) ) # ( !\control|Selector0~0_combout\ & ( \datos|Mux7~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Mux7~1_combout\,
	datac => \datos|ALT_INV_Mux7~0_combout\,
	dataf => \control|ALT_INV_Selector0~0_combout\,
	combout => \datos|Mux7~2_combout\);

-- Location: LABCELL_X11_Y2_N27
\datos|R~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~60_combout\ = ( \datos|Mux0~2_combout\ & ( (!\datos|process_0~0_combout\ & (((\datos|Mux7~2_combout\)) # (\datos|Decoder2~6_combout\))) # (\datos|process_0~0_combout\ & (((\datain[3]~input_o\)))) ) ) # ( !\datos|Mux0~2_combout\ & ( 
-- (!\datos|process_0~0_combout\ & (!\datos|Decoder2~6_combout\ & ((\datos|Mux7~2_combout\)))) # (\datos|process_0~0_combout\ & (((\datain[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_process_0~0_combout\,
	datab => \datos|ALT_INV_Decoder2~6_combout\,
	datac => \ALT_INV_datain[3]~input_o\,
	datad => \datos|ALT_INV_Mux7~2_combout\,
	dataf => \datos|ALT_INV_Mux0~2_combout\,
	combout => \datos|R~60_combout\);

-- Location: LABCELL_X10_Y1_N9
\datos|R[3][0]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[3][0]~31_combout\ = ( \control|Selector4~0_combout\ & ( (\control|Selector5~0_combout\ & (!\control|Selector3~1_combout\ & !\control|Selector3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_Selector5~0_combout\,
	datac => \control|ALT_INV_Selector3~1_combout\,
	datad => \control|ALT_INV_Selector3~0_combout\,
	dataf => \control|ALT_INV_Selector4~0_combout\,
	combout => \datos|R[3][0]~31_combout\);

-- Location: LABCELL_X11_Y1_N12
\datos|R[3][0]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[3][0]~32_combout\ = ( !\datos|Decoder2~6_combout\ & ( !\datos|R[3][0]~31_combout\ & ( (!\wrinit~input_o\) # (((!\control|state.S1~DUPLICATE_q\) # (!\datos|R~2_combout\)) # (\control|state.S4~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wrinit~input_o\,
	datab => \control|ALT_INV_state.S4~DUPLICATE_q\,
	datac => \control|ALT_INV_state.S1~DUPLICATE_q\,
	datad => \datos|ALT_INV_R~2_combout\,
	datae => \datos|ALT_INV_Decoder2~6_combout\,
	dataf => \datos|ALT_INV_R[3][0]~31_combout\,
	combout => \datos|R[3][0]~32_combout\);

-- Location: LABCELL_X9_Y2_N51
\datos|R[3][0]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[3][0]~33_combout\ = ( \datos|R[3][0]~30_combout\ & ( !\datos|R[3][0]~32_combout\ & ( ((\datos|R~3_combout\ & ((\datos|LessThan0~3_combout\) # (\datos|LessThan0~2_combout\)))) # (\radd[1]~input_o\) ) ) ) # ( !\datos|R[3][0]~30_combout\ & ( 
-- !\datos|R[3][0]~32_combout\ & ( (\datos|R~3_combout\ & ((\datos|LessThan0~3_combout\) # (\datos|LessThan0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111010101010111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_radd[1]~input_o\,
	datab => \datos|ALT_INV_LessThan0~2_combout\,
	datac => \datos|ALT_INV_LessThan0~3_combout\,
	datad => \datos|ALT_INV_R~3_combout\,
	datae => \datos|ALT_INV_R[3][0]~30_combout\,
	dataf => \datos|ALT_INV_R[3][0]~32_combout\,
	combout => \datos|R[3][0]~33_combout\);

-- Location: FF_X11_Y2_N28
\datos|R[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~60_combout\,
	ena => \datos|R[3][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[3][3]~q\);

-- Location: LABCELL_X10_Y2_N33
\datos|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux0~1_combout\ = ( \control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[3][3]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[2][3]~DUPLICATE_q\ ) ) ) # ( 
-- \control|Selector5~0_combout\ & ( !\control|Selector4~0_combout\ & ( \datos|R[1][3]~DUPLICATE_q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( !\control|Selector4~0_combout\ & ( \datos|R[0][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[3][3]~q\,
	datab => \datos|ALT_INV_R[0][3]~q\,
	datac => \datos|ALT_INV_R[2][3]~DUPLICATE_q\,
	datad => \datos|ALT_INV_R[1][3]~DUPLICATE_q\,
	datae => \control|ALT_INV_Selector5~0_combout\,
	dataf => \control|ALT_INV_Selector4~0_combout\,
	combout => \datos|Mux0~1_combout\);

-- Location: LABCELL_X10_Y2_N24
\datos|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux0~0_combout\ = ( \control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[7][3]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[6][3]~q\ ) ) ) # ( \control|Selector5~0_combout\ & ( 
-- !\control|Selector4~0_combout\ & ( \datos|R[5][3]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( !\control|Selector4~0_combout\ & ( \datos|R[4][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[7][3]~q\,
	datab => \datos|ALT_INV_R[4][3]~q\,
	datac => \datos|ALT_INV_R[5][3]~q\,
	datad => \datos|ALT_INV_R[6][3]~q\,
	datae => \control|ALT_INV_Selector5~0_combout\,
	dataf => \control|ALT_INV_Selector4~0_combout\,
	combout => \datos|Mux0~0_combout\);

-- Location: LABCELL_X10_Y2_N45
\datos|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux0~2_combout\ = ( \datos|Mux0~0_combout\ & ( (\datos|Mux0~1_combout\) # (\control|Selector3~2_combout\) ) ) # ( !\datos|Mux0~0_combout\ & ( (!\control|Selector3~2_combout\ & \datos|Mux0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \control|ALT_INV_Selector3~2_combout\,
	datad => \datos|ALT_INV_Mux0~1_combout\,
	dataf => \datos|ALT_INV_Mux0~0_combout\,
	combout => \datos|Mux0~2_combout\);

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

-- Location: LABCELL_X9_Y2_N45
\datos|R~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~47_combout\ = ( \datos|Mux1~2_combout\ & ( (!\datos|process_0~0_combout\ & (((\datos|Mux4~2_combout\)) # (\datos|Decoder2~1_combout\))) # (\datos|process_0~0_combout\ & (((\datain[2]~input_o\)))) ) ) # ( !\datos|Mux1~2_combout\ & ( 
-- (!\datos|process_0~0_combout\ & (!\datos|Decoder2~1_combout\ & ((\datos|Mux4~2_combout\)))) # (\datos|process_0~0_combout\ & (((\datain[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~1_combout\,
	datab => \datos|ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_datain[2]~input_o\,
	datad => \datos|ALT_INV_Mux4~2_combout\,
	dataf => \datos|ALT_INV_Mux1~2_combout\,
	combout => \datos|R~47_combout\);

-- Location: FF_X9_Y2_N46
\datos|R[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~47_combout\,
	ena => \datos|R[5][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[5][2]~q\);

-- Location: MLABCELL_X8_Y2_N0
\datos|R~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~49_combout\ = ( \datos|Mux4~2_combout\ & ( (!\datos|process_0~0_combout\ & (((!\datos|Decoder2~3_combout\)) # (\datos|Mux1~2_combout\))) # (\datos|process_0~0_combout\ & (((\datain[2]~input_o\)))) ) ) # ( !\datos|Mux4~2_combout\ & ( 
-- (!\datos|process_0~0_combout\ & (\datos|Mux1~2_combout\ & ((\datos|Decoder2~3_combout\)))) # (\datos|process_0~0_combout\ & (((\datain[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110011000001010011001111110101001100111111010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux1~2_combout\,
	datab => \ALT_INV_datain[2]~input_o\,
	datac => \datos|ALT_INV_Decoder2~3_combout\,
	datad => \datos|ALT_INV_process_0~0_combout\,
	dataf => \datos|ALT_INV_Mux4~2_combout\,
	combout => \datos|R~49_combout\);

-- Location: FF_X8_Y2_N1
\datos|R[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~49_combout\,
	ena => \datos|R[7][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[7][2]~q\);

-- Location: LABCELL_X11_Y2_N48
\datos|R~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~48_combout\ = ( \datos|Mux4~2_combout\ & ( (!\datos|process_0~0_combout\ & ((!\datos|Decoder2~2_combout\) # ((\datos|Mux1~2_combout\)))) # (\datos|process_0~0_combout\ & (((\datain[2]~input_o\)))) ) ) # ( !\datos|Mux4~2_combout\ & ( 
-- (!\datos|process_0~0_combout\ & (\datos|Decoder2~2_combout\ & ((\datos|Mux1~2_combout\)))) # (\datos|process_0~0_combout\ & (((\datain[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~2_combout\,
	datab => \datos|ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_datain[2]~input_o\,
	datad => \datos|ALT_INV_Mux1~2_combout\,
	dataf => \datos|ALT_INV_Mux4~2_combout\,
	combout => \datos|R~48_combout\);

-- Location: FF_X11_Y2_N49
\datos|R[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~48_combout\,
	ena => \datos|R[6][2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[6][2]~q\);

-- Location: LABCELL_X9_Y2_N39
\datos|R~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~46_combout\ = ( \datos|Mux1~2_combout\ & ( (!\datos|process_0~0_combout\ & (((\datos|Mux4~2_combout\)) # (\datos|Decoder2~0_combout\))) # (\datos|process_0~0_combout\ & (((\datain[2]~input_o\)))) ) ) # ( !\datos|Mux1~2_combout\ & ( 
-- (!\datos|process_0~0_combout\ & (!\datos|Decoder2~0_combout\ & ((\datos|Mux4~2_combout\)))) # (\datos|process_0~0_combout\ & (((\datain[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~0_combout\,
	datab => \datos|ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_datain[2]~input_o\,
	datad => \datos|ALT_INV_Mux4~2_combout\,
	dataf => \datos|ALT_INV_Mux1~2_combout\,
	combout => \datos|R~46_combout\);

-- Location: FF_X9_Y2_N40
\datos|R[4][2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~46_combout\,
	ena => \datos|R[4][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[4][2]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y2_N18
\datos|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux4~0_combout\ = ( \control|Selector2~0_combout\ & ( \datos|R[4][2]~DUPLICATE_q\ & ( (!\control|Selector1~0_combout\ & (\datos|R[5][2]~q\)) # (\control|Selector1~0_combout\ & ((\datos|R[7][2]~q\))) ) ) ) # ( !\control|Selector2~0_combout\ & ( 
-- \datos|R[4][2]~DUPLICATE_q\ & ( (!\control|Selector1~0_combout\) # (\datos|R[6][2]~q\) ) ) ) # ( \control|Selector2~0_combout\ & ( !\datos|R[4][2]~DUPLICATE_q\ & ( (!\control|Selector1~0_combout\ & (\datos|R[5][2]~q\)) # (\control|Selector1~0_combout\ & 
-- ((\datos|R[7][2]~q\))) ) ) ) # ( !\control|Selector2~0_combout\ & ( !\datos|R[4][2]~DUPLICATE_q\ & ( (\control|Selector1~0_combout\ & \datos|R[6][2]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010001110100011111001100111111110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[5][2]~q\,
	datab => \control|ALT_INV_Selector1~0_combout\,
	datac => \datos|ALT_INV_R[7][2]~q\,
	datad => \datos|ALT_INV_R[6][2]~q\,
	datae => \control|ALT_INV_Selector2~0_combout\,
	dataf => \datos|ALT_INV_R[4][2]~DUPLICATE_q\,
	combout => \datos|Mux4~0_combout\);

-- Location: LABCELL_X11_Y2_N24
\datos|R~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~52_combout\ = ( \datos|Mux4~2_combout\ & ( (!\datos|process_0~0_combout\ & ((!\datos|Decoder2~6_combout\) # ((\datos|Mux1~2_combout\)))) # (\datos|process_0~0_combout\ & (((\datain[2]~input_o\)))) ) ) # ( !\datos|Mux4~2_combout\ & ( 
-- (!\datos|process_0~0_combout\ & (\datos|Decoder2~6_combout\ & ((\datos|Mux1~2_combout\)))) # (\datos|process_0~0_combout\ & (((\datain[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_process_0~0_combout\,
	datab => \datos|ALT_INV_Decoder2~6_combout\,
	datac => \ALT_INV_datain[2]~input_o\,
	datad => \datos|ALT_INV_Mux1~2_combout\,
	dataf => \datos|ALT_INV_Mux4~2_combout\,
	combout => \datos|R~52_combout\);

-- Location: FF_X11_Y2_N25
\datos|R[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~52_combout\,
	ena => \datos|R[3][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[3][2]~q\);

-- Location: LABCELL_X11_Y2_N33
\datos|R~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~50_combout\ = ( \datos|Mux4~2_combout\ & ( (!\datos|process_0~0_combout\ & ((!\datos|Decoder2~4_combout\) # ((\datos|Mux1~2_combout\)))) # (\datos|process_0~0_combout\ & (((\datain[2]~input_o\)))) ) ) # ( !\datos|Mux4~2_combout\ & ( 
-- (!\datos|process_0~0_combout\ & (\datos|Decoder2~4_combout\ & ((\datos|Mux1~2_combout\)))) # (\datos|process_0~0_combout\ & (((\datain[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~4_combout\,
	datab => \datos|ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_datain[2]~input_o\,
	datad => \datos|ALT_INV_Mux1~2_combout\,
	dataf => \datos|ALT_INV_Mux4~2_combout\,
	combout => \datos|R~50_combout\);

-- Location: FF_X11_Y2_N35
\datos|R[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~50_combout\,
	ena => \datos|R[2][3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[2][2]~q\);

-- Location: LABCELL_X12_Y2_N3
\datos|R~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~51_combout\ = ( \datos|Mux4~2_combout\ & ( (!\datos|process_0~0_combout\ & ((!\datos|Decoder2~5_combout\) # ((\datos|Mux1~2_combout\)))) # (\datos|process_0~0_combout\ & (((\datain[2]~input_o\)))) ) ) # ( !\datos|Mux4~2_combout\ & ( 
-- (!\datos|process_0~0_combout\ & (\datos|Decoder2~5_combout\ & (\datos|Mux1~2_combout\))) # (\datos|process_0~0_combout\ & (((\datain[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_process_0~0_combout\,
	datab => \datos|ALT_INV_Decoder2~5_combout\,
	datac => \datos|ALT_INV_Mux1~2_combout\,
	datad => \ALT_INV_datain[2]~input_o\,
	dataf => \datos|ALT_INV_Mux4~2_combout\,
	combout => \datos|R~51_combout\);

-- Location: FF_X12_Y2_N5
\datos|R[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~51_combout\,
	ena => \datos|R[0][1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[0][2]~q\);

-- Location: LABCELL_X12_Y2_N24
\datos|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux4~1_combout\ = ( \datos|R[0][2]~q\ & ( \control|Selector1~0_combout\ & ( (!\control|Selector2~0_combout\ & ((\datos|R[2][2]~q\))) # (\control|Selector2~0_combout\ & (\datos|R[3][2]~q\)) ) ) ) # ( !\datos|R[0][2]~q\ & ( 
-- \control|Selector1~0_combout\ & ( (!\control|Selector2~0_combout\ & ((\datos|R[2][2]~q\))) # (\control|Selector2~0_combout\ & (\datos|R[3][2]~q\)) ) ) ) # ( \datos|R[0][2]~q\ & ( !\control|Selector1~0_combout\ & ( (!\control|Selector2~0_combout\) # 
-- (\datos|R[1][2]~q\) ) ) ) # ( !\datos|R[0][2]~q\ & ( !\control|Selector1~0_combout\ & ( (\datos|R[1][2]~q\ & \control|Selector2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[1][2]~q\,
	datab => \control|ALT_INV_Selector2~0_combout\,
	datac => \datos|ALT_INV_R[3][2]~q\,
	datad => \datos|ALT_INV_R[2][2]~q\,
	datae => \datos|ALT_INV_R[0][2]~q\,
	dataf => \control|ALT_INV_Selector1~0_combout\,
	combout => \datos|Mux4~1_combout\);

-- Location: LABCELL_X12_Y2_N9
\datos|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux4~2_combout\ = ( \datos|Mux4~1_combout\ & ( (!\control|Selector0~0_combout\) # (\datos|Mux4~0_combout\) ) ) # ( !\datos|Mux4~1_combout\ & ( (\datos|Mux4~0_combout\ & \control|Selector0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux4~0_combout\,
	datac => \control|ALT_INV_Selector0~0_combout\,
	dataf => \datos|ALT_INV_Mux4~1_combout\,
	combout => \datos|Mux4~2_combout\);

-- Location: LABCELL_X12_Y2_N48
\datos|R~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~53_combout\ = ( \datos|Mux4~2_combout\ & ( (!\datos|process_0~0_combout\ & ((!\datos|Decoder2~7_combout\) # ((\datos|Mux1~2_combout\)))) # (\datos|process_0~0_combout\ & (((\datain[2]~input_o\)))) ) ) # ( !\datos|Mux4~2_combout\ & ( 
-- (!\datos|process_0~0_combout\ & (\datos|Decoder2~7_combout\ & ((\datos|Mux1~2_combout\)))) # (\datos|process_0~0_combout\ & (((\datain[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~7_combout\,
	datab => \datos|ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_datain[2]~input_o\,
	datad => \datos|ALT_INV_Mux1~2_combout\,
	dataf => \datos|ALT_INV_Mux4~2_combout\,
	combout => \datos|R~53_combout\);

-- Location: FF_X12_Y2_N50
\datos|R[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~53_combout\,
	ena => \datos|R[1][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[1][2]~q\);

-- Location: LABCELL_X12_Y2_N57
\datos|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux1~1_combout\ = ( \control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[3][2]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[2][2]~q\ ) ) ) # ( \control|Selector5~0_combout\ & ( 
-- !\control|Selector4~0_combout\ & ( \datos|R[1][2]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( !\control|Selector4~0_combout\ & ( \datos|R[0][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[1][2]~q\,
	datab => \datos|ALT_INV_R[3][2]~q\,
	datac => \datos|ALT_INV_R[2][2]~q\,
	datad => \datos|ALT_INV_R[0][2]~q\,
	datae => \control|ALT_INV_Selector5~0_combout\,
	dataf => \control|ALT_INV_Selector4~0_combout\,
	combout => \datos|Mux1~1_combout\);

-- Location: FF_X9_Y2_N41
\datos|R[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~46_combout\,
	ena => \datos|R[4][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[4][2]~q\);

-- Location: LABCELL_X12_Y2_N42
\datos|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux1~0_combout\ = ( \control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[7][2]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[6][2]~q\ ) ) ) # ( \control|Selector5~0_combout\ & ( 
-- !\control|Selector4~0_combout\ & ( \datos|R[5][2]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( !\control|Selector4~0_combout\ & ( \datos|R[4][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[7][2]~q\,
	datab => \datos|ALT_INV_R[4][2]~q\,
	datac => \datos|ALT_INV_R[5][2]~q\,
	datad => \datos|ALT_INV_R[6][2]~q\,
	datae => \control|ALT_INV_Selector5~0_combout\,
	dataf => \control|ALT_INV_Selector4~0_combout\,
	combout => \datos|Mux1~0_combout\);

-- Location: LABCELL_X12_Y2_N30
\datos|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux1~2_combout\ = ( \datos|Mux1~0_combout\ & ( (\control|Selector3~2_combout\) # (\datos|Mux1~1_combout\) ) ) # ( !\datos|Mux1~0_combout\ & ( (\datos|Mux1~1_combout\ & !\control|Selector3~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Mux1~1_combout\,
	datac => \control|ALT_INV_Selector3~2_combout\,
	dataf => \datos|ALT_INV_Mux1~0_combout\,
	combout => \datos|Mux1~2_combout\);

-- Location: LABCELL_X11_Y2_N39
\datos|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|LessThan0~3_combout\ = ( \datos|Mux4~2_combout\ & ( (!\datos|Mux0~2_combout\ & ((!\datos|Mux1~2_combout\) # (\datos|Mux7~2_combout\))) # (\datos|Mux0~2_combout\ & (\datos|Mux7~2_combout\ & !\datos|Mux1~2_combout\)) ) ) # ( !\datos|Mux4~2_combout\ & 
-- ( (!\datos|Mux0~2_combout\ & \datos|Mux7~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001010110010101100101011001010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux0~2_combout\,
	datab => \datos|ALT_INV_Mux7~2_combout\,
	datac => \datos|ALT_INV_Mux1~2_combout\,
	dataf => \datos|ALT_INV_Mux4~2_combout\,
	combout => \datos|LessThan0~3_combout\);

-- Location: LABCELL_X11_Y2_N18
\datos|R[5][0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[5][0]~8_combout\ = ( \radd[2]~input_o\ & ( \datos|R~2_combout\ & ( (\control|state.S1~DUPLICATE_q\ & (!\control|state.S4~DUPLICATE_q\ & (\wrinit~input_o\ & \radd[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S1~DUPLICATE_q\,
	datab => \control|ALT_INV_state.S4~DUPLICATE_q\,
	datac => \ALT_INV_wrinit~input_o\,
	datad => \ALT_INV_radd[0]~input_o\,
	datae => \ALT_INV_radd[2]~input_o\,
	dataf => \datos|ALT_INV_R~2_combout\,
	combout => \datos|R[5][0]~8_combout\);

-- Location: LABCELL_X10_Y1_N0
\datos|R[5][0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[5][0]~9_combout\ = ( !\control|Selector4~0_combout\ & ( (\control|Selector5~0_combout\ & ((\control|Selector3~0_combout\) # (\control|Selector3~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_Selector5~0_combout\,
	datab => \control|ALT_INV_Selector3~1_combout\,
	datac => \control|ALT_INV_Selector3~0_combout\,
	dataf => \control|ALT_INV_Selector4~0_combout\,
	combout => \datos|R[5][0]~9_combout\);

-- Location: LABCELL_X9_Y1_N54
\datos|R[5][0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[5][0]~10_combout\ = ( !\datos|R[5][0]~9_combout\ & ( !\datos|Decoder2~1_combout\ & ( ((!\wrinit~input_o\) # ((!\control|state.S1~q\) # (!\datos|R~2_combout\))) # (\control|state.S4~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_state.S4~q\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_state.S1~q\,
	datad => \datos|ALT_INV_R~2_combout\,
	datae => \datos|ALT_INV_R[5][0]~9_combout\,
	dataf => \datos|ALT_INV_Decoder2~1_combout\,
	combout => \datos|R[5][0]~10_combout\);

-- Location: LABCELL_X9_Y2_N12
\datos|R[5][0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[5][0]~11_combout\ = ( \datos|R[5][0]~8_combout\ & ( !\datos|R[5][0]~10_combout\ & ( (!\radd[1]~input_o\) # ((\datos|R~3_combout\ & ((\datos|LessThan0~2_combout\) # (\datos|LessThan0~3_combout\)))) ) ) ) # ( !\datos|R[5][0]~8_combout\ & ( 
-- !\datos|R[5][0]~10_combout\ & ( (\datos|R~3_combout\ & ((\datos|LessThan0~2_combout\) # (\datos|LessThan0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101111100011111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~3_combout\,
	datab => \datos|ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_radd[1]~input_o\,
	datad => \datos|ALT_INV_LessThan0~2_combout\,
	datae => \datos|ALT_INV_R[5][0]~8_combout\,
	dataf => \datos|ALT_INV_R[5][0]~10_combout\,
	combout => \datos|R[5][0]~11_combout\);

-- Location: FF_X9_Y2_N44
\datos|R[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~39_combout\,
	ena => \datos|R[5][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[5][1]~q\);

-- Location: LABCELL_X9_Y2_N36
\datos|R~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~38_combout\ = ( \datos|Mux2~2_combout\ & ( (!\datos|process_0~0_combout\ & (((\datos|Mux5~2_combout\)) # (\datos|Decoder2~0_combout\))) # (\datos|process_0~0_combout\ & (((\datain[1]~input_o\)))) ) ) # ( !\datos|Mux2~2_combout\ & ( 
-- (!\datos|process_0~0_combout\ & (!\datos|Decoder2~0_combout\ & (\datos|Mux5~2_combout\))) # (\datos|process_0~0_combout\ & (((\datain[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~0_combout\,
	datab => \datos|ALT_INV_process_0~0_combout\,
	datac => \datos|ALT_INV_Mux5~2_combout\,
	datad => \ALT_INV_datain[1]~input_o\,
	dataf => \datos|ALT_INV_Mux2~2_combout\,
	combout => \datos|R~38_combout\);

-- Location: FF_X9_Y2_N38
\datos|R[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~38_combout\,
	ena => \datos|R[4][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[4][1]~q\);

-- Location: LABCELL_X9_Y2_N0
\datos|R~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~40_combout\ = ( \datos|Mux2~2_combout\ & ( (!\datos|process_0~0_combout\ & (((\datos|Mux5~2_combout\)) # (\datos|Decoder2~2_combout\))) # (\datos|process_0~0_combout\ & (((\datain[1]~input_o\)))) ) ) # ( !\datos|Mux2~2_combout\ & ( 
-- (!\datos|process_0~0_combout\ & (!\datos|Decoder2~2_combout\ & (\datos|Mux5~2_combout\))) # (\datos|process_0~0_combout\ & (((\datain[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~2_combout\,
	datab => \datos|ALT_INV_process_0~0_combout\,
	datac => \datos|ALT_INV_Mux5~2_combout\,
	datad => \ALT_INV_datain[1]~input_o\,
	dataf => \datos|ALT_INV_Mux2~2_combout\,
	combout => \datos|R~40_combout\);

-- Location: FF_X9_Y2_N2
\datos|R[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~40_combout\,
	ena => \datos|R[6][2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[6][1]~q\);

-- Location: LABCELL_X9_Y2_N27
\datos|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux2~0_combout\ = ( \control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[7][1]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[6][1]~q\ ) ) ) # ( \control|Selector5~0_combout\ & ( 
-- !\control|Selector4~0_combout\ & ( \datos|R[5][1]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( !\control|Selector4~0_combout\ & ( \datos|R[4][1]~q\ ) ) )

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
	datae => \control|ALT_INV_Selector5~0_combout\,
	dataf => \control|ALT_INV_Selector4~0_combout\,
	combout => \datos|Mux2~0_combout\);

-- Location: LABCELL_X10_Y2_N42
\datos|R~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~43_combout\ = ( \datos|Mux2~2_combout\ & ( (!\datos|process_0~0_combout\ & (((\datos|Mux5~2_combout\) # (\datos|Decoder2~5_combout\)))) # (\datos|process_0~0_combout\ & (\datain[1]~input_o\)) ) ) # ( !\datos|Mux2~2_combout\ & ( 
-- (!\datos|process_0~0_combout\ & (((!\datos|Decoder2~5_combout\ & \datos|Mux5~2_combout\)))) # (\datos|process_0~0_combout\ & (\datain[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110110001000100011011000100011011101110110001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_datain[1]~input_o\,
	datac => \datos|ALT_INV_Decoder2~5_combout\,
	datad => \datos|ALT_INV_Mux5~2_combout\,
	dataf => \datos|ALT_INV_Mux2~2_combout\,
	combout => \datos|R~43_combout\);

-- Location: FF_X10_Y2_N44
\datos|R[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~43_combout\,
	ena => \datos|R[0][1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[0][1]~q\);

-- Location: LABCELL_X12_Y2_N36
\datos|R~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~45_combout\ = ( \datos|Mux2~2_combout\ & ( (!\datos|process_0~0_combout\ & (((\datos|Mux5~2_combout\)) # (\datos|Decoder2~7_combout\))) # (\datos|process_0~0_combout\ & (((\datain[1]~input_o\)))) ) ) # ( !\datos|Mux2~2_combout\ & ( 
-- (!\datos|process_0~0_combout\ & (!\datos|Decoder2~7_combout\ & ((\datos|Mux5~2_combout\)))) # (\datos|process_0~0_combout\ & (((\datain[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~7_combout\,
	datab => \datos|ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_datain[1]~input_o\,
	datad => \datos|ALT_INV_Mux5~2_combout\,
	dataf => \datos|ALT_INV_Mux2~2_combout\,
	combout => \datos|R~45_combout\);

-- Location: FF_X12_Y2_N37
\datos|R[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~45_combout\,
	ena => \datos|R[1][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[1][1]~q\);

-- Location: LABCELL_X11_Y2_N9
\datos|R~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~44_combout\ = ( \datos|Mux5~2_combout\ & ( (!\datos|process_0~0_combout\ & ((!\datos|Decoder2~6_combout\) # ((\datos|Mux2~2_combout\)))) # (\datos|process_0~0_combout\ & (((\datain[1]~input_o\)))) ) ) # ( !\datos|Mux5~2_combout\ & ( 
-- (!\datos|process_0~0_combout\ & (\datos|Decoder2~6_combout\ & ((\datos|Mux2~2_combout\)))) # (\datos|process_0~0_combout\ & (((\datain[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_process_0~0_combout\,
	datab => \datos|ALT_INV_Decoder2~6_combout\,
	datac => \ALT_INV_datain[1]~input_o\,
	datad => \datos|ALT_INV_Mux2~2_combout\,
	dataf => \datos|ALT_INV_Mux5~2_combout\,
	combout => \datos|R~44_combout\);

-- Location: FF_X11_Y2_N11
\datos|R[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~44_combout\,
	ena => \datos|R[3][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[3][1]~q\);

-- Location: LABCELL_X10_Y2_N15
\datos|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux2~1_combout\ = ( \control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[3][1]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[2][1]~q\ ) ) ) # ( \control|Selector5~0_combout\ & ( 
-- !\control|Selector4~0_combout\ & ( \datos|R[1][1]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( !\control|Selector4~0_combout\ & ( \datos|R[0][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[2][1]~q\,
	datab => \datos|ALT_INV_R[0][1]~q\,
	datac => \datos|ALT_INV_R[1][1]~q\,
	datad => \datos|ALT_INV_R[3][1]~q\,
	datae => \control|ALT_INV_Selector5~0_combout\,
	dataf => \control|ALT_INV_Selector4~0_combout\,
	combout => \datos|Mux2~1_combout\);

-- Location: LABCELL_X10_Y2_N9
\datos|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux2~2_combout\ = ( \datos|Mux2~1_combout\ & ( (!\control|Selector3~2_combout\) # (\datos|Mux2~0_combout\) ) ) # ( !\datos|Mux2~1_combout\ & ( (\datos|Mux2~0_combout\ & \control|Selector3~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \datos|ALT_INV_Mux2~0_combout\,
	datad => \control|ALT_INV_Selector3~2_combout\,
	dataf => \datos|ALT_INV_Mux2~1_combout\,
	combout => \datos|Mux2~2_combout\);

-- Location: LABCELL_X10_Y2_N6
\datos|R~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~42_combout\ = ( \datos|Decoder2~4_combout\ & ( (!\datos|process_0~0_combout\ & (\datos|Mux2~2_combout\)) # (\datos|process_0~0_combout\ & ((\datain[1]~input_o\))) ) ) # ( !\datos|Decoder2~4_combout\ & ( (!\datos|process_0~0_combout\ & 
-- (\datos|Mux5~2_combout\)) # (\datos|process_0~0_combout\ & ((\datain[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_process_0~0_combout\,
	datab => \datos|ALT_INV_Mux2~2_combout\,
	datac => \datos|ALT_INV_Mux5~2_combout\,
	datad => \ALT_INV_datain[1]~input_o\,
	dataf => \datos|ALT_INV_Decoder2~4_combout\,
	combout => \datos|R~42_combout\);

-- Location: FF_X10_Y2_N7
\datos|R[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~42_combout\,
	ena => \datos|R[2][3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[2][1]~q\);

-- Location: LABCELL_X10_Y2_N12
\datos|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux5~1_combout\ = ( \control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[3][1]~q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[2][1]~q\ ) ) ) # ( \control|Selector2~0_combout\ & ( 
-- !\control|Selector1~0_combout\ & ( \datos|R[1][1]~q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( !\control|Selector1~0_combout\ & ( \datos|R[0][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[2][1]~q\,
	datab => \datos|ALT_INV_R[0][1]~q\,
	datac => \datos|ALT_INV_R[3][1]~q\,
	datad => \datos|ALT_INV_R[1][1]~q\,
	datae => \control|ALT_INV_Selector2~0_combout\,
	dataf => \control|ALT_INV_Selector1~0_combout\,
	combout => \datos|Mux5~1_combout\);

-- Location: LABCELL_X9_Y2_N24
\datos|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux5~0_combout\ = ( \control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[7][1]~q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[6][1]~q\ ) ) ) # ( \control|Selector2~0_combout\ & ( 
-- !\control|Selector1~0_combout\ & ( \datos|R[5][1]~q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( !\control|Selector1~0_combout\ & ( \datos|R[4][1]~q\ ) ) )

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
	datae => \control|ALT_INV_Selector2~0_combout\,
	dataf => \control|ALT_INV_Selector1~0_combout\,
	combout => \datos|Mux5~0_combout\);

-- Location: LABCELL_X10_Y2_N3
\datos|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux5~2_combout\ = ( \control|Selector0~0_combout\ & ( \datos|Mux5~0_combout\ ) ) # ( !\control|Selector0~0_combout\ & ( \datos|Mux5~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \datos|ALT_INV_Mux5~1_combout\,
	datad => \datos|ALT_INV_Mux5~0_combout\,
	dataf => \control|ALT_INV_Selector0~0_combout\,
	combout => \datos|Mux5~2_combout\);

-- Location: LABCELL_X11_Y2_N30
\datos|R~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~20_combout\ = ( \datain[0]~input_o\ & ( ((!\datos|Decoder2~4_combout\ & (\datos|Mux6~2_combout\)) # (\datos|Decoder2~4_combout\ & ((\datos|Mux3~2_combout\)))) # (\datos|process_0~0_combout\) ) ) # ( !\datain[0]~input_o\ & ( 
-- (!\datos|process_0~0_combout\ & ((!\datos|Decoder2~4_combout\ & (\datos|Mux6~2_combout\)) # (\datos|Decoder2~4_combout\ & ((\datos|Mux3~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~4_combout\,
	datab => \datos|ALT_INV_process_0~0_combout\,
	datac => \datos|ALT_INV_Mux6~2_combout\,
	datad => \datos|ALT_INV_Mux3~2_combout\,
	dataf => \ALT_INV_datain[0]~input_o\,
	combout => \datos|R~20_combout\);

-- Location: FF_X11_Y2_N32
\datos|R[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~20_combout\,
	ena => \datos|R[2][3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[2][0]~q\);

-- Location: LABCELL_X11_Y2_N6
\datos|R~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~29_combout\ = ( \datain[0]~input_o\ & ( ((!\datos|Decoder2~6_combout\ & (\datos|Mux6~2_combout\)) # (\datos|Decoder2~6_combout\ & ((\datos|Mux3~2_combout\)))) # (\datos|process_0~0_combout\) ) ) # ( !\datain[0]~input_o\ & ( 
-- (!\datos|process_0~0_combout\ & ((!\datos|Decoder2~6_combout\ & (\datos|Mux6~2_combout\)) # (\datos|Decoder2~6_combout\ & ((\datos|Mux3~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_process_0~0_combout\,
	datab => \datos|ALT_INV_Decoder2~6_combout\,
	datac => \datos|ALT_INV_Mux6~2_combout\,
	datad => \datos|ALT_INV_Mux3~2_combout\,
	dataf => \ALT_INV_datain[0]~input_o\,
	combout => \datos|R~29_combout\);

-- Location: FF_X11_Y2_N8
\datos|R[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~29_combout\,
	ena => \datos|R[3][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[3][0]~q\);

-- Location: LABCELL_X12_Y2_N0
\datos|R~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~25_combout\ = ( \datain[0]~input_o\ & ( ((!\datos|Decoder2~5_combout\ & (\datos|Mux6~2_combout\)) # (\datos|Decoder2~5_combout\ & ((\datos|Mux3~2_combout\)))) # (\datos|process_0~0_combout\) ) ) # ( !\datain[0]~input_o\ & ( 
-- (!\datos|process_0~0_combout\ & ((!\datos|Decoder2~5_combout\ & (\datos|Mux6~2_combout\)) # (\datos|Decoder2~5_combout\ & ((\datos|Mux3~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_process_0~0_combout\,
	datab => \datos|ALT_INV_Decoder2~5_combout\,
	datac => \datos|ALT_INV_Mux6~2_combout\,
	datad => \datos|ALT_INV_Mux3~2_combout\,
	dataf => \ALT_INV_datain[0]~input_o\,
	combout => \datos|R~25_combout\);

-- Location: FF_X12_Y2_N1
\datos|R[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~25_combout\,
	ena => \datos|R[0][1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[0][0]~q\);

-- Location: MLABCELL_X8_Y2_N51
\datos|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux3~1_combout\ = ( \control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[3][0]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[2][0]~q\ ) ) ) # ( \control|Selector5~0_combout\ & ( 
-- !\control|Selector4~0_combout\ & ( \datos|R[1][0]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( !\control|Selector4~0_combout\ & ( \datos|R[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[2][0]~q\,
	datab => \datos|ALT_INV_R[3][0]~q\,
	datac => \datos|ALT_INV_R[0][0]~q\,
	datad => \datos|ALT_INV_R[1][0]~q\,
	datae => \control|ALT_INV_Selector5~0_combout\,
	dataf => \control|ALT_INV_Selector4~0_combout\,
	combout => \datos|Mux3~1_combout\);

-- Location: MLABCELL_X8_Y2_N48
\datos|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux6~1_combout\ = ( \control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[3][0]~q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[2][0]~q\ ) ) ) # ( \control|Selector2~0_combout\ & ( 
-- !\control|Selector1~0_combout\ & ( \datos|R[1][0]~q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( !\control|Selector1~0_combout\ & ( \datos|R[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[2][0]~q\,
	datab => \datos|ALT_INV_R[3][0]~q\,
	datac => \datos|ALT_INV_R[1][0]~q\,
	datad => \datos|ALT_INV_R[0][0]~q\,
	datae => \control|ALT_INV_Selector2~0_combout\,
	dataf => \control|ALT_INV_Selector1~0_combout\,
	combout => \datos|Mux6~1_combout\);

-- Location: MLABCELL_X8_Y2_N24
\datos|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|LessThan0~1_combout\ = ( \control|Selector3~2_combout\ & ( \datos|Mux6~0_combout\ & ( (!\datos|Mux3~0_combout\ & ((\control|Selector0~0_combout\) # (\datos|Mux6~1_combout\))) ) ) ) # ( !\control|Selector3~2_combout\ & ( \datos|Mux6~0_combout\ & ( 
-- (!\datos|Mux3~1_combout\ & ((\control|Selector0~0_combout\) # (\datos|Mux6~1_combout\))) ) ) ) # ( \control|Selector3~2_combout\ & ( !\datos|Mux6~0_combout\ & ( (!\datos|Mux3~0_combout\ & (\datos|Mux6~1_combout\ & !\control|Selector0~0_combout\)) ) ) ) # 
-- ( !\control|Selector3~2_combout\ & ( !\datos|Mux6~0_combout\ & ( (!\datos|Mux3~1_combout\ & (\datos|Mux6~1_combout\ & !\control|Selector0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000011000000000000001010101010100000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux3~1_combout\,
	datab => \datos|ALT_INV_Mux3~0_combout\,
	datac => \datos|ALT_INV_Mux6~1_combout\,
	datad => \control|ALT_INV_Selector0~0_combout\,
	datae => \control|ALT_INV_Selector3~2_combout\,
	dataf => \datos|ALT_INV_Mux6~0_combout\,
	combout => \datos|LessThan0~1_combout\);

-- Location: LABCELL_X10_Y2_N36
\datos|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|LessThan0~0_combout\ = ( \control|Selector3~2_combout\ & ( \datos|Mux0~0_combout\ & ( (!\control|Selector0~0_combout\ & (!\datos|Mux7~1_combout\)) # (\control|Selector0~0_combout\ & ((!\datos|Mux7~0_combout\))) ) ) ) # ( 
-- !\control|Selector3~2_combout\ & ( \datos|Mux0~0_combout\ & ( !\datos|Mux0~1_combout\ $ (((!\control|Selector0~0_combout\ & (!\datos|Mux7~1_combout\)) # (\control|Selector0~0_combout\ & ((!\datos|Mux7~0_combout\))))) ) ) ) # ( 
-- \control|Selector3~2_combout\ & ( !\datos|Mux0~0_combout\ & ( (!\control|Selector0~0_combout\ & (\datos|Mux7~1_combout\)) # (\control|Selector0~0_combout\ & ((\datos|Mux7~0_combout\))) ) ) ) # ( !\control|Selector3~2_combout\ & ( !\datos|Mux0~0_combout\ & 
-- ( !\datos|Mux0~1_combout\ $ (((!\control|Selector0~0_combout\ & (!\datos|Mux7~1_combout\)) # (\control|Selector0~0_combout\ & ((!\datos|Mux7~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001011010001100110000111101100110010110101100110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux0~1_combout\,
	datab => \datos|ALT_INV_Mux7~1_combout\,
	datac => \datos|ALT_INV_Mux7~0_combout\,
	datad => \control|ALT_INV_Selector0~0_combout\,
	datae => \control|ALT_INV_Selector3~2_combout\,
	dataf => \datos|ALT_INV_Mux0~0_combout\,
	combout => \datos|LessThan0~0_combout\);

-- Location: LABCELL_X9_Y2_N30
\datos|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|LessThan0~2_combout\ = ( \datos|Mux4~2_combout\ & ( \datos|Mux1~2_combout\ & ( (!\datos|LessThan0~0_combout\ & ((!\datos|Mux5~2_combout\ & (\datos|LessThan0~1_combout\ & !\datos|Mux2~2_combout\)) # (\datos|Mux5~2_combout\ & 
-- ((!\datos|Mux2~2_combout\) # (\datos|LessThan0~1_combout\))))) ) ) ) # ( !\datos|Mux4~2_combout\ & ( !\datos|Mux1~2_combout\ & ( (!\datos|LessThan0~0_combout\ & ((!\datos|Mux5~2_combout\ & (\datos|LessThan0~1_combout\ & !\datos|Mux2~2_combout\)) # 
-- (\datos|Mux5~2_combout\ & ((!\datos|Mux2~2_combout\) # (\datos|LessThan0~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000000000000000000000000000000000000000111000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Mux5~2_combout\,
	datab => \datos|ALT_INV_LessThan0~1_combout\,
	datac => \datos|ALT_INV_Mux2~2_combout\,
	datad => \datos|ALT_INV_LessThan0~0_combout\,
	datae => \datos|ALT_INV_Mux4~2_combout\,
	dataf => \datos|ALT_INV_Mux1~2_combout\,
	combout => \datos|LessThan0~2_combout\);

-- Location: LABCELL_X10_Y1_N45
\datos|R[7][0]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[7][0]~17_combout\ = ( \control|Selector4~0_combout\ & ( (\control|Selector5~0_combout\ & ((\control|Selector3~0_combout\) # (\control|Selector3~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_Selector5~0_combout\,
	datab => \control|ALT_INV_Selector3~1_combout\,
	datac => \control|ALT_INV_Selector3~0_combout\,
	dataf => \control|ALT_INV_Selector4~0_combout\,
	combout => \datos|R[7][0]~17_combout\);

-- Location: LABCELL_X10_Y1_N51
\datos|R[7][0]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[7][0]~18_combout\ = ( !\datos|R[7][0]~17_combout\ & ( !\datos|Decoder2~3_combout\ & ( (!\datos|R~2_combout\) # ((!\wrinit~input_o\) # ((!\control|state.S1~DUPLICATE_q\) # (\control|state.S4~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R~2_combout\,
	datab => \ALT_INV_wrinit~input_o\,
	datac => \control|ALT_INV_state.S4~DUPLICATE_q\,
	datad => \control|ALT_INV_state.S1~DUPLICATE_q\,
	datae => \datos|ALT_INV_R[7][0]~17_combout\,
	dataf => \datos|ALT_INV_Decoder2~3_combout\,
	combout => \datos|R[7][0]~18_combout\);

-- Location: LABCELL_X9_Y2_N48
\datos|R[7][0]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R[7][0]~19_combout\ = ( \datos|R[5][0]~8_combout\ & ( !\datos|R[7][0]~18_combout\ & ( ((\datos|R~3_combout\ & ((\datos|LessThan0~3_combout\) # (\datos|LessThan0~2_combout\)))) # (\radd[1]~input_o\) ) ) ) # ( !\datos|R[5][0]~8_combout\ & ( 
-- !\datos|R[7][0]~18_combout\ & ( (\datos|R~3_combout\ & ((\datos|LessThan0~3_combout\) # (\datos|LessThan0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111010101110101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_radd[1]~input_o\,
	datab => \datos|ALT_INV_LessThan0~2_combout\,
	datac => \datos|ALT_INV_R~3_combout\,
	datad => \datos|ALT_INV_LessThan0~3_combout\,
	datae => \datos|ALT_INV_R[5][0]~8_combout\,
	dataf => \datos|ALT_INV_R[7][0]~18_combout\,
	combout => \datos|R[7][0]~19_combout\);

-- Location: FF_X8_Y2_N44
\datos|R[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~16_combout\,
	ena => \datos|R[7][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[7][0]~q\);

-- Location: MLABCELL_X8_Y2_N36
\datos|R~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~7_combout\ = ( \datain[0]~input_o\ & ( ((!\datos|Decoder2~1_combout\ & (\datos|Mux6~2_combout\)) # (\datos|Decoder2~1_combout\ & ((\datos|Mux3~2_combout\)))) # (\datos|process_0~0_combout\) ) ) # ( !\datain[0]~input_o\ & ( 
-- (!\datos|process_0~0_combout\ & ((!\datos|Decoder2~1_combout\ & (\datos|Mux6~2_combout\)) # (\datos|Decoder2~1_combout\ & ((\datos|Mux3~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_process_0~0_combout\,
	datab => \datos|ALT_INV_Decoder2~1_combout\,
	datac => \datos|ALT_INV_Mux6~2_combout\,
	datad => \datos|ALT_INV_Mux3~2_combout\,
	dataf => \ALT_INV_datain[0]~input_o\,
	combout => \datos|R~7_combout\);

-- Location: FF_X8_Y2_N37
\datos|R[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~7_combout\,
	ena => \datos|R[5][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[5][0]~q\);

-- Location: LABCELL_X9_Y2_N3
\datos|R~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~12_combout\ = ( \datain[0]~input_o\ & ( ((!\datos|Decoder2~2_combout\ & (\datos|Mux6~2_combout\)) # (\datos|Decoder2~2_combout\ & ((\datos|Mux3~2_combout\)))) # (\datos|process_0~0_combout\) ) ) # ( !\datain[0]~input_o\ & ( 
-- (!\datos|process_0~0_combout\ & ((!\datos|Decoder2~2_combout\ & (\datos|Mux6~2_combout\)) # (\datos|Decoder2~2_combout\ & ((\datos|Mux3~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~2_combout\,
	datab => \datos|ALT_INV_process_0~0_combout\,
	datac => \datos|ALT_INV_Mux6~2_combout\,
	datad => \datos|ALT_INV_Mux3~2_combout\,
	dataf => \ALT_INV_datain[0]~input_o\,
	combout => \datos|R~12_combout\);

-- Location: FF_X9_Y2_N5
\datos|R[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~12_combout\,
	ena => \datos|R[6][2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[6][0]~q\);

-- Location: MLABCELL_X8_Y2_N15
\datos|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux6~0_combout\ = ( \control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[7][0]~q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( \control|Selector1~0_combout\ & ( \datos|R[6][0]~q\ ) ) ) # ( \control|Selector2~0_combout\ & ( 
-- !\control|Selector1~0_combout\ & ( \datos|R[5][0]~q\ ) ) ) # ( !\control|Selector2~0_combout\ & ( !\control|Selector1~0_combout\ & ( \datos|R[4][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[4][0]~q\,
	datab => \datos|ALT_INV_R[7][0]~q\,
	datac => \datos|ALT_INV_R[5][0]~q\,
	datad => \datos|ALT_INV_R[6][0]~q\,
	datae => \control|ALT_INV_Selector2~0_combout\,
	dataf => \control|ALT_INV_Selector1~0_combout\,
	combout => \datos|Mux6~0_combout\);

-- Location: MLABCELL_X8_Y2_N3
\datos|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux6~2_combout\ = ( \datos|Mux6~1_combout\ & ( (!\control|Selector0~0_combout\) # (\datos|Mux6~0_combout\) ) ) # ( !\datos|Mux6~1_combout\ & ( (\datos|Mux6~0_combout\ & \control|Selector0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \datos|ALT_INV_Mux6~0_combout\,
	datad => \control|ALT_INV_Selector0~0_combout\,
	dataf => \datos|ALT_INV_Mux6~1_combout\,
	combout => \datos|Mux6~2_combout\);

-- Location: MLABCELL_X8_Y2_N30
\datos|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~0_combout\ = ( \datos|Decoder2~0_combout\ & ( (!\datos|process_0~0_combout\ & ((\datos|Mux3~2_combout\))) # (\datos|process_0~0_combout\ & (\datain[0]~input_o\)) ) ) # ( !\datos|Decoder2~0_combout\ & ( (!\datos|process_0~0_combout\ & 
-- ((\datos|Mux6~2_combout\))) # (\datos|process_0~0_combout\ & (\datain[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_datain[0]~input_o\,
	datac => \datos|ALT_INV_Mux6~2_combout\,
	datad => \datos|ALT_INV_Mux3~2_combout\,
	dataf => \datos|ALT_INV_Decoder2~0_combout\,
	combout => \datos|R~0_combout\);

-- Location: FF_X8_Y2_N31
\datos|R[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~0_combout\,
	ena => \datos|R[4][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[4][0]~q\);

-- Location: MLABCELL_X8_Y2_N12
\datos|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux3~0_combout\ = ( \control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[7][0]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( \control|Selector4~0_combout\ & ( \datos|R[6][0]~q\ ) ) ) # ( \control|Selector5~0_combout\ & ( 
-- !\control|Selector4~0_combout\ & ( \datos|R[5][0]~q\ ) ) ) # ( !\control|Selector5~0_combout\ & ( !\control|Selector4~0_combout\ & ( \datos|R[4][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[4][0]~q\,
	datab => \datos|ALT_INV_R[7][0]~q\,
	datac => \datos|ALT_INV_R[6][0]~q\,
	datad => \datos|ALT_INV_R[5][0]~q\,
	datae => \control|ALT_INV_Selector5~0_combout\,
	dataf => \control|ALT_INV_Selector4~0_combout\,
	combout => \datos|Mux3~0_combout\);

-- Location: MLABCELL_X8_Y2_N45
\datos|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux3~2_combout\ = ( \datos|Mux3~1_combout\ & ( (!\control|Selector3~2_combout\) # (\datos|Mux3~0_combout\) ) ) # ( !\datos|Mux3~1_combout\ & ( (\datos|Mux3~0_combout\ & \control|Selector3~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \datos|ALT_INV_Mux3~0_combout\,
	datad => \control|ALT_INV_Selector3~2_combout\,
	dataf => \datos|ALT_INV_Mux3~1_combout\,
	combout => \datos|Mux3~2_combout\);

-- Location: LABCELL_X12_Y2_N39
\datos|R~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|R~34_combout\ = ( \datain[0]~input_o\ & ( ((!\datos|Decoder2~7_combout\ & ((\datos|Mux6~2_combout\))) # (\datos|Decoder2~7_combout\ & (\datos|Mux3~2_combout\))) # (\datos|process_0~0_combout\) ) ) # ( !\datain[0]~input_o\ & ( 
-- (!\datos|process_0~0_combout\ & ((!\datos|Decoder2~7_combout\ & ((\datos|Mux6~2_combout\))) # (\datos|Decoder2~7_combout\ & (\datos|Mux3~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_Decoder2~7_combout\,
	datab => \datos|ALT_INV_process_0~0_combout\,
	datac => \datos|ALT_INV_Mux3~2_combout\,
	datad => \datos|ALT_INV_Mux6~2_combout\,
	dataf => \ALT_INV_datain[0]~input_o\,
	combout => \datos|R~34_combout\);

-- Location: FF_X12_Y2_N40
\datos|R[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~34_combout\,
	ena => \datos|R[1][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[1][0]~q\);

-- Location: FF_X11_Y2_N7
\datos|R[3][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~29_combout\,
	ena => \datos|R[3][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[3][0]~DUPLICATE_q\);

-- Location: MLABCELL_X8_Y2_N54
\datos|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux11~1_combout\ = ( \datos|R[0][0]~q\ & ( \datos|R[2][0]~q\ & ( (!\radd[0]~input_o\) # ((!\radd[1]~input_o\ & (\datos|R[1][0]~q\)) # (\radd[1]~input_o\ & ((\datos|R[3][0]~DUPLICATE_q\)))) ) ) ) # ( !\datos|R[0][0]~q\ & ( \datos|R[2][0]~q\ & ( 
-- (!\radd[1]~input_o\ & (\datos|R[1][0]~q\ & ((\radd[0]~input_o\)))) # (\radd[1]~input_o\ & (((!\radd[0]~input_o\) # (\datos|R[3][0]~DUPLICATE_q\)))) ) ) ) # ( \datos|R[0][0]~q\ & ( !\datos|R[2][0]~q\ & ( (!\radd[1]~input_o\ & (((!\radd[0]~input_o\)) # 
-- (\datos|R[1][0]~q\))) # (\radd[1]~input_o\ & (((\datos|R[3][0]~DUPLICATE_q\ & \radd[0]~input_o\)))) ) ) ) # ( !\datos|R[0][0]~q\ & ( !\datos|R[2][0]~q\ & ( (\radd[0]~input_o\ & ((!\radd[1]~input_o\ & (\datos|R[1][0]~q\)) # (\radd[1]~input_o\ & 
-- ((\datos|R[3][0]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111110011000100011100110011010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[1][0]~q\,
	datab => \ALT_INV_radd[1]~input_o\,
	datac => \datos|ALT_INV_R[3][0]~DUPLICATE_q\,
	datad => \ALT_INV_radd[0]~input_o\,
	datae => \datos|ALT_INV_R[0][0]~q\,
	dataf => \datos|ALT_INV_R[2][0]~q\,
	combout => \datos|Mux11~1_combout\);

-- Location: MLABCELL_X8_Y2_N18
\datos|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux11~0_combout\ = ( \datos|R[5][0]~q\ & ( \radd[0]~input_o\ & ( (!\radd[1]~input_o\) # (\datos|R[7][0]~q\) ) ) ) # ( !\datos|R[5][0]~q\ & ( \radd[0]~input_o\ & ( (\radd[1]~input_o\ & \datos|R[7][0]~q\) ) ) ) # ( \datos|R[5][0]~q\ & ( 
-- !\radd[0]~input_o\ & ( (!\radd[1]~input_o\ & ((\datos|R[4][0]~q\))) # (\radd[1]~input_o\ & (\datos|R[6][0]~q\)) ) ) ) # ( !\datos|R[5][0]~q\ & ( !\radd[0]~input_o\ & ( (!\radd[1]~input_o\ & ((\datos|R[4][0]~q\))) # (\radd[1]~input_o\ & 
-- (\datos|R[6][0]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[6][0]~q\,
	datab => \ALT_INV_radd[1]~input_o\,
	datac => \datos|ALT_INV_R[4][0]~q\,
	datad => \datos|ALT_INV_R[7][0]~q\,
	datae => \datos|ALT_INV_R[5][0]~q\,
	dataf => \ALT_INV_radd[0]~input_o\,
	combout => \datos|Mux11~0_combout\);

-- Location: MLABCELL_X8_Y2_N33
\datos|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux11~2_combout\ = ( \datos|Mux11~0_combout\ & ( (\datos|Mux11~1_combout\) # (\radd[2]~input_o\) ) ) # ( !\datos|Mux11~0_combout\ & ( (!\radd[2]~input_o\ & \datos|Mux11~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_radd[2]~input_o\,
	datad => \datos|ALT_INV_Mux11~1_combout\,
	dataf => \datos|ALT_INV_Mux11~0_combout\,
	combout => \datos|Mux11~2_combout\);

-- Location: LABCELL_X9_Y1_N3
\control|state.S7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|state.S7~0_combout\ = ( \control|ci\(2) & ( ((\control|ci\(1) & (!\control|ci\(0) & \control|state.S5~q\))) # (\control|state.S7~_Duplicate_1_q\) ) ) # ( !\control|ci\(2) & ( \control|state.S7~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000100111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALT_INV_ci\(1),
	datab => \control|ALT_INV_ci\(0),
	datac => \control|ALT_INV_state.S5~q\,
	datad => \control|ALT_INV_state.S7~_Duplicate_1_q\,
	dataf => \control|ALT_INV_ci\(2),
	combout => \control|state.S7~0_combout\);

-- Location: FF_X9_Y1_N5
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
	ena => \control|state.S7~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|dataout\(0));

-- Location: LABCELL_X9_Y2_N18
\datos|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux10~0_combout\ = ( \datos|R[7][1]~q\ & ( \radd[0]~input_o\ & ( (\radd[1]~input_o\) # (\datos|R[5][1]~q\) ) ) ) # ( !\datos|R[7][1]~q\ & ( \radd[0]~input_o\ & ( (\datos|R[5][1]~q\ & !\radd[1]~input_o\) ) ) ) # ( \datos|R[7][1]~q\ & ( 
-- !\radd[0]~input_o\ & ( (!\radd[1]~input_o\ & (\datos|R[4][1]~q\)) # (\radd[1]~input_o\ & ((\datos|R[6][1]~q\))) ) ) ) # ( !\datos|R[7][1]~q\ & ( !\radd[0]~input_o\ & ( (!\radd[1]~input_o\ & (\datos|R[4][1]~q\)) # (\radd[1]~input_o\ & 
-- ((\datos|R[6][1]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[4][1]~q\,
	datab => \datos|ALT_INV_R[5][1]~q\,
	datac => \datos|ALT_INV_R[6][1]~q\,
	datad => \ALT_INV_radd[1]~input_o\,
	datae => \datos|ALT_INV_R[7][1]~q\,
	dataf => \ALT_INV_radd[0]~input_o\,
	combout => \datos|Mux10~0_combout\);

-- Location: FF_X11_Y2_N10
\datos|R[3][1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~44_combout\,
	ena => \datos|R[3][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[3][1]~DUPLICATE_q\);

-- Location: FF_X10_Y2_N43
\datos|R[0][1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~43_combout\,
	ena => \datos|R[0][1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[0][1]~DUPLICATE_q\);

-- Location: LABCELL_X11_Y2_N12
\datos|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux10~1_combout\ = ( \radd[1]~input_o\ & ( \datos|R[1][1]~q\ & ( (!\radd[0]~input_o\ & ((\datos|R[2][1]~q\))) # (\radd[0]~input_o\ & (\datos|R[3][1]~DUPLICATE_q\)) ) ) ) # ( !\radd[1]~input_o\ & ( \datos|R[1][1]~q\ & ( (\radd[0]~input_o\) # 
-- (\datos|R[0][1]~DUPLICATE_q\) ) ) ) # ( \radd[1]~input_o\ & ( !\datos|R[1][1]~q\ & ( (!\radd[0]~input_o\ & ((\datos|R[2][1]~q\))) # (\radd[0]~input_o\ & (\datos|R[3][1]~DUPLICATE_q\)) ) ) ) # ( !\radd[1]~input_o\ & ( !\datos|R[1][1]~q\ & ( 
-- (\datos|R[0][1]~DUPLICATE_q\ & !\radd[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000011110101010100110011111111110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[3][1]~DUPLICATE_q\,
	datab => \datos|ALT_INV_R[0][1]~DUPLICATE_q\,
	datac => \datos|ALT_INV_R[2][1]~q\,
	datad => \ALT_INV_radd[0]~input_o\,
	datae => \ALT_INV_radd[1]~input_o\,
	dataf => \datos|ALT_INV_R[1][1]~q\,
	combout => \datos|Mux10~1_combout\);

-- Location: LABCELL_X10_Y2_N51
\datos|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux10~2_combout\ = ( \datos|Mux10~1_combout\ & ( (!\radd[2]~input_o\) # (\datos|Mux10~0_combout\) ) ) # ( !\datos|Mux10~1_combout\ & ( (\radd[2]~input_o\ & \datos|Mux10~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_radd[2]~input_o\,
	datac => \datos|ALT_INV_Mux10~0_combout\,
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
	ena => \control|state.S7~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|dataout\(1));

-- Location: LABCELL_X12_Y2_N45
\datos|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux9~0_combout\ = ( \radd[0]~input_o\ & ( \radd[1]~input_o\ & ( \datos|R[7][2]~q\ ) ) ) # ( !\radd[0]~input_o\ & ( \radd[1]~input_o\ & ( \datos|R[6][2]~q\ ) ) ) # ( \radd[0]~input_o\ & ( !\radd[1]~input_o\ & ( \datos|R[5][2]~q\ ) ) ) # ( 
-- !\radd[0]~input_o\ & ( !\radd[1]~input_o\ & ( \datos|R[4][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[7][2]~q\,
	datab => \datos|ALT_INV_R[4][2]~q\,
	datac => \datos|ALT_INV_R[6][2]~q\,
	datad => \datos|ALT_INV_R[5][2]~q\,
	datae => \ALT_INV_radd[0]~input_o\,
	dataf => \ALT_INV_radd[1]~input_o\,
	combout => \datos|Mux9~0_combout\);

-- Location: LABCELL_X12_Y2_N54
\datos|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux9~1_combout\ = ( \radd[0]~input_o\ & ( \radd[1]~input_o\ & ( \datos|R[3][2]~q\ ) ) ) # ( !\radd[0]~input_o\ & ( \radd[1]~input_o\ & ( \datos|R[2][2]~q\ ) ) ) # ( \radd[0]~input_o\ & ( !\radd[1]~input_o\ & ( \datos|R[1][2]~q\ ) ) ) # ( 
-- !\radd[0]~input_o\ & ( !\radd[1]~input_o\ & ( \datos|R[0][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[1][2]~q\,
	datab => \datos|ALT_INV_R[3][2]~q\,
	datac => \datos|ALT_INV_R[0][2]~q\,
	datad => \datos|ALT_INV_R[2][2]~q\,
	datae => \ALT_INV_radd[0]~input_o\,
	dataf => \ALT_INV_radd[1]~input_o\,
	combout => \datos|Mux9~1_combout\);

-- Location: LABCELL_X12_Y2_N33
\datos|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux9~2_combout\ = ( \radd[2]~input_o\ & ( \datos|Mux9~0_combout\ ) ) # ( !\radd[2]~input_o\ & ( \datos|Mux9~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \datos|ALT_INV_Mux9~0_combout\,
	datad => \datos|ALT_INV_Mux9~1_combout\,
	dataf => \ALT_INV_radd[2]~input_o\,
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
	ena => \control|state.S7~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|dataout\(2));

-- Location: LABCELL_X11_Y2_N0
\datos|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux8~0_combout\ = ( \radd[1]~input_o\ & ( \radd[0]~input_o\ & ( \datos|R[7][3]~q\ ) ) ) # ( !\radd[1]~input_o\ & ( \radd[0]~input_o\ & ( \datos|R[5][3]~q\ ) ) ) # ( \radd[1]~input_o\ & ( !\radd[0]~input_o\ & ( \datos|R[6][3]~q\ ) ) ) # ( 
-- !\radd[1]~input_o\ & ( !\radd[0]~input_o\ & ( \datos|R[4][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[7][3]~q\,
	datab => \datos|ALT_INV_R[5][3]~q\,
	datac => \datos|ALT_INV_R[4][3]~q\,
	datad => \datos|ALT_INV_R[6][3]~q\,
	datae => \ALT_INV_radd[1]~input_o\,
	dataf => \ALT_INV_radd[0]~input_o\,
	combout => \datos|Mux8~0_combout\);

-- Location: FF_X11_Y2_N37
\datos|R[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~58_combout\,
	ena => \datos|R[2][3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[2][3]~q\);

-- Location: FF_X12_Y2_N53
\datos|R[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datos|R~61_combout\,
	ena => \datos|R[1][0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos|R[1][3]~q\);

-- Location: LABCELL_X12_Y2_N12
\datos|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux8~1_combout\ = ( \radd[0]~input_o\ & ( \datos|R[1][3]~q\ & ( (!\radd[1]~input_o\) # (\datos|R[3][3]~q\) ) ) ) # ( !\radd[0]~input_o\ & ( \datos|R[1][3]~q\ & ( (!\radd[1]~input_o\ & ((\datos|R[0][3]~q\))) # (\radd[1]~input_o\ & 
-- (\datos|R[2][3]~q\)) ) ) ) # ( \radd[0]~input_o\ & ( !\datos|R[1][3]~q\ & ( (\datos|R[3][3]~q\ & \radd[1]~input_o\) ) ) ) # ( !\radd[0]~input_o\ & ( !\datos|R[1][3]~q\ & ( (!\radd[1]~input_o\ & ((\datos|R[0][3]~q\))) # (\radd[1]~input_o\ & 
-- (\datos|R[2][3]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000100010001000100000011110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datos|ALT_INV_R[3][3]~q\,
	datab => \ALT_INV_radd[1]~input_o\,
	datac => \datos|ALT_INV_R[2][3]~q\,
	datad => \datos|ALT_INV_R[0][3]~q\,
	datae => \ALT_INV_radd[0]~input_o\,
	dataf => \datos|ALT_INV_R[1][3]~q\,
	combout => \datos|Mux8~1_combout\);

-- Location: LABCELL_X12_Y2_N6
\datos|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datos|Mux8~2_combout\ = ( \datos|Mux8~1_combout\ & ( (!\radd[2]~input_o\) # (\datos|Mux8~0_combout\) ) ) # ( !\datos|Mux8~1_combout\ & ( (\datos|Mux8~0_combout\ & \radd[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \datos|ALT_INV_Mux8~0_combout\,
	datac => \ALT_INV_radd[2]~input_o\,
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
	ena => \control|state.S7~_Duplicate_1_q\,
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


