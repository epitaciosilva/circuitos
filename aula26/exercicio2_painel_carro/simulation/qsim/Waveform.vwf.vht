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
-- Generated on "11/11/2019 20:38:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          exercicio2_painel_carro
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY exercicio2_painel_carro_vhd_vec_tst IS
END exercicio2_painel_carro_vhd_vec_tst;
ARCHITECTURE exercicio2_painel_carro_arch OF exercicio2_painel_carro_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bt : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL consumo : STD_LOGIC;
SIGNAL km_parcial : STD_LOGIC;
SIGNAL km_restante : STD_LOGIC;
SIGNAL km_total : STD_LOGIC;
COMPONENT exercicio2_painel_carro
	PORT (
	bt : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	consumo : OUT STD_LOGIC;
	km_parcial : OUT STD_LOGIC;
	km_restante : OUT STD_LOGIC;
	km_total : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : exercicio2_painel_carro
	PORT MAP (
-- list connections between master ports and signals
	bt => bt,
	clk => clk,
	consumo => consumo,
	km_parcial => km_parcial,
	km_restante => km_restante,
	km_total => km_total
	);

-- bt
t_prcs_bt: PROCESS
BEGIN
LOOP
	bt <= '0';
	WAIT FOR 10000 ps;
	bt <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_bt;

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
END exercicio2_painel_carro_arch;
