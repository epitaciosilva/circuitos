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

-- DATE "11/11/2019 23:01:05"

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

ENTITY 	exercicio1 IS
    PORT (
	dmx : IN std_logic_vector(2 DOWNTO 0);
	data : IN std_logic_vector(15 DOWNTO 0);
	mux : IN std_logic_vector(2 DOWNTO 0);
	clk : IN std_logic;
	q : OUT std_logic_vector(15 DOWNTO 0)
	);
END exercicio1;

-- Design Ports Information
-- q[0]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[8]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[9]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[10]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[11]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[12]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[13]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[14]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[15]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux[2]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux[1]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dmx[2]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dmx[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dmx[1]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[8]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[9]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[10]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[11]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[12]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[13]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[14]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[15]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF exercicio1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dmx : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_mux : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_q : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \mux[0]~input_o\ : std_logic;
SIGNAL \mux[2]~input_o\ : std_logic;
SIGNAL \mux[1]~input_o\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \dmx[2]~input_o\ : std_logic;
SIGNAL \dmx[0]~input_o\ : std_logic;
SIGNAL \dmx[1]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \r7[0]~feeder_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \r1[0]~feeder_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \q~0_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \r4[0]~feeder_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \r2[0]~feeder_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \r0[0]~feeder_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \q~1_combout\ : std_logic;
SIGNAL \q~2_combout\ : std_logic;
SIGNAL \q[0]~reg0_q\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \q~4_combout\ : std_logic;
SIGNAL \r7[1]~feeder_combout\ : std_logic;
SIGNAL \q~3_combout\ : std_logic;
SIGNAL \q~5_combout\ : std_logic;
SIGNAL \q[1]~reg0_q\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \q~7_combout\ : std_logic;
SIGNAL \r3[2]~feeder_combout\ : std_logic;
SIGNAL \r7[2]~feeder_combout\ : std_logic;
SIGNAL \q~6_combout\ : std_logic;
SIGNAL \q~8_combout\ : std_logic;
SIGNAL \q[2]~reg0_q\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \r3[3]~feeder_combout\ : std_logic;
SIGNAL \r1[3]~feeder_combout\ : std_logic;
SIGNAL \q~9_combout\ : std_logic;
SIGNAL \r2[3]~feeder_combout\ : std_logic;
SIGNAL \q~10_combout\ : std_logic;
SIGNAL \q~11_combout\ : std_logic;
SIGNAL \q[3]~reg0_q\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \q~12_combout\ : std_logic;
SIGNAL \r2[4]~feeder_combout\ : std_logic;
SIGNAL \q~13_combout\ : std_logic;
SIGNAL \q~14_combout\ : std_logic;
SIGNAL \q[4]~reg0_q\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \r4[5]~feeder_combout\ : std_logic;
SIGNAL \r2[5]~feeder_combout\ : std_logic;
SIGNAL \q~16_combout\ : std_logic;
SIGNAL \r3[5]~feeder_combout\ : std_logic;
SIGNAL \q~15_combout\ : std_logic;
SIGNAL \q~17_combout\ : std_logic;
SIGNAL \q[5]~reg0_q\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \r7[6]~feeder_combout\ : std_logic;
SIGNAL \r3[6]~feeder_combout\ : std_logic;
SIGNAL \r1[6]~feeder_combout\ : std_logic;
SIGNAL \q~18_combout\ : std_logic;
SIGNAL \r0[6]~feeder_combout\ : std_logic;
SIGNAL \q~19_combout\ : std_logic;
SIGNAL \q~20_combout\ : std_logic;
SIGNAL \q[6]~reg0_q\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \r4[7]~feeder_combout\ : std_logic;
SIGNAL \r0[7]~feeder_combout\ : std_logic;
SIGNAL \q~22_combout\ : std_logic;
SIGNAL \r3[7]~feeder_combout\ : std_logic;
SIGNAL \r1[7]~feeder_combout\ : std_logic;
SIGNAL \q~21_combout\ : std_logic;
SIGNAL \q~23_combout\ : std_logic;
SIGNAL \q[7]~reg0_q\ : std_logic;
SIGNAL \data[8]~input_o\ : std_logic;
SIGNAL \r0[8]~feeder_combout\ : std_logic;
SIGNAL \r4[8]~feeder_combout\ : std_logic;
SIGNAL \q~25_combout\ : std_logic;
SIGNAL \r3[8]~feeder_combout\ : std_logic;
SIGNAL \r1[8]~feeder_combout\ : std_logic;
SIGNAL \q~24_combout\ : std_logic;
SIGNAL \q~26_combout\ : std_logic;
SIGNAL \q[8]~reg0_q\ : std_logic;
SIGNAL \data[9]~input_o\ : std_logic;
SIGNAL \r3[9]~feeder_combout\ : std_logic;
SIGNAL \q~27_combout\ : std_logic;
SIGNAL \q~28_combout\ : std_logic;
SIGNAL \q~29_combout\ : std_logic;
SIGNAL \q[9]~reg0_q\ : std_logic;
SIGNAL \data[10]~input_o\ : std_logic;
SIGNAL \r0[10]~feeder_combout\ : std_logic;
SIGNAL \r2[10]~feeder_combout\ : std_logic;
SIGNAL \q~31_combout\ : std_logic;
SIGNAL \r3[10]~feeder_combout\ : std_logic;
SIGNAL \q~30_combout\ : std_logic;
SIGNAL \q~32_combout\ : std_logic;
SIGNAL \q[10]~reg0_q\ : std_logic;
SIGNAL \data[11]~input_o\ : std_logic;
SIGNAL \r0[11]~feeder_combout\ : std_logic;
SIGNAL \r2[11]~feeder_combout\ : std_logic;
SIGNAL \q~34_combout\ : std_logic;
SIGNAL \r1[11]~feeder_combout\ : std_logic;
SIGNAL \q~33_combout\ : std_logic;
SIGNAL \q~35_combout\ : std_logic;
SIGNAL \q[11]~reg0_q\ : std_logic;
SIGNAL \data[12]~input_o\ : std_logic;
SIGNAL \r4[12]~feeder_combout\ : std_logic;
SIGNAL \r0[12]~feeder_combout\ : std_logic;
SIGNAL \q~37_combout\ : std_logic;
SIGNAL \r3[12]~feeder_combout\ : std_logic;
SIGNAL \r7[12]~feeder_combout\ : std_logic;
SIGNAL \r1[12]~feeder_combout\ : std_logic;
SIGNAL \q~36_combout\ : std_logic;
SIGNAL \q~38_combout\ : std_logic;
SIGNAL \q[12]~reg0_q\ : std_logic;
SIGNAL \data[13]~input_o\ : std_logic;
SIGNAL \r2[13]~feeder_combout\ : std_logic;
SIGNAL \q~40_combout\ : std_logic;
SIGNAL \r1[13]~feeder_combout\ : std_logic;
SIGNAL \q~39_combout\ : std_logic;
SIGNAL \q~41_combout\ : std_logic;
SIGNAL \q[13]~reg0_q\ : std_logic;
SIGNAL \data[14]~input_o\ : std_logic;
SIGNAL \q~43_combout\ : std_logic;
SIGNAL \q~42_combout\ : std_logic;
SIGNAL \q~44_combout\ : std_logic;
SIGNAL \q[14]~reg0_q\ : std_logic;
SIGNAL \data[15]~input_o\ : std_logic;
SIGNAL \r2[15]~feeder_combout\ : std_logic;
SIGNAL \r4[15]~feeder_combout\ : std_logic;
SIGNAL \q~46_combout\ : std_logic;
SIGNAL \r1[15]~feeder_combout\ : std_logic;
SIGNAL \r7[15]~feeder_combout\ : std_logic;
SIGNAL \q~45_combout\ : std_logic;
SIGNAL \q~47_combout\ : std_logic;
SIGNAL \q[15]~reg0_q\ : std_logic;
SIGNAL r4 : std_logic_vector(15 DOWNTO 0);
SIGNAL r0 : std_logic_vector(15 DOWNTO 0);
SIGNAL r6 : std_logic_vector(15 DOWNTO 0);
SIGNAL r2 : std_logic_vector(15 DOWNTO 0);
SIGNAL r7 : std_logic_vector(15 DOWNTO 0);
SIGNAL r3 : std_logic_vector(15 DOWNTO 0);
SIGNAL r5 : std_logic_vector(15 DOWNTO 0);
SIGNAL r1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_r2 : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_q~36_combout\ : std_logic;
SIGNAL ALT_INV_r7 : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_r3 : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_r5 : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_r1 : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_q~34_combout\ : std_logic;
SIGNAL ALT_INV_r4 : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_r0 : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_r6 : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_q~33_combout\ : std_logic;
SIGNAL \ALT_INV_q~31_combout\ : std_logic;
SIGNAL \ALT_INV_q~30_combout\ : std_logic;
SIGNAL \ALT_INV_q~28_combout\ : std_logic;
SIGNAL \ALT_INV_q~27_combout\ : std_logic;
SIGNAL \ALT_INV_q~25_combout\ : std_logic;
SIGNAL \ALT_INV_q~24_combout\ : std_logic;
SIGNAL \ALT_INV_q~22_combout\ : std_logic;
SIGNAL \ALT_INV_q~21_combout\ : std_logic;
SIGNAL \ALT_INV_q~19_combout\ : std_logic;
SIGNAL \ALT_INV_q~18_combout\ : std_logic;
SIGNAL \ALT_INV_q~16_combout\ : std_logic;
SIGNAL \ALT_INV_q~15_combout\ : std_logic;
SIGNAL \ALT_INV_q~13_combout\ : std_logic;
SIGNAL \ALT_INV_q~12_combout\ : std_logic;
SIGNAL \ALT_INV_q~10_combout\ : std_logic;
SIGNAL \ALT_INV_q~9_combout\ : std_logic;
SIGNAL \ALT_INV_q~7_combout\ : std_logic;
SIGNAL \ALT_INV_q~6_combout\ : std_logic;
SIGNAL \ALT_INV_q~4_combout\ : std_logic;
SIGNAL \ALT_INV_q~3_combout\ : std_logic;
SIGNAL \ALT_INV_q~1_combout\ : std_logic;
SIGNAL \ALT_INV_q~0_combout\ : std_logic;
SIGNAL \ALT_INV_data[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_dmx[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_dmx[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_dmx[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_mux[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_mux[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_mux[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_q~46_combout\ : std_logic;
SIGNAL \ALT_INV_q~45_combout\ : std_logic;
SIGNAL \ALT_INV_q~43_combout\ : std_logic;
SIGNAL \ALT_INV_q~42_combout\ : std_logic;
SIGNAL \ALT_INV_q~40_combout\ : std_logic;
SIGNAL \ALT_INV_q~39_combout\ : std_logic;
SIGNAL \ALT_INV_q~37_combout\ : std_logic;

BEGIN

ww_dmx <= dmx;
ww_data <= data;
ww_mux <= mux;
ww_clk <= clk;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_r2(12) <= NOT r2(12);
\ALT_INV_q~36_combout\ <= NOT \q~36_combout\;
ALT_INV_r7(12) <= NOT r7(12);
ALT_INV_r3(12) <= NOT r3(12);
ALT_INV_r5(12) <= NOT r5(12);
ALT_INV_r1(12) <= NOT r1(12);
\ALT_INV_q~34_combout\ <= NOT \q~34_combout\;
ALT_INV_r4(11) <= NOT r4(11);
ALT_INV_r0(11) <= NOT r0(11);
ALT_INV_r6(11) <= NOT r6(11);
ALT_INV_r2(11) <= NOT r2(11);
\ALT_INV_q~33_combout\ <= NOT \q~33_combout\;
ALT_INV_r7(11) <= NOT r7(11);
ALT_INV_r3(11) <= NOT r3(11);
ALT_INV_r5(11) <= NOT r5(11);
ALT_INV_r1(11) <= NOT r1(11);
\ALT_INV_q~31_combout\ <= NOT \q~31_combout\;
ALT_INV_r4(10) <= NOT r4(10);
ALT_INV_r0(10) <= NOT r0(10);
ALT_INV_r6(10) <= NOT r6(10);
ALT_INV_r2(10) <= NOT r2(10);
\ALT_INV_q~30_combout\ <= NOT \q~30_combout\;
ALT_INV_r7(10) <= NOT r7(10);
ALT_INV_r3(10) <= NOT r3(10);
ALT_INV_r5(10) <= NOT r5(10);
ALT_INV_r1(10) <= NOT r1(10);
\ALT_INV_q~28_combout\ <= NOT \q~28_combout\;
ALT_INV_r4(9) <= NOT r4(9);
ALT_INV_r0(9) <= NOT r0(9);
ALT_INV_r6(9) <= NOT r6(9);
ALT_INV_r2(9) <= NOT r2(9);
\ALT_INV_q~27_combout\ <= NOT \q~27_combout\;
ALT_INV_r7(9) <= NOT r7(9);
ALT_INV_r3(9) <= NOT r3(9);
ALT_INV_r5(9) <= NOT r5(9);
ALT_INV_r1(9) <= NOT r1(9);
\ALT_INV_q~25_combout\ <= NOT \q~25_combout\;
ALT_INV_r4(8) <= NOT r4(8);
ALT_INV_r0(8) <= NOT r0(8);
ALT_INV_r6(8) <= NOT r6(8);
ALT_INV_r2(8) <= NOT r2(8);
\ALT_INV_q~24_combout\ <= NOT \q~24_combout\;
ALT_INV_r7(8) <= NOT r7(8);
ALT_INV_r3(8) <= NOT r3(8);
ALT_INV_r5(8) <= NOT r5(8);
ALT_INV_r1(8) <= NOT r1(8);
\ALT_INV_q~22_combout\ <= NOT \q~22_combout\;
ALT_INV_r4(7) <= NOT r4(7);
ALT_INV_r0(7) <= NOT r0(7);
ALT_INV_r6(7) <= NOT r6(7);
ALT_INV_r2(7) <= NOT r2(7);
\ALT_INV_q~21_combout\ <= NOT \q~21_combout\;
ALT_INV_r7(7) <= NOT r7(7);
ALT_INV_r3(7) <= NOT r3(7);
ALT_INV_r5(7) <= NOT r5(7);
ALT_INV_r1(7) <= NOT r1(7);
\ALT_INV_q~19_combout\ <= NOT \q~19_combout\;
ALT_INV_r4(6) <= NOT r4(6);
ALT_INV_r0(6) <= NOT r0(6);
ALT_INV_r6(6) <= NOT r6(6);
ALT_INV_r2(6) <= NOT r2(6);
\ALT_INV_q~18_combout\ <= NOT \q~18_combout\;
ALT_INV_r7(6) <= NOT r7(6);
ALT_INV_r3(6) <= NOT r3(6);
ALT_INV_r5(6) <= NOT r5(6);
ALT_INV_r1(6) <= NOT r1(6);
\ALT_INV_q~16_combout\ <= NOT \q~16_combout\;
ALT_INV_r4(5) <= NOT r4(5);
ALT_INV_r0(5) <= NOT r0(5);
ALT_INV_r6(5) <= NOT r6(5);
ALT_INV_r2(5) <= NOT r2(5);
\ALT_INV_q~15_combout\ <= NOT \q~15_combout\;
ALT_INV_r7(5) <= NOT r7(5);
ALT_INV_r3(5) <= NOT r3(5);
ALT_INV_r5(5) <= NOT r5(5);
ALT_INV_r1(5) <= NOT r1(5);
\ALT_INV_q~13_combout\ <= NOT \q~13_combout\;
ALT_INV_r4(4) <= NOT r4(4);
ALT_INV_r0(4) <= NOT r0(4);
ALT_INV_r6(4) <= NOT r6(4);
ALT_INV_r2(4) <= NOT r2(4);
\ALT_INV_q~12_combout\ <= NOT \q~12_combout\;
ALT_INV_r7(4) <= NOT r7(4);
ALT_INV_r3(4) <= NOT r3(4);
ALT_INV_r5(4) <= NOT r5(4);
ALT_INV_r1(4) <= NOT r1(4);
\ALT_INV_q~10_combout\ <= NOT \q~10_combout\;
ALT_INV_r4(3) <= NOT r4(3);
ALT_INV_r0(3) <= NOT r0(3);
ALT_INV_r6(3) <= NOT r6(3);
ALT_INV_r2(3) <= NOT r2(3);
\ALT_INV_q~9_combout\ <= NOT \q~9_combout\;
ALT_INV_r7(3) <= NOT r7(3);
ALT_INV_r3(3) <= NOT r3(3);
ALT_INV_r5(3) <= NOT r5(3);
ALT_INV_r1(3) <= NOT r1(3);
\ALT_INV_q~7_combout\ <= NOT \q~7_combout\;
ALT_INV_r4(2) <= NOT r4(2);
ALT_INV_r0(2) <= NOT r0(2);
ALT_INV_r6(2) <= NOT r6(2);
ALT_INV_r2(2) <= NOT r2(2);
\ALT_INV_q~6_combout\ <= NOT \q~6_combout\;
ALT_INV_r7(2) <= NOT r7(2);
ALT_INV_r3(2) <= NOT r3(2);
ALT_INV_r5(2) <= NOT r5(2);
ALT_INV_r1(2) <= NOT r1(2);
\ALT_INV_q~4_combout\ <= NOT \q~4_combout\;
ALT_INV_r4(1) <= NOT r4(1);
ALT_INV_r0(1) <= NOT r0(1);
ALT_INV_r6(1) <= NOT r6(1);
ALT_INV_r2(1) <= NOT r2(1);
\ALT_INV_q~3_combout\ <= NOT \q~3_combout\;
ALT_INV_r7(1) <= NOT r7(1);
ALT_INV_r3(1) <= NOT r3(1);
ALT_INV_r5(1) <= NOT r5(1);
ALT_INV_r1(1) <= NOT r1(1);
\ALT_INV_q~1_combout\ <= NOT \q~1_combout\;
ALT_INV_r4(0) <= NOT r4(0);
ALT_INV_r0(0) <= NOT r0(0);
ALT_INV_r6(0) <= NOT r6(0);
ALT_INV_r2(0) <= NOT r2(0);
\ALT_INV_q~0_combout\ <= NOT \q~0_combout\;
ALT_INV_r7(0) <= NOT r7(0);
ALT_INV_r3(0) <= NOT r3(0);
ALT_INV_r5(0) <= NOT r5(0);
ALT_INV_r1(0) <= NOT r1(0);
\ALT_INV_data[15]~input_o\ <= NOT \data[15]~input_o\;
\ALT_INV_data[13]~input_o\ <= NOT \data[13]~input_o\;
\ALT_INV_data[12]~input_o\ <= NOT \data[12]~input_o\;
\ALT_INV_data[11]~input_o\ <= NOT \data[11]~input_o\;
\ALT_INV_data[10]~input_o\ <= NOT \data[10]~input_o\;
\ALT_INV_data[9]~input_o\ <= NOT \data[9]~input_o\;
\ALT_INV_data[8]~input_o\ <= NOT \data[8]~input_o\;
\ALT_INV_data[7]~input_o\ <= NOT \data[7]~input_o\;
\ALT_INV_data[6]~input_o\ <= NOT \data[6]~input_o\;
\ALT_INV_data[5]~input_o\ <= NOT \data[5]~input_o\;
\ALT_INV_data[4]~input_o\ <= NOT \data[4]~input_o\;
\ALT_INV_data[3]~input_o\ <= NOT \data[3]~input_o\;
\ALT_INV_data[2]~input_o\ <= NOT \data[2]~input_o\;
\ALT_INV_data[1]~input_o\ <= NOT \data[1]~input_o\;
\ALT_INV_dmx[1]~input_o\ <= NOT \dmx[1]~input_o\;
\ALT_INV_dmx[0]~input_o\ <= NOT \dmx[0]~input_o\;
\ALT_INV_dmx[2]~input_o\ <= NOT \dmx[2]~input_o\;
\ALT_INV_data[0]~input_o\ <= NOT \data[0]~input_o\;
\ALT_INV_mux[1]~input_o\ <= NOT \mux[1]~input_o\;
\ALT_INV_mux[2]~input_o\ <= NOT \mux[2]~input_o\;
\ALT_INV_mux[0]~input_o\ <= NOT \mux[0]~input_o\;
\ALT_INV_q~46_combout\ <= NOT \q~46_combout\;
ALT_INV_r4(15) <= NOT r4(15);
ALT_INV_r0(15) <= NOT r0(15);
ALT_INV_r6(15) <= NOT r6(15);
ALT_INV_r2(15) <= NOT r2(15);
\ALT_INV_q~45_combout\ <= NOT \q~45_combout\;
ALT_INV_r7(15) <= NOT r7(15);
ALT_INV_r3(15) <= NOT r3(15);
ALT_INV_r5(15) <= NOT r5(15);
ALT_INV_r1(15) <= NOT r1(15);
\ALT_INV_q~43_combout\ <= NOT \q~43_combout\;
ALT_INV_r4(14) <= NOT r4(14);
ALT_INV_r0(14) <= NOT r0(14);
ALT_INV_r6(14) <= NOT r6(14);
ALT_INV_r2(14) <= NOT r2(14);
\ALT_INV_q~42_combout\ <= NOT \q~42_combout\;
ALT_INV_r7(14) <= NOT r7(14);
ALT_INV_r3(14) <= NOT r3(14);
ALT_INV_r5(14) <= NOT r5(14);
ALT_INV_r1(14) <= NOT r1(14);
\ALT_INV_q~40_combout\ <= NOT \q~40_combout\;
ALT_INV_r4(13) <= NOT r4(13);
ALT_INV_r0(13) <= NOT r0(13);
ALT_INV_r6(13) <= NOT r6(13);
ALT_INV_r2(13) <= NOT r2(13);
\ALT_INV_q~39_combout\ <= NOT \q~39_combout\;
ALT_INV_r7(13) <= NOT r7(13);
ALT_INV_r3(13) <= NOT r3(13);
ALT_INV_r5(13) <= NOT r5(13);
ALT_INV_r1(13) <= NOT r1(13);
\ALT_INV_q~37_combout\ <= NOT \q~37_combout\;
ALT_INV_r4(12) <= NOT r4(12);
ALT_INV_r0(12) <= NOT r0(12);
ALT_INV_r6(12) <= NOT r6(12);

-- Location: IOOBUF_X64_Y0_N36
\q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(0));

-- Location: IOOBUF_X64_Y0_N2
\q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(1));

-- Location: IOOBUF_X66_Y0_N93
\q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(2));

-- Location: IOOBUF_X89_Y9_N5
\q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(3));

-- Location: IOOBUF_X89_Y9_N56
\q[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(4));

-- Location: IOOBUF_X64_Y0_N53
\q[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(5));

-- Location: IOOBUF_X89_Y8_N56
\q[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(6));

-- Location: IOOBUF_X68_Y0_N53
\q[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(7));

-- Location: IOOBUF_X66_Y0_N76
\q[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(8));

-- Location: IOOBUF_X64_Y0_N19
\q[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(9));

-- Location: IOOBUF_X89_Y35_N79
\q[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(10));

-- Location: IOOBUF_X66_Y0_N59
\q[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(11));

-- Location: IOOBUF_X89_Y9_N22
\q[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(12));

-- Location: IOOBUF_X68_Y0_N36
\q[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(13));

-- Location: IOOBUF_X66_Y0_N42
\q[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(14));

-- Location: IOOBUF_X89_Y9_N39
\q[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(15));

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y6_N4
\mux[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux(0),
	o => \mux[0]~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\mux[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux(2),
	o => \mux[2]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\mux[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux(1),
	o => \mux[1]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: IOIBUF_X89_Y8_N21
\dmx[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dmx(2),
	o => \dmx[2]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\dmx[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dmx(0),
	o => \dmx[0]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\dmx[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dmx(1),
	o => \dmx[1]~input_o\);

-- Location: LABCELL_X83_Y4_N42
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\dmx[1]~input_o\ & ( (\dmx[2]~input_o\ & \dmx[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dmx[2]~input_o\,
	datac => \ALT_INV_dmx[0]~input_o\,
	dataf => \ALT_INV_dmx[1]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: FF_X81_Y3_N29
\r5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(0));

-- Location: MLABCELL_X82_Y3_N42
\r7[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r7[0]~feeder_combout\ = \data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[0]~input_o\,
	combout => \r7[0]~feeder_combout\);

-- Location: LABCELL_X83_Y4_N30
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( \dmx[1]~input_o\ & ( (\dmx[2]~input_o\ & \dmx[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dmx[2]~input_o\,
	datac => \ALT_INV_dmx[0]~input_o\,
	dataf => \ALT_INV_dmx[1]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: FF_X82_Y3_N44
\r7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r7[0]~feeder_combout\,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(0));

-- Location: LABCELL_X83_Y4_N15
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\dmx[2]~input_o\ & ( (\dmx[0]~input_o\ & \dmx[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dmx[0]~input_o\,
	datac => \ALT_INV_dmx[1]~input_o\,
	dataf => \ALT_INV_dmx[2]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: FF_X82_Y3_N56
\r3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(0));

-- Location: LABCELL_X81_Y4_N48
\r1[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1[0]~feeder_combout\ = ( \data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[0]~input_o\,
	combout => \r1[0]~feeder_combout\);

-- Location: LABCELL_X83_Y4_N3
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\dmx[2]~input_o\ & ( (\dmx[0]~input_o\ & !\dmx[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dmx[0]~input_o\,
	datac => \ALT_INV_dmx[1]~input_o\,
	dataf => \ALT_INV_dmx[2]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: FF_X81_Y4_N50
\r1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r1[0]~feeder_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(0));

-- Location: LABCELL_X81_Y3_N54
\q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~0_combout\ = ( r3(0) & ( r1(0) & ( (!\mux[2]~input_o\) # ((!\mux[1]~input_o\ & (r5(0))) # (\mux[1]~input_o\ & ((r7(0))))) ) ) ) # ( !r3(0) & ( r1(0) & ( (!\mux[2]~input_o\ & (!\mux[1]~input_o\)) # (\mux[2]~input_o\ & ((!\mux[1]~input_o\ & (r5(0))) # 
-- (\mux[1]~input_o\ & ((r7(0)))))) ) ) ) # ( r3(0) & ( !r1(0) & ( (!\mux[2]~input_o\ & (\mux[1]~input_o\)) # (\mux[2]~input_o\ & ((!\mux[1]~input_o\ & (r5(0))) # (\mux[1]~input_o\ & ((r7(0)))))) ) ) ) # ( !r3(0) & ( !r1(0) & ( (\mux[2]~input_o\ & 
-- ((!\mux[1]~input_o\ & (r5(0))) # (\mux[1]~input_o\ & ((r7(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[2]~input_o\,
	datab => \ALT_INV_mux[1]~input_o\,
	datac => ALT_INV_r5(0),
	datad => ALT_INV_r7(0),
	datae => ALT_INV_r3(0),
	dataf => ALT_INV_r1(0),
	combout => \q~0_combout\);

-- Location: LABCELL_X83_Y4_N18
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \dmx[1]~input_o\ & ( (\dmx[2]~input_o\ & !\dmx[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dmx[2]~input_o\,
	datac => \ALT_INV_dmx[0]~input_o\,
	dataf => \ALT_INV_dmx[1]~input_o\,
	combout => \Equal0~5_combout\);

-- Location: FF_X80_Y3_N44
\r6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(0));

-- Location: LABCELL_X79_Y3_N45
\r4[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r4[0]~feeder_combout\ = ( \data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[0]~input_o\,
	combout => \r4[0]~feeder_combout\);

-- Location: LABCELL_X83_Y4_N9
\Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = ( \dmx[2]~input_o\ & ( (!\dmx[0]~input_o\ & !\dmx[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dmx[0]~input_o\,
	datac => \ALT_INV_dmx[1]~input_o\,
	dataf => \ALT_INV_dmx[2]~input_o\,
	combout => \Equal0~7_combout\);

-- Location: FF_X79_Y3_N46
\r4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r4[0]~feeder_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(0));

-- Location: MLABCELL_X78_Y3_N18
\r2[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2[0]~feeder_combout\ = ( \data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[0]~input_o\,
	combout => \r2[0]~feeder_combout\);

-- Location: LABCELL_X83_Y4_N51
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !\dmx[2]~input_o\ & ( (!\dmx[0]~input_o\ & \dmx[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dmx[0]~input_o\,
	datac => \ALT_INV_dmx[1]~input_o\,
	dataf => \ALT_INV_dmx[2]~input_o\,
	combout => \Equal0~4_combout\);

-- Location: FF_X78_Y3_N20
\r2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r2[0]~feeder_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(0));

-- Location: LABCELL_X81_Y4_N42
\r0[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r0[0]~feeder_combout\ = ( \data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[0]~input_o\,
	combout => \r0[0]~feeder_combout\);

-- Location: LABCELL_X83_Y4_N24
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( !\dmx[1]~input_o\ & ( (!\dmx[2]~input_o\ & !\dmx[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dmx[2]~input_o\,
	datac => \ALT_INV_dmx[0]~input_o\,
	dataf => \ALT_INV_dmx[1]~input_o\,
	combout => \Equal0~6_combout\);

-- Location: FF_X81_Y4_N44
\r0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r0[0]~feeder_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(0));

-- Location: LABCELL_X80_Y3_N45
\q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~1_combout\ = ( r2(0) & ( r0(0) & ( (!\mux[2]~input_o\) # ((!\mux[1]~input_o\ & ((r4(0)))) # (\mux[1]~input_o\ & (r6(0)))) ) ) ) # ( !r2(0) & ( r0(0) & ( (!\mux[2]~input_o\ & (!\mux[1]~input_o\)) # (\mux[2]~input_o\ & ((!\mux[1]~input_o\ & ((r4(0)))) # 
-- (\mux[1]~input_o\ & (r6(0))))) ) ) ) # ( r2(0) & ( !r0(0) & ( (!\mux[2]~input_o\ & (\mux[1]~input_o\)) # (\mux[2]~input_o\ & ((!\mux[1]~input_o\ & ((r4(0)))) # (\mux[1]~input_o\ & (r6(0))))) ) ) ) # ( !r2(0) & ( !r0(0) & ( (\mux[2]~input_o\ & 
-- ((!\mux[1]~input_o\ & ((r4(0)))) # (\mux[1]~input_o\ & (r6(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[2]~input_o\,
	datab => \ALT_INV_mux[1]~input_o\,
	datac => ALT_INV_r6(0),
	datad => ALT_INV_r4(0),
	datae => ALT_INV_r2(0),
	dataf => ALT_INV_r0(0),
	combout => \q~1_combout\);

-- Location: LABCELL_X81_Y3_N18
\q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~2_combout\ = ( \q~1_combout\ & ( (!\mux[0]~input_o\) # (\q~0_combout\) ) ) # ( !\q~1_combout\ & ( (\mux[0]~input_o\ & \q~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[0]~input_o\,
	datad => \ALT_INV_q~0_combout\,
	dataf => \ALT_INV_q~1_combout\,
	combout => \q~2_combout\);

-- Location: FF_X81_Y3_N19
\q[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[0]~reg0_q\);

-- Location: IOIBUF_X70_Y0_N52
\data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: FF_X81_Y3_N8
\r0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(1));

-- Location: FF_X80_Y3_N4
\r6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(1));

-- Location: FF_X78_Y3_N44
\r2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(1));

-- Location: FF_X82_Y4_N44
\r4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(1));

-- Location: LABCELL_X81_Y3_N51
\q~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~4_combout\ = ( r2(1) & ( r4(1) & ( (!\mux[2]~input_o\ & (((\mux[1]~input_o\)) # (r0(1)))) # (\mux[2]~input_o\ & (((!\mux[1]~input_o\) # (r6(1))))) ) ) ) # ( !r2(1) & ( r4(1) & ( (!\mux[2]~input_o\ & (r0(1) & ((!\mux[1]~input_o\)))) # (\mux[2]~input_o\ 
-- & (((!\mux[1]~input_o\) # (r6(1))))) ) ) ) # ( r2(1) & ( !r4(1) & ( (!\mux[2]~input_o\ & (((\mux[1]~input_o\)) # (r0(1)))) # (\mux[2]~input_o\ & (((r6(1) & \mux[1]~input_o\)))) ) ) ) # ( !r2(1) & ( !r4(1) & ( (!\mux[2]~input_o\ & (r0(1) & 
-- ((!\mux[1]~input_o\)))) # (\mux[2]~input_o\ & (((r6(1) & \mux[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101001000101010111101110111000001010111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[2]~input_o\,
	datab => ALT_INV_r0(1),
	datac => ALT_INV_r6(1),
	datad => \ALT_INV_mux[1]~input_o\,
	datae => ALT_INV_r2(1),
	dataf => ALT_INV_r4(1),
	combout => \q~4_combout\);

-- Location: FF_X81_Y3_N5
\r5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(1));

-- Location: MLABCELL_X82_Y3_N39
\r7[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r7[1]~feeder_combout\ = \data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[1]~input_o\,
	combout => \r7[1]~feeder_combout\);

-- Location: FF_X82_Y3_N41
\r7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r7[1]~feeder_combout\,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(1));

-- Location: FF_X82_Y3_N29
\r3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(1));

-- Location: FF_X82_Y4_N34
\r1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(1));

-- Location: LABCELL_X81_Y3_N24
\q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~3_combout\ = ( r3(1) & ( r1(1) & ( (!\mux[2]~input_o\) # ((!\mux[1]~input_o\ & (r5(1))) # (\mux[1]~input_o\ & ((r7(1))))) ) ) ) # ( !r3(1) & ( r1(1) & ( (!\mux[1]~input_o\ & (((!\mux[2]~input_o\)) # (r5(1)))) # (\mux[1]~input_o\ & (((r7(1) & 
-- \mux[2]~input_o\)))) ) ) ) # ( r3(1) & ( !r1(1) & ( (!\mux[1]~input_o\ & (r5(1) & ((\mux[2]~input_o\)))) # (\mux[1]~input_o\ & (((!\mux[2]~input_o\) # (r7(1))))) ) ) ) # ( !r3(1) & ( !r1(1) & ( (\mux[2]~input_o\ & ((!\mux[1]~input_o\ & (r5(1))) # 
-- (\mux[1]~input_o\ & ((r7(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111001100110100011111001100010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_r5(1),
	datab => \ALT_INV_mux[1]~input_o\,
	datac => ALT_INV_r7(1),
	datad => \ALT_INV_mux[2]~input_o\,
	datae => ALT_INV_r3(1),
	dataf => ALT_INV_r1(1),
	combout => \q~3_combout\);

-- Location: LABCELL_X81_Y3_N42
\q~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~5_combout\ = ( \q~3_combout\ & ( (\q~4_combout\) # (\mux[0]~input_o\) ) ) # ( !\q~3_combout\ & ( (!\mux[0]~input_o\ & \q~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[0]~input_o\,
	datac => \ALT_INV_q~4_combout\,
	dataf => \ALT_INV_q~3_combout\,
	combout => \q~5_combout\);

-- Location: FF_X81_Y3_N43
\q[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[1]~reg0_q\);

-- Location: IOIBUF_X68_Y0_N18
\data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: FF_X77_Y3_N4
\r0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[2]~input_o\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(2));

-- Location: FF_X78_Y3_N59
\r2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[2]~input_o\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(2));

-- Location: FF_X77_Y3_N22
\r4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[2]~input_o\,
	sload => VCC,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(2));

-- Location: FF_X78_Y3_N32
\r6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[2]~input_o\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(2));

-- Location: MLABCELL_X78_Y3_N15
\q~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~7_combout\ = ( r4(2) & ( r6(2) & ( ((!\mux[1]~input_o\ & (r0(2))) # (\mux[1]~input_o\ & ((r2(2))))) # (\mux[2]~input_o\) ) ) ) # ( !r4(2) & ( r6(2) & ( (!\mux[2]~input_o\ & ((!\mux[1]~input_o\ & (r0(2))) # (\mux[1]~input_o\ & ((r2(2)))))) # 
-- (\mux[2]~input_o\ & (((\mux[1]~input_o\)))) ) ) ) # ( r4(2) & ( !r6(2) & ( (!\mux[2]~input_o\ & ((!\mux[1]~input_o\ & (r0(2))) # (\mux[1]~input_o\ & ((r2(2)))))) # (\mux[2]~input_o\ & (((!\mux[1]~input_o\)))) ) ) ) # ( !r4(2) & ( !r6(2) & ( 
-- (!\mux[2]~input_o\ & ((!\mux[1]~input_o\ & (r0(2))) # (\mux[1]~input_o\ & ((r2(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[2]~input_o\,
	datab => ALT_INV_r0(2),
	datac => ALT_INV_r2(2),
	datad => \ALT_INV_mux[1]~input_o\,
	datae => ALT_INV_r4(2),
	dataf => ALT_INV_r6(2),
	combout => \q~7_combout\);

-- Location: MLABCELL_X82_Y3_N6
\r3[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3[2]~feeder_combout\ = \data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[2]~input_o\,
	combout => \r3[2]~feeder_combout\);

-- Location: FF_X82_Y3_N8
\r3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r3[2]~feeder_combout\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(2));

-- Location: FF_X83_Y3_N35
\r1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[2]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(2));

-- Location: MLABCELL_X82_Y3_N45
\r7[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r7[2]~feeder_combout\ = \data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[2]~input_o\,
	combout => \r7[2]~feeder_combout\);

-- Location: FF_X82_Y3_N47
\r7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r7[2]~feeder_combout\,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(2));

-- Location: FF_X82_Y3_N32
\r5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[2]~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(2));

-- Location: MLABCELL_X82_Y3_N33
\q~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~6_combout\ = ( r7(2) & ( r5(2) & ( ((!\mux[1]~input_o\ & ((r1(2)))) # (\mux[1]~input_o\ & (r3(2)))) # (\mux[2]~input_o\) ) ) ) # ( !r7(2) & ( r5(2) & ( (!\mux[1]~input_o\ & (((r1(2))) # (\mux[2]~input_o\))) # (\mux[1]~input_o\ & (!\mux[2]~input_o\ & 
-- (r3(2)))) ) ) ) # ( r7(2) & ( !r5(2) & ( (!\mux[1]~input_o\ & (!\mux[2]~input_o\ & ((r1(2))))) # (\mux[1]~input_o\ & (((r3(2))) # (\mux[2]~input_o\))) ) ) ) # ( !r7(2) & ( !r5(2) & ( (!\mux[2]~input_o\ & ((!\mux[1]~input_o\ & ((r1(2)))) # 
-- (\mux[1]~input_o\ & (r3(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[1]~input_o\,
	datab => \ALT_INV_mux[2]~input_o\,
	datac => ALT_INV_r3(2),
	datad => ALT_INV_r1(2),
	datae => ALT_INV_r7(2),
	dataf => ALT_INV_r5(2),
	combout => \q~6_combout\);

-- Location: MLABCELL_X78_Y3_N3
\q~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~8_combout\ = ( \q~6_combout\ & ( (\q~7_combout\) # (\mux[0]~input_o\) ) ) # ( !\q~6_combout\ & ( (!\mux[0]~input_o\ & \q~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[0]~input_o\,
	datac => \ALT_INV_q~7_combout\,
	dataf => \ALT_INV_q~6_combout\,
	combout => \q~8_combout\);

-- Location: FF_X78_Y3_N5
\q[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[2]~reg0_q\);

-- Location: IOIBUF_X89_Y4_N61
\data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: FF_X81_Y3_N35
\r5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[3]~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(3));

-- Location: FF_X82_Y3_N38
\r7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[3]~input_o\,
	sload => VCC,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(3));

-- Location: MLABCELL_X82_Y3_N57
\r3[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3[3]~feeder_combout\ = \data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[3]~input_o\,
	combout => \r3[3]~feeder_combout\);

-- Location: FF_X82_Y3_N58
\r3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r3[3]~feeder_combout\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(3));

-- Location: LABCELL_X83_Y3_N36
\r1[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1[3]~feeder_combout\ = ( \data[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[3]~input_o\,
	combout => \r1[3]~feeder_combout\);

-- Location: FF_X83_Y3_N37
\r1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r1[3]~feeder_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(3));

-- Location: LABCELL_X81_Y3_N0
\q~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~9_combout\ = ( r3(3) & ( r1(3) & ( (!\mux[2]~input_o\) # ((!\mux[1]~input_o\ & (r5(3))) # (\mux[1]~input_o\ & ((r7(3))))) ) ) ) # ( !r3(3) & ( r1(3) & ( (!\mux[2]~input_o\ & (!\mux[1]~input_o\)) # (\mux[2]~input_o\ & ((!\mux[1]~input_o\ & (r5(3))) # 
-- (\mux[1]~input_o\ & ((r7(3)))))) ) ) ) # ( r3(3) & ( !r1(3) & ( (!\mux[2]~input_o\ & (\mux[1]~input_o\)) # (\mux[2]~input_o\ & ((!\mux[1]~input_o\ & (r5(3))) # (\mux[1]~input_o\ & ((r7(3)))))) ) ) ) # ( !r3(3) & ( !r1(3) & ( (\mux[2]~input_o\ & 
-- ((!\mux[1]~input_o\ & (r5(3))) # (\mux[1]~input_o\ & ((r7(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[2]~input_o\,
	datab => \ALT_INV_mux[1]~input_o\,
	datac => ALT_INV_r5(3),
	datad => ALT_INV_r7(3),
	datae => ALT_INV_r3(3),
	dataf => ALT_INV_r1(3),
	combout => \q~9_combout\);

-- Location: FF_X80_Y3_N29
\r6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[3]~input_o\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(3));

-- Location: MLABCELL_X78_Y3_N24
\r2[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2[3]~feeder_combout\ = ( \data[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[3]~input_o\,
	combout => \r2[3]~feeder_combout\);

-- Location: FF_X78_Y3_N25
\r2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r2[3]~feeder_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(3));

-- Location: FF_X81_Y4_N40
\r0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[3]~input_o\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(3));

-- Location: FF_X81_Y4_N8
\r4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[3]~input_o\,
	sload => VCC,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(3));

-- Location: LABCELL_X80_Y3_N0
\q~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~10_combout\ = ( r0(3) & ( r4(3) & ( (!\mux[1]~input_o\) # ((!\mux[2]~input_o\ & ((r2(3)))) # (\mux[2]~input_o\ & (r6(3)))) ) ) ) # ( !r0(3) & ( r4(3) & ( (!\mux[1]~input_o\ & (\mux[2]~input_o\)) # (\mux[1]~input_o\ & ((!\mux[2]~input_o\ & ((r2(3)))) # 
-- (\mux[2]~input_o\ & (r6(3))))) ) ) ) # ( r0(3) & ( !r4(3) & ( (!\mux[1]~input_o\ & (!\mux[2]~input_o\)) # (\mux[1]~input_o\ & ((!\mux[2]~input_o\ & ((r2(3)))) # (\mux[2]~input_o\ & (r6(3))))) ) ) ) # ( !r0(3) & ( !r4(3) & ( (\mux[1]~input_o\ & 
-- ((!\mux[2]~input_o\ & ((r2(3)))) # (\mux[2]~input_o\ & (r6(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[1]~input_o\,
	datab => \ALT_INV_mux[2]~input_o\,
	datac => ALT_INV_r6(3),
	datad => ALT_INV_r2(3),
	datae => ALT_INV_r0(3),
	dataf => ALT_INV_r4(3),
	combout => \q~10_combout\);

-- Location: LABCELL_X81_Y3_N21
\q~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~11_combout\ = ( \q~10_combout\ & ( (!\mux[0]~input_o\) # (\q~9_combout\) ) ) # ( !\q~10_combout\ & ( (\mux[0]~input_o\ & \q~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[0]~input_o\,
	datad => \ALT_INV_q~9_combout\,
	dataf => \ALT_INV_q~10_combout\,
	combout => \q~11_combout\);

-- Location: FF_X81_Y3_N22
\q[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[3]~reg0_q\);

-- Location: IOIBUF_X72_Y0_N18
\data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(4),
	o => \data[4]~input_o\);

-- Location: FF_X82_Y3_N11
\r3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[4]~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(4));

-- Location: FF_X82_Y3_N46
\r7[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[4]~input_o\,
	sload => VCC,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(4));

-- Location: FF_X81_Y3_N32
\r5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[4]~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(4));

-- Location: FF_X83_Y3_N49
\r1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[4]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(4));

-- Location: LABCELL_X81_Y3_N30
\q~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~12_combout\ = ( r5(4) & ( r1(4) & ( (!\mux[1]~input_o\) # ((!\mux[2]~input_o\ & (r3(4))) # (\mux[2]~input_o\ & ((r7(4))))) ) ) ) # ( !r5(4) & ( r1(4) & ( (!\mux[1]~input_o\ & (!\mux[2]~input_o\)) # (\mux[1]~input_o\ & ((!\mux[2]~input_o\ & (r3(4))) # 
-- (\mux[2]~input_o\ & ((r7(4)))))) ) ) ) # ( r5(4) & ( !r1(4) & ( (!\mux[1]~input_o\ & (\mux[2]~input_o\)) # (\mux[1]~input_o\ & ((!\mux[2]~input_o\ & (r3(4))) # (\mux[2]~input_o\ & ((r7(4)))))) ) ) ) # ( !r5(4) & ( !r1(4) & ( (\mux[1]~input_o\ & 
-- ((!\mux[2]~input_o\ & (r3(4))) # (\mux[2]~input_o\ & ((r7(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[1]~input_o\,
	datab => \ALT_INV_mux[2]~input_o\,
	datac => ALT_INV_r3(4),
	datad => ALT_INV_r7(4),
	datae => ALT_INV_r5(4),
	dataf => ALT_INV_r1(4),
	combout => \q~12_combout\);

-- Location: FF_X81_Y3_N11
\r0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[4]~input_o\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(4));

-- Location: FF_X79_Y3_N43
\r4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[4]~input_o\,
	sload => VCC,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(4));

-- Location: FF_X80_Y3_N26
\r6[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[4]~input_o\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(4));

-- Location: MLABCELL_X78_Y3_N27
\r2[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2[4]~feeder_combout\ = ( \data[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[4]~input_o\,
	combout => \r2[4]~feeder_combout\);

-- Location: FF_X78_Y3_N28
\r2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r2[4]~feeder_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(4));

-- Location: LABCELL_X80_Y3_N24
\q~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~13_combout\ = ( r6(4) & ( r2(4) & ( ((!\mux[2]~input_o\ & (r0(4))) # (\mux[2]~input_o\ & ((r4(4))))) # (\mux[1]~input_o\) ) ) ) # ( !r6(4) & ( r2(4) & ( (!\mux[2]~input_o\ & (((\mux[1]~input_o\)) # (r0(4)))) # (\mux[2]~input_o\ & (((!\mux[1]~input_o\ & 
-- r4(4))))) ) ) ) # ( r6(4) & ( !r2(4) & ( (!\mux[2]~input_o\ & (r0(4) & (!\mux[1]~input_o\))) # (\mux[2]~input_o\ & (((r4(4)) # (\mux[1]~input_o\)))) ) ) ) # ( !r6(4) & ( !r2(4) & ( (!\mux[1]~input_o\ & ((!\mux[2]~input_o\ & (r0(4))) # (\mux[2]~input_o\ & 
-- ((r4(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010000110111001101001100011111000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_r0(4),
	datab => \ALT_INV_mux[2]~input_o\,
	datac => \ALT_INV_mux[1]~input_o\,
	datad => ALT_INV_r4(4),
	datae => ALT_INV_r6(4),
	dataf => ALT_INV_r2(4),
	combout => \q~13_combout\);

-- Location: LABCELL_X81_Y3_N45
\q~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~14_combout\ = ( \q~13_combout\ & ( (!\mux[0]~input_o\) # (\q~12_combout\) ) ) # ( !\q~13_combout\ & ( (\mux[0]~input_o\ & \q~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[0]~input_o\,
	datac => \ALT_INV_q~12_combout\,
	dataf => \ALT_INV_q~13_combout\,
	combout => \q~14_combout\);

-- Location: FF_X81_Y3_N46
\q[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[4]~reg0_q\);

-- Location: IOIBUF_X89_Y6_N38
\data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(5),
	o => \data[5]~input_o\);

-- Location: LABCELL_X79_Y3_N42
\r4[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r4[5]~feeder_combout\ = \data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[5]~input_o\,
	combout => \r4[5]~feeder_combout\);

-- Location: FF_X79_Y3_N44
\r4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r4[5]~feeder_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(5));

-- Location: FF_X79_Y3_N14
\r6[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[5]~input_o\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(5));

-- Location: MLABCELL_X78_Y3_N42
\r2[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2[5]~feeder_combout\ = ( \data[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[5]~input_o\,
	combout => \r2[5]~feeder_combout\);

-- Location: FF_X78_Y3_N43
\r2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r2[5]~feeder_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(5));

-- Location: FF_X77_Y3_N28
\r0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[5]~input_o\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(5));

-- Location: LABCELL_X79_Y3_N15
\q~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~16_combout\ = ( r2(5) & ( r0(5) & ( (!\mux[2]~input_o\) # ((!\mux[1]~input_o\ & (r4(5))) # (\mux[1]~input_o\ & ((r6(5))))) ) ) ) # ( !r2(5) & ( r0(5) & ( (!\mux[1]~input_o\ & (((!\mux[2]~input_o\)) # (r4(5)))) # (\mux[1]~input_o\ & (((r6(5) & 
-- \mux[2]~input_o\)))) ) ) ) # ( r2(5) & ( !r0(5) & ( (!\mux[1]~input_o\ & (r4(5) & ((\mux[2]~input_o\)))) # (\mux[1]~input_o\ & (((!\mux[2]~input_o\) # (r6(5))))) ) ) ) # ( !r2(5) & ( !r0(5) & ( (\mux[2]~input_o\ & ((!\mux[1]~input_o\ & (r4(5))) # 
-- (\mux[1]~input_o\ & ((r6(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111010101010010011110101010001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[1]~input_o\,
	datab => ALT_INV_r4(5),
	datac => ALT_INV_r6(5),
	datad => \ALT_INV_mux[2]~input_o\,
	datae => ALT_INV_r2(5),
	dataf => ALT_INV_r0(5),
	combout => \q~16_combout\);

-- Location: FF_X83_Y3_N14
\r5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[5]~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(5));

-- Location: FF_X83_Y3_N52
\r1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[5]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(5));

-- Location: FF_X83_Y3_N56
\r7[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[5]~input_o\,
	sload => VCC,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(5));

-- Location: MLABCELL_X82_Y3_N54
\r3[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3[5]~feeder_combout\ = ( \data[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[5]~input_o\,
	combout => \r3[5]~feeder_combout\);

-- Location: FF_X82_Y3_N55
\r3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r3[5]~feeder_combout\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(5));

-- Location: LABCELL_X83_Y3_N15
\q~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~15_combout\ = ( r7(5) & ( r3(5) & ( ((!\mux[2]~input_o\ & ((r1(5)))) # (\mux[2]~input_o\ & (r5(5)))) # (\mux[1]~input_o\) ) ) ) # ( !r7(5) & ( r3(5) & ( (!\mux[1]~input_o\ & ((!\mux[2]~input_o\ & ((r1(5)))) # (\mux[2]~input_o\ & (r5(5))))) # 
-- (\mux[1]~input_o\ & (((!\mux[2]~input_o\)))) ) ) ) # ( r7(5) & ( !r3(5) & ( (!\mux[1]~input_o\ & ((!\mux[2]~input_o\ & ((r1(5)))) # (\mux[2]~input_o\ & (r5(5))))) # (\mux[1]~input_o\ & (((\mux[2]~input_o\)))) ) ) ) # ( !r7(5) & ( !r3(5) & ( 
-- (!\mux[1]~input_o\ & ((!\mux[2]~input_o\ & ((r1(5)))) # (\mux[2]~input_o\ & (r5(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100111011101011111001000100101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[1]~input_o\,
	datab => ALT_INV_r5(5),
	datac => ALT_INV_r1(5),
	datad => \ALT_INV_mux[2]~input_o\,
	datae => ALT_INV_r7(5),
	dataf => ALT_INV_r3(5),
	combout => \q~15_combout\);

-- Location: LABCELL_X79_Y3_N36
\q~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~17_combout\ = ( \q~15_combout\ & ( (\q~16_combout\) # (\mux[0]~input_o\) ) ) # ( !\q~15_combout\ & ( (!\mux[0]~input_o\ & \q~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[0]~input_o\,
	datab => \ALT_INV_q~16_combout\,
	dataf => \ALT_INV_q~15_combout\,
	combout => \q~17_combout\);

-- Location: FF_X79_Y3_N37
\q[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[5]~reg0_q\);

-- Location: IOIBUF_X72_Y0_N1
\data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(6),
	o => \data[6]~input_o\);

-- Location: MLABCELL_X82_Y3_N51
\r7[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r7[6]~feeder_combout\ = ( \data[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[6]~input_o\,
	combout => \r7[6]~feeder_combout\);

-- Location: FF_X82_Y3_N52
\r7[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r7[6]~feeder_combout\,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(6));

-- Location: MLABCELL_X82_Y3_N15
\r3[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3[6]~feeder_combout\ = ( \data[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[6]~input_o\,
	combout => \r3[6]~feeder_combout\);

-- Location: FF_X82_Y3_N16
\r3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r3[6]~feeder_combout\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(6));

-- Location: FF_X81_Y3_N38
\r5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[6]~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(6));

-- Location: LABCELL_X83_Y3_N24
\r1[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1[6]~feeder_combout\ = ( \data[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[6]~input_o\,
	combout => \r1[6]~feeder_combout\);

-- Location: FF_X83_Y3_N26
\r1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r1[6]~feeder_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(6));

-- Location: LABCELL_X81_Y3_N39
\q~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~18_combout\ = ( r5(6) & ( r1(6) & ( (!\mux[1]~input_o\) # ((!\mux[2]~input_o\ & ((r3(6)))) # (\mux[2]~input_o\ & (r7(6)))) ) ) ) # ( !r5(6) & ( r1(6) & ( (!\mux[2]~input_o\ & (((!\mux[1]~input_o\) # (r3(6))))) # (\mux[2]~input_o\ & (r7(6) & 
-- ((\mux[1]~input_o\)))) ) ) ) # ( r5(6) & ( !r1(6) & ( (!\mux[2]~input_o\ & (((r3(6) & \mux[1]~input_o\)))) # (\mux[2]~input_o\ & (((!\mux[1]~input_o\)) # (r7(6)))) ) ) ) # ( !r5(6) & ( !r1(6) & ( (\mux[1]~input_o\ & ((!\mux[2]~input_o\ & ((r3(6)))) # 
-- (\mux[2]~input_o\ & (r7(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101001100110001110111001100000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_r7(6),
	datab => \ALT_INV_mux[2]~input_o\,
	datac => ALT_INV_r3(6),
	datad => \ALT_INV_mux[1]~input_o\,
	datae => ALT_INV_r5(6),
	dataf => ALT_INV_r1(6),
	combout => \q~18_combout\);

-- Location: LABCELL_X77_Y3_N24
\r0[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r0[6]~feeder_combout\ = ( \data[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[6]~input_o\,
	combout => \r0[6]~feeder_combout\);

-- Location: FF_X77_Y3_N25
\r0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r0[6]~feeder_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(6));

-- Location: FF_X78_Y3_N50
\r6[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[6]~input_o\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(6));

-- Location: FF_X78_Y3_N38
\r2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[6]~input_o\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(6));

-- Location: FF_X77_Y3_N19
\r4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[6]~input_o\,
	sload => VCC,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(6));

-- Location: MLABCELL_X78_Y3_N51
\q~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~19_combout\ = ( r2(6) & ( r4(6) & ( (!\mux[2]~input_o\ & (((r0(6))) # (\mux[1]~input_o\))) # (\mux[2]~input_o\ & ((!\mux[1]~input_o\) # ((r6(6))))) ) ) ) # ( !r2(6) & ( r4(6) & ( (!\mux[2]~input_o\ & (!\mux[1]~input_o\ & (r0(6)))) # (\mux[2]~input_o\ & 
-- ((!\mux[1]~input_o\) # ((r6(6))))) ) ) ) # ( r2(6) & ( !r4(6) & ( (!\mux[2]~input_o\ & (((r0(6))) # (\mux[1]~input_o\))) # (\mux[2]~input_o\ & (\mux[1]~input_o\ & ((r6(6))))) ) ) ) # ( !r2(6) & ( !r4(6) & ( (!\mux[2]~input_o\ & (!\mux[1]~input_o\ & 
-- (r0(6)))) # (\mux[2]~input_o\ & (\mux[1]~input_o\ & ((r6(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[2]~input_o\,
	datab => \ALT_INV_mux[1]~input_o\,
	datac => ALT_INV_r0(6),
	datad => ALT_INV_r6(6),
	datae => ALT_INV_r2(6),
	dataf => ALT_INV_r4(6),
	combout => \q~19_combout\);

-- Location: LABCELL_X81_Y3_N15
\q~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~20_combout\ = ( \q~19_combout\ & ( (!\mux[0]~input_o\) # (\q~18_combout\) ) ) # ( !\q~19_combout\ & ( (\mux[0]~input_o\ & \q~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[0]~input_o\,
	datac => \ALT_INV_q~18_combout\,
	dataf => \ALT_INV_q~19_combout\,
	combout => \q~20_combout\);

-- Location: FF_X81_Y3_N16
\q[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[6]~reg0_q\);

-- Location: IOIBUF_X89_Y6_N21
\data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(7),
	o => \data[7]~input_o\);

-- Location: FF_X78_Y3_N22
\r2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[7]~input_o\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(7));

-- Location: FF_X79_Y3_N20
\r6[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[7]~input_o\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(7));

-- Location: LABCELL_X79_Y3_N0
\r4[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r4[7]~feeder_combout\ = \data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[7]~input_o\,
	combout => \r4[7]~feeder_combout\);

-- Location: FF_X79_Y3_N2
\r4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r4[7]~feeder_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(7));

-- Location: LABCELL_X77_Y3_N54
\r0[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r0[7]~feeder_combout\ = ( \data[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[7]~input_o\,
	combout => \r0[7]~feeder_combout\);

-- Location: FF_X77_Y3_N56
\r0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r0[7]~feeder_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(7));

-- Location: LABCELL_X79_Y3_N21
\q~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~22_combout\ = ( r4(7) & ( r0(7) & ( (!\mux[1]~input_o\) # ((!\mux[2]~input_o\ & (r2(7))) # (\mux[2]~input_o\ & ((r6(7))))) ) ) ) # ( !r4(7) & ( r0(7) & ( (!\mux[2]~input_o\ & (((!\mux[1]~input_o\)) # (r2(7)))) # (\mux[2]~input_o\ & (((\mux[1]~input_o\ 
-- & r6(7))))) ) ) ) # ( r4(7) & ( !r0(7) & ( (!\mux[2]~input_o\ & (r2(7) & (\mux[1]~input_o\))) # (\mux[2]~input_o\ & (((!\mux[1]~input_o\) # (r6(7))))) ) ) ) # ( !r4(7) & ( !r0(7) & ( (\mux[1]~input_o\ & ((!\mux[2]~input_o\ & (r2(7))) # (\mux[2]~input_o\ & 
-- ((r6(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_r2(7),
	datab => \ALT_INV_mux[2]~input_o\,
	datac => \ALT_INV_mux[1]~input_o\,
	datad => ALT_INV_r6(7),
	datae => ALT_INV_r4(7),
	dataf => ALT_INV_r0(7),
	combout => \q~22_combout\);

-- Location: MLABCELL_X82_Y3_N24
\r3[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3[7]~feeder_combout\ = \data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[7]~input_o\,
	combout => \r3[7]~feeder_combout\);

-- Location: FF_X82_Y3_N25
\r3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r3[7]~feeder_combout\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(7));

-- Location: FF_X83_Y3_N23
\r7[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[7]~input_o\,
	sload => VCC,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(7));

-- Location: FF_X83_Y3_N2
\r5[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[7]~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(7));

-- Location: LABCELL_X83_Y3_N48
\r1[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1[7]~feeder_combout\ = \data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[7]~input_o\,
	combout => \r1[7]~feeder_combout\);

-- Location: FF_X83_Y3_N50
\r1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r1[7]~feeder_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(7));

-- Location: LABCELL_X83_Y3_N3
\q~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~21_combout\ = ( r5(7) & ( r1(7) & ( (!\mux[1]~input_o\) # ((!\mux[2]~input_o\ & (r3(7))) # (\mux[2]~input_o\ & ((r7(7))))) ) ) ) # ( !r5(7) & ( r1(7) & ( (!\mux[2]~input_o\ & ((!\mux[1]~input_o\) # ((r3(7))))) # (\mux[2]~input_o\ & (\mux[1]~input_o\ & 
-- ((r7(7))))) ) ) ) # ( r5(7) & ( !r1(7) & ( (!\mux[2]~input_o\ & (\mux[1]~input_o\ & (r3(7)))) # (\mux[2]~input_o\ & ((!\mux[1]~input_o\) # ((r7(7))))) ) ) ) # ( !r5(7) & ( !r1(7) & ( (\mux[1]~input_o\ & ((!\mux[2]~input_o\ & (r3(7))) # (\mux[2]~input_o\ & 
-- ((r7(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[2]~input_o\,
	datab => \ALT_INV_mux[1]~input_o\,
	datac => ALT_INV_r3(7),
	datad => ALT_INV_r7(7),
	datae => ALT_INV_r5(7),
	dataf => ALT_INV_r1(7),
	combout => \q~21_combout\);

-- Location: LABCELL_X79_Y3_N54
\q~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~23_combout\ = ( \q~21_combout\ & ( (\q~22_combout\) # (\mux[0]~input_o\) ) ) # ( !\q~21_combout\ & ( (!\mux[0]~input_o\ & \q~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mux[0]~input_o\,
	datad => \ALT_INV_q~22_combout\,
	dataf => \ALT_INV_q~21_combout\,
	combout => \q~23_combout\);

-- Location: FF_X79_Y3_N56
\q[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[7]~reg0_q\);

-- Location: IOIBUF_X70_Y0_N18
\data[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(8),
	o => \data[8]~input_o\);

-- Location: LABCELL_X77_Y3_N9
\r0[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r0[8]~feeder_combout\ = ( \data[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[8]~input_o\,
	combout => \r0[8]~feeder_combout\);

-- Location: FF_X77_Y3_N10
\r0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r0[8]~feeder_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(8));

-- Location: FF_X78_Y3_N14
\r6[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[8]~input_o\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(8));

-- Location: FF_X78_Y3_N47
\r2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[8]~input_o\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(8));

-- Location: LABCELL_X77_Y3_N51
\r4[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r4[8]~feeder_combout\ = ( \data[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[8]~input_o\,
	combout => \r4[8]~feeder_combout\);

-- Location: FF_X77_Y3_N52
\r4[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r4[8]~feeder_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(8));

-- Location: MLABCELL_X78_Y3_N33
\q~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~25_combout\ = ( r2(8) & ( r4(8) & ( (!\mux[2]~input_o\ & (((\mux[1]~input_o\)) # (r0(8)))) # (\mux[2]~input_o\ & (((!\mux[1]~input_o\) # (r6(8))))) ) ) ) # ( !r2(8) & ( r4(8) & ( (!\mux[2]~input_o\ & (r0(8) & ((!\mux[1]~input_o\)))) # (\mux[2]~input_o\ 
-- & (((!\mux[1]~input_o\) # (r6(8))))) ) ) ) # ( r2(8) & ( !r4(8) & ( (!\mux[2]~input_o\ & (((\mux[1]~input_o\)) # (r0(8)))) # (\mux[2]~input_o\ & (((r6(8) & \mux[1]~input_o\)))) ) ) ) # ( !r2(8) & ( !r4(8) & ( (!\mux[2]~input_o\ & (r0(8) & 
-- ((!\mux[1]~input_o\)))) # (\mux[2]~input_o\ & (((r6(8) & \mux[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101001000101010111101110111000001010111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[2]~input_o\,
	datab => ALT_INV_r0(8),
	datac => ALT_INV_r6(8),
	datad => \ALT_INV_mux[1]~input_o\,
	datae => ALT_INV_r2(8),
	dataf => ALT_INV_r4(8),
	combout => \q~25_combout\);

-- Location: FF_X83_Y3_N59
\r7[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[8]~input_o\,
	sload => VCC,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(8));

-- Location: FF_X83_Y3_N44
\r5[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[8]~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(8));

-- Location: MLABCELL_X82_Y3_N27
\r3[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3[8]~feeder_combout\ = \data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[8]~input_o\,
	combout => \r3[8]~feeder_combout\);

-- Location: FF_X82_Y3_N28
\r3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r3[8]~feeder_combout\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(8));

-- Location: LABCELL_X83_Y3_N39
\r1[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1[8]~feeder_combout\ = \data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[8]~input_o\,
	combout => \r1[8]~feeder_combout\);

-- Location: FF_X83_Y3_N41
\r1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r1[8]~feeder_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(8));

-- Location: LABCELL_X83_Y3_N45
\q~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~24_combout\ = ( r3(8) & ( r1(8) & ( (!\mux[2]~input_o\) # ((!\mux[1]~input_o\ & ((r5(8)))) # (\mux[1]~input_o\ & (r7(8)))) ) ) ) # ( !r3(8) & ( r1(8) & ( (!\mux[2]~input_o\ & (((!\mux[1]~input_o\)))) # (\mux[2]~input_o\ & ((!\mux[1]~input_o\ & 
-- ((r5(8)))) # (\mux[1]~input_o\ & (r7(8))))) ) ) ) # ( r3(8) & ( !r1(8) & ( (!\mux[2]~input_o\ & (((\mux[1]~input_o\)))) # (\mux[2]~input_o\ & ((!\mux[1]~input_o\ & ((r5(8)))) # (\mux[1]~input_o\ & (r7(8))))) ) ) ) # ( !r3(8) & ( !r1(8) & ( 
-- (\mux[2]~input_o\ & ((!\mux[1]~input_o\ & ((r5(8)))) # (\mux[1]~input_o\ & (r7(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[2]~input_o\,
	datab => ALT_INV_r7(8),
	datac => ALT_INV_r5(8),
	datad => \ALT_INV_mux[1]~input_o\,
	datae => ALT_INV_r3(8),
	dataf => ALT_INV_r1(8),
	combout => \q~24_combout\);

-- Location: LABCELL_X79_Y3_N27
\q~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~26_combout\ = ( \q~24_combout\ & ( (\q~25_combout\) # (\mux[0]~input_o\) ) ) # ( !\q~24_combout\ & ( (!\mux[0]~input_o\ & \q~25_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[0]~input_o\,
	datad => \ALT_INV_q~25_combout\,
	dataf => \ALT_INV_q~24_combout\,
	combout => \q~26_combout\);

-- Location: FF_X79_Y3_N28
\q[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[8]~reg0_q\);

-- Location: IOIBUF_X68_Y0_N1
\data[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(9),
	o => \data[9]~input_o\);

-- Location: FF_X81_Y3_N59
\r5[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[9]~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(9));

-- Location: MLABCELL_X82_Y3_N9
\r3[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3[9]~feeder_combout\ = \data[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[9]~input_o\,
	combout => \r3[9]~feeder_combout\);

-- Location: FF_X82_Y3_N10
\r3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r3[9]~feeder_combout\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(9));

-- Location: FF_X82_Y3_N50
\r7[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[9]~input_o\,
	sload => VCC,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(9));

-- Location: FF_X83_Y3_N29
\r1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[9]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(9));

-- Location: LABCELL_X81_Y3_N9
\q~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~27_combout\ = ( r7(9) & ( r1(9) & ( (!\mux[2]~input_o\ & ((!\mux[1]~input_o\) # ((r3(9))))) # (\mux[2]~input_o\ & (((r5(9))) # (\mux[1]~input_o\))) ) ) ) # ( !r7(9) & ( r1(9) & ( (!\mux[2]~input_o\ & ((!\mux[1]~input_o\) # ((r3(9))))) # 
-- (\mux[2]~input_o\ & (!\mux[1]~input_o\ & (r5(9)))) ) ) ) # ( r7(9) & ( !r1(9) & ( (!\mux[2]~input_o\ & (\mux[1]~input_o\ & ((r3(9))))) # (\mux[2]~input_o\ & (((r5(9))) # (\mux[1]~input_o\))) ) ) ) # ( !r7(9) & ( !r1(9) & ( (!\mux[2]~input_o\ & 
-- (\mux[1]~input_o\ & ((r3(9))))) # (\mux[2]~input_o\ & (!\mux[1]~input_o\ & (r5(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[2]~input_o\,
	datab => \ALT_INV_mux[1]~input_o\,
	datac => ALT_INV_r5(9),
	datad => ALT_INV_r3(9),
	datae => ALT_INV_r7(9),
	dataf => ALT_INV_r1(9),
	combout => \q~27_combout\);

-- Location: FF_X78_Y3_N35
\r6[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[9]~input_o\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(9));

-- Location: FF_X77_Y3_N14
\r0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[9]~input_o\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(9));

-- Location: FF_X77_Y3_N38
\r4[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[9]~input_o\,
	sload => VCC,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(9));

-- Location: FF_X78_Y3_N41
\r2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[9]~input_o\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(9));

-- Location: LABCELL_X77_Y3_N18
\q~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~28_combout\ = ( r4(9) & ( r2(9) & ( (!\mux[2]~input_o\ & (((r0(9))) # (\mux[1]~input_o\))) # (\mux[2]~input_o\ & ((!\mux[1]~input_o\) # ((r6(9))))) ) ) ) # ( !r4(9) & ( r2(9) & ( (!\mux[2]~input_o\ & (((r0(9))) # (\mux[1]~input_o\))) # 
-- (\mux[2]~input_o\ & (\mux[1]~input_o\ & (r6(9)))) ) ) ) # ( r4(9) & ( !r2(9) & ( (!\mux[2]~input_o\ & (!\mux[1]~input_o\ & ((r0(9))))) # (\mux[2]~input_o\ & ((!\mux[1]~input_o\) # ((r6(9))))) ) ) ) # ( !r4(9) & ( !r2(9) & ( (!\mux[2]~input_o\ & 
-- (!\mux[1]~input_o\ & ((r0(9))))) # (\mux[2]~input_o\ & (\mux[1]~input_o\ & (r6(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[2]~input_o\,
	datab => \ALT_INV_mux[1]~input_o\,
	datac => ALT_INV_r6(9),
	datad => ALT_INV_r0(9),
	datae => ALT_INV_r4(9),
	dataf => ALT_INV_r2(9),
	combout => \q~28_combout\);

-- Location: LABCELL_X81_Y3_N12
\q~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~29_combout\ = ( \q~28_combout\ & ( (!\mux[0]~input_o\) # (\q~27_combout\) ) ) # ( !\q~28_combout\ & ( (\mux[0]~input_o\ & \q~27_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[0]~input_o\,
	datab => \ALT_INV_q~27_combout\,
	dataf => \ALT_INV_q~28_combout\,
	combout => \q~29_combout\);

-- Location: FF_X81_Y3_N13
\q[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[9]~reg0_q\);

-- Location: IOIBUF_X70_Y0_N35
\data[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(10),
	o => \data[10]~input_o\);

-- Location: FF_X79_Y3_N8
\r6[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[10]~input_o\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(10));

-- Location: LABCELL_X77_Y3_N6
\r0[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r0[10]~feeder_combout\ = ( \data[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[10]~input_o\,
	combout => \r0[10]~feeder_combout\);

-- Location: FF_X77_Y3_N7
\r0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r0[10]~feeder_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(10));

-- Location: FF_X79_Y3_N47
\r4[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[10]~input_o\,
	sload => VCC,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(10));

-- Location: MLABCELL_X78_Y3_N45
\r2[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2[10]~feeder_combout\ = \data[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[10]~input_o\,
	combout => \r2[10]~feeder_combout\);

-- Location: FF_X78_Y3_N46
\r2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r2[10]~feeder_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(10));

-- Location: LABCELL_X79_Y3_N9
\q~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~31_combout\ = ( r4(10) & ( r2(10) & ( (!\mux[2]~input_o\ & (((r0(10))) # (\mux[1]~input_o\))) # (\mux[2]~input_o\ & ((!\mux[1]~input_o\) # ((r6(10))))) ) ) ) # ( !r4(10) & ( r2(10) & ( (!\mux[2]~input_o\ & (((r0(10))) # (\mux[1]~input_o\))) # 
-- (\mux[2]~input_o\ & (\mux[1]~input_o\ & (r6(10)))) ) ) ) # ( r4(10) & ( !r2(10) & ( (!\mux[2]~input_o\ & (!\mux[1]~input_o\ & ((r0(10))))) # (\mux[2]~input_o\ & ((!\mux[1]~input_o\) # ((r6(10))))) ) ) ) # ( !r4(10) & ( !r2(10) & ( (!\mux[2]~input_o\ & 
-- (!\mux[1]~input_o\ & ((r0(10))))) # (\mux[2]~input_o\ & (\mux[1]~input_o\ & (r6(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[2]~input_o\,
	datab => \ALT_INV_mux[1]~input_o\,
	datac => ALT_INV_r6(10),
	datad => ALT_INV_r0(10),
	datae => ALT_INV_r4(10),
	dataf => ALT_INV_r2(10),
	combout => \q~31_combout\);

-- Location: FF_X83_Y3_N32
\r1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[10]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(10));

-- Location: FF_X83_Y3_N20
\r7[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[10]~input_o\,
	sload => VCC,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(10));

-- Location: MLABCELL_X82_Y3_N12
\r3[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3[10]~feeder_combout\ = ( \data[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[10]~input_o\,
	combout => \r3[10]~feeder_combout\);

-- Location: FF_X82_Y3_N13
\r3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r3[10]~feeder_combout\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(10));

-- Location: FF_X83_Y3_N8
\r5[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[10]~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(10));

-- Location: LABCELL_X83_Y3_N9
\q~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~30_combout\ = ( r3(10) & ( r5(10) & ( (!\mux[2]~input_o\ & (((r1(10))) # (\mux[1]~input_o\))) # (\mux[2]~input_o\ & ((!\mux[1]~input_o\) # ((r7(10))))) ) ) ) # ( !r3(10) & ( r5(10) & ( (!\mux[2]~input_o\ & (!\mux[1]~input_o\ & (r1(10)))) # 
-- (\mux[2]~input_o\ & ((!\mux[1]~input_o\) # ((r7(10))))) ) ) ) # ( r3(10) & ( !r5(10) & ( (!\mux[2]~input_o\ & (((r1(10))) # (\mux[1]~input_o\))) # (\mux[2]~input_o\ & (\mux[1]~input_o\ & ((r7(10))))) ) ) ) # ( !r3(10) & ( !r5(10) & ( (!\mux[2]~input_o\ & 
-- (!\mux[1]~input_o\ & (r1(10)))) # (\mux[2]~input_o\ & (\mux[1]~input_o\ & ((r7(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[2]~input_o\,
	datab => \ALT_INV_mux[1]~input_o\,
	datac => ALT_INV_r1(10),
	datad => ALT_INV_r7(10),
	datae => ALT_INV_r3(10),
	dataf => ALT_INV_r5(10),
	combout => \q~30_combout\);

-- Location: LABCELL_X79_Y3_N39
\q~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~32_combout\ = ( \q~30_combout\ & ( (\q~31_combout\) # (\mux[0]~input_o\) ) ) # ( !\q~30_combout\ & ( (!\mux[0]~input_o\ & \q~31_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[0]~input_o\,
	datac => \ALT_INV_q~31_combout\,
	dataf => \ALT_INV_q~30_combout\,
	combout => \q~32_combout\);

-- Location: FF_X79_Y3_N40
\q[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[10]~reg0_q\);

-- Location: IOIBUF_X89_Y4_N78
\data[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(11),
	o => \data[11]~input_o\);

-- Location: LABCELL_X77_Y3_N33
\r0[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r0[11]~feeder_combout\ = ( \data[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[11]~input_o\,
	combout => \r0[11]~feeder_combout\);

-- Location: FF_X77_Y3_N35
\r0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r0[11]~feeder_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(11));

-- Location: MLABCELL_X78_Y3_N36
\r2[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2[11]~feeder_combout\ = ( \data[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[11]~input_o\,
	combout => \r2[11]~feeder_combout\);

-- Location: FF_X78_Y3_N37
\r2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r2[11]~feeder_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(11));

-- Location: FF_X79_Y3_N1
\r4[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[11]~input_o\,
	sload => VCC,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(11));

-- Location: FF_X79_Y3_N50
\r6[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[11]~input_o\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(11));

-- Location: LABCELL_X79_Y3_N51
\q~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~34_combout\ = ( r4(11) & ( r6(11) & ( ((!\mux[1]~input_o\ & (r0(11))) # (\mux[1]~input_o\ & ((r2(11))))) # (\mux[2]~input_o\) ) ) ) # ( !r4(11) & ( r6(11) & ( (!\mux[2]~input_o\ & ((!\mux[1]~input_o\ & (r0(11))) # (\mux[1]~input_o\ & ((r2(11)))))) # 
-- (\mux[2]~input_o\ & (((\mux[1]~input_o\)))) ) ) ) # ( r4(11) & ( !r6(11) & ( (!\mux[2]~input_o\ & ((!\mux[1]~input_o\ & (r0(11))) # (\mux[1]~input_o\ & ((r2(11)))))) # (\mux[2]~input_o\ & (((!\mux[1]~input_o\)))) ) ) ) # ( !r4(11) & ( !r6(11) & ( 
-- (!\mux[2]~input_o\ & ((!\mux[1]~input_o\ & (r0(11))) # (\mux[1]~input_o\ & ((r2(11)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000011010011110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_r0(11),
	datab => \ALT_INV_mux[2]~input_o\,
	datac => \ALT_INV_mux[1]~input_o\,
	datad => ALT_INV_r2(11),
	datae => ALT_INV_r4(11),
	dataf => ALT_INV_r6(11),
	combout => \q~34_combout\);

-- Location: FF_X80_Y3_N32
\r5[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[11]~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(11));

-- Location: LABCELL_X83_Y3_N33
\r1[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1[11]~feeder_combout\ = ( \data[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[11]~input_o\,
	combout => \r1[11]~feeder_combout\);

-- Location: FF_X83_Y3_N34
\r1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r1[11]~feeder_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(11));

-- Location: FF_X82_Y3_N7
\r3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[11]~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(11));

-- Location: FF_X82_Y3_N43
\r7[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[11]~input_o\,
	sload => VCC,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(11));

-- Location: LABCELL_X80_Y3_N33
\q~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~33_combout\ = ( r3(11) & ( r7(11) & ( ((!\mux[2]~input_o\ & ((r1(11)))) # (\mux[2]~input_o\ & (r5(11)))) # (\mux[1]~input_o\) ) ) ) # ( !r3(11) & ( r7(11) & ( (!\mux[2]~input_o\ & (!\mux[1]~input_o\ & ((r1(11))))) # (\mux[2]~input_o\ & (((r5(11))) # 
-- (\mux[1]~input_o\))) ) ) ) # ( r3(11) & ( !r7(11) & ( (!\mux[2]~input_o\ & (((r1(11))) # (\mux[1]~input_o\))) # (\mux[2]~input_o\ & (!\mux[1]~input_o\ & (r5(11)))) ) ) ) # ( !r3(11) & ( !r7(11) & ( (!\mux[1]~input_o\ & ((!\mux[2]~input_o\ & ((r1(11)))) # 
-- (\mux[2]~input_o\ & (r5(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[2]~input_o\,
	datab => \ALT_INV_mux[1]~input_o\,
	datac => ALT_INV_r5(11),
	datad => ALT_INV_r1(11),
	datae => ALT_INV_r3(11),
	dataf => ALT_INV_r7(11),
	combout => \q~33_combout\);

-- Location: LABCELL_X79_Y3_N24
\q~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~35_combout\ = ( \q~33_combout\ & ( (\q~34_combout\) # (\mux[0]~input_o\) ) ) # ( !\q~33_combout\ & ( (!\mux[0]~input_o\ & \q~34_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[0]~input_o\,
	datac => \ALT_INV_q~34_combout\,
	dataf => \ALT_INV_q~33_combout\,
	combout => \q~35_combout\);

-- Location: FF_X79_Y3_N25
\q[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[11]~reg0_q\);

-- Location: IOIBUF_X80_Y81_N35
\data[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(12),
	o => \data[12]~input_o\);

-- Location: FF_X78_Y3_N19
\r2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[12]~input_o\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(12));

-- Location: FF_X80_Y3_N20
\r6[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[12]~input_o\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(12));

-- Location: LABCELL_X77_Y3_N48
\r4[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r4[12]~feeder_combout\ = ( \data[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[12]~input_o\,
	combout => \r4[12]~feeder_combout\);

-- Location: FF_X77_Y3_N49
\r4[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r4[12]~feeder_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(12));

-- Location: LABCELL_X77_Y3_N30
\r0[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r0[12]~feeder_combout\ = ( \data[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[12]~input_o\,
	combout => \r0[12]~feeder_combout\);

-- Location: FF_X77_Y3_N31
\r0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r0[12]~feeder_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(12));

-- Location: LABCELL_X80_Y3_N21
\q~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~37_combout\ = ( r4(12) & ( r0(12) & ( (!\mux[1]~input_o\) # ((!\mux[2]~input_o\ & (r2(12))) # (\mux[2]~input_o\ & ((r6(12))))) ) ) ) # ( !r4(12) & ( r0(12) & ( (!\mux[2]~input_o\ & ((!\mux[1]~input_o\) # ((r2(12))))) # (\mux[2]~input_o\ & 
-- (\mux[1]~input_o\ & ((r6(12))))) ) ) ) # ( r4(12) & ( !r0(12) & ( (!\mux[2]~input_o\ & (\mux[1]~input_o\ & (r2(12)))) # (\mux[2]~input_o\ & ((!\mux[1]~input_o\) # ((r6(12))))) ) ) ) # ( !r4(12) & ( !r0(12) & ( (\mux[1]~input_o\ & ((!\mux[2]~input_o\ & 
-- (r2(12))) # (\mux[2]~input_o\ & ((r6(12)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[2]~input_o\,
	datab => \ALT_INV_mux[1]~input_o\,
	datac => ALT_INV_r2(12),
	datad => ALT_INV_r6(12),
	datae => ALT_INV_r4(12),
	dataf => ALT_INV_r0(12),
	combout => \q~37_combout\);

-- Location: LABCELL_X77_Y3_N42
\r3[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r3[12]~feeder_combout\ = ( \data[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[12]~input_o\,
	combout => \r3[12]~feeder_combout\);

-- Location: FF_X77_Y3_N43
\r3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r3[12]~feeder_combout\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(12));

-- Location: LABCELL_X75_Y3_N33
\r7[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r7[12]~feeder_combout\ = ( \data[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[12]~input_o\,
	combout => \r7[12]~feeder_combout\);

-- Location: FF_X75_Y3_N34
\r7[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r7[12]~feeder_combout\,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(12));

-- Location: FF_X80_Y3_N8
\r5[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[12]~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(12));

-- Location: LABCELL_X75_Y3_N51
\r1[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1[12]~feeder_combout\ = ( \data[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[12]~input_o\,
	combout => \r1[12]~feeder_combout\);

-- Location: FF_X75_Y3_N52
\r1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r1[12]~feeder_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(12));

-- Location: LABCELL_X80_Y3_N6
\q~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~36_combout\ = ( r5(12) & ( r1(12) & ( (!\mux[1]~input_o\) # ((!\mux[2]~input_o\ & (r3(12))) # (\mux[2]~input_o\ & ((r7(12))))) ) ) ) # ( !r5(12) & ( r1(12) & ( (!\mux[2]~input_o\ & (((!\mux[1]~input_o\)) # (r3(12)))) # (\mux[2]~input_o\ & (((r7(12) & 
-- \mux[1]~input_o\)))) ) ) ) # ( r5(12) & ( !r1(12) & ( (!\mux[2]~input_o\ & (r3(12) & ((\mux[1]~input_o\)))) # (\mux[2]~input_o\ & (((!\mux[1]~input_o\) # (r7(12))))) ) ) ) # ( !r5(12) & ( !r1(12) & ( (\mux[1]~input_o\ & ((!\mux[2]~input_o\ & (r3(12))) # 
-- (\mux[2]~input_o\ & ((r7(12)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111001100110100011111001100010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_r3(12),
	datab => \ALT_INV_mux[2]~input_o\,
	datac => ALT_INV_r7(12),
	datad => \ALT_INV_mux[1]~input_o\,
	datae => ALT_INV_r5(12),
	dataf => ALT_INV_r1(12),
	combout => \q~36_combout\);

-- Location: LABCELL_X80_Y3_N57
\q~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~38_combout\ = ( \q~37_combout\ & ( \q~36_combout\ ) ) # ( !\q~37_combout\ & ( \q~36_combout\ & ( \mux[0]~input_o\ ) ) ) # ( \q~37_combout\ & ( !\q~36_combout\ & ( !\mux[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mux[0]~input_o\,
	datae => \ALT_INV_q~37_combout\,
	dataf => \ALT_INV_q~36_combout\,
	combout => \q~38_combout\);

-- Location: FF_X80_Y3_N58
\q[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[12]~reg0_q\);

-- Location: IOIBUF_X89_Y6_N55
\data[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(13),
	o => \data[13]~input_o\);

-- Location: MLABCELL_X78_Y3_N57
\r2[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2[13]~feeder_combout\ = \data[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[13]~input_o\,
	combout => \r2[13]~feeder_combout\);

-- Location: FF_X78_Y3_N58
\r2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r2[13]~feeder_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(13));

-- Location: FF_X79_Y3_N32
\r6[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[13]~input_o\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(13));

-- Location: FF_X79_Y3_N5
\r4[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[13]~input_o\,
	sload => VCC,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(13));

-- Location: FF_X77_Y3_N1
\r0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[13]~input_o\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(13));

-- Location: LABCELL_X79_Y3_N33
\q~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~40_combout\ = ( r4(13) & ( r0(13) & ( (!\mux[1]~input_o\) # ((!\mux[2]~input_o\ & (r2(13))) # (\mux[2]~input_o\ & ((r6(13))))) ) ) ) # ( !r4(13) & ( r0(13) & ( (!\mux[1]~input_o\ & (((!\mux[2]~input_o\)))) # (\mux[1]~input_o\ & ((!\mux[2]~input_o\ & 
-- (r2(13))) # (\mux[2]~input_o\ & ((r6(13)))))) ) ) ) # ( r4(13) & ( !r0(13) & ( (!\mux[1]~input_o\ & (((\mux[2]~input_o\)))) # (\mux[1]~input_o\ & ((!\mux[2]~input_o\ & (r2(13))) # (\mux[2]~input_o\ & ((r6(13)))))) ) ) ) # ( !r4(13) & ( !r0(13) & ( 
-- (\mux[1]~input_o\ & ((!\mux[2]~input_o\ & (r2(13))) # (\mux[2]~input_o\ & ((r6(13)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[1]~input_o\,
	datab => ALT_INV_r2(13),
	datac => ALT_INV_r6(13),
	datad => \ALT_INV_mux[2]~input_o\,
	datae => ALT_INV_r4(13),
	dataf => ALT_INV_r0(13),
	combout => \q~40_combout\);

-- Location: FF_X82_Y3_N2
\r5[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[13]~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(13));

-- Location: FF_X82_Y3_N53
\r7[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[13]~input_o\,
	sload => VCC,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(13));

-- Location: FF_X82_Y3_N59
\r3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[13]~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(13));

-- Location: LABCELL_X83_Y3_N51
\r1[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1[13]~feeder_combout\ = ( \data[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[13]~input_o\,
	combout => \r1[13]~feeder_combout\);

-- Location: FF_X83_Y3_N53
\r1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r1[13]~feeder_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(13));

-- Location: MLABCELL_X82_Y3_N3
\q~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~39_combout\ = ( r3(13) & ( r1(13) & ( (!\mux[2]~input_o\) # ((!\mux[1]~input_o\ & (r5(13))) # (\mux[1]~input_o\ & ((r7(13))))) ) ) ) # ( !r3(13) & ( r1(13) & ( (!\mux[2]~input_o\ & (((!\mux[1]~input_o\)))) # (\mux[2]~input_o\ & ((!\mux[1]~input_o\ & 
-- (r5(13))) # (\mux[1]~input_o\ & ((r7(13)))))) ) ) ) # ( r3(13) & ( !r1(13) & ( (!\mux[2]~input_o\ & (((\mux[1]~input_o\)))) # (\mux[2]~input_o\ & ((!\mux[1]~input_o\ & (r5(13))) # (\mux[1]~input_o\ & ((r7(13)))))) ) ) ) # ( !r3(13) & ( !r1(13) & ( 
-- (\mux[2]~input_o\ & ((!\mux[1]~input_o\ & (r5(13))) # (\mux[1]~input_o\ & ((r7(13)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_r5(13),
	datab => \ALT_INV_mux[2]~input_o\,
	datac => \ALT_INV_mux[1]~input_o\,
	datad => ALT_INV_r7(13),
	datae => ALT_INV_r3(13),
	dataf => ALT_INV_r1(13),
	combout => \q~39_combout\);

-- Location: LABCELL_X79_Y3_N57
\q~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~41_combout\ = ( \q~39_combout\ & ( (\mux[0]~input_o\) # (\q~40_combout\) ) ) # ( !\q~39_combout\ & ( (\q~40_combout\ & !\mux[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_q~40_combout\,
	datad => \ALT_INV_mux[0]~input_o\,
	dataf => \ALT_INV_q~39_combout\,
	combout => \q~41_combout\);

-- Location: FF_X79_Y3_N58
\q[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[13]~reg0_q\);

-- Location: IOIBUF_X70_Y0_N1
\data[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(14),
	o => \data[14]~input_o\);

-- Location: FF_X78_Y3_N8
\r6[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[14]~input_o\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(14));

-- Location: FF_X78_Y3_N56
\r2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[14]~input_o\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(14));

-- Location: FF_X77_Y3_N58
\r0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[14]~input_o\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(14));

-- Location: FF_X77_Y3_N40
\r4[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[14]~input_o\,
	sload => VCC,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(14));

-- Location: MLABCELL_X78_Y3_N9
\q~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~43_combout\ = ( r0(14) & ( r4(14) & ( (!\mux[1]~input_o\) # ((!\mux[2]~input_o\ & ((r2(14)))) # (\mux[2]~input_o\ & (r6(14)))) ) ) ) # ( !r0(14) & ( r4(14) & ( (!\mux[2]~input_o\ & (\mux[1]~input_o\ & ((r2(14))))) # (\mux[2]~input_o\ & 
-- ((!\mux[1]~input_o\) # ((r6(14))))) ) ) ) # ( r0(14) & ( !r4(14) & ( (!\mux[2]~input_o\ & ((!\mux[1]~input_o\) # ((r2(14))))) # (\mux[2]~input_o\ & (\mux[1]~input_o\ & (r6(14)))) ) ) ) # ( !r0(14) & ( !r4(14) & ( (\mux[1]~input_o\ & ((!\mux[2]~input_o\ & 
-- ((r2(14)))) # (\mux[2]~input_o\ & (r6(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[2]~input_o\,
	datab => \ALT_INV_mux[1]~input_o\,
	datac => ALT_INV_r6(14),
	datad => ALT_INV_r2(14),
	datae => ALT_INV_r0(14),
	dataf => ALT_INV_r4(14),
	combout => \q~43_combout\);

-- Location: FF_X82_Y3_N17
\r3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[14]~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(14));

-- Location: FF_X82_Y3_N20
\r5[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[14]~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(14));

-- Location: FF_X82_Y3_N40
\r7[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[14]~input_o\,
	sload => VCC,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(14));

-- Location: FF_X83_Y3_N40
\r1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[14]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(14));

-- Location: MLABCELL_X82_Y3_N21
\q~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~42_combout\ = ( r7(14) & ( r1(14) & ( (!\mux[1]~input_o\ & ((!\mux[2]~input_o\) # ((r5(14))))) # (\mux[1]~input_o\ & (((r3(14))) # (\mux[2]~input_o\))) ) ) ) # ( !r7(14) & ( r1(14) & ( (!\mux[1]~input_o\ & ((!\mux[2]~input_o\) # ((r5(14))))) # 
-- (\mux[1]~input_o\ & (!\mux[2]~input_o\ & (r3(14)))) ) ) ) # ( r7(14) & ( !r1(14) & ( (!\mux[1]~input_o\ & (\mux[2]~input_o\ & ((r5(14))))) # (\mux[1]~input_o\ & (((r3(14))) # (\mux[2]~input_o\))) ) ) ) # ( !r7(14) & ( !r1(14) & ( (!\mux[1]~input_o\ & 
-- (\mux[2]~input_o\ & ((r5(14))))) # (\mux[1]~input_o\ & (!\mux[2]~input_o\ & (r3(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[1]~input_o\,
	datab => \ALT_INV_mux[2]~input_o\,
	datac => ALT_INV_r3(14),
	datad => ALT_INV_r5(14),
	datae => ALT_INV_r7(14),
	dataf => ALT_INV_r1(14),
	combout => \q~42_combout\);

-- Location: MLABCELL_X78_Y3_N0
\q~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~44_combout\ = ( \q~42_combout\ & ( (\q~43_combout\) # (\mux[0]~input_o\) ) ) # ( !\q~42_combout\ & ( (!\mux[0]~input_o\ & \q~43_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[0]~input_o\,
	datab => \ALT_INV_q~43_combout\,
	dataf => \ALT_INV_q~42_combout\,
	combout => \q~44_combout\);

-- Location: FF_X78_Y3_N1
\q[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[14]~reg0_q\);

-- Location: IOIBUF_X89_Y4_N44
\data[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(15),
	o => \data[15]~input_o\);

-- Location: FF_X80_Y3_N14
\r6[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[15]~input_o\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r6(15));

-- Location: MLABCELL_X78_Y3_N54
\r2[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r2[15]~feeder_combout\ = \data[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[15]~input_o\,
	combout => \r2[15]~feeder_combout\);

-- Location: FF_X78_Y3_N55
\r2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r2[15]~feeder_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(15));

-- Location: FF_X81_Y3_N50
\r0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[15]~input_o\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(15));

-- Location: LABCELL_X79_Y3_N3
\r4[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r4[15]~feeder_combout\ = ( \data[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[15]~input_o\,
	combout => \r4[15]~feeder_combout\);

-- Location: FF_X79_Y3_N4
\r4[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r4[15]~feeder_combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r4(15));

-- Location: LABCELL_X80_Y3_N15
\q~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~46_combout\ = ( r0(15) & ( r4(15) & ( (!\mux[1]~input_o\) # ((!\mux[2]~input_o\ & ((r2(15)))) # (\mux[2]~input_o\ & (r6(15)))) ) ) ) # ( !r0(15) & ( r4(15) & ( (!\mux[2]~input_o\ & (\mux[1]~input_o\ & ((r2(15))))) # (\mux[2]~input_o\ & 
-- ((!\mux[1]~input_o\) # ((r6(15))))) ) ) ) # ( r0(15) & ( !r4(15) & ( (!\mux[2]~input_o\ & ((!\mux[1]~input_o\) # ((r2(15))))) # (\mux[2]~input_o\ & (\mux[1]~input_o\ & (r6(15)))) ) ) ) # ( !r0(15) & ( !r4(15) & ( (\mux[1]~input_o\ & ((!\mux[2]~input_o\ & 
-- ((r2(15)))) # (\mux[2]~input_o\ & (r6(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux[2]~input_o\,
	datab => \ALT_INV_mux[1]~input_o\,
	datac => ALT_INV_r6(15),
	datad => ALT_INV_r2(15),
	datae => ALT_INV_r0(15),
	dataf => ALT_INV_r4(15),
	combout => \q~46_combout\);

-- Location: FF_X82_Y3_N14
\r3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[15]~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(15));

-- Location: FF_X80_Y3_N38
\r5[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[15]~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r5(15));

-- Location: LABCELL_X83_Y3_N27
\r1[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r1[15]~feeder_combout\ = ( \data[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[15]~input_o\,
	combout => \r1[15]~feeder_combout\);

-- Location: FF_X83_Y3_N28
\r1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r1[15]~feeder_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(15));

-- Location: LABCELL_X80_Y4_N9
\r7[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r7[15]~feeder_combout\ = ( \data[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[15]~input_o\,
	combout => \r7[15]~feeder_combout\);

-- Location: FF_X80_Y4_N11
\r7[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r7[15]~feeder_combout\,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r7(15));

-- Location: LABCELL_X80_Y3_N39
\q~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~45_combout\ = ( r1(15) & ( r7(15) & ( (!\mux[1]~input_o\ & (((!\mux[2]~input_o\) # (r5(15))))) # (\mux[1]~input_o\ & (((\mux[2]~input_o\)) # (r3(15)))) ) ) ) # ( !r1(15) & ( r7(15) & ( (!\mux[1]~input_o\ & (((\mux[2]~input_o\ & r5(15))))) # 
-- (\mux[1]~input_o\ & (((\mux[2]~input_o\)) # (r3(15)))) ) ) ) # ( r1(15) & ( !r7(15) & ( (!\mux[1]~input_o\ & (((!\mux[2]~input_o\) # (r5(15))))) # (\mux[1]~input_o\ & (r3(15) & (!\mux[2]~input_o\))) ) ) ) # ( !r1(15) & ( !r7(15) & ( (!\mux[1]~input_o\ & 
-- (((\mux[2]~input_o\ & r5(15))))) # (\mux[1]~input_o\ & (r3(15) & (!\mux[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_r3(15),
	datab => \ALT_INV_mux[1]~input_o\,
	datac => \ALT_INV_mux[2]~input_o\,
	datad => ALT_INV_r5(15),
	datae => ALT_INV_r1(15),
	dataf => ALT_INV_r7(15),
	combout => \q~45_combout\);

-- Location: LABCELL_X80_Y3_N48
\q~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~47_combout\ = ( \q~45_combout\ & ( (\q~46_combout\) # (\mux[0]~input_o\) ) ) # ( !\q~45_combout\ & ( (!\mux[0]~input_o\ & \q~46_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mux[0]~input_o\,
	datad => \ALT_INV_q~46_combout\,
	dataf => \ALT_INV_q~45_combout\,
	combout => \q~47_combout\);

-- Location: FF_X80_Y3_N49
\q[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[15]~reg0_q\);

-- Location: LABCELL_X29_Y30_N0
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


