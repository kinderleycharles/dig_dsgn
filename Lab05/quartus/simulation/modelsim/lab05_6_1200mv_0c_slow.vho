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

-- DATE "02/26/2016 21:19:09"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	clk50MHz : IN std_logic;
	switch : IN std_logic_vector(9 DOWNTO 0);
	button : IN std_logic_vector(2 DOWNTO 1);
	led0 : OUT std_logic_vector(6 DOWNTO 0);
	led0_dp : OUT std_logic;
	led1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
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
-- clk50MHz	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk50MHz : std_logic;
SIGNAL ww_switch : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_button : std_logic_vector(2 DOWNTO 1);
SIGNAL ww_led0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led0_dp : std_logic;
SIGNAL ww_led1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \clk50MHz~input_o\ : std_logic;
SIGNAL \clk50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \button[2]~input_o\ : std_logic;
SIGNAL \switch[9]~input_o\ : std_logic;
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
SIGNAL \GCD_ENT|Add0~0_combout\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \GCD_ENT|Selector18~0_combout\ : std_logic;
SIGNAL \button[1]~input_o\ : std_logic;
SIGNAL \GCD_ENT|Add1~3\ : std_logic;
SIGNAL \GCD_ENT|Add1~5\ : std_logic;
SIGNAL \GCD_ENT|Add1~7\ : std_logic;
SIGNAL \GCD_ENT|Add1~9\ : std_logic;
SIGNAL \GCD_ENT|Add1~10_combout\ : std_logic;
SIGNAL \GCD_ENT|Selector5~0_combout\ : std_logic;
SIGNAL \GCD_ENT|Selector3~0_combout\ : std_logic;
SIGNAL \GCD_ENT|Add0~9\ : std_logic;
SIGNAL \GCD_ENT|Add0~10_combout\ : std_logic;
SIGNAL \GCD_ENT|Selector13~0_combout\ : std_logic;
SIGNAL \GCD_ENT|Add1~11\ : std_logic;
SIGNAL \GCD_ENT|Add1~12_combout\ : std_logic;
SIGNAL \GCD_ENT|Selector4~0_combout\ : std_logic;
SIGNAL \GCD_ENT|Add0~11\ : std_logic;
SIGNAL \GCD_ENT|Add0~12_combout\ : std_logic;
SIGNAL \GCD_ENT|Selector12~0_combout\ : std_logic;
SIGNAL \GCD_ENT|Add1~13\ : std_logic;
SIGNAL \GCD_ENT|Add1~14_combout\ : std_logic;
SIGNAL \GCD_ENT|Selector3~1_combout\ : std_logic;
SIGNAL \GCD_ENT|Add0~13\ : std_logic;
SIGNAL \GCD_ENT|Add0~14_combout\ : std_logic;
SIGNAL \GCD_ENT|Selector11~0_combout\ : std_logic;
SIGNAL \GCD_ENT|LessThan0~1_cout\ : std_logic;
SIGNAL \GCD_ENT|LessThan0~3_cout\ : std_logic;
SIGNAL \GCD_ENT|LessThan0~5_cout\ : std_logic;
SIGNAL \GCD_ENT|LessThan0~7_cout\ : std_logic;
SIGNAL \GCD_ENT|LessThan0~9_cout\ : std_logic;
SIGNAL \GCD_ENT|LessThan0~11_cout\ : std_logic;
SIGNAL \GCD_ENT|LessThan0~13_cout\ : std_logic;
SIGNAL \GCD_ENT|LessThan0~14_combout\ : std_logic;
SIGNAL \GCD_ENT|tmp_y[4]~0_combout\ : std_logic;
SIGNAL \GCD_ENT|Add1~0_combout\ : std_logic;
SIGNAL \GCD_ENT|Selector10~0_combout\ : std_logic;
SIGNAL \GCD_ENT|tmp_x[4]~0_combout\ : std_logic;
SIGNAL \GCD_ENT|Add1~1\ : std_logic;
SIGNAL \GCD_ENT|Add1~2_combout\ : std_logic;
SIGNAL \GCD_ENT|Selector9~0_combout\ : std_logic;
SIGNAL \GCD_ENT|Add0~1\ : std_logic;
SIGNAL \GCD_ENT|Add0~2_combout\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \GCD_ENT|Selector17~0_combout\ : std_logic;
SIGNAL \GCD_ENT|Add0~3\ : std_logic;
SIGNAL \GCD_ENT|Add0~4_combout\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \GCD_ENT|Selector16~0_combout\ : std_logic;
SIGNAL \GCD_ENT|Add1~4_combout\ : std_logic;
SIGNAL \GCD_ENT|Selector8~0_combout\ : std_logic;
SIGNAL \GCD_ENT|Add0~5\ : std_logic;
SIGNAL \GCD_ENT|Add0~6_combout\ : std_logic;
SIGNAL \GCD_ENT|Selector15~0_combout\ : std_logic;
SIGNAL \GCD_ENT|Add0~7\ : std_logic;
SIGNAL \GCD_ENT|Add0~8_combout\ : std_logic;
SIGNAL \GCD_ENT|Selector14~0_combout\ : std_logic;
SIGNAL \GCD_ENT|Add1~8_combout\ : std_logic;
SIGNAL \GCD_ENT|Selector6~0_combout\ : std_logic;
SIGNAL \GCD_ENT|Equal0~2_combout\ : std_logic;
SIGNAL \GCD_ENT|Equal0~0_combout\ : std_logic;
SIGNAL \GCD_ENT|Equal0~3_combout\ : std_logic;
SIGNAL \GCD_ENT|Equal0~1_combout\ : std_logic;
SIGNAL \GCD_ENT|Equal0~4_combout\ : std_logic;
SIGNAL \GCD_ENT|state~11_combout\ : std_logic;
SIGNAL \GCD_ENT|state.OUTPUT_RESULT~q\ : std_logic;
SIGNAL \GCD_ENT|Selector1~0_combout\ : std_logic;
SIGNAL \GCD_ENT|state.WAIT_0~q\ : std_logic;
SIGNAL \GCD_ENT|state.START~feeder_combout\ : std_logic;
SIGNAL \GCD_ENT|state.START~q\ : std_logic;
SIGNAL \GCD_ENT|Selector2~0_combout\ : std_logic;
SIGNAL \GCD_ENT|state.WAIT_1~q\ : std_logic;
SIGNAL \GCD_ENT|state~13_combout\ : std_logic;
SIGNAL \GCD_ENT|state.INIT~q\ : std_logic;
SIGNAL \GCD_ENT|state~14_combout\ : std_logic;
SIGNAL \GCD_ENT|state.LOOP_COND~q\ : std_logic;
SIGNAL \GCD_ENT|state~12_combout\ : std_logic;
SIGNAL \GCD_ENT|state.LOOP_BODY~q\ : std_logic;
SIGNAL \switch[8]~input_o\ : std_logic;
SIGNAL \GCD_ENT|Add1~6_combout\ : std_logic;
SIGNAL \GCD_ENT|Selector7~0_combout\ : std_logic;
SIGNAL \GCD_ENT|output[0]~feeder_combout\ : std_logic;
SIGNAL \GCD_ENT|output[1]~feeder_combout\ : std_logic;
SIGNAL \U_LED2|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux0~0_combout\ : std_logic;
SIGNAL \GCD_ENT|Selector0~0_combout\ : std_logic;
SIGNAL \GCD_ENT|done~q\ : std_logic;
SIGNAL \U_LED3|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux0~0_combout\ : std_logic;
SIGNAL \GCD_ENT|tmp_x\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GCD_ENT|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GCD_ENT|tmp_y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_LED3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U_LED2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_button[1]~input_o\ : std_logic;

BEGIN

ww_clk50MHz <= clk50MHz;
ww_switch <= switch;
ww_button <= button;
led0 <= ww_led0;
led0_dp <= ww_led0_dp;
led1 <= ww_led1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50MHz~input_o\);
\U_LED3|ALT_INV_Mux6~0_combout\ <= NOT \U_LED3|Mux6~0_combout\;
\U_LED2|ALT_INV_Mux6~0_combout\ <= NOT \U_LED2|Mux6~0_combout\;
\ALT_INV_button[1]~input_o\ <= NOT \button[1]~input_o\;

-- Location: IOOBUF_X26_Y29_N16
\led0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|ALT_INV_Mux6~0_combout\,
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
	i => \U_LED2|Mux5~0_combout\,
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
	i => \U_LED2|Mux4~0_combout\,
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
	i => \U_LED2|Mux3~0_combout\,
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
	i => \U_LED2|Mux2~0_combout\,
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
	i => \U_LED2|Mux1~0_combout\,
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
	i => \U_LED2|Mux0~0_combout\,
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
	i => \GCD_ENT|done~q\,
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
	i => \U_LED3|ALT_INV_Mux6~0_combout\,
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
	i => \U_LED3|Mux5~0_combout\,
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
	i => \U_LED3|Mux4~0_combout\,
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
	i => \U_LED3|Mux3~0_combout\,
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
	i => \U_LED3|Mux2~0_combout\,
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
	i => \U_LED3|Mux1~0_combout\,
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
	i => \U_LED3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led1[6]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk50MHz~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50MHz,
	o => \clk50MHz~input_o\);

-- Location: CLKCTRL_G9
\clk50MHz~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50MHz~inputclkctrl_outclk\);

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

-- Location: LCCOMB_X24_Y26_N10
\GCD_ENT|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Add0~0_combout\ = (\GCD_ENT|tmp_x\(0) & (\GCD_ENT|tmp_y\(0) $ (VCC))) # (!\GCD_ENT|tmp_x\(0) & ((\GCD_ENT|tmp_y\(0)) # (GND)))
-- \GCD_ENT|Add0~1\ = CARRY((\GCD_ENT|tmp_y\(0)) # (!\GCD_ENT|tmp_x\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_x\(0),
	datab => \GCD_ENT|tmp_y\(0),
	datad => VCC,
	combout => \GCD_ENT|Add0~0_combout\,
	cout => \GCD_ENT|Add0~1\);

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

-- Location: LCCOMB_X23_Y26_N0
\GCD_ENT|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Selector18~0_combout\ = (\GCD_ENT|state.LOOP_BODY~q\ & (\GCD_ENT|Add0~0_combout\)) # (!\GCD_ENT|state.LOOP_BODY~q\ & ((\switch[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GCD_ENT|Add0~0_combout\,
	datac => \switch[0]~input_o\,
	datad => \GCD_ENT|state.LOOP_BODY~q\,
	combout => \GCD_ENT|Selector18~0_combout\);

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

-- Location: LCCOMB_X22_Y26_N6
\GCD_ENT|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Add1~2_combout\ = (\GCD_ENT|tmp_y\(1) & ((\GCD_ENT|tmp_x\(1) & (!\GCD_ENT|Add1~1\)) # (!\GCD_ENT|tmp_x\(1) & ((\GCD_ENT|Add1~1\) # (GND))))) # (!\GCD_ENT|tmp_y\(1) & ((\GCD_ENT|tmp_x\(1) & (\GCD_ENT|Add1~1\ & VCC)) # (!\GCD_ENT|tmp_x\(1) & 
-- (!\GCD_ENT|Add1~1\))))
-- \GCD_ENT|Add1~3\ = CARRY((\GCD_ENT|tmp_y\(1) & ((!\GCD_ENT|Add1~1\) # (!\GCD_ENT|tmp_x\(1)))) # (!\GCD_ENT|tmp_y\(1) & (!\GCD_ENT|tmp_x\(1) & !\GCD_ENT|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_y\(1),
	datab => \GCD_ENT|tmp_x\(1),
	datad => VCC,
	cin => \GCD_ENT|Add1~1\,
	combout => \GCD_ENT|Add1~2_combout\,
	cout => \GCD_ENT|Add1~3\);

-- Location: LCCOMB_X22_Y26_N8
\GCD_ENT|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Add1~4_combout\ = ((\GCD_ENT|tmp_x\(2) $ (\GCD_ENT|tmp_y\(2) $ (\GCD_ENT|Add1~3\)))) # (GND)
-- \GCD_ENT|Add1~5\ = CARRY((\GCD_ENT|tmp_x\(2) & ((!\GCD_ENT|Add1~3\) # (!\GCD_ENT|tmp_y\(2)))) # (!\GCD_ENT|tmp_x\(2) & (!\GCD_ENT|tmp_y\(2) & !\GCD_ENT|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_x\(2),
	datab => \GCD_ENT|tmp_y\(2),
	datad => VCC,
	cin => \GCD_ENT|Add1~3\,
	combout => \GCD_ENT|Add1~4_combout\,
	cout => \GCD_ENT|Add1~5\);

-- Location: LCCOMB_X22_Y26_N10
\GCD_ENT|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Add1~6_combout\ = (\GCD_ENT|tmp_y\(3) & ((\GCD_ENT|tmp_x\(3) & (!\GCD_ENT|Add1~5\)) # (!\GCD_ENT|tmp_x\(3) & ((\GCD_ENT|Add1~5\) # (GND))))) # (!\GCD_ENT|tmp_y\(3) & ((\GCD_ENT|tmp_x\(3) & (\GCD_ENT|Add1~5\ & VCC)) # (!\GCD_ENT|tmp_x\(3) & 
-- (!\GCD_ENT|Add1~5\))))
-- \GCD_ENT|Add1~7\ = CARRY((\GCD_ENT|tmp_y\(3) & ((!\GCD_ENT|Add1~5\) # (!\GCD_ENT|tmp_x\(3)))) # (!\GCD_ENT|tmp_y\(3) & (!\GCD_ENT|tmp_x\(3) & !\GCD_ENT|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_y\(3),
	datab => \GCD_ENT|tmp_x\(3),
	datad => VCC,
	cin => \GCD_ENT|Add1~5\,
	combout => \GCD_ENT|Add1~6_combout\,
	cout => \GCD_ENT|Add1~7\);

-- Location: LCCOMB_X22_Y26_N12
\GCD_ENT|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Add1~8_combout\ = ((\GCD_ENT|tmp_y\(4) $ (\GCD_ENT|tmp_x\(4) $ (\GCD_ENT|Add1~7\)))) # (GND)
-- \GCD_ENT|Add1~9\ = CARRY((\GCD_ENT|tmp_y\(4) & (\GCD_ENT|tmp_x\(4) & !\GCD_ENT|Add1~7\)) # (!\GCD_ENT|tmp_y\(4) & ((\GCD_ENT|tmp_x\(4)) # (!\GCD_ENT|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_y\(4),
	datab => \GCD_ENT|tmp_x\(4),
	datad => VCC,
	cin => \GCD_ENT|Add1~7\,
	combout => \GCD_ENT|Add1~8_combout\,
	cout => \GCD_ENT|Add1~9\);

-- Location: LCCOMB_X22_Y26_N14
\GCD_ENT|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Add1~10_combout\ = (\GCD_ENT|tmp_y\(5) & ((\GCD_ENT|tmp_x\(5) & (!\GCD_ENT|Add1~9\)) # (!\GCD_ENT|tmp_x\(5) & ((\GCD_ENT|Add1~9\) # (GND))))) # (!\GCD_ENT|tmp_y\(5) & ((\GCD_ENT|tmp_x\(5) & (\GCD_ENT|Add1~9\ & VCC)) # (!\GCD_ENT|tmp_x\(5) & 
-- (!\GCD_ENT|Add1~9\))))
-- \GCD_ENT|Add1~11\ = CARRY((\GCD_ENT|tmp_y\(5) & ((!\GCD_ENT|Add1~9\) # (!\GCD_ENT|tmp_x\(5)))) # (!\GCD_ENT|tmp_y\(5) & (!\GCD_ENT|tmp_x\(5) & !\GCD_ENT|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_y\(5),
	datab => \GCD_ENT|tmp_x\(5),
	datad => VCC,
	cin => \GCD_ENT|Add1~9\,
	combout => \GCD_ENT|Add1~10_combout\,
	cout => \GCD_ENT|Add1~11\);

-- Location: LCCOMB_X22_Y26_N24
\GCD_ENT|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Selector5~0_combout\ = (\GCD_ENT|Add1~10_combout\ & \GCD_ENT|state.LOOP_BODY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GCD_ENT|Add1~10_combout\,
	datad => \GCD_ENT|state.LOOP_BODY~q\,
	combout => \GCD_ENT|Selector5~0_combout\);

-- Location: LCCOMB_X23_Y26_N8
\GCD_ENT|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Selector3~0_combout\ = (\GCD_ENT|state.LOOP_BODY~q\ & ((!\GCD_ENT|LessThan0~14_combout\))) # (!\GCD_ENT|state.LOOP_BODY~q\ & (\GCD_ENT|state.INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|state.LOOP_BODY~q\,
	datab => \GCD_ENT|state.INIT~q\,
	datad => \GCD_ENT|LessThan0~14_combout\,
	combout => \GCD_ENT|Selector3~0_combout\);

-- Location: FF_X23_Y26_N13
\GCD_ENT|tmp_x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \GCD_ENT|Selector5~0_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	sload => VCC,
	ena => \GCD_ENT|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|tmp_x\(5));

-- Location: LCCOMB_X24_Y26_N18
\GCD_ENT|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Add0~8_combout\ = ((\GCD_ENT|tmp_x\(4) $ (\GCD_ENT|tmp_y\(4) $ (\GCD_ENT|Add0~7\)))) # (GND)
-- \GCD_ENT|Add0~9\ = CARRY((\GCD_ENT|tmp_x\(4) & (\GCD_ENT|tmp_y\(4) & !\GCD_ENT|Add0~7\)) # (!\GCD_ENT|tmp_x\(4) & ((\GCD_ENT|tmp_y\(4)) # (!\GCD_ENT|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_x\(4),
	datab => \GCD_ENT|tmp_y\(4),
	datad => VCC,
	cin => \GCD_ENT|Add0~7\,
	combout => \GCD_ENT|Add0~8_combout\,
	cout => \GCD_ENT|Add0~9\);

-- Location: LCCOMB_X24_Y26_N20
\GCD_ENT|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Add0~10_combout\ = (\GCD_ENT|tmp_x\(5) & ((\GCD_ENT|tmp_y\(5) & (!\GCD_ENT|Add0~9\)) # (!\GCD_ENT|tmp_y\(5) & ((\GCD_ENT|Add0~9\) # (GND))))) # (!\GCD_ENT|tmp_x\(5) & ((\GCD_ENT|tmp_y\(5) & (\GCD_ENT|Add0~9\ & VCC)) # (!\GCD_ENT|tmp_y\(5) & 
-- (!\GCD_ENT|Add0~9\))))
-- \GCD_ENT|Add0~11\ = CARRY((\GCD_ENT|tmp_x\(5) & ((!\GCD_ENT|Add0~9\) # (!\GCD_ENT|tmp_y\(5)))) # (!\GCD_ENT|tmp_x\(5) & (!\GCD_ENT|tmp_y\(5) & !\GCD_ENT|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_x\(5),
	datab => \GCD_ENT|tmp_y\(5),
	datad => VCC,
	cin => \GCD_ENT|Add0~9\,
	combout => \GCD_ENT|Add0~10_combout\,
	cout => \GCD_ENT|Add0~11\);

-- Location: LCCOMB_X24_Y26_N30
\GCD_ENT|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Selector13~0_combout\ = (\GCD_ENT|state.LOOP_BODY~q\ & \GCD_ENT|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GCD_ENT|state.LOOP_BODY~q\,
	datad => \GCD_ENT|Add0~10_combout\,
	combout => \GCD_ENT|Selector13~0_combout\);

-- Location: FF_X23_Y26_N7
\GCD_ENT|tmp_y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \GCD_ENT|Selector13~0_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	sload => VCC,
	ena => \GCD_ENT|tmp_y[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|tmp_y\(5));

-- Location: LCCOMB_X22_Y26_N16
\GCD_ENT|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Add1~12_combout\ = ((\GCD_ENT|tmp_y\(6) $ (\GCD_ENT|tmp_x\(6) $ (\GCD_ENT|Add1~11\)))) # (GND)
-- \GCD_ENT|Add1~13\ = CARRY((\GCD_ENT|tmp_y\(6) & (\GCD_ENT|tmp_x\(6) & !\GCD_ENT|Add1~11\)) # (!\GCD_ENT|tmp_y\(6) & ((\GCD_ENT|tmp_x\(6)) # (!\GCD_ENT|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_y\(6),
	datab => \GCD_ENT|tmp_x\(6),
	datad => VCC,
	cin => \GCD_ENT|Add1~11\,
	combout => \GCD_ENT|Add1~12_combout\,
	cout => \GCD_ENT|Add1~13\);

-- Location: LCCOMB_X22_Y26_N26
\GCD_ENT|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Selector4~0_combout\ = (\GCD_ENT|state.LOOP_BODY~q\ & \GCD_ENT|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GCD_ENT|state.LOOP_BODY~q\,
	datad => \GCD_ENT|Add1~12_combout\,
	combout => \GCD_ENT|Selector4~0_combout\);

-- Location: FF_X23_Y26_N9
\GCD_ENT|tmp_x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \GCD_ENT|Selector4~0_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	sload => VCC,
	ena => \GCD_ENT|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|tmp_x\(6));

-- Location: LCCOMB_X24_Y26_N22
\GCD_ENT|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Add0~12_combout\ = ((\GCD_ENT|tmp_y\(6) $ (\GCD_ENT|tmp_x\(6) $ (\GCD_ENT|Add0~11\)))) # (GND)
-- \GCD_ENT|Add0~13\ = CARRY((\GCD_ENT|tmp_y\(6) & ((!\GCD_ENT|Add0~11\) # (!\GCD_ENT|tmp_x\(6)))) # (!\GCD_ENT|tmp_y\(6) & (!\GCD_ENT|tmp_x\(6) & !\GCD_ENT|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_y\(6),
	datab => \GCD_ENT|tmp_x\(6),
	datad => VCC,
	cin => \GCD_ENT|Add0~11\,
	combout => \GCD_ENT|Add0~12_combout\,
	cout => \GCD_ENT|Add0~13\);

-- Location: LCCOMB_X24_Y26_N8
\GCD_ENT|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Selector12~0_combout\ = (\GCD_ENT|state.LOOP_BODY~q\ & \GCD_ENT|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|state.LOOP_BODY~q\,
	datac => \GCD_ENT|Add0~12_combout\,
	combout => \GCD_ENT|Selector12~0_combout\);

-- Location: FF_X23_Y26_N15
\GCD_ENT|tmp_y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \GCD_ENT|Selector12~0_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	sload => VCC,
	ena => \GCD_ENT|tmp_y[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|tmp_y\(6));

-- Location: LCCOMB_X22_Y26_N18
\GCD_ENT|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Add1~14_combout\ = \GCD_ENT|tmp_x\(7) $ (\GCD_ENT|Add1~13\ $ (!\GCD_ENT|tmp_y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GCD_ENT|tmp_x\(7),
	datad => \GCD_ENT|tmp_y\(7),
	cin => \GCD_ENT|Add1~13\,
	combout => \GCD_ENT|Add1~14_combout\);

-- Location: LCCOMB_X23_Y26_N10
\GCD_ENT|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Selector3~1_combout\ = (\GCD_ENT|state.LOOP_BODY~q\ & \GCD_ENT|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|state.LOOP_BODY~q\,
	datad => \GCD_ENT|Add1~14_combout\,
	combout => \GCD_ENT|Selector3~1_combout\);

-- Location: FF_X23_Y26_N11
\GCD_ENT|tmp_x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \GCD_ENT|Selector3~1_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	ena => \GCD_ENT|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|tmp_x\(7));

-- Location: LCCOMB_X24_Y26_N24
\GCD_ENT|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Add0~14_combout\ = \GCD_ENT|tmp_y\(7) $ (\GCD_ENT|Add0~13\ $ (!\GCD_ENT|tmp_x\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GCD_ENT|tmp_y\(7),
	datad => \GCD_ENT|tmp_x\(7),
	cin => \GCD_ENT|Add0~13\,
	combout => \GCD_ENT|Add0~14_combout\);

-- Location: LCCOMB_X24_Y26_N28
\GCD_ENT|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Selector11~0_combout\ = (\GCD_ENT|state.LOOP_BODY~q\ & \GCD_ENT|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GCD_ENT|state.LOOP_BODY~q\,
	datad => \GCD_ENT|Add0~14_combout\,
	combout => \GCD_ENT|Selector11~0_combout\);

-- Location: FF_X24_Y26_N29
\GCD_ENT|tmp_y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \GCD_ENT|Selector11~0_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	ena => \GCD_ENT|tmp_y[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|tmp_y\(7));

-- Location: LCCOMB_X23_Y26_N12
\GCD_ENT|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|LessThan0~1_cout\ = CARRY((\GCD_ENT|tmp_y\(0) & !\GCD_ENT|tmp_x\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_y\(0),
	datab => \GCD_ENT|tmp_x\(0),
	datad => VCC,
	cout => \GCD_ENT|LessThan0~1_cout\);

-- Location: LCCOMB_X23_Y26_N14
\GCD_ENT|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|LessThan0~3_cout\ = CARRY((\GCD_ENT|tmp_x\(1) & ((!\GCD_ENT|LessThan0~1_cout\) # (!\GCD_ENT|tmp_y\(1)))) # (!\GCD_ENT|tmp_x\(1) & (!\GCD_ENT|tmp_y\(1) & !\GCD_ENT|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_x\(1),
	datab => \GCD_ENT|tmp_y\(1),
	datad => VCC,
	cin => \GCD_ENT|LessThan0~1_cout\,
	cout => \GCD_ENT|LessThan0~3_cout\);

-- Location: LCCOMB_X23_Y26_N16
\GCD_ENT|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|LessThan0~5_cout\ = CARRY((\GCD_ENT|tmp_y\(2) & ((!\GCD_ENT|LessThan0~3_cout\) # (!\GCD_ENT|tmp_x\(2)))) # (!\GCD_ENT|tmp_y\(2) & (!\GCD_ENT|tmp_x\(2) & !\GCD_ENT|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_y\(2),
	datab => \GCD_ENT|tmp_x\(2),
	datad => VCC,
	cin => \GCD_ENT|LessThan0~3_cout\,
	cout => \GCD_ENT|LessThan0~5_cout\);

-- Location: LCCOMB_X23_Y26_N18
\GCD_ENT|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|LessThan0~7_cout\ = CARRY((\GCD_ENT|tmp_y\(3) & (\GCD_ENT|tmp_x\(3) & !\GCD_ENT|LessThan0~5_cout\)) # (!\GCD_ENT|tmp_y\(3) & ((\GCD_ENT|tmp_x\(3)) # (!\GCD_ENT|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_y\(3),
	datab => \GCD_ENT|tmp_x\(3),
	datad => VCC,
	cin => \GCD_ENT|LessThan0~5_cout\,
	cout => \GCD_ENT|LessThan0~7_cout\);

-- Location: LCCOMB_X23_Y26_N20
\GCD_ENT|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|LessThan0~9_cout\ = CARRY((\GCD_ENT|tmp_x\(4) & (\GCD_ENT|tmp_y\(4) & !\GCD_ENT|LessThan0~7_cout\)) # (!\GCD_ENT|tmp_x\(4) & ((\GCD_ENT|tmp_y\(4)) # (!\GCD_ENT|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_x\(4),
	datab => \GCD_ENT|tmp_y\(4),
	datad => VCC,
	cin => \GCD_ENT|LessThan0~7_cout\,
	cout => \GCD_ENT|LessThan0~9_cout\);

-- Location: LCCOMB_X23_Y26_N22
\GCD_ENT|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|LessThan0~11_cout\ = CARRY((\GCD_ENT|tmp_x\(5) & ((!\GCD_ENT|LessThan0~9_cout\) # (!\GCD_ENT|tmp_y\(5)))) # (!\GCD_ENT|tmp_x\(5) & (!\GCD_ENT|tmp_y\(5) & !\GCD_ENT|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_x\(5),
	datab => \GCD_ENT|tmp_y\(5),
	datad => VCC,
	cin => \GCD_ENT|LessThan0~9_cout\,
	cout => \GCD_ENT|LessThan0~11_cout\);

-- Location: LCCOMB_X23_Y26_N24
\GCD_ENT|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|LessThan0~13_cout\ = CARRY((\GCD_ENT|tmp_x\(6) & (\GCD_ENT|tmp_y\(6) & !\GCD_ENT|LessThan0~11_cout\)) # (!\GCD_ENT|tmp_x\(6) & ((\GCD_ENT|tmp_y\(6)) # (!\GCD_ENT|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_x\(6),
	datab => \GCD_ENT|tmp_y\(6),
	datad => VCC,
	cin => \GCD_ENT|LessThan0~11_cout\,
	cout => \GCD_ENT|LessThan0~13_cout\);

-- Location: LCCOMB_X23_Y26_N26
\GCD_ENT|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|LessThan0~14_combout\ = (\GCD_ENT|tmp_y\(7) & ((\GCD_ENT|LessThan0~13_cout\) # (!\GCD_ENT|tmp_x\(7)))) # (!\GCD_ENT|tmp_y\(7) & (\GCD_ENT|LessThan0~13_cout\ & !\GCD_ENT|tmp_x\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_y\(7),
	datad => \GCD_ENT|tmp_x\(7),
	cin => \GCD_ENT|LessThan0~13_cout\,
	combout => \GCD_ENT|LessThan0~14_combout\);

-- Location: LCCOMB_X23_Y26_N6
\GCD_ENT|tmp_y[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|tmp_y[4]~0_combout\ = (\GCD_ENT|state.LOOP_BODY~q\ & ((\GCD_ENT|LessThan0~14_combout\))) # (!\GCD_ENT|state.LOOP_BODY~q\ & (\GCD_ENT|state.INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|state.LOOP_BODY~q\,
	datab => \GCD_ENT|state.INIT~q\,
	datad => \GCD_ENT|LessThan0~14_combout\,
	combout => \GCD_ENT|tmp_y[4]~0_combout\);

-- Location: FF_X23_Y26_N1
\GCD_ENT|tmp_y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \GCD_ENT|Selector18~0_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	ena => \GCD_ENT|tmp_y[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|tmp_y\(0));

-- Location: LCCOMB_X22_Y26_N4
\GCD_ENT|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Add1~0_combout\ = (\GCD_ENT|tmp_x\(0) & ((GND) # (!\GCD_ENT|tmp_y\(0)))) # (!\GCD_ENT|tmp_x\(0) & (\GCD_ENT|tmp_y\(0) $ (GND)))
-- \GCD_ENT|Add1~1\ = CARRY((\GCD_ENT|tmp_x\(0)) # (!\GCD_ENT|tmp_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_x\(0),
	datab => \GCD_ENT|tmp_y\(0),
	datad => VCC,
	combout => \GCD_ENT|Add1~0_combout\,
	cout => \GCD_ENT|Add1~1\);

-- Location: LCCOMB_X22_Y26_N20
\GCD_ENT|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Selector10~0_combout\ = (\GCD_ENT|state.LOOP_BODY~q\ & ((\GCD_ENT|Add1~0_combout\))) # (!\GCD_ENT|state.LOOP_BODY~q\ & (\switch[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[5]~input_o\,
	datac => \GCD_ENT|Add1~0_combout\,
	datad => \GCD_ENT|state.LOOP_BODY~q\,
	combout => \GCD_ENT|Selector10~0_combout\);

-- Location: LCCOMB_X22_Y26_N2
\GCD_ENT|tmp_x[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|tmp_x[4]~0_combout\ = (\GCD_ENT|state.LOOP_BODY~q\ & ((!\GCD_ENT|LessThan0~14_combout\))) # (!\GCD_ENT|state.LOOP_BODY~q\ & (\GCD_ENT|state.INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GCD_ENT|state.LOOP_BODY~q\,
	datac => \GCD_ENT|state.INIT~q\,
	datad => \GCD_ENT|LessThan0~14_combout\,
	combout => \GCD_ENT|tmp_x[4]~0_combout\);

-- Location: FF_X22_Y26_N21
\GCD_ENT|tmp_x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \GCD_ENT|Selector10~0_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	ena => \GCD_ENT|tmp_x[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|tmp_x\(0));

-- Location: LCCOMB_X22_Y26_N22
\GCD_ENT|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Selector9~0_combout\ = (\GCD_ENT|state.LOOP_BODY~q\ & ((\GCD_ENT|Add1~2_combout\))) # (!\GCD_ENT|state.LOOP_BODY~q\ & (\switch[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GCD_ENT|state.LOOP_BODY~q\,
	datac => \switch[6]~input_o\,
	datad => \GCD_ENT|Add1~2_combout\,
	combout => \GCD_ENT|Selector9~0_combout\);

-- Location: FF_X22_Y26_N23
\GCD_ENT|tmp_x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \GCD_ENT|Selector9~0_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	ena => \GCD_ENT|tmp_x[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|tmp_x\(1));

-- Location: LCCOMB_X24_Y26_N12
\GCD_ENT|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Add0~2_combout\ = (\GCD_ENT|tmp_y\(1) & ((\GCD_ENT|tmp_x\(1) & (!\GCD_ENT|Add0~1\)) # (!\GCD_ENT|tmp_x\(1) & (\GCD_ENT|Add0~1\ & VCC)))) # (!\GCD_ENT|tmp_y\(1) & ((\GCD_ENT|tmp_x\(1) & ((\GCD_ENT|Add0~1\) # (GND))) # (!\GCD_ENT|tmp_x\(1) & 
-- (!\GCD_ENT|Add0~1\))))
-- \GCD_ENT|Add0~3\ = CARRY((\GCD_ENT|tmp_y\(1) & (\GCD_ENT|tmp_x\(1) & !\GCD_ENT|Add0~1\)) # (!\GCD_ENT|tmp_y\(1) & ((\GCD_ENT|tmp_x\(1)) # (!\GCD_ENT|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_y\(1),
	datab => \GCD_ENT|tmp_x\(1),
	datad => VCC,
	cin => \GCD_ENT|Add0~1\,
	combout => \GCD_ENT|Add0~2_combout\,
	cout => \GCD_ENT|Add0~3\);

-- Location: IOIBUF_X0_Y27_N1
\switch[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(1),
	o => \switch[1]~input_o\);

-- Location: LCCOMB_X23_Y26_N2
\GCD_ENT|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Selector17~0_combout\ = (\GCD_ENT|state.LOOP_BODY~q\ & (\GCD_ENT|Add0~2_combout\)) # (!\GCD_ENT|state.LOOP_BODY~q\ & ((\switch[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|state.LOOP_BODY~q\,
	datac => \GCD_ENT|Add0~2_combout\,
	datad => \switch[1]~input_o\,
	combout => \GCD_ENT|Selector17~0_combout\);

-- Location: FF_X23_Y26_N3
\GCD_ENT|tmp_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \GCD_ENT|Selector17~0_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	ena => \GCD_ENT|tmp_y[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|tmp_y\(1));

-- Location: LCCOMB_X24_Y26_N14
\GCD_ENT|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Add0~4_combout\ = ((\GCD_ENT|tmp_x\(2) $ (\GCD_ENT|tmp_y\(2) $ (\GCD_ENT|Add0~3\)))) # (GND)
-- \GCD_ENT|Add0~5\ = CARRY((\GCD_ENT|tmp_x\(2) & (\GCD_ENT|tmp_y\(2) & !\GCD_ENT|Add0~3\)) # (!\GCD_ENT|tmp_x\(2) & ((\GCD_ENT|tmp_y\(2)) # (!\GCD_ENT|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_x\(2),
	datab => \GCD_ENT|tmp_y\(2),
	datad => VCC,
	cin => \GCD_ENT|Add0~3\,
	combout => \GCD_ENT|Add0~4_combout\,
	cout => \GCD_ENT|Add0~5\);

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

-- Location: LCCOMB_X23_Y26_N28
\GCD_ENT|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Selector16~0_combout\ = (\GCD_ENT|state.LOOP_BODY~q\ & (\GCD_ENT|Add0~4_combout\)) # (!\GCD_ENT|state.LOOP_BODY~q\ & ((\switch[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|state.LOOP_BODY~q\,
	datac => \GCD_ENT|Add0~4_combout\,
	datad => \switch[2]~input_o\,
	combout => \GCD_ENT|Selector16~0_combout\);

-- Location: FF_X23_Y26_N29
\GCD_ENT|tmp_y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \GCD_ENT|Selector16~0_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	ena => \GCD_ENT|tmp_y[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|tmp_y\(2));

-- Location: LCCOMB_X22_Y26_N28
\GCD_ENT|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Selector8~0_combout\ = (\GCD_ENT|state.LOOP_BODY~q\ & ((\GCD_ENT|Add1~4_combout\))) # (!\GCD_ENT|state.LOOP_BODY~q\ & (\switch[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[7]~input_o\,
	datac => \GCD_ENT|Add1~4_combout\,
	datad => \GCD_ENT|state.LOOP_BODY~q\,
	combout => \GCD_ENT|Selector8~0_combout\);

-- Location: FF_X22_Y26_N29
\GCD_ENT|tmp_x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \GCD_ENT|Selector8~0_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	ena => \GCD_ENT|tmp_x[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|tmp_x\(2));

-- Location: LCCOMB_X24_Y26_N16
\GCD_ENT|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Add0~6_combout\ = (\GCD_ENT|tmp_x\(3) & ((\GCD_ENT|tmp_y\(3) & (!\GCD_ENT|Add0~5\)) # (!\GCD_ENT|tmp_y\(3) & ((\GCD_ENT|Add0~5\) # (GND))))) # (!\GCD_ENT|tmp_x\(3) & ((\GCD_ENT|tmp_y\(3) & (\GCD_ENT|Add0~5\ & VCC)) # (!\GCD_ENT|tmp_y\(3) & 
-- (!\GCD_ENT|Add0~5\))))
-- \GCD_ENT|Add0~7\ = CARRY((\GCD_ENT|tmp_x\(3) & ((!\GCD_ENT|Add0~5\) # (!\GCD_ENT|tmp_y\(3)))) # (!\GCD_ENT|tmp_x\(3) & (!\GCD_ENT|tmp_y\(3) & !\GCD_ENT|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_x\(3),
	datab => \GCD_ENT|tmp_y\(3),
	datad => VCC,
	cin => \GCD_ENT|Add0~5\,
	combout => \GCD_ENT|Add0~6_combout\,
	cout => \GCD_ENT|Add0~7\);

-- Location: LCCOMB_X23_Y26_N30
\GCD_ENT|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Selector15~0_combout\ = (\GCD_ENT|state.LOOP_BODY~q\ & ((\GCD_ENT|Add0~6_combout\))) # (!\GCD_ENT|state.LOOP_BODY~q\ & (\switch[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|state.LOOP_BODY~q\,
	datab => \switch[3]~input_o\,
	datad => \GCD_ENT|Add0~6_combout\,
	combout => \GCD_ENT|Selector15~0_combout\);

-- Location: FF_X23_Y26_N31
\GCD_ENT|tmp_y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \GCD_ENT|Selector15~0_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	ena => \GCD_ENT|tmp_y[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|tmp_y\(3));

-- Location: LCCOMB_X23_Y26_N4
\GCD_ENT|Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Selector14~0_combout\ = (\GCD_ENT|state.LOOP_BODY~q\ & ((\GCD_ENT|Add0~8_combout\))) # (!\GCD_ENT|state.LOOP_BODY~q\ & (\switch[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[4]~input_o\,
	datac => \GCD_ENT|state.LOOP_BODY~q\,
	datad => \GCD_ENT|Add0~8_combout\,
	combout => \GCD_ENT|Selector14~0_combout\);

-- Location: FF_X23_Y26_N5
\GCD_ENT|tmp_y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \GCD_ENT|Selector14~0_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	ena => \GCD_ENT|tmp_y[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|tmp_y\(4));

-- Location: LCCOMB_X22_Y26_N0
\GCD_ENT|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Selector6~0_combout\ = (\GCD_ENT|state.LOOP_BODY~q\ & ((\GCD_ENT|Add1~8_combout\))) # (!\GCD_ENT|state.LOOP_BODY~q\ & (\switch[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GCD_ENT|state.LOOP_BODY~q\,
	datac => \switch[9]~input_o\,
	datad => \GCD_ENT|Add1~8_combout\,
	combout => \GCD_ENT|Selector6~0_combout\);

-- Location: FF_X22_Y26_N1
\GCD_ENT|tmp_x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \GCD_ENT|Selector6~0_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	ena => \GCD_ENT|tmp_x[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|tmp_x\(4));

-- Location: LCCOMB_X24_Y26_N26
\GCD_ENT|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Equal0~2_combout\ = (\GCD_ENT|tmp_x\(4) & (\GCD_ENT|tmp_y\(4) & (\GCD_ENT|tmp_y\(5) $ (!\GCD_ENT|tmp_x\(5))))) # (!\GCD_ENT|tmp_x\(4) & (!\GCD_ENT|tmp_y\(4) & (\GCD_ENT|tmp_y\(5) $ (!\GCD_ENT|tmp_x\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_x\(4),
	datab => \GCD_ENT|tmp_y\(5),
	datac => \GCD_ENT|tmp_y\(4),
	datad => \GCD_ENT|tmp_x\(5),
	combout => \GCD_ENT|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y26_N2
\GCD_ENT|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Equal0~0_combout\ = (\GCD_ENT|tmp_y\(1) & (\GCD_ENT|tmp_x\(1) & (\GCD_ENT|tmp_y\(0) $ (!\GCD_ENT|tmp_x\(0))))) # (!\GCD_ENT|tmp_y\(1) & (!\GCD_ENT|tmp_x\(1) & (\GCD_ENT|tmp_y\(0) $ (!\GCD_ENT|tmp_x\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_y\(1),
	datab => \GCD_ENT|tmp_y\(0),
	datac => \GCD_ENT|tmp_x\(0),
	datad => \GCD_ENT|tmp_x\(1),
	combout => \GCD_ENT|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y26_N4
\GCD_ENT|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Equal0~3_combout\ = (\GCD_ENT|tmp_x\(7) & (\GCD_ENT|tmp_y\(7) & (\GCD_ENT|tmp_x\(6) $ (!\GCD_ENT|tmp_y\(6))))) # (!\GCD_ENT|tmp_x\(7) & (!\GCD_ENT|tmp_y\(7) & (\GCD_ENT|tmp_x\(6) $ (!\GCD_ENT|tmp_y\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_x\(7),
	datab => \GCD_ENT|tmp_y\(7),
	datac => \GCD_ENT|tmp_x\(6),
	datad => \GCD_ENT|tmp_y\(6),
	combout => \GCD_ENT|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y26_N0
\GCD_ENT|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Equal0~1_combout\ = (\GCD_ENT|tmp_x\(2) & (\GCD_ENT|tmp_y\(2) & (\GCD_ENT|tmp_x\(3) $ (!\GCD_ENT|tmp_y\(3))))) # (!\GCD_ENT|tmp_x\(2) & (!\GCD_ENT|tmp_y\(2) & (\GCD_ENT|tmp_x\(3) $ (!\GCD_ENT|tmp_y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|tmp_x\(2),
	datab => \GCD_ENT|tmp_y\(2),
	datac => \GCD_ENT|tmp_x\(3),
	datad => \GCD_ENT|tmp_y\(3),
	combout => \GCD_ENT|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y26_N6
\GCD_ENT|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Equal0~4_combout\ = (\GCD_ENT|Equal0~2_combout\ & (\GCD_ENT|Equal0~0_combout\ & (\GCD_ENT|Equal0~3_combout\ & \GCD_ENT|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|Equal0~2_combout\,
	datab => \GCD_ENT|Equal0~0_combout\,
	datac => \GCD_ENT|Equal0~3_combout\,
	datad => \GCD_ENT|Equal0~1_combout\,
	combout => \GCD_ENT|Equal0~4_combout\);

-- Location: LCCOMB_X21_Y26_N6
\GCD_ENT|state~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|state~11_combout\ = (\GCD_ENT|state.LOOP_COND~q\ & \GCD_ENT|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GCD_ENT|state.LOOP_COND~q\,
	datad => \GCD_ENT|Equal0~4_combout\,
	combout => \GCD_ENT|state~11_combout\);

-- Location: FF_X21_Y26_N7
\GCD_ENT|state.OUTPUT_RESULT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \GCD_ENT|state~11_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|state.OUTPUT_RESULT~q\);

-- Location: LCCOMB_X21_Y26_N16
\GCD_ENT|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Selector1~0_combout\ = (\GCD_ENT|state.OUTPUT_RESULT~q\) # ((\button[2]~input_o\ & \GCD_ENT|state.WAIT_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datac => \GCD_ENT|state.WAIT_0~q\,
	datad => \GCD_ENT|state.OUTPUT_RESULT~q\,
	combout => \GCD_ENT|Selector1~0_combout\);

-- Location: FF_X21_Y26_N17
\GCD_ENT|state.WAIT_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \GCD_ENT|Selector1~0_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|state.WAIT_0~q\);

-- Location: LCCOMB_X21_Y26_N10
\GCD_ENT|state.START~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|state.START~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \GCD_ENT|state.START~feeder_combout\);

-- Location: FF_X21_Y26_N11
\GCD_ENT|state.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \GCD_ENT|state.START~feeder_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|state.START~q\);

-- Location: LCCOMB_X21_Y26_N22
\GCD_ENT|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Selector2~0_combout\ = (!\button[2]~input_o\ & ((\GCD_ENT|state.WAIT_0~q\) # ((\GCD_ENT|state.WAIT_1~q\) # (!\GCD_ENT|state.START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \GCD_ENT|state.WAIT_0~q\,
	datac => \GCD_ENT|state.WAIT_1~q\,
	datad => \GCD_ENT|state.START~q\,
	combout => \GCD_ENT|Selector2~0_combout\);

-- Location: FF_X21_Y26_N23
\GCD_ENT|state.WAIT_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \GCD_ENT|Selector2~0_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|state.WAIT_1~q\);

-- Location: LCCOMB_X21_Y26_N2
\GCD_ENT|state~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|state~13_combout\ = (\button[2]~input_o\ & ((\GCD_ENT|state.WAIT_1~q\) # (!\GCD_ENT|state.START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datac => \GCD_ENT|state.WAIT_1~q\,
	datad => \GCD_ENT|state.START~q\,
	combout => \GCD_ENT|state~13_combout\);

-- Location: FF_X21_Y26_N3
\GCD_ENT|state.INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \GCD_ENT|state~13_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|state.INIT~q\);

-- Location: LCCOMB_X21_Y26_N0
\GCD_ENT|state~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|state~14_combout\ = (\GCD_ENT|state.LOOP_BODY~q\) # (\GCD_ENT|state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GCD_ENT|state.LOOP_BODY~q\,
	datad => \GCD_ENT|state.INIT~q\,
	combout => \GCD_ENT|state~14_combout\);

-- Location: FF_X21_Y26_N1
\GCD_ENT|state.LOOP_COND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \GCD_ENT|state~14_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|state.LOOP_COND~q\);

-- Location: LCCOMB_X21_Y26_N20
\GCD_ENT|state~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|state~12_combout\ = (\GCD_ENT|state.LOOP_COND~q\ & !\GCD_ENT|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GCD_ENT|state.LOOP_COND~q\,
	datad => \GCD_ENT|Equal0~4_combout\,
	combout => \GCD_ENT|state~12_combout\);

-- Location: FF_X21_Y26_N21
\GCD_ENT|state.LOOP_BODY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \GCD_ENT|state~12_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|state.LOOP_BODY~q\);

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

-- Location: LCCOMB_X22_Y26_N30
\GCD_ENT|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Selector7~0_combout\ = (\GCD_ENT|state.LOOP_BODY~q\ & ((\GCD_ENT|Add1~6_combout\))) # (!\GCD_ENT|state.LOOP_BODY~q\ & (\switch[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GCD_ENT|state.LOOP_BODY~q\,
	datac => \switch[8]~input_o\,
	datad => \GCD_ENT|Add1~6_combout\,
	combout => \GCD_ENT|Selector7~0_combout\);

-- Location: FF_X22_Y26_N31
\GCD_ENT|tmp_x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \GCD_ENT|Selector7~0_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	ena => \GCD_ENT|tmp_x[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|tmp_x\(3));

-- Location: FF_X26_Y26_N31
\GCD_ENT|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \GCD_ENT|tmp_x\(3),
	clrn => \ALT_INV_button[1]~input_o\,
	sload => VCC,
	ena => \GCD_ENT|state.OUTPUT_RESULT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|output\(3));

-- Location: LCCOMB_X26_Y26_N4
\GCD_ENT|output[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|output[0]~feeder_combout\ = \GCD_ENT|tmp_x\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GCD_ENT|tmp_x\(0),
	combout => \GCD_ENT|output[0]~feeder_combout\);

-- Location: FF_X26_Y26_N5
\GCD_ENT|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \GCD_ENT|output[0]~feeder_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	ena => \GCD_ENT|state.OUTPUT_RESULT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|output\(0));

-- Location: LCCOMB_X26_Y26_N26
\GCD_ENT|output[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|output[1]~feeder_combout\ = \GCD_ENT|tmp_x\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GCD_ENT|tmp_x\(1),
	combout => \GCD_ENT|output[1]~feeder_combout\);

-- Location: FF_X26_Y26_N27
\GCD_ENT|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \GCD_ENT|output[1]~feeder_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	ena => \GCD_ENT|state.OUTPUT_RESULT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|output\(1));

-- Location: FF_X26_Y26_N21
\GCD_ENT|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \GCD_ENT|tmp_x\(2),
	clrn => \ALT_INV_button[1]~input_o\,
	sload => VCC,
	ena => \GCD_ENT|state.OUTPUT_RESULT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|output\(2));

-- Location: LCCOMB_X26_Y26_N0
\U_LED2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux6~0_combout\ = (\GCD_ENT|output\(0) & ((\GCD_ENT|output\(3)) # (\GCD_ENT|output\(1) $ (\GCD_ENT|output\(2))))) # (!\GCD_ENT|output\(0) & ((\GCD_ENT|output\(1)) # (\GCD_ENT|output\(3) $ (\GCD_ENT|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|output\(3),
	datab => \GCD_ENT|output\(0),
	datac => \GCD_ENT|output\(1),
	datad => \GCD_ENT|output\(2),
	combout => \U_LED2|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y26_N22
\U_LED2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux5~0_combout\ = (\GCD_ENT|output\(0) & (\GCD_ENT|output\(3) $ (((\GCD_ENT|output\(1)) # (!\GCD_ENT|output\(2)))))) # (!\GCD_ENT|output\(0) & (!\GCD_ENT|output\(3) & (\GCD_ENT|output\(1) & !\GCD_ENT|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|output\(3),
	datab => \GCD_ENT|output\(0),
	datac => \GCD_ENT|output\(1),
	datad => \GCD_ENT|output\(2),
	combout => \U_LED2|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y26_N16
\U_LED2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux4~0_combout\ = (\GCD_ENT|output\(1) & (!\GCD_ENT|output\(3) & (\GCD_ENT|output\(0)))) # (!\GCD_ENT|output\(1) & ((\GCD_ENT|output\(2) & (!\GCD_ENT|output\(3))) # (!\GCD_ENT|output\(2) & ((\GCD_ENT|output\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|output\(3),
	datab => \GCD_ENT|output\(0),
	datac => \GCD_ENT|output\(1),
	datad => \GCD_ENT|output\(2),
	combout => \U_LED2|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y26_N2
\U_LED2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux3~0_combout\ = (\GCD_ENT|output\(0) & ((\GCD_ENT|output\(1) $ (!\GCD_ENT|output\(2))))) # (!\GCD_ENT|output\(0) & ((\GCD_ENT|output\(3) & (\GCD_ENT|output\(1) & !\GCD_ENT|output\(2))) # (!\GCD_ENT|output\(3) & (!\GCD_ENT|output\(1) & 
-- \GCD_ENT|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|output\(3),
	datab => \GCD_ENT|output\(0),
	datac => \GCD_ENT|output\(1),
	datad => \GCD_ENT|output\(2),
	combout => \U_LED2|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y26_N24
\U_LED2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux2~0_combout\ = (\GCD_ENT|output\(3) & (\GCD_ENT|output\(2) & ((\GCD_ENT|output\(1)) # (!\GCD_ENT|output\(0))))) # (!\GCD_ENT|output\(3) & (!\GCD_ENT|output\(0) & (\GCD_ENT|output\(1) & !\GCD_ENT|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|output\(3),
	datab => \GCD_ENT|output\(0),
	datac => \GCD_ENT|output\(1),
	datad => \GCD_ENT|output\(2),
	combout => \U_LED2|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y26_N20
\U_LED2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux1~0_combout\ = (\GCD_ENT|output\(3) & ((\GCD_ENT|output\(0) & ((\GCD_ENT|output\(1)))) # (!\GCD_ENT|output\(0) & (\GCD_ENT|output\(2))))) # (!\GCD_ENT|output\(3) & (\GCD_ENT|output\(2) & (\GCD_ENT|output\(0) $ (\GCD_ENT|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|output\(3),
	datab => \GCD_ENT|output\(0),
	datac => \GCD_ENT|output\(2),
	datad => \GCD_ENT|output\(1),
	combout => \U_LED2|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y26_N30
\U_LED2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux0~0_combout\ = (\GCD_ENT|output\(3) & (\GCD_ENT|output\(0) & (\GCD_ENT|output\(1) $ (\GCD_ENT|output\(2))))) # (!\GCD_ENT|output\(3) & (!\GCD_ENT|output\(1) & (\GCD_ENT|output\(0) $ (\GCD_ENT|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|output\(1),
	datab => \GCD_ENT|output\(0),
	datac => \GCD_ENT|output\(3),
	datad => \GCD_ENT|output\(2),
	combout => \U_LED2|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y26_N4
\GCD_ENT|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GCD_ENT|Selector0~0_combout\ = (\GCD_ENT|state.WAIT_0~q\) # ((\GCD_ENT|state.OUTPUT_RESULT~q\) # ((\GCD_ENT|state.START~q\ & \GCD_ENT|done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|state.START~q\,
	datab => \GCD_ENT|state.WAIT_0~q\,
	datac => \GCD_ENT|done~q\,
	datad => \GCD_ENT|state.OUTPUT_RESULT~q\,
	combout => \GCD_ENT|Selector0~0_combout\);

-- Location: FF_X21_Y26_N5
\GCD_ENT|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \GCD_ENT|Selector0~0_combout\,
	clrn => \ALT_INV_button[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|done~q\);

-- Location: FF_X26_Y26_N15
\GCD_ENT|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \GCD_ENT|tmp_x\(4),
	clrn => \ALT_INV_button[1]~input_o\,
	sload => VCC,
	ena => \GCD_ENT|state.OUTPUT_RESULT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|output\(4));

-- Location: FF_X26_Y26_N29
\GCD_ENT|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \GCD_ENT|tmp_x\(7),
	clrn => \ALT_INV_button[1]~input_o\,
	sload => VCC,
	ena => \GCD_ENT|state.OUTPUT_RESULT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|output\(7));

-- Location: FF_X26_Y26_N9
\GCD_ENT|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \GCD_ENT|tmp_x\(5),
	clrn => \ALT_INV_button[1]~input_o\,
	sload => VCC,
	ena => \GCD_ENT|state.OUTPUT_RESULT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|output\(5));

-- Location: FF_X26_Y26_N19
\GCD_ENT|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \GCD_ENT|tmp_x\(6),
	clrn => \ALT_INV_button[1]~input_o\,
	sload => VCC,
	ena => \GCD_ENT|state.OUTPUT_RESULT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GCD_ENT|output\(6));

-- Location: LCCOMB_X26_Y26_N10
\U_LED3|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux6~0_combout\ = (\GCD_ENT|output\(4) & ((\GCD_ENT|output\(7)) # (\GCD_ENT|output\(5) $ (\GCD_ENT|output\(6))))) # (!\GCD_ENT|output\(4) & ((\GCD_ENT|output\(5)) # (\GCD_ENT|output\(7) $ (\GCD_ENT|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|output\(4),
	datab => \GCD_ENT|output\(7),
	datac => \GCD_ENT|output\(5),
	datad => \GCD_ENT|output\(6),
	combout => \U_LED3|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y26_N12
\U_LED3|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux5~0_combout\ = (\GCD_ENT|output\(4) & (\GCD_ENT|output\(7) $ (((\GCD_ENT|output\(5)) # (!\GCD_ENT|output\(6)))))) # (!\GCD_ENT|output\(4) & (!\GCD_ENT|output\(7) & (\GCD_ENT|output\(5) & !\GCD_ENT|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|output\(4),
	datab => \GCD_ENT|output\(7),
	datac => \GCD_ENT|output\(5),
	datad => \GCD_ENT|output\(6),
	combout => \U_LED3|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y26_N6
\U_LED3|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux4~0_combout\ = (\GCD_ENT|output\(5) & (\GCD_ENT|output\(4) & (!\GCD_ENT|output\(7)))) # (!\GCD_ENT|output\(5) & ((\GCD_ENT|output\(6) & ((!\GCD_ENT|output\(7)))) # (!\GCD_ENT|output\(6) & (\GCD_ENT|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|output\(4),
	datab => \GCD_ENT|output\(7),
	datac => \GCD_ENT|output\(5),
	datad => \GCD_ENT|output\(6),
	combout => \U_LED3|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y26_N14
\U_LED3|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux3~0_combout\ = (\GCD_ENT|output\(4) & (\GCD_ENT|output\(5) $ (((!\GCD_ENT|output\(6)))))) # (!\GCD_ENT|output\(4) & ((\GCD_ENT|output\(5) & (\GCD_ENT|output\(7) & !\GCD_ENT|output\(6))) # (!\GCD_ENT|output\(5) & (!\GCD_ENT|output\(7) & 
-- \GCD_ENT|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|output\(5),
	datab => \GCD_ENT|output\(7),
	datac => \GCD_ENT|output\(4),
	datad => \GCD_ENT|output\(6),
	combout => \U_LED3|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y26_N8
\U_LED3|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux2~0_combout\ = (\GCD_ENT|output\(7) & (\GCD_ENT|output\(6) & ((\GCD_ENT|output\(5)) # (!\GCD_ENT|output\(4))))) # (!\GCD_ENT|output\(7) & (!\GCD_ENT|output\(4) & (\GCD_ENT|output\(5) & !\GCD_ENT|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|output\(4),
	datab => \GCD_ENT|output\(7),
	datac => \GCD_ENT|output\(5),
	datad => \GCD_ENT|output\(6),
	combout => \U_LED3|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y26_N18
\U_LED3|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux1~0_combout\ = (\GCD_ENT|output\(5) & ((\GCD_ENT|output\(4) & ((\GCD_ENT|output\(7)))) # (!\GCD_ENT|output\(4) & (\GCD_ENT|output\(6))))) # (!\GCD_ENT|output\(5) & (\GCD_ENT|output\(6) & (\GCD_ENT|output\(4) $ (\GCD_ENT|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|output\(4),
	datab => \GCD_ENT|output\(5),
	datac => \GCD_ENT|output\(6),
	datad => \GCD_ENT|output\(7),
	combout => \U_LED3|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y26_N28
\U_LED3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux0~0_combout\ = (\GCD_ENT|output\(7) & (\GCD_ENT|output\(4) & (\GCD_ENT|output\(5) $ (\GCD_ENT|output\(6))))) # (!\GCD_ENT|output\(7) & (!\GCD_ENT|output\(5) & (\GCD_ENT|output\(4) $ (\GCD_ENT|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GCD_ENT|output\(4),
	datab => \GCD_ENT|output\(5),
	datac => \GCD_ENT|output\(7),
	datad => \GCD_ENT|output\(6),
	combout => \U_LED3|Mux0~0_combout\);

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
END structure;


