-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "01/29/2016 19:15:37"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	switch : IN std_logic_vector(9 DOWNTO 0);
	button : IN std_logic_vector(2 DOWNTO 0);
	led0 : BUFFER std_logic_vector(6 DOWNTO 0);
	led0_dp : BUFFER std_logic;
	led1 : BUFFER std_logic_vector(6 DOWNTO 0);
	led1_dp : BUFFER std_logic;
	led2 : BUFFER std_logic_vector(6 DOWNTO 0);
	led2_dp : BUFFER std_logic;
	led3 : BUFFER std_logic_vector(6 DOWNTO 0);
	led3_dp : BUFFER std_logic
	);
END top_level;

-- Design Ports Information
-- switch[1]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0_dp	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1_dp	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2_dp	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3_dp	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_switch : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_button : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_led0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led0_dp : std_logic;
SIGNAL ww_led1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led1_dp : std_logic;
SIGNAL ww_led2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led2_dp : std_logic;
SIGNAL ww_led3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led3_dp : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \led0[0]~output_o\ : std_logic;
SIGNAL \led0[1]~output_o\ : std_logic;
SIGNAL \led0[2]~output_o\ : std_logic;
SIGNAL \led0[3]~output_o\ : std_logic;
SIGNAL \led0[4]~output_o\ : std_logic;
SIGNAL \led0[5]~output_o\ : std_logic;
SIGNAL \led0[6]~output_o\ : std_logic;
SIGNAL \led0_dp~output_o\ : std_logic;
SIGNAL \led1[0]~output_o\ : std_logic;
SIGNAL \led1[1]~output_o\ : std_logic;
SIGNAL \led1[2]~output_o\ : std_logic;
SIGNAL \led1[3]~output_o\ : std_logic;
SIGNAL \led1[4]~output_o\ : std_logic;
SIGNAL \led1[5]~output_o\ : std_logic;
SIGNAL \led1[6]~output_o\ : std_logic;
SIGNAL \led1_dp~output_o\ : std_logic;
SIGNAL \led2[0]~output_o\ : std_logic;
SIGNAL \led2[1]~output_o\ : std_logic;
SIGNAL \led2[2]~output_o\ : std_logic;
SIGNAL \led2[3]~output_o\ : std_logic;
SIGNAL \led2[4]~output_o\ : std_logic;
SIGNAL \led2[5]~output_o\ : std_logic;
SIGNAL \led2[6]~output_o\ : std_logic;
SIGNAL \led2_dp~output_o\ : std_logic;
SIGNAL \led3[0]~output_o\ : std_logic;
SIGNAL \led3[1]~output_o\ : std_logic;
SIGNAL \led3[2]~output_o\ : std_logic;
SIGNAL \led3[3]~output_o\ : std_logic;
SIGNAL \led3[4]~output_o\ : std_logic;
SIGNAL \led3[5]~output_o\ : std_logic;
SIGNAL \led3[6]~output_o\ : std_logic;
SIGNAL \led3_dp~output_o\ : std_logic;
SIGNAL \button[2]~input_o\ : std_logic;
SIGNAL \button[1]~input_o\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \switch[9]~input_o\ : std_logic;
SIGNAL \U_ALU|Mux0~15_combout\ : std_logic;
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \switch[8]~input_o\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \U_ALU|Add1~1\ : std_logic;
SIGNAL \U_ALU|Add1~3\ : std_logic;
SIGNAL \U_ALU|Add1~4_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~26_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~27_combout\ : std_logic;
SIGNAL \button[0]~input_o\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \U_ALU|Mux0~14_combout\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \U_ALU|Add0~1\ : std_logic;
SIGNAL \U_ALU|Add0~3\ : std_logic;
SIGNAL \U_ALU|Add0~4_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~24_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~25_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~1_combout\ : std_logic;
SIGNAL \U_ALU|Add1~5\ : std_logic;
SIGNAL \U_ALU|Add1~6_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~22_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~23_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \U_ALU|Add0~5\ : std_logic;
SIGNAL \U_ALU|Add0~6_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~20_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~21_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~17_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~18_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~16_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~19_combout\ : std_logic;
SIGNAL \U_ALU|Add0~0_combout\ : std_logic;
SIGNAL \U_ALU|Add1~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~6_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~7_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~11_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~8_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~9_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~10_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~1_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~13_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~12_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~30_combout\ : std_logic;
SIGNAL \U_ALU|Add1~2_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~31_combout\ : std_logic;
SIGNAL \U_ALU|Add0~2_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~28_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~29_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~1_combout\ : std_logic;
SIGNAL \U_LED0|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux0~0_combout\ : std_logic;
SIGNAL \U_ALU|Add0~7\ : std_logic;
SIGNAL \U_ALU|Add0~8_combout\ : std_logic;
SIGNAL \U_ALU|Mux4~0_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \U_ALU|Mux4~1_combout\ : std_logic;
SIGNAL \U_ALU|Mux4~2_combout\ : std_logic;
SIGNAL \U_ALU|Mux4~3_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U_ALU|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U_ALU|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U_ALU|ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \U_LED0|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_switch <= switch;
ww_button <= button;
led0 <= ww_led0;
led0_dp <= ww_led0_dp;
led1 <= ww_led1;
led1_dp <= ww_led1_dp;
led2 <= ww_led2;
led2_dp <= ww_led2_dp;
led3 <= ww_led3;
led3_dp <= ww_led3_dp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U_ALU|ALT_INV_Mux4~3_combout\ <= NOT \U_ALU|Mux4~3_combout\;
\U_LED0|ALT_INV_Mux6~0_combout\ <= NOT \U_LED0|Mux6~0_combout\;

-- Location: IOOBUF_X26_Y29_N16
\led0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led0[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\led0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\led0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\led0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\led0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led0[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\led0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led0[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\led0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led0[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\led0_dp~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ALU|ALT_INV_Mux4~3_combout\,
	devoe => ww_devoe,
	o => \led0_dp~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\led1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led1[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\led1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\led1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\led1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\led1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\led1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\led1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\led1_dp~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led1_dp~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\led2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\led2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\led2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\led2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\led2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\led2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\led2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\led2_dp~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led2_dp~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\led3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led3[0]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\led3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[1]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\led3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\led3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\led3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[4]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\led3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\led3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[6]~output_o\);

-- Location: IOOBUF_X39_Y29_N23
\led3_dp~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led3_dp~output_o\);

-- Location: IOIBUF_X0_Y23_N1
\button[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(2),
	o => \button[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\button[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(1),
	o => \button[1]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\switch[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(7),
	o => \switch[7]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\switch[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(9),
	o => \switch[9]~input_o\);

-- Location: LCCOMB_X3_Y23_N26
\U_ALU|Mux0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~15_combout\ = (!\button[2]~input_o\ & ((\button[1]~input_o\ & (\switch[7]~input_o\)) # (!\button[1]~input_o\ & ((\switch[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \button[1]~input_o\,
	datac => \switch[7]~input_o\,
	datad => \switch[9]~input_o\,
	combout => \U_ALU|Mux0~15_combout\);

-- Location: IOIBUF_X0_Y27_N22
\switch[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(4),
	o => \switch[4]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\switch[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(8),
	o => \switch[8]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\switch[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(3),
	o => \switch[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\switch[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(6),
	o => \switch[6]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\switch[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(2),
	o => \switch[2]~input_o\);

-- Location: LCCOMB_X2_Y23_N6
\U_ALU|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Add1~0_combout\ = (\switch[6]~input_o\ & ((GND) # (!\switch[2]~input_o\))) # (!\switch[6]~input_o\ & (\switch[2]~input_o\ $ (GND)))
-- \U_ALU|Add1~1\ = CARRY((\switch[6]~input_o\) # (!\switch[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[6]~input_o\,
	datab => \switch[2]~input_o\,
	datad => VCC,
	combout => \U_ALU|Add1~0_combout\,
	cout => \U_ALU|Add1~1\);

-- Location: LCCOMB_X2_Y23_N8
\U_ALU|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Add1~2_combout\ = (\switch[7]~input_o\ & ((\switch[3]~input_o\ & (!\U_ALU|Add1~1\)) # (!\switch[3]~input_o\ & (\U_ALU|Add1~1\ & VCC)))) # (!\switch[7]~input_o\ & ((\switch[3]~input_o\ & ((\U_ALU|Add1~1\) # (GND))) # (!\switch[3]~input_o\ & 
-- (!\U_ALU|Add1~1\))))
-- \U_ALU|Add1~3\ = CARRY((\switch[7]~input_o\ & (\switch[3]~input_o\ & !\U_ALU|Add1~1\)) # (!\switch[7]~input_o\ & ((\switch[3]~input_o\) # (!\U_ALU|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[7]~input_o\,
	datab => \switch[3]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add1~1\,
	combout => \U_ALU|Add1~2_combout\,
	cout => \U_ALU|Add1~3\);

-- Location: LCCOMB_X2_Y23_N10
\U_ALU|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Add1~4_combout\ = ((\switch[4]~input_o\ $ (\switch[8]~input_o\ $ (\U_ALU|Add1~3\)))) # (GND)
-- \U_ALU|Add1~5\ = CARRY((\switch[4]~input_o\ & (\switch[8]~input_o\ & !\U_ALU|Add1~3\)) # (!\switch[4]~input_o\ & ((\switch[8]~input_o\) # (!\U_ALU|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[4]~input_o\,
	datab => \switch[8]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add1~3\,
	combout => \U_ALU|Add1~4_combout\,
	cout => \U_ALU|Add1~5\);

-- Location: LCCOMB_X3_Y23_N24
\U_ALU|Mux0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~26_combout\ = (\button[2]~input_o\ & (\switch[8]~input_o\ $ (((\button[1]~input_o\) # (\switch[4]~input_o\))))) # (!\button[2]~input_o\ & (((\switch[8]~input_o\ & \switch[4]~input_o\)) # (!\button[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \button[1]~input_o\,
	datac => \switch[8]~input_o\,
	datad => \switch[4]~input_o\,
	combout => \U_ALU|Mux0~26_combout\);

-- Location: LCCOMB_X3_Y23_N18
\U_ALU|Mux0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~27_combout\ = (\U_ALU|Mux0~26_combout\ & ((\button[2]~input_o\) # ((\button[1]~input_o\) # (\U_ALU|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \button[1]~input_o\,
	datac => \U_ALU|Add1~4_combout\,
	datad => \U_ALU|Mux0~26_combout\,
	combout => \U_ALU|Mux0~27_combout\);

-- Location: IOIBUF_X0_Y21_N8
\button[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(0),
	o => \button[0]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\switch[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

-- Location: LCCOMB_X2_Y23_N0
\U_ALU|Mux0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~14_combout\ = (!\button[2]~input_o\ & ((\button[1]~input_o\ & (\switch[6]~input_o\)) # (!\button[1]~input_o\ & ((\switch[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \switch[6]~input_o\,
	datac => \switch[7]~input_o\,
	datad => \button[2]~input_o\,
	combout => \U_ALU|Mux0~14_combout\);

-- Location: IOIBUF_X0_Y22_N15
\switch[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(5),
	o => \switch[5]~input_o\);

-- Location: LCCOMB_X4_Y23_N12
\U_ALU|Mult0|auto_generated|le4a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le4a\(0) = \switch[5]~input_o\ $ (((\switch[3]~input_o\ & ((\switch[4]~input_o\) # (\switch[6]~input_o\))) # (!\switch[3]~input_o\ & (\switch[4]~input_o\ & \switch[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[5]~input_o\,
	datac => \switch[4]~input_o\,
	datad => \switch[6]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X4_Y23_N10
\U_ALU|Mult0|auto_generated|le4a[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le4a\(5) = \switch[5]~input_o\ $ (((\switch[4]~input_o\ & \switch[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[5]~input_o\,
	datac => \switch[4]~input_o\,
	datad => \switch[3]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X2_Y23_N22
\U_ALU|Mult0|auto_generated|le3a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le3a\(2) = (\switch[2]~input_o\ & (\switch[3]~input_o\ $ (((\switch[8]~input_o\))))) # (!\switch[2]~input_o\ & (\switch[3]~input_o\ & (!\switch[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \switch[7]~input_o\,
	datad => \switch[8]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X5_Y23_N2
\U_ALU|Mult0|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_1~0_combout\ = (\U_ALU|Mult0|auto_generated|le4a\(5) & (\U_ALU|Mult0|auto_generated|le3a\(2) $ (VCC))) # (!\U_ALU|Mult0|auto_generated|le4a\(5) & (\U_ALU|Mult0|auto_generated|le3a\(2) & VCC))
-- \U_ALU|Mult0|auto_generated|op_1~1\ = CARRY((\U_ALU|Mult0|auto_generated|le4a\(5) & \U_ALU|Mult0|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|le4a\(5),
	datab => \U_ALU|Mult0|auto_generated|le3a\(2),
	datad => VCC,
	combout => \U_ALU|Mult0|auto_generated|op_1~0_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X2_Y23_N4
\U_ALU|Mult0|auto_generated|le3a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le3a\(1) = (\switch[2]~input_o\ & (\switch[3]~input_o\ $ (((\switch[7]~input_o\))))) # (!\switch[2]~input_o\ & (\switch[3]~input_o\ & (!\switch[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[6]~input_o\,
	datac => \switch[7]~input_o\,
	datad => \switch[2]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X2_Y23_N18
\U_ALU|Mult0|auto_generated|le3a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le3a\(0) = \switch[3]~input_o\ $ (((\switch[6]~input_o\ & \switch[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[6]~input_o\,
	datad => \switch[2]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X5_Y23_N14
\U_ALU|Mult0|auto_generated|op_3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~0_combout\ = (\switch[3]~input_o\ & (\U_ALU|Mult0|auto_generated|le3a\(0) $ (VCC))) # (!\switch[3]~input_o\ & (\U_ALU|Mult0|auto_generated|le3a\(0) & VCC))
-- \U_ALU|Mult0|auto_generated|op_3~1\ = CARRY((\switch[3]~input_o\ & \U_ALU|Mult0|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \U_ALU|Mult0|auto_generated|le3a\(0),
	datad => VCC,
	combout => \U_ALU|Mult0|auto_generated|op_3~0_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X5_Y23_N16
\U_ALU|Mult0|auto_generated|op_3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~2_combout\ = (\U_ALU|Mult0|auto_generated|le3a\(1) & (!\U_ALU|Mult0|auto_generated|op_3~1\)) # (!\U_ALU|Mult0|auto_generated|le3a\(1) & ((\U_ALU|Mult0|auto_generated|op_3~1\) # (GND)))
-- \U_ALU|Mult0|auto_generated|op_3~3\ = CARRY((!\U_ALU|Mult0|auto_generated|op_3~1\) # (!\U_ALU|Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ALU|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_3~1\,
	combout => \U_ALU|Mult0|auto_generated|op_3~2_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X5_Y23_N18
\U_ALU|Mult0|auto_generated|op_3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~4_combout\ = ((\U_ALU|Mult0|auto_generated|le4a\(0) $ (\U_ALU|Mult0|auto_generated|op_1~0_combout\ $ (!\U_ALU|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \U_ALU|Mult0|auto_generated|op_3~5\ = CARRY((\U_ALU|Mult0|auto_generated|le4a\(0) & ((\U_ALU|Mult0|auto_generated|op_1~0_combout\) # (!\U_ALU|Mult0|auto_generated|op_3~3\))) # (!\U_ALU|Mult0|auto_generated|le4a\(0) & 
-- (\U_ALU|Mult0|auto_generated|op_1~0_combout\ & !\U_ALU|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|le4a\(0),
	datab => \U_ALU|Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_3~3\,
	combout => \U_ALU|Mult0|auto_generated|op_3~4_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X4_Y23_N0
\U_ALU|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~0_combout\ = (\switch[2]~input_o\ & (\switch[6]~input_o\ $ (VCC))) # (!\switch[2]~input_o\ & (\switch[6]~input_o\ & VCC))
-- \U_ALU|Add0~1\ = CARRY((\switch[2]~input_o\ & \switch[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datab => \switch[6]~input_o\,
	datad => VCC,
	combout => \U_ALU|Add0~0_combout\,
	cout => \U_ALU|Add0~1\);

-- Location: LCCOMB_X4_Y23_N2
\U_ALU|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~2_combout\ = (\switch[3]~input_o\ & ((\switch[7]~input_o\ & (\U_ALU|Add0~1\ & VCC)) # (!\switch[7]~input_o\ & (!\U_ALU|Add0~1\)))) # (!\switch[3]~input_o\ & ((\switch[7]~input_o\ & (!\U_ALU|Add0~1\)) # (!\switch[7]~input_o\ & ((\U_ALU|Add0~1\) 
-- # (GND)))))
-- \U_ALU|Add0~3\ = CARRY((\switch[3]~input_o\ & (!\switch[7]~input_o\ & !\U_ALU|Add0~1\)) # (!\switch[3]~input_o\ & ((!\U_ALU|Add0~1\) # (!\switch[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[7]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add0~1\,
	combout => \U_ALU|Add0~2_combout\,
	cout => \U_ALU|Add0~3\);

-- Location: LCCOMB_X4_Y23_N4
\U_ALU|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~4_combout\ = ((\switch[4]~input_o\ $ (\switch[8]~input_o\ $ (!\U_ALU|Add0~3\)))) # (GND)
-- \U_ALU|Add0~5\ = CARRY((\switch[4]~input_o\ & ((\switch[8]~input_o\) # (!\U_ALU|Add0~3\))) # (!\switch[4]~input_o\ & (\switch[8]~input_o\ & !\U_ALU|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[4]~input_o\,
	datab => \switch[8]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add0~3\,
	combout => \U_ALU|Add0~4_combout\,
	cout => \U_ALU|Add0~5\);

-- Location: LCCOMB_X3_Y23_N28
\U_ALU|Mux0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~24_combout\ = (\button[2]~input_o\ & (\button[1]~input_o\)) # (!\button[2]~input_o\ & ((\button[1]~input_o\ & (\U_ALU|Mult0|auto_generated|op_3~4_combout\)) # (!\button[1]~input_o\ & ((\U_ALU|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \button[1]~input_o\,
	datac => \U_ALU|Mult0|auto_generated|op_3~4_combout\,
	datad => \U_ALU|Add0~4_combout\,
	combout => \U_ALU|Mux0~24_combout\);

-- Location: LCCOMB_X3_Y23_N6
\U_ALU|Mux0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~25_combout\ = \U_ALU|Mux0~24_combout\ $ (((\button[2]~input_o\ & ((\switch[4]~input_o\) # (\switch[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \switch[4]~input_o\,
	datac => \switch[8]~input_o\,
	datad => \U_ALU|Mux0~24_combout\,
	combout => \U_ALU|Mux0~25_combout\);

-- Location: LCCOMB_X3_Y23_N0
\U_ALU|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~0_combout\ = (\switch[0]~input_o\ & ((\button[0]~input_o\) # ((\U_ALU|Mux0~14_combout\)))) # (!\switch[0]~input_o\ & (!\button[0]~input_o\ & ((\U_ALU|Mux0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \button[0]~input_o\,
	datac => \U_ALU|Mux0~14_combout\,
	datad => \U_ALU|Mux0~25_combout\,
	combout => \U_ALU|Mux1~0_combout\);

-- Location: LCCOMB_X3_Y23_N12
\U_ALU|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~1_combout\ = (\button[0]~input_o\ & ((\U_ALU|Mux1~0_combout\ & (\U_ALU|Mux0~15_combout\)) # (!\U_ALU|Mux1~0_combout\ & ((\U_ALU|Mux0~27_combout\))))) # (!\button[0]~input_o\ & (((\U_ALU|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~15_combout\,
	datab => \U_ALU|Mux0~27_combout\,
	datac => \button[0]~input_o\,
	datad => \U_ALU|Mux1~0_combout\,
	combout => \U_ALU|Mux1~1_combout\);

-- Location: LCCOMB_X2_Y23_N12
\U_ALU|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Add1~6_combout\ = \switch[5]~input_o\ $ (\U_ALU|Add1~5\ $ (!\switch[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \switch[5]~input_o\,
	datad => \switch[9]~input_o\,
	cin => \U_ALU|Add1~5\,
	combout => \U_ALU|Add1~6_combout\);

-- Location: LCCOMB_X1_Y23_N12
\U_ALU|Mux0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~22_combout\ = (\button[2]~input_o\ & (\switch[9]~input_o\ $ (((\button[1]~input_o\) # (\switch[5]~input_o\))))) # (!\button[2]~input_o\ & (((\switch[5]~input_o\ & \switch[9]~input_o\)) # (!\button[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \button[1]~input_o\,
	datac => \switch[5]~input_o\,
	datad => \switch[9]~input_o\,
	combout => \U_ALU|Mux0~22_combout\);

-- Location: LCCOMB_X1_Y23_N14
\U_ALU|Mux0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~23_combout\ = (\U_ALU|Mux0~22_combout\ & ((\button[2]~input_o\) # ((\button[1]~input_o\) # (\U_ALU|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \button[1]~input_o\,
	datac => \U_ALU|Add1~6_combout\,
	datad => \U_ALU|Mux0~22_combout\,
	combout => \U_ALU|Mux0~23_combout\);

-- Location: LCCOMB_X4_Y23_N30
\U_ALU|Mult0|auto_generated|cs2a[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ = \switch[4]~input_o\ $ (\switch[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch[4]~input_o\,
	datad => \switch[3]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X4_Y23_N16
\U_ALU|Mult0|auto_generated|le4a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le4a\(1) = (\U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & (\U_ALU|Mult0|auto_generated|le4a\(5) $ ((\switch[7]~input_o\)))) # (!\U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & (\U_ALU|Mult0|auto_generated|le4a\(5) & 
-- ((!\switch[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|le4a\(5),
	datab => \switch[7]~input_o\,
	datac => \U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \switch[6]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X2_Y23_N16
\U_ALU|Mult0|auto_generated|le3a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le3a\(3) = (\switch[2]~input_o\ & (\switch[3]~input_o\ $ ((\switch[9]~input_o\)))) # (!\switch[2]~input_o\ & (\switch[3]~input_o\ & ((!\switch[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \switch[9]~input_o\,
	datad => \switch[8]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X5_Y23_N4
\U_ALU|Mult0|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_1~2_combout\ = (\U_ALU|Mult0|auto_generated|le3a\(3) & (!\U_ALU|Mult0|auto_generated|op_1~1\)) # (!\U_ALU|Mult0|auto_generated|le3a\(3) & ((\U_ALU|Mult0|auto_generated|op_1~1\) # (GND)))
-- \U_ALU|Mult0|auto_generated|op_1~3\ = CARRY((!\U_ALU|Mult0|auto_generated|op_1~1\) # (!\U_ALU|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ALU|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_1~1\,
	combout => \U_ALU|Mult0|auto_generated|op_1~2_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X5_Y23_N20
\U_ALU|Mult0|auto_generated|op_3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~6_combout\ = (\U_ALU|Mult0|auto_generated|le4a\(1) & ((\U_ALU|Mult0|auto_generated|op_1~2_combout\ & (\U_ALU|Mult0|auto_generated|op_3~5\ & VCC)) # (!\U_ALU|Mult0|auto_generated|op_1~2_combout\ & 
-- (!\U_ALU|Mult0|auto_generated|op_3~5\)))) # (!\U_ALU|Mult0|auto_generated|le4a\(1) & ((\U_ALU|Mult0|auto_generated|op_1~2_combout\ & (!\U_ALU|Mult0|auto_generated|op_3~5\)) # (!\U_ALU|Mult0|auto_generated|op_1~2_combout\ & 
-- ((\U_ALU|Mult0|auto_generated|op_3~5\) # (GND)))))
-- \U_ALU|Mult0|auto_generated|op_3~7\ = CARRY((\U_ALU|Mult0|auto_generated|le4a\(1) & (!\U_ALU|Mult0|auto_generated|op_1~2_combout\ & !\U_ALU|Mult0|auto_generated|op_3~5\)) # (!\U_ALU|Mult0|auto_generated|le4a\(1) & ((!\U_ALU|Mult0|auto_generated|op_3~5\) # 
-- (!\U_ALU|Mult0|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|le4a\(1),
	datab => \U_ALU|Mult0|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_3~5\,
	combout => \U_ALU|Mult0|auto_generated|op_3~6_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X4_Y23_N6
\U_ALU|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~6_combout\ = (\switch[5]~input_o\ & ((\switch[9]~input_o\ & (\U_ALU|Add0~5\ & VCC)) # (!\switch[9]~input_o\ & (!\U_ALU|Add0~5\)))) # (!\switch[5]~input_o\ & ((\switch[9]~input_o\ & (!\U_ALU|Add0~5\)) # (!\switch[9]~input_o\ & ((\U_ALU|Add0~5\) 
-- # (GND)))))
-- \U_ALU|Add0~7\ = CARRY((\switch[5]~input_o\ & (!\switch[9]~input_o\ & !\U_ALU|Add0~5\)) # (!\switch[5]~input_o\ & ((!\U_ALU|Add0~5\) # (!\switch[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[5]~input_o\,
	datab => \switch[9]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add0~5\,
	combout => \U_ALU|Add0~6_combout\,
	cout => \U_ALU|Add0~7\);

-- Location: LCCOMB_X1_Y23_N24
\U_ALU|Mux0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~20_combout\ = (\button[2]~input_o\ & (\button[1]~input_o\)) # (!\button[2]~input_o\ & ((\button[1]~input_o\ & (\U_ALU|Mult0|auto_generated|op_3~6_combout\)) # (!\button[1]~input_o\ & ((\U_ALU|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \button[1]~input_o\,
	datac => \U_ALU|Mult0|auto_generated|op_3~6_combout\,
	datad => \U_ALU|Add0~6_combout\,
	combout => \U_ALU|Mux0~20_combout\);

-- Location: LCCOMB_X1_Y23_N10
\U_ALU|Mux0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~21_combout\ = \U_ALU|Mux0~20_combout\ $ (((\button[2]~input_o\ & ((\switch[9]~input_o\) # (\switch[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \switch[9]~input_o\,
	datac => \switch[5]~input_o\,
	datad => \U_ALU|Mux0~20_combout\,
	combout => \U_ALU|Mux0~21_combout\);

-- Location: LCCOMB_X1_Y23_N26
\U_ALU|Mux0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~17_combout\ = (\switch[0]~input_o\ & (((\button[0]~input_o\)))) # (!\switch[0]~input_o\ & ((\button[0]~input_o\ & (\U_ALU|Mux0~23_combout\)) # (!\button[0]~input_o\ & ((\U_ALU|Mux0~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \U_ALU|Mux0~23_combout\,
	datac => \button[0]~input_o\,
	datad => \U_ALU|Mux0~21_combout\,
	combout => \U_ALU|Mux0~17_combout\);

-- Location: LCCOMB_X1_Y23_N28
\U_ALU|Mux0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~18_combout\ = (!\button[2]~input_o\ & (\button[1]~input_o\ & \switch[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \button[1]~input_o\,
	datac => \switch[6]~input_o\,
	combout => \U_ALU|Mux0~18_combout\);

-- Location: LCCOMB_X1_Y23_N8
\U_ALU|Mux0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~16_combout\ = (!\button[2]~input_o\ & ((\button[1]~input_o\ & ((\switch[7]~input_o\))) # (!\button[1]~input_o\ & (\switch[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \button[1]~input_o\,
	datac => \switch[8]~input_o\,
	datad => \switch[7]~input_o\,
	combout => \U_ALU|Mux0~16_combout\);

-- Location: LCCOMB_X1_Y23_N22
\U_ALU|Mux0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~19_combout\ = (\U_ALU|Mux0~17_combout\ & ((\U_ALU|Mux0~18_combout\) # ((!\switch[0]~input_o\)))) # (!\U_ALU|Mux0~17_combout\ & (((\U_ALU|Mux0~16_combout\ & \switch[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~17_combout\,
	datab => \U_ALU|Mux0~18_combout\,
	datac => \U_ALU|Mux0~16_combout\,
	datad => \switch[0]~input_o\,
	combout => \U_ALU|Mux0~19_combout\);

-- Location: LCCOMB_X2_Y23_N24
\U_ALU|Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~6_combout\ = (\button[2]~input_o\ & ((\U_ALU|Add0~0_combout\) # ((\button[1]~input_o\)))) # (!\button[2]~input_o\ & (((!\button[1]~input_o\ & \U_ALU|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \U_ALU|Add0~0_combout\,
	datac => \button[1]~input_o\,
	datad => \U_ALU|Add1~0_combout\,
	combout => \U_ALU|Mux0~6_combout\);

-- Location: LCCOMB_X2_Y23_N2
\U_ALU|Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~7_combout\ = (\switch[6]~input_o\ & ((\button[1]~input_o\ & (\switch[2]~input_o\ & !\U_ALU|Mux0~6_combout\)) # (!\button[1]~input_o\ & ((\U_ALU|Mux0~6_combout\))))) # (!\switch[6]~input_o\ & (((\U_ALU|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[6]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \button[1]~input_o\,
	datad => \U_ALU|Mux0~6_combout\,
	combout => \U_ALU|Mux0~7_combout\);

-- Location: LCCOMB_X3_Y23_N20
\U_ALU|Mux0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~11_combout\ = (!\button[2]~input_o\ & ((\button[1]~input_o\ & ((\switch[9]~input_o\))) # (!\button[1]~input_o\ & (\switch[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \button[1]~input_o\,
	datac => \switch[7]~input_o\,
	datad => \switch[9]~input_o\,
	combout => \U_ALU|Mux0~11_combout\);

-- Location: LCCOMB_X3_Y23_N16
\U_ALU|Mux0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~8_combout\ = (!\button[2]~input_o\ & (\switch[8]~input_o\ & \button[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datac => \switch[8]~input_o\,
	datad => \button[1]~input_o\,
	combout => \U_ALU|Mux0~8_combout\);

-- Location: LCCOMB_X2_Y23_N28
\U_ALU|Mux0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~9_combout\ = \button[1]~input_o\ $ (((\button[2]~input_o\ & ((\switch[6]~input_o\) # (\switch[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \switch[6]~input_o\,
	datac => \button[1]~input_o\,
	datad => \switch[2]~input_o\,
	combout => \U_ALU|Mux0~9_combout\);

-- Location: LCCOMB_X2_Y23_N14
\U_ALU|Mux0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~10_combout\ = (\button[2]~input_o\ & (\U_ALU|Mux0~9_combout\)) # (!\button[2]~input_o\ & ((\U_ALU|Mux0~9_combout\ & ((\U_ALU|Mult0|auto_generated|op_3~0_combout\))) # (!\U_ALU|Mux0~9_combout\ & (\U_ALU|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \U_ALU|Mux0~9_combout\,
	datac => \U_ALU|Add0~0_combout\,
	datad => \U_ALU|Mult0|auto_generated|op_3~0_combout\,
	combout => \U_ALU|Mux0~10_combout\);

-- Location: LCCOMB_X3_Y23_N2
\U_ALU|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~0_combout\ = (\switch[0]~input_o\ & ((\U_ALU|Mux0~8_combout\) # ((\button[0]~input_o\)))) # (!\switch[0]~input_o\ & (((!\button[0]~input_o\ & \U_ALU|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \U_ALU|Mux0~8_combout\,
	datac => \button[0]~input_o\,
	datad => \U_ALU|Mux0~10_combout\,
	combout => \U_ALU|Mux3~0_combout\);

-- Location: LCCOMB_X3_Y23_N14
\U_ALU|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~1_combout\ = (\button[0]~input_o\ & ((\U_ALU|Mux3~0_combout\ & ((\U_ALU|Mux0~11_combout\))) # (!\U_ALU|Mux3~0_combout\ & (\U_ALU|Mux0~7_combout\)))) # (!\button[0]~input_o\ & (((\U_ALU|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~7_combout\,
	datab => \U_ALU|Mux0~11_combout\,
	datac => \button[0]~input_o\,
	datad => \U_ALU|Mux3~0_combout\,
	combout => \U_ALU|Mux3~1_combout\);

-- Location: LCCOMB_X1_Y23_N20
\U_ALU|Mux0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~13_combout\ = (!\button[2]~input_o\ & \switch[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datac => \switch[8]~input_o\,
	combout => \U_ALU|Mux0~13_combout\);

-- Location: LCCOMB_X1_Y23_N0
\U_ALU|Mux0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~12_combout\ = (!\button[2]~input_o\ & ((\button[1]~input_o\ & ((\switch[9]~input_o\))) # (!\button[1]~input_o\ & (\switch[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \button[1]~input_o\,
	datac => \switch[6]~input_o\,
	datad => \switch[9]~input_o\,
	combout => \U_ALU|Mux0~12_combout\);

-- Location: LCCOMB_X1_Y23_N4
\U_ALU|Mux0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~30_combout\ = (\button[2]~input_o\ & (\switch[7]~input_o\ $ (((\button[1]~input_o\) # (\switch[3]~input_o\))))) # (!\button[2]~input_o\ & (((\switch[3]~input_o\ & \switch[7]~input_o\)) # (!\button[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \button[1]~input_o\,
	datac => \switch[3]~input_o\,
	datad => \switch[7]~input_o\,
	combout => \U_ALU|Mux0~30_combout\);

-- Location: LCCOMB_X1_Y23_N30
\U_ALU|Mux0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~31_combout\ = (\U_ALU|Mux0~30_combout\ & ((\button[2]~input_o\) # ((\U_ALU|Add1~2_combout\) # (\button[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \U_ALU|Mux0~30_combout\,
	datac => \U_ALU|Add1~2_combout\,
	datad => \button[1]~input_o\,
	combout => \U_ALU|Mux0~31_combout\);

-- Location: LCCOMB_X1_Y23_N16
\U_ALU|Mux0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~28_combout\ = (\button[2]~input_o\ & (\button[1]~input_o\)) # (!\button[2]~input_o\ & ((\button[1]~input_o\ & ((\U_ALU|Mult0|auto_generated|op_3~2_combout\))) # (!\button[1]~input_o\ & (\U_ALU|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \button[1]~input_o\,
	datac => \U_ALU|Add0~2_combout\,
	datad => \U_ALU|Mult0|auto_generated|op_3~2_combout\,
	combout => \U_ALU|Mux0~28_combout\);

-- Location: LCCOMB_X1_Y23_N18
\U_ALU|Mux0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~29_combout\ = \U_ALU|Mux0~28_combout\ $ (((\button[2]~input_o\ & ((\switch[7]~input_o\) # (\switch[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \switch[7]~input_o\,
	datac => \switch[3]~input_o\,
	datad => \U_ALU|Mux0~28_combout\,
	combout => \U_ALU|Mux0~29_combout\);

-- Location: LCCOMB_X1_Y23_N2
\U_ALU|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~0_combout\ = (\switch[0]~input_o\ & (\button[0]~input_o\)) # (!\switch[0]~input_o\ & ((\button[0]~input_o\ & (\U_ALU|Mux0~31_combout\)) # (!\button[0]~input_o\ & ((\U_ALU|Mux0~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \button[0]~input_o\,
	datac => \U_ALU|Mux0~31_combout\,
	datad => \U_ALU|Mux0~29_combout\,
	combout => \U_ALU|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y23_N6
\U_ALU|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~1_combout\ = (\switch[0]~input_o\ & ((\U_ALU|Mux2~0_combout\ & (\U_ALU|Mux0~13_combout\)) # (!\U_ALU|Mux2~0_combout\ & ((\U_ALU|Mux0~12_combout\))))) # (!\switch[0]~input_o\ & (((\U_ALU|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~13_combout\,
	datab => \U_ALU|Mux0~12_combout\,
	datac => \switch[0]~input_o\,
	datad => \U_ALU|Mux2~0_combout\,
	combout => \U_ALU|Mux2~1_combout\);

-- Location: LCCOMB_X27_Y27_N24
\U_LED0|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|Mux6~0_combout\ = (\U_ALU|Mux3~1_combout\ & ((\U_ALU|Mux0~19_combout\) # (\U_ALU|Mux1~1_combout\ $ (\U_ALU|Mux2~1_combout\)))) # (!\U_ALU|Mux3~1_combout\ & ((\U_ALU|Mux2~1_combout\) # (\U_ALU|Mux1~1_combout\ $ (\U_ALU|Mux0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~1_combout\,
	datab => \U_ALU|Mux0~19_combout\,
	datac => \U_ALU|Mux3~1_combout\,
	datad => \U_ALU|Mux2~1_combout\,
	combout => \U_LED0|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y27_N2
\U_LED0|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|Mux5~0_combout\ = (\U_ALU|Mux1~1_combout\ & (\U_ALU|Mux3~1_combout\ & (\U_ALU|Mux0~19_combout\ $ (\U_ALU|Mux2~1_combout\)))) # (!\U_ALU|Mux1~1_combout\ & (!\U_ALU|Mux0~19_combout\ & ((\U_ALU|Mux3~1_combout\) # (\U_ALU|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~1_combout\,
	datab => \U_ALU|Mux0~19_combout\,
	datac => \U_ALU|Mux3~1_combout\,
	datad => \U_ALU|Mux2~1_combout\,
	combout => \U_LED0|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y27_N12
\U_LED0|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|Mux4~0_combout\ = (\U_ALU|Mux2~1_combout\ & (((!\U_ALU|Mux0~19_combout\ & \U_ALU|Mux3~1_combout\)))) # (!\U_ALU|Mux2~1_combout\ & ((\U_ALU|Mux1~1_combout\ & (!\U_ALU|Mux0~19_combout\)) # (!\U_ALU|Mux1~1_combout\ & ((\U_ALU|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~1_combout\,
	datab => \U_ALU|Mux0~19_combout\,
	datac => \U_ALU|Mux3~1_combout\,
	datad => \U_ALU|Mux2~1_combout\,
	combout => \U_LED0|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y27_N22
\U_LED0|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|Mux3~0_combout\ = (\U_ALU|Mux3~1_combout\ & (\U_ALU|Mux1~1_combout\ $ (((!\U_ALU|Mux2~1_combout\))))) # (!\U_ALU|Mux3~1_combout\ & ((\U_ALU|Mux1~1_combout\ & (!\U_ALU|Mux0~19_combout\ & !\U_ALU|Mux2~1_combout\)) # (!\U_ALU|Mux1~1_combout\ & 
-- (\U_ALU|Mux0~19_combout\ & \U_ALU|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~1_combout\,
	datab => \U_ALU|Mux0~19_combout\,
	datac => \U_ALU|Mux3~1_combout\,
	datad => \U_ALU|Mux2~1_combout\,
	combout => \U_LED0|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y27_N0
\U_LED0|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|Mux2~0_combout\ = (\U_ALU|Mux1~1_combout\ & (\U_ALU|Mux0~19_combout\ & ((\U_ALU|Mux2~1_combout\) # (!\U_ALU|Mux3~1_combout\)))) # (!\U_ALU|Mux1~1_combout\ & (!\U_ALU|Mux0~19_combout\ & (!\U_ALU|Mux3~1_combout\ & \U_ALU|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~1_combout\,
	datab => \U_ALU|Mux0~19_combout\,
	datac => \U_ALU|Mux3~1_combout\,
	datad => \U_ALU|Mux2~1_combout\,
	combout => \U_LED0|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y27_N10
\U_LED0|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|Mux1~0_combout\ = (\U_ALU|Mux0~19_combout\ & ((\U_ALU|Mux3~1_combout\ & ((\U_ALU|Mux2~1_combout\))) # (!\U_ALU|Mux3~1_combout\ & (\U_ALU|Mux1~1_combout\)))) # (!\U_ALU|Mux0~19_combout\ & (\U_ALU|Mux1~1_combout\ & (\U_ALU|Mux3~1_combout\ $ 
-- (\U_ALU|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~1_combout\,
	datab => \U_ALU|Mux0~19_combout\,
	datac => \U_ALU|Mux3~1_combout\,
	datad => \U_ALU|Mux2~1_combout\,
	combout => \U_LED0|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y27_N20
\U_LED0|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|Mux0~0_combout\ = (\U_ALU|Mux1~1_combout\ & (!\U_ALU|Mux2~1_combout\ & (\U_ALU|Mux0~19_combout\ $ (!\U_ALU|Mux3~1_combout\)))) # (!\U_ALU|Mux1~1_combout\ & (\U_ALU|Mux3~1_combout\ & (\U_ALU|Mux0~19_combout\ $ (!\U_ALU|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~1_combout\,
	datab => \U_ALU|Mux0~19_combout\,
	datac => \U_ALU|Mux3~1_combout\,
	datad => \U_ALU|Mux2~1_combout\,
	combout => \U_LED0|Mux0~0_combout\);

-- Location: LCCOMB_X4_Y23_N8
\U_ALU|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~8_combout\ = !\U_ALU|Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_ALU|Add0~7\,
	combout => \U_ALU|Add0~8_combout\);

-- Location: LCCOMB_X3_Y23_N22
\U_ALU|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux4~0_combout\ = (!\button[1]~input_o\ & ((\switch[0]~input_o\ & ((\switch[9]~input_o\))) # (!\switch[0]~input_o\ & (\U_ALU|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \button[1]~input_o\,
	datac => \U_ALU|Add0~8_combout\,
	datad => \switch[9]~input_o\,
	combout => \U_ALU|Mux4~0_combout\);

-- Location: LCCOMB_X4_Y23_N26
\U_ALU|Mult0|auto_generated|le4a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le4a\(4) = (\switch[9]~input_o\ & (\switch[5]~input_o\ & (\switch[3]~input_o\ $ (\switch[4]~input_o\)))) # (!\switch[9]~input_o\ & (\switch[5]~input_o\ $ (((\switch[3]~input_o\ & \switch[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[5]~input_o\,
	datac => \switch[4]~input_o\,
	datad => \switch[9]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X4_Y23_N20
\U_ALU|Mult0|auto_generated|le5a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le5a\(2) = (\switch[8]~input_o\ & ((\switch[5]~input_o\) # ((\switch[3]~input_o\ & \switch[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[5]~input_o\,
	datac => \switch[4]~input_o\,
	datad => \switch[8]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X4_Y23_N24
\U_ALU|Mult0|auto_generated|le5a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le5a\(1) = (\switch[7]~input_o\ & ((\switch[5]~input_o\) # ((\switch[3]~input_o\ & \switch[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[5]~input_o\,
	datac => \switch[4]~input_o\,
	datad => \switch[7]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X4_Y23_N22
\U_ALU|Mult0|auto_generated|le4a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le4a\(3) = (\U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\switch[9]~input_o\ $ (\U_ALU|Mult0|auto_generated|le4a\(5))))) # (!\U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\switch[8]~input_o\ & 
-- ((\U_ALU|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[8]~input_o\,
	datab => \switch[9]~input_o\,
	datac => \U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \U_ALU|Mult0|auto_generated|le4a\(5),
	combout => \U_ALU|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X2_Y23_N26
\U_ALU|Mult0|auto_generated|le3a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le3a\(4) = (\switch[3]~input_o\ & ((\switch[2]~input_o\) # (!\switch[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[9]~input_o\,
	datad => \switch[2]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X4_Y23_N18
\U_ALU|Mult0|auto_generated|le4a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le4a\(2) = (\U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & (\switch[8]~input_o\ $ (((\U_ALU|Mult0|auto_generated|le4a\(5)))))) # (!\U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & (((!\switch[7]~input_o\ & 
-- \U_ALU|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[8]~input_o\,
	datab => \switch[7]~input_o\,
	datac => \U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \U_ALU|Mult0|auto_generated|le4a\(5),
	combout => \U_ALU|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X5_Y23_N6
\U_ALU|Mult0|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_1~4_combout\ = ((\U_ALU|Mult0|auto_generated|le3a\(4) $ (\U_ALU|Mult0|auto_generated|le4a\(2) $ (!\U_ALU|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \U_ALU|Mult0|auto_generated|op_1~5\ = CARRY((\U_ALU|Mult0|auto_generated|le3a\(4) & ((\U_ALU|Mult0|auto_generated|le4a\(2)) # (!\U_ALU|Mult0|auto_generated|op_1~3\))) # (!\U_ALU|Mult0|auto_generated|le3a\(4) & (\U_ALU|Mult0|auto_generated|le4a\(2) & 
-- !\U_ALU|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|le3a\(4),
	datab => \U_ALU|Mult0|auto_generated|le4a\(2),
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_1~3\,
	combout => \U_ALU|Mult0|auto_generated|op_1~4_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X5_Y23_N8
\U_ALU|Mult0|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_1~6_combout\ = (\U_ALU|Mult0|auto_generated|le5a\(1) & ((\U_ALU|Mult0|auto_generated|le4a\(3) & (\U_ALU|Mult0|auto_generated|op_1~5\ & VCC)) # (!\U_ALU|Mult0|auto_generated|le4a\(3) & 
-- (!\U_ALU|Mult0|auto_generated|op_1~5\)))) # (!\U_ALU|Mult0|auto_generated|le5a\(1) & ((\U_ALU|Mult0|auto_generated|le4a\(3) & (!\U_ALU|Mult0|auto_generated|op_1~5\)) # (!\U_ALU|Mult0|auto_generated|le4a\(3) & ((\U_ALU|Mult0|auto_generated|op_1~5\) # 
-- (GND)))))
-- \U_ALU|Mult0|auto_generated|op_1~7\ = CARRY((\U_ALU|Mult0|auto_generated|le5a\(1) & (!\U_ALU|Mult0|auto_generated|le4a\(3) & !\U_ALU|Mult0|auto_generated|op_1~5\)) # (!\U_ALU|Mult0|auto_generated|le5a\(1) & ((!\U_ALU|Mult0|auto_generated|op_1~5\) # 
-- (!\U_ALU|Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|le5a\(1),
	datab => \U_ALU|Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_1~5\,
	combout => \U_ALU|Mult0|auto_generated|op_1~6_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X5_Y23_N10
\U_ALU|Mult0|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_1~8_combout\ = ((\U_ALU|Mult0|auto_generated|le4a\(4) $ (\U_ALU|Mult0|auto_generated|le5a\(2) $ (!\U_ALU|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \U_ALU|Mult0|auto_generated|op_1~9\ = CARRY((\U_ALU|Mult0|auto_generated|le4a\(4) & ((\U_ALU|Mult0|auto_generated|le5a\(2)) # (!\U_ALU|Mult0|auto_generated|op_1~7\))) # (!\U_ALU|Mult0|auto_generated|le4a\(4) & (\U_ALU|Mult0|auto_generated|le5a\(2) & 
-- !\U_ALU|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|le4a\(4),
	datab => \U_ALU|Mult0|auto_generated|le5a\(2),
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_1~7\,
	combout => \U_ALU|Mult0|auto_generated|op_1~8_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X4_Y23_N28
\U_ALU|Mult0|auto_generated|le5a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le5a\(0) = (\switch[6]~input_o\ & ((\switch[5]~input_o\) # ((\switch[3]~input_o\ & \switch[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[5]~input_o\,
	datac => \switch[4]~input_o\,
	datad => \switch[6]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X5_Y23_N22
\U_ALU|Mult0|auto_generated|op_3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~8_combout\ = ((\U_ALU|Mult0|auto_generated|op_1~4_combout\ $ (\U_ALU|Mult0|auto_generated|le5a\(0) $ (!\U_ALU|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \U_ALU|Mult0|auto_generated|op_3~9\ = CARRY((\U_ALU|Mult0|auto_generated|op_1~4_combout\ & ((\U_ALU|Mult0|auto_generated|le5a\(0)) # (!\U_ALU|Mult0|auto_generated|op_3~7\))) # (!\U_ALU|Mult0|auto_generated|op_1~4_combout\ & 
-- (\U_ALU|Mult0|auto_generated|le5a\(0) & !\U_ALU|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|op_1~4_combout\,
	datab => \U_ALU|Mult0|auto_generated|le5a\(0),
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_3~7\,
	combout => \U_ALU|Mult0|auto_generated|op_3~8_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X5_Y23_N24
\U_ALU|Mult0|auto_generated|op_3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~10_combout\ = (\switch[3]~input_o\ & ((\U_ALU|Mult0|auto_generated|op_1~6_combout\ & (\U_ALU|Mult0|auto_generated|op_3~9\ & VCC)) # (!\U_ALU|Mult0|auto_generated|op_1~6_combout\ & (!\U_ALU|Mult0|auto_generated|op_3~9\)))) 
-- # (!\switch[3]~input_o\ & ((\U_ALU|Mult0|auto_generated|op_1~6_combout\ & (!\U_ALU|Mult0|auto_generated|op_3~9\)) # (!\U_ALU|Mult0|auto_generated|op_1~6_combout\ & ((\U_ALU|Mult0|auto_generated|op_3~9\) # (GND)))))
-- \U_ALU|Mult0|auto_generated|op_3~11\ = CARRY((\switch[3]~input_o\ & (!\U_ALU|Mult0|auto_generated|op_1~6_combout\ & !\U_ALU|Mult0|auto_generated|op_3~9\)) # (!\switch[3]~input_o\ & ((!\U_ALU|Mult0|auto_generated|op_3~9\) # 
-- (!\U_ALU|Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \U_ALU|Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_3~9\,
	combout => \U_ALU|Mult0|auto_generated|op_3~10_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X5_Y23_N26
\U_ALU|Mult0|auto_generated|op_3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~12_combout\ = ((\U_ALU|Mult0|auto_generated|op_1~8_combout\ $ (\switch[3]~input_o\ $ (!\U_ALU|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \U_ALU|Mult0|auto_generated|op_3~13\ = CARRY((\U_ALU|Mult0|auto_generated|op_1~8_combout\ & ((\switch[3]~input_o\) # (!\U_ALU|Mult0|auto_generated|op_3~11\))) # (!\U_ALU|Mult0|auto_generated|op_1~8_combout\ & (\switch[3]~input_o\ & 
-- !\U_ALU|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|op_1~8_combout\,
	datab => \switch[3]~input_o\,
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_3~11\,
	combout => \U_ALU|Mult0|auto_generated|op_3~12_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X4_Y23_N14
\U_ALU|Mult0|auto_generated|le5a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le5a\(3) = (\switch[9]~input_o\ & ((\switch[5]~input_o\) # ((\switch[3]~input_o\ & \switch[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[5]~input_o\,
	datac => \switch[4]~input_o\,
	datad => \switch[9]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X5_Y23_N12
\U_ALU|Mult0|auto_generated|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_1~10_combout\ = \U_ALU|Mult0|auto_generated|le4a\(5) $ (\U_ALU|Mult0|auto_generated|op_1~9\ $ (!\U_ALU|Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|le4a\(5),
	datad => \U_ALU|Mult0|auto_generated|le5a\(3),
	cin => \U_ALU|Mult0|auto_generated|op_1~9\,
	combout => \U_ALU|Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X5_Y23_N28
\U_ALU|Mult0|auto_generated|op_3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~14_combout\ = \switch[3]~input_o\ $ (\U_ALU|Mult0|auto_generated|op_3~13\ $ (!\U_ALU|Mult0|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datad => \U_ALU|Mult0|auto_generated|op_1~10_combout\,
	cin => \U_ALU|Mult0|auto_generated|op_3~13\,
	combout => \U_ALU|Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X5_Y23_N0
\U_ALU|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux4~1_combout\ = (\U_ALU|Mult0|auto_generated|op_3~12_combout\) # ((\U_ALU|Mult0|auto_generated|op_3~14_combout\) # ((\U_ALU|Mult0|auto_generated|op_3~8_combout\) # (\U_ALU|Mult0|auto_generated|op_3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|op_3~12_combout\,
	datab => \U_ALU|Mult0|auto_generated|op_3~14_combout\,
	datac => \U_ALU|Mult0|auto_generated|op_3~8_combout\,
	datad => \U_ALU|Mult0|auto_generated|op_3~10_combout\,
	combout => \U_ALU|Mux4~1_combout\);

-- Location: LCCOMB_X3_Y23_N8
\U_ALU|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux4~2_combout\ = (\U_ALU|Mux4~0_combout\) # ((\button[1]~input_o\ & (!\switch[0]~input_o\ & \U_ALU|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux4~0_combout\,
	datab => \button[1]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \U_ALU|Mux4~1_combout\,
	combout => \U_ALU|Mux4~2_combout\);

-- Location: LCCOMB_X3_Y23_N10
\U_ALU|Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ALU|Mux4~3_combout\ = (!\button[2]~input_o\ & (\U_ALU|Mux4~2_combout\ & !\button[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \U_ALU|Mux4~2_combout\,
	datac => \button[0]~input_o\,
	combout => \U_ALU|Mux4~3_combout\);

-- Location: IOIBUF_X3_Y29_N29
\switch[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(1),
	o => \switch[1]~input_o\);

ww_led0(0) <= \led0[0]~output_o\;

ww_led0(1) <= \led0[1]~output_o\;

ww_led0(2) <= \led0[2]~output_o\;

ww_led0(3) <= \led0[3]~output_o\;

ww_led0(4) <= \led0[4]~output_o\;

ww_led0(5) <= \led0[5]~output_o\;

ww_led0(6) <= \led0[6]~output_o\;

ww_led0_dp <= \led0_dp~output_o\;

ww_led1(0) <= \led1[0]~output_o\;

ww_led1(1) <= \led1[1]~output_o\;

ww_led1(2) <= \led1[2]~output_o\;

ww_led1(3) <= \led1[3]~output_o\;

ww_led1(4) <= \led1[4]~output_o\;

ww_led1(5) <= \led1[5]~output_o\;

ww_led1(6) <= \led1[6]~output_o\;

ww_led1_dp <= \led1_dp~output_o\;

ww_led2(0) <= \led2[0]~output_o\;

ww_led2(1) <= \led2[1]~output_o\;

ww_led2(2) <= \led2[2]~output_o\;

ww_led2(3) <= \led2[3]~output_o\;

ww_led2(4) <= \led2[4]~output_o\;

ww_led2(5) <= \led2[5]~output_o\;

ww_led2(6) <= \led2[6]~output_o\;

ww_led2_dp <= \led2_dp~output_o\;

ww_led3(0) <= \led3[0]~output_o\;

ww_led3(1) <= \led3[1]~output_o\;

ww_led3(2) <= \led3[2]~output_o\;

ww_led3(3) <= \led3[3]~output_o\;

ww_led3(4) <= \led3[4]~output_o\;

ww_led3(5) <= \led3[5]~output_o\;

ww_led3(6) <= \led3[6]~output_o\;

ww_led3_dp <= \led3_dp~output_o\;
END structure;


