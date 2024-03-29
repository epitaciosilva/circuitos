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

-- DATE "11/11/2019 22:48:34"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	flip_flop_jk IS
    PORT (
	j : IN std_logic;
	k : IN std_logic;
	r : IN std_logic;
	clk_e : IN std_logic;
	clk : IN std_logic;
	saida : OUT std_logic
	);
END flip_flop_jk;

-- Design Ports Information
-- saida	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_e	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF flip_flop_jk IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_j : std_logic;
SIGNAL ww_k : std_logic;
SIGNAL ww_r : std_logic;
SIGNAL ww_clk_e : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_saida : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \r~input_o\ : std_logic;
SIGNAL \j~input_o\ : std_logic;
SIGNAL \clk_e~input_o\ : std_logic;
SIGNAL \k~input_o\ : std_logic;
SIGNAL \tmp~0_combout\ : std_logic;
SIGNAL \tmp~feeder_combout\ : std_logic;
SIGNAL \tmp~q\ : std_logic;
SIGNAL \ALT_INV_clk_e~input_o\ : std_logic;
SIGNAL \ALT_INV_r~input_o\ : std_logic;
SIGNAL \ALT_INV_k~input_o\ : std_logic;
SIGNAL \ALT_INV_j~input_o\ : std_logic;
SIGNAL \ALT_INV_tmp~0_combout\ : std_logic;
SIGNAL \ALT_INV_tmp~q\ : std_logic;

BEGIN

ww_j <= j;
ww_k <= k;
ww_r <= r;
ww_clk_e <= clk_e;
ww_clk <= clk;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_clk_e~input_o\ <= NOT \clk_e~input_o\;
\ALT_INV_r~input_o\ <= NOT \r~input_o\;
\ALT_INV_k~input_o\ <= NOT \k~input_o\;
\ALT_INV_j~input_o\ <= NOT \j~input_o\;
\ALT_INV_tmp~0_combout\ <= NOT \tmp~0_combout\;
\ALT_INV_tmp~q\ <= NOT \tmp~q\;

-- Location: IOOBUF_X89_Y35_N45
\saida~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \tmp~q\,
	devoe => ww_devoe,
	o => ww_saida);

-- Location: IOIBUF_X89_Y37_N55
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\r~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r,
	o => \r~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\j~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_j,
	o => \j~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\clk_e~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_e,
	o => \clk_e~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\k~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k,
	o => \k~input_o\);

-- Location: LABCELL_X88_Y37_N51
\tmp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp~0_combout\ = ( \k~input_o\ & ( \tmp~q\ & ( (!\r~input_o\ & ((!\clk_e~input_o\) # (\j~input_o\))) ) ) ) # ( !\k~input_o\ & ( \tmp~q\ & ( !\r~input_o\ ) ) ) # ( !\k~input_o\ & ( !\tmp~q\ & ( (!\r~input_o\ & (\j~input_o\ & \clk_e~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000000000000010101010101010101010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_r~input_o\,
	datab => \ALT_INV_j~input_o\,
	datac => \ALT_INV_clk_e~input_o\,
	datae => \ALT_INV_k~input_o\,
	dataf => \ALT_INV_tmp~q\,
	combout => \tmp~0_combout\);

-- Location: LABCELL_X88_Y37_N42
\tmp~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp~feeder_combout\ = ( \tmp~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_tmp~0_combout\,
	combout => \tmp~feeder_combout\);

-- Location: FF_X88_Y37_N44
tmp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp~q\);

-- Location: LABCELL_X9_Y52_N3
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


