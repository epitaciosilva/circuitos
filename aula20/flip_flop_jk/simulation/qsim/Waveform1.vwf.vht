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
-- Generated on "11/11/2019 22:48:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          flip_flop_jk
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY flip_flop_jk_vhd_vec_tst IS
END flip_flop_jk_vhd_vec_tst;
ARCHITECTURE flip_flop_jk_arch OF flip_flop_jk_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clk_e : STD_LOGIC;
SIGNAL j : STD_LOGIC;
SIGNAL k : STD_LOGIC;
SIGNAL r : STD_LOGIC;
SIGNAL saida : STD_LOGIC;
COMPONENT flip_flop_jk
	PORT (
	clk : IN STD_LOGIC;
	clk_e : IN STD_LOGIC;
	j : IN STD_LOGIC;
	k : IN STD_LOGIC;
	r : IN STD_LOGIC;
	saida : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : flip_flop_jk
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clk_e => clk_e,
	j => j,
	k => k,
	r => r,
	saida => saida
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- clk_e
t_prcs_clk_e: PROCESS
BEGIN
LOOP
	clk_e <= '0';
	WAIT FOR 25000 ps;
	clk_e <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_e;

-- r
t_prcs_r: PROCESS
BEGIN
	r <= '1';
	WAIT FOR 10000 ps;
	r <= '0';
	WAIT FOR 250000 ps;
	r <= '1';
	WAIT FOR 250000 ps;
	r <= '0';
	WAIT FOR 250000 ps;
	r <= '1';
WAIT;
END PROCESS t_prcs_r;

-- j
t_prcs_j: PROCESS
BEGIN
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 30000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 15000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 20000 ps;
	j <= '0';
	WAIT FOR 25000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 10000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 25000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 10000 ps;
	j <= '1';
	WAIT FOR 10000 ps;
	j <= '0';
	WAIT FOR 20000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 10000 ps;
	j <= '1';
	WAIT FOR 20000 ps;
	j <= '0';
	WAIT FOR 10000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 15000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 25000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 30000 ps;
	j <= '1';
	WAIT FOR 15000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 25000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 10000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 10000 ps;
	j <= '0';
	WAIT FOR 10000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 15000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 15000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 10000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 20000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 25000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 10000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 10000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 10000 ps;
	j <= '0';
	WAIT FOR 20000 ps;
	j <= '1';
	WAIT FOR 20000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 10000 ps;
	j <= '0';
	WAIT FOR 20000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 10000 ps;
	j <= '1';
	WAIT FOR 10000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 10000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 15000 ps;
	j <= '0';
	WAIT FOR 15000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 10000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 10000 ps;
	j <= '0';
	WAIT FOR 10000 ps;
	j <= '1';
	WAIT FOR 10000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 10000 ps;
	j <= '0';
	WAIT FOR 20000 ps;
	j <= '1';
	WAIT FOR 15000 ps;
	j <= '0';
	WAIT FOR 10000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 10000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 10000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
	WAIT FOR 5000 ps;
	j <= '1';
	WAIT FOR 5000 ps;
	j <= '0';
WAIT;
END PROCESS t_prcs_j;

-- k
t_prcs_k: PROCESS
BEGIN
	k <= '1';
	WAIT FOR 10000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 5000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 10000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 5000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 10000 ps;
	k <= '0';
	WAIT FOR 10000 ps;
	k <= '1';
	WAIT FOR 5000 ps;
	k <= '0';
	WAIT FOR 15000 ps;
	k <= '1';
	WAIT FOR 10000 ps;
	k <= '0';
	WAIT FOR 10000 ps;
	k <= '1';
	WAIT FOR 10000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 5000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 5000 ps;
	k <= '0';
	WAIT FOR 10000 ps;
	k <= '1';
	WAIT FOR 10000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 10000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 10000 ps;
	k <= '0';
	WAIT FOR 10000 ps;
	k <= '1';
	WAIT FOR 5000 ps;
	k <= '0';
	WAIT FOR 15000 ps;
	k <= '1';
	WAIT FOR 10000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 25000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 15000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 15000 ps;
	k <= '0';
	WAIT FOR 10000 ps;
	k <= '1';
	WAIT FOR 10000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 10000 ps;
	k <= '0';
	WAIT FOR 10000 ps;
	k <= '1';
	WAIT FOR 20000 ps;
	k <= '0';
	WAIT FOR 15000 ps;
	k <= '1';
	WAIT FOR 5000 ps;
	k <= '0';
	WAIT FOR 10000 ps;
	k <= '1';
	WAIT FOR 10000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 15000 ps;
	k <= '0';
	WAIT FOR 15000 ps;
	k <= '1';
	WAIT FOR 5000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 20000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 10000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 10000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 10000 ps;
	k <= '0';
	WAIT FOR 10000 ps;
	k <= '1';
	WAIT FOR 5000 ps;
	k <= '0';
	WAIT FOR 10000 ps;
	k <= '1';
	WAIT FOR 15000 ps;
	k <= '0';
	WAIT FOR 15000 ps;
	k <= '1';
	WAIT FOR 5000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 5000 ps;
	k <= '0';
	WAIT FOR 25000 ps;
	k <= '1';
	WAIT FOR 30000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 5000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 5000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 5000 ps;
	k <= '0';
	WAIT FOR 20000 ps;
	k <= '1';
	WAIT FOR 5000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 5000 ps;
	k <= '0';
	WAIT FOR 10000 ps;
	k <= '1';
	WAIT FOR 15000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 5000 ps;
	k <= '0';
	WAIT FOR 10000 ps;
	k <= '1';
	WAIT FOR 5000 ps;
	k <= '0';
	WAIT FOR 10000 ps;
	k <= '1';
	WAIT FOR 15000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 5000 ps;
	k <= '0';
	WAIT FOR 15000 ps;
	k <= '1';
	WAIT FOR 10000 ps;
	k <= '0';
	WAIT FOR 15000 ps;
	k <= '1';
	WAIT FOR 10000 ps;
	k <= '0';
	WAIT FOR 15000 ps;
	k <= '1';
	WAIT FOR 5000 ps;
	k <= '0';
	WAIT FOR 15000 ps;
	k <= '1';
	WAIT FOR 5000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 5000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 10000 ps;
	k <= '0';
	WAIT FOR 10000 ps;
	k <= '1';
	WAIT FOR 10000 ps;
	k <= '0';
	WAIT FOR 15000 ps;
	k <= '1';
	WAIT FOR 10000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 20000 ps;
	k <= '0';
	WAIT FOR 5000 ps;
	k <= '1';
	WAIT FOR 5000 ps;
	k <= '0';
WAIT;
END PROCESS t_prcs_k;
END flip_flop_jk_arch;
