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
-- Generated on "11/11/2019 22:08:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          latchrs
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY latchrs_vhd_vec_tst IS
END latchrs_vhd_vec_tst;
ARCHITECTURE latchrs_arch OF latchrs_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL q : STD_LOGIC;
SIGNAL qb : STD_LOGIC;
SIGNAL r : STD_LOGIC;
SIGNAL s : STD_LOGIC;
COMPONENT latchrs
	PORT (
	q : INOUT STD_LOGIC;
	qb : INOUT STD_LOGIC;
	r : IN STD_LOGIC;
	s : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : latchrs
	PORT MAP (
-- list connections between master ports and signals
	q => q,
	qb => qb,
	r => r,
	s => s
	);

-- r
t_prcs_r: PROCESS
BEGIN
LOOP
	r <= '0';
	WAIT FOR 5000 ps;
	r <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_r;

-- s
t_prcs_s: PROCESS
BEGIN
	FOR i IN 1 TO 66
	LOOP
		s <= '0';
		WAIT FOR 7500 ps;
		s <= '1';
		WAIT FOR 7500 ps;
	END LOOP;
	s <= '0';
	WAIT FOR 7500 ps;
	s <= '1';
WAIT;
END PROCESS t_prcs_s;

-- qb
t_prcs_qb: PROCESS
BEGIN
	qb <= 'Z';
WAIT;
END PROCESS t_prcs_qb;

-- q
t_prcs_q: PROCESS
BEGIN
	q <= 'Z';
WAIT;
END PROCESS t_prcs_q;
END latchrs_arch;
