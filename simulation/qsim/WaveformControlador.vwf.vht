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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/15/2021 00:09:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          sorter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sorter_vhd_vec_tst IS
END sorter_vhd_vec_tst;
ARCHITECTURE sorter_arch OF sorter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL datain : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dataout : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL done : STD_LOGIC;
SIGNAL go : STD_LOGIC;
SIGNAL radd : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL resetn : STD_LOGIC;
SIGNAL wrinit : STD_LOGIC;
COMPONENT sorter
	PORT (
	clock : IN STD_LOGIC;
	datain : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dataout : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	done : BUFFER STD_LOGIC;
	go : IN STD_LOGIC;
	radd : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	resetn : IN STD_LOGIC;
	wrinit : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : sorter
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	datain => datain,
	dataout => dataout,
	done => done,
	go => go,
	radd => radd,
	resetn => resetn,
	wrinit => wrinit
	);

-- resetn
t_prcs_resetn: PROCESS
BEGIN
	resetn <= '0';
	WAIT FOR 26000 ps;
	resetn <= '1';
WAIT;
END PROCESS t_prcs_resetn;

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 6000 ps;
	clock <= '1';
	WAIT FOR 6000 ps;
	IF (NOW >= 1500000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- go
t_prcs_go: PROCESS
BEGIN
	go <= '0';
	WAIT FOR 164000 ps;
	go <= '1';
	WAIT FOR 28000 ps;
	go <= '0';
WAIT;
END PROCESS t_prcs_go;
END sorter_arch;
