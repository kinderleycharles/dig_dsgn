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

-- DATE "03/11/2016 21:31:22"

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
	rst : IN std_logic;
	button : IN std_logic_vector(2 DOWNTO 0);
	Horiz_Sync : BUFFER std_logic;
	Vert_Sync : BUFFER std_logic;
	rgb : BUFFER std_logic_vector(11 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- Horiz_Sync	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vert_Sync	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[3]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[4]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[5]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[6]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[7]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[8]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[9]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[10]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[11]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50MHz	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_rst : std_logic;
SIGNAL ww_button : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Horiz_Sync : std_logic;
SIGNAL ww_Vert_Sync : std_logic;
SIGNAL ww_rgb : std_logic_vector(11 DOWNTO 0);
SIGNAL \P_CLK|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \button[0]~input_o\ : std_logic;
SIGNAL \Horiz_Sync~output_o\ : std_logic;
SIGNAL \Vert_Sync~output_o\ : std_logic;
SIGNAL \rgb[0]~output_o\ : std_logic;
SIGNAL \rgb[1]~output_o\ : std_logic;
SIGNAL \rgb[2]~output_o\ : std_logic;
SIGNAL \rgb[3]~output_o\ : std_logic;
SIGNAL \rgb[4]~output_o\ : std_logic;
SIGNAL \rgb[5]~output_o\ : std_logic;
SIGNAL \rgb[6]~output_o\ : std_logic;
SIGNAL \rgb[7]~output_o\ : std_logic;
SIGNAL \rgb[8]~output_o\ : std_logic;
SIGNAL \rgb[9]~output_o\ : std_logic;
SIGNAL \rgb[10]~output_o\ : std_logic;
SIGNAL \rgb[11]~output_o\ : std_logic;
SIGNAL \clk50MHz~input_o\ : std_logic;
SIGNAL \clk50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \P_CLK|counter[0]~94_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \P_CLK|Equal0~1_combout\ : std_logic;
SIGNAL \P_CLK|counter[1]~32_combout\ : std_logic;
SIGNAL \P_CLK|counter[1]~feeder_combout\ : std_logic;
SIGNAL \P_CLK|Equal0~0_combout\ : std_logic;
SIGNAL \P_CLK|Equal0~2_combout\ : std_logic;
SIGNAL \P_CLK|Equal0~3_combout\ : std_logic;
SIGNAL \P_CLK|Equal0~4_combout\ : std_logic;
SIGNAL \P_CLK|counter~31_combout\ : std_logic;
SIGNAL \P_CLK|counter[1]~33\ : std_logic;
SIGNAL \P_CLK|counter[2]~34_combout\ : std_logic;
SIGNAL \P_CLK|counter[2]~35\ : std_logic;
SIGNAL \P_CLK|counter[3]~36_combout\ : std_logic;
SIGNAL \P_CLK|counter[3]~37\ : std_logic;
SIGNAL \P_CLK|counter[4]~38_combout\ : std_logic;
SIGNAL \P_CLK|counter[4]~39\ : std_logic;
SIGNAL \P_CLK|counter[5]~40_combout\ : std_logic;
SIGNAL \P_CLK|counter[5]~41\ : std_logic;
SIGNAL \P_CLK|counter[6]~42_combout\ : std_logic;
SIGNAL \P_CLK|counter[6]~43\ : std_logic;
SIGNAL \P_CLK|counter[7]~44_combout\ : std_logic;
SIGNAL \P_CLK|counter[7]~45\ : std_logic;
SIGNAL \P_CLK|counter[8]~46_combout\ : std_logic;
SIGNAL \P_CLK|counter[8]~47\ : std_logic;
SIGNAL \P_CLK|counter[9]~48_combout\ : std_logic;
SIGNAL \P_CLK|counter[9]~49\ : std_logic;
SIGNAL \P_CLK|counter[10]~50_combout\ : std_logic;
SIGNAL \P_CLK|counter[10]~51\ : std_logic;
SIGNAL \P_CLK|counter[11]~52_combout\ : std_logic;
SIGNAL \P_CLK|counter[11]~53\ : std_logic;
SIGNAL \P_CLK|counter[12]~54_combout\ : std_logic;
SIGNAL \P_CLK|counter[12]~55\ : std_logic;
SIGNAL \P_CLK|counter[13]~56_combout\ : std_logic;
SIGNAL \P_CLK|counter[13]~57\ : std_logic;
SIGNAL \P_CLK|counter[14]~58_combout\ : std_logic;
SIGNAL \P_CLK|counter[14]~59\ : std_logic;
SIGNAL \P_CLK|counter[15]~60_combout\ : std_logic;
SIGNAL \P_CLK|counter[15]~61\ : std_logic;
SIGNAL \P_CLK|counter[16]~62_combout\ : std_logic;
SIGNAL \P_CLK|counter[16]~63\ : std_logic;
SIGNAL \P_CLK|counter[17]~64_combout\ : std_logic;
SIGNAL \P_CLK|counter[17]~65\ : std_logic;
SIGNAL \P_CLK|counter[18]~66_combout\ : std_logic;
SIGNAL \P_CLK|counter[18]~67\ : std_logic;
SIGNAL \P_CLK|counter[19]~68_combout\ : std_logic;
SIGNAL \P_CLK|counter[19]~69\ : std_logic;
SIGNAL \P_CLK|counter[20]~70_combout\ : std_logic;
SIGNAL \P_CLK|counter[20]~71\ : std_logic;
SIGNAL \P_CLK|counter[21]~72_combout\ : std_logic;
SIGNAL \P_CLK|counter[21]~73\ : std_logic;
SIGNAL \P_CLK|counter[22]~74_combout\ : std_logic;
SIGNAL \P_CLK|counter[22]~75\ : std_logic;
SIGNAL \P_CLK|counter[23]~76_combout\ : std_logic;
SIGNAL \P_CLK|counter[23]~77\ : std_logic;
SIGNAL \P_CLK|counter[24]~78_combout\ : std_logic;
SIGNAL \P_CLK|counter[24]~79\ : std_logic;
SIGNAL \P_CLK|counter[25]~80_combout\ : std_logic;
SIGNAL \P_CLK|counter[25]~81\ : std_logic;
SIGNAL \P_CLK|counter[26]~82_combout\ : std_logic;
SIGNAL \P_CLK|counter[26]~83\ : std_logic;
SIGNAL \P_CLK|counter[27]~84_combout\ : std_logic;
SIGNAL \P_CLK|Equal0~7_combout\ : std_logic;
SIGNAL \P_CLK|Equal0~6_combout\ : std_logic;
SIGNAL \P_CLK|Equal0~5_combout\ : std_logic;
SIGNAL \P_CLK|counter[27]~85\ : std_logic;
SIGNAL \P_CLK|counter[28]~86_combout\ : std_logic;
SIGNAL \P_CLK|counter[28]~87\ : std_logic;
SIGNAL \P_CLK|counter[29]~88_combout\ : std_logic;
SIGNAL \P_CLK|counter[29]~89\ : std_logic;
SIGNAL \P_CLK|counter[30]~90_combout\ : std_logic;
SIGNAL \P_CLK|counter[30]~91\ : std_logic;
SIGNAL \P_CLK|counter[31]~92_combout\ : std_logic;
SIGNAL \P_CLK|Equal0~8_combout\ : std_logic;
SIGNAL \P_CLK|Equal0~9_combout\ : std_logic;
SIGNAL \P_CLK|tmp~0_combout\ : std_logic;
SIGNAL \P_CLK|tmp~feeder_combout\ : std_logic;
SIGNAL \P_CLK|tmp~q\ : std_logic;
SIGNAL \P_CLK|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \VGA_GEN|Add0~0_combout\ : std_logic;
SIGNAL \VGA_GEN|Add0~1\ : std_logic;
SIGNAL \VGA_GEN|Add0~2_combout\ : std_logic;
SIGNAL \VGA_GEN|Add0~3\ : std_logic;
SIGNAL \VGA_GEN|Add0~4_combout\ : std_logic;
SIGNAL \VGA_GEN|Add0~13\ : std_logic;
SIGNAL \VGA_GEN|Add0~14_combout\ : std_logic;
SIGNAL \VGA_GEN|Add0~15\ : std_logic;
SIGNAL \VGA_GEN|Add0~16_combout\ : std_logic;
SIGNAL \VGA_GEN|tmp_hcount~0_combout\ : std_logic;
SIGNAL \VGA_GEN|Equal0~1_combout\ : std_logic;
SIGNAL \VGA_GEN|Add0~5\ : std_logic;
SIGNAL \VGA_GEN|Add0~6_combout\ : std_logic;
SIGNAL \VGA_GEN|Add0~7\ : std_logic;
SIGNAL \VGA_GEN|Add0~8_combout\ : std_logic;
SIGNAL \VGA_GEN|Add0~17\ : std_logic;
SIGNAL \VGA_GEN|Add0~18_combout\ : std_logic;
SIGNAL \VGA_GEN|tmp_hcount~1_combout\ : std_logic;
SIGNAL \VGA_GEN|Equal0~0_combout\ : std_logic;
SIGNAL \VGA_GEN|Equal0~2_combout\ : std_logic;
SIGNAL \VGA_GEN|Add0~9\ : std_logic;
SIGNAL \VGA_GEN|Add0~10_combout\ : std_logic;
SIGNAL \VGA_GEN|tmp_hcount~2_combout\ : std_logic;
SIGNAL \VGA_GEN|Add0~11\ : std_logic;
SIGNAL \VGA_GEN|Add0~12_combout\ : std_logic;
SIGNAL \VGA_GEN|process_0~0_combout\ : std_logic;
SIGNAL \VGA_GEN|process_0~1_combout\ : std_logic;
SIGNAL \VGA_GEN|process_0~2_combout\ : std_logic;
SIGNAL \VGA_GEN|process_0~3_combout\ : std_logic;
SIGNAL \VGA_GEN|Horiz_Sync~q\ : std_logic;
SIGNAL \VGA_GEN|Add1~0_combout\ : std_logic;
SIGNAL \VGA_GEN|Equal2~0_combout\ : std_logic;
SIGNAL \VGA_GEN|Equal2~1_combout\ : std_logic;
SIGNAL \VGA_GEN|tmp_vcount[0]~9_combout\ : std_logic;
SIGNAL \VGA_GEN|Add1~1\ : std_logic;
SIGNAL \VGA_GEN|Add1~2_combout\ : std_logic;
SIGNAL \VGA_GEN|tmp_vcount[1]~8_combout\ : std_logic;
SIGNAL \VGA_GEN|Add1~3\ : std_logic;
SIGNAL \VGA_GEN|Add1~4_combout\ : std_logic;
SIGNAL \VGA_GEN|tmp_vcount[2]~7_combout\ : std_logic;
SIGNAL \VGA_GEN|Add1~5\ : std_logic;
SIGNAL \VGA_GEN|Add1~6_combout\ : std_logic;
SIGNAL \VGA_GEN|tmp_vcount[3]~6_combout\ : std_logic;
SIGNAL \VGA_GEN|Add1~7\ : std_logic;
SIGNAL \VGA_GEN|Add1~8_combout\ : std_logic;
SIGNAL \VGA_GEN|tmp_vcount[4]~5_combout\ : std_logic;
SIGNAL \VGA_GEN|Add1~9\ : std_logic;
SIGNAL \VGA_GEN|Add1~10_combout\ : std_logic;
SIGNAL \VGA_GEN|tmp_vcount[5]~2_combout\ : std_logic;
SIGNAL \VGA_GEN|Equal1~1_combout\ : std_logic;
SIGNAL \VGA_GEN|Add1~11\ : std_logic;
SIGNAL \VGA_GEN|Add1~12_combout\ : std_logic;
SIGNAL \VGA_GEN|tmp_vcount[6]~1_combout\ : std_logic;
SIGNAL \VGA_GEN|Add1~13\ : std_logic;
SIGNAL \VGA_GEN|Add1~15\ : std_logic;
SIGNAL \VGA_GEN|Add1~16_combout\ : std_logic;
SIGNAL \VGA_GEN|tmp_vcount[8]~3_combout\ : std_logic;
SIGNAL \VGA_GEN|Add1~17\ : std_logic;
SIGNAL \VGA_GEN|Add1~18_combout\ : std_logic;
SIGNAL \VGA_GEN|tmp_vcount[9]~4_combout\ : std_logic;
SIGNAL \VGA_GEN|Equal1~0_combout\ : std_logic;
SIGNAL \VGA_GEN|Equal1~2_combout\ : std_logic;
SIGNAL \VGA_GEN|Add1~14_combout\ : std_logic;
SIGNAL \VGA_GEN|tmp_vcount[7]~0_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|process_0~1_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|process_0~2_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|process_0~6_combout\ : std_logic;
SIGNAL \VGA_GEN|Hcount[7]~feeder_combout\ : std_logic;
SIGNAL \VGA_GEN|Hcount[5]~feeder_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|Mux6~0_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|Mux6~2_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|Mux6~3_combout\ : std_logic;
SIGNAL \button[1]~input_o\ : std_logic;
SIGNAL \COL_ADDR_GEN|Mux6~4_combout\ : std_logic;
SIGNAL \button[2]~input_o\ : std_logic;
SIGNAL \COL_ADDR_GEN|Mux6~1_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|process_0~8_combout\ : std_logic;
SIGNAL \VGA_GEN|process_0~4_combout\ : std_logic;
SIGNAL \VGA_GEN|LessThan1~0_combout\ : std_logic;
SIGNAL \VGA_GEN|process_0~5_combout\ : std_logic;
SIGNAL \VGA_GEN|Video_On~q\ : std_logic;
SIGNAL \OUTPUT_GEN|process_0~0_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|process_0~9_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|process_0~3_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|process_0~4_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|process_0~5_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|process_0~7_combout\ : std_logic;
SIGNAL \VGA_GEN|tmp_vcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_GEN|tmp_hcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_GEN|Vcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_GEN|Hcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \P_CLK|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \VGA_GEN|ALT_INV_Horiz_Sync~q\ : std_logic;

BEGIN

ww_clk50MHz <= clk50MHz;
ww_rst <= rst;
ww_button <= button;
Horiz_Sync <= ww_Horiz_Sync;
Vert_Sync <= ww_Vert_Sync;
rgb <= ww_rgb;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\P_CLK|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \P_CLK|tmp~q\);

\clk50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50MHz~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\VGA_GEN|ALT_INV_Horiz_Sync~q\ <= NOT \VGA_GEN|Horiz_Sync~q\;

-- Location: IOOBUF_X41_Y18_N16
\Horiz_Sync~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_GEN|ALT_INV_Horiz_Sync~q\,
	devoe => ww_devoe,
	o => \Horiz_Sync~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\Vert_Sync~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Vert_Sync~output_o\);

-- Location: IOOBUF_X41_Y19_N16
\rgb[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rgb[0]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\rgb[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rgb[1]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\rgb[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT_GEN|process_0~7_combout\,
	devoe => ww_devoe,
	o => \rgb[2]~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\rgb[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rgb[3]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\rgb[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rgb[4]~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\rgb[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rgb[5]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\rgb[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT_GEN|process_0~7_combout\,
	devoe => ww_devoe,
	o => \rgb[6]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\rgb[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT_GEN|process_0~7_combout\,
	devoe => ww_devoe,
	o => \rgb[7]~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\rgb[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rgb[8]~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\rgb[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rgb[9]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\rgb[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT_GEN|process_0~7_combout\,
	devoe => ww_devoe,
	o => \rgb[10]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\rgb[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rgb[11]~output_o\);

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

-- Location: LCCOMB_X17_Y22_N10
\P_CLK|counter[0]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[0]~94_combout\ = !\P_CLK|counter~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P_CLK|counter~31_combout\,
	combout => \P_CLK|counter[0]~94_combout\);

-- Location: IOIBUF_X0_Y24_N1
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X17_Y22_N11
\P_CLK|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[0]~94_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(0));

-- Location: LCCOMB_X17_Y22_N22
\P_CLK|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|Equal0~1_combout\ = (!\P_CLK|counter\(7) & (!\P_CLK|counter\(5) & (!\P_CLK|counter\(6) & !\P_CLK|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(7),
	datab => \P_CLK|counter\(5),
	datac => \P_CLK|counter\(6),
	datad => \P_CLK|counter\(4),
	combout => \P_CLK|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y22_N2
\P_CLK|counter[1]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[1]~32_combout\ = (\P_CLK|counter~31_combout\ & (\P_CLK|counter\(1) $ (VCC))) # (!\P_CLK|counter~31_combout\ & (\P_CLK|counter\(1) & VCC))
-- \P_CLK|counter[1]~33\ = CARRY((\P_CLK|counter~31_combout\ & \P_CLK|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter~31_combout\,
	datab => \P_CLK|counter\(1),
	datad => VCC,
	combout => \P_CLK|counter[1]~32_combout\,
	cout => \P_CLK|counter[1]~33\);

-- Location: LCCOMB_X17_Y22_N28
\P_CLK|counter[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[1]~feeder_combout\ = \P_CLK|counter[1]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P_CLK|counter[1]~32_combout\,
	combout => \P_CLK|counter[1]~feeder_combout\);

-- Location: FF_X17_Y22_N29
\P_CLK|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[1]~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(1));

-- Location: LCCOMB_X17_Y22_N8
\P_CLK|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|Equal0~0_combout\ = (\P_CLK|counter\(0) & (!\P_CLK|counter\(1) & (!\P_CLK|counter\(2) & !\P_CLK|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(0),
	datab => \P_CLK|counter\(1),
	datac => \P_CLK|counter\(2),
	datad => \P_CLK|counter\(3),
	combout => \P_CLK|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y22_N0
\P_CLK|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|Equal0~2_combout\ = (!\P_CLK|counter\(11) & (!\P_CLK|counter\(9) & (!\P_CLK|counter\(10) & !\P_CLK|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(11),
	datab => \P_CLK|counter\(9),
	datac => \P_CLK|counter\(10),
	datad => \P_CLK|counter\(8),
	combout => \P_CLK|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y22_N20
\P_CLK|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|Equal0~3_combout\ = (!\P_CLK|counter\(13) & (!\P_CLK|counter\(15) & (!\P_CLK|counter\(14) & !\P_CLK|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(13),
	datab => \P_CLK|counter\(15),
	datac => \P_CLK|counter\(14),
	datad => \P_CLK|counter\(12),
	combout => \P_CLK|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y22_N30
\P_CLK|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|Equal0~4_combout\ = (\P_CLK|Equal0~1_combout\ & (\P_CLK|Equal0~0_combout\ & (\P_CLK|Equal0~2_combout\ & \P_CLK|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|Equal0~1_combout\,
	datab => \P_CLK|Equal0~0_combout\,
	datac => \P_CLK|Equal0~2_combout\,
	datad => \P_CLK|Equal0~3_combout\,
	combout => \P_CLK|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y22_N6
\P_CLK|counter~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter~31_combout\ = (\P_CLK|counter\(0) & ((!\P_CLK|Equal0~9_combout\) # (!\P_CLK|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(0),
	datac => \P_CLK|Equal0~4_combout\,
	datad => \P_CLK|Equal0~9_combout\,
	combout => \P_CLK|counter~31_combout\);

-- Location: LCCOMB_X16_Y22_N4
\P_CLK|counter[2]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[2]~34_combout\ = (\P_CLK|counter\(2) & (!\P_CLK|counter[1]~33\)) # (!\P_CLK|counter\(2) & ((\P_CLK|counter[1]~33\) # (GND)))
-- \P_CLK|counter[2]~35\ = CARRY((!\P_CLK|counter[1]~33\) # (!\P_CLK|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \P_CLK|counter\(2),
	datad => VCC,
	cin => \P_CLK|counter[1]~33\,
	combout => \P_CLK|counter[2]~34_combout\,
	cout => \P_CLK|counter[2]~35\);

-- Location: FF_X16_Y22_N5
\P_CLK|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[2]~34_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(2));

-- Location: LCCOMB_X16_Y22_N6
\P_CLK|counter[3]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[3]~36_combout\ = (\P_CLK|counter\(3) & (\P_CLK|counter[2]~35\ $ (GND))) # (!\P_CLK|counter\(3) & (!\P_CLK|counter[2]~35\ & VCC))
-- \P_CLK|counter[3]~37\ = CARRY((\P_CLK|counter\(3) & !\P_CLK|counter[2]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(3),
	datad => VCC,
	cin => \P_CLK|counter[2]~35\,
	combout => \P_CLK|counter[3]~36_combout\,
	cout => \P_CLK|counter[3]~37\);

-- Location: FF_X16_Y22_N7
\P_CLK|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[3]~36_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(3));

-- Location: LCCOMB_X16_Y22_N8
\P_CLK|counter[4]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[4]~38_combout\ = (\P_CLK|counter\(4) & (!\P_CLK|counter[3]~37\)) # (!\P_CLK|counter\(4) & ((\P_CLK|counter[3]~37\) # (GND)))
-- \P_CLK|counter[4]~39\ = CARRY((!\P_CLK|counter[3]~37\) # (!\P_CLK|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \P_CLK|counter\(4),
	datad => VCC,
	cin => \P_CLK|counter[3]~37\,
	combout => \P_CLK|counter[4]~38_combout\,
	cout => \P_CLK|counter[4]~39\);

-- Location: FF_X16_Y22_N9
\P_CLK|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[4]~38_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(4));

-- Location: LCCOMB_X16_Y22_N10
\P_CLK|counter[5]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[5]~40_combout\ = (\P_CLK|counter\(5) & (\P_CLK|counter[4]~39\ $ (GND))) # (!\P_CLK|counter\(5) & (!\P_CLK|counter[4]~39\ & VCC))
-- \P_CLK|counter[5]~41\ = CARRY((\P_CLK|counter\(5) & !\P_CLK|counter[4]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(5),
	datad => VCC,
	cin => \P_CLK|counter[4]~39\,
	combout => \P_CLK|counter[5]~40_combout\,
	cout => \P_CLK|counter[5]~41\);

-- Location: FF_X16_Y22_N11
\P_CLK|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[5]~40_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(5));

-- Location: LCCOMB_X16_Y22_N12
\P_CLK|counter[6]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[6]~42_combout\ = (\P_CLK|counter\(6) & (!\P_CLK|counter[5]~41\)) # (!\P_CLK|counter\(6) & ((\P_CLK|counter[5]~41\) # (GND)))
-- \P_CLK|counter[6]~43\ = CARRY((!\P_CLK|counter[5]~41\) # (!\P_CLK|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(6),
	datad => VCC,
	cin => \P_CLK|counter[5]~41\,
	combout => \P_CLK|counter[6]~42_combout\,
	cout => \P_CLK|counter[6]~43\);

-- Location: FF_X16_Y22_N13
\P_CLK|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[6]~42_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(6));

-- Location: LCCOMB_X16_Y22_N14
\P_CLK|counter[7]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[7]~44_combout\ = (\P_CLK|counter\(7) & (\P_CLK|counter[6]~43\ $ (GND))) # (!\P_CLK|counter\(7) & (!\P_CLK|counter[6]~43\ & VCC))
-- \P_CLK|counter[7]~45\ = CARRY((\P_CLK|counter\(7) & !\P_CLK|counter[6]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \P_CLK|counter\(7),
	datad => VCC,
	cin => \P_CLK|counter[6]~43\,
	combout => \P_CLK|counter[7]~44_combout\,
	cout => \P_CLK|counter[7]~45\);

-- Location: FF_X16_Y22_N15
\P_CLK|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[7]~44_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(7));

-- Location: LCCOMB_X16_Y22_N16
\P_CLK|counter[8]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[8]~46_combout\ = (\P_CLK|counter\(8) & (!\P_CLK|counter[7]~45\)) # (!\P_CLK|counter\(8) & ((\P_CLK|counter[7]~45\) # (GND)))
-- \P_CLK|counter[8]~47\ = CARRY((!\P_CLK|counter[7]~45\) # (!\P_CLK|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \P_CLK|counter\(8),
	datad => VCC,
	cin => \P_CLK|counter[7]~45\,
	combout => \P_CLK|counter[8]~46_combout\,
	cout => \P_CLK|counter[8]~47\);

-- Location: FF_X16_Y22_N17
\P_CLK|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[8]~46_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(8));

-- Location: LCCOMB_X16_Y22_N18
\P_CLK|counter[9]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[9]~48_combout\ = (\P_CLK|counter\(9) & (\P_CLK|counter[8]~47\ $ (GND))) # (!\P_CLK|counter\(9) & (!\P_CLK|counter[8]~47\ & VCC))
-- \P_CLK|counter[9]~49\ = CARRY((\P_CLK|counter\(9) & !\P_CLK|counter[8]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \P_CLK|counter\(9),
	datad => VCC,
	cin => \P_CLK|counter[8]~47\,
	combout => \P_CLK|counter[9]~48_combout\,
	cout => \P_CLK|counter[9]~49\);

-- Location: FF_X16_Y22_N19
\P_CLK|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[9]~48_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(9));

-- Location: LCCOMB_X16_Y22_N20
\P_CLK|counter[10]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[10]~50_combout\ = (\P_CLK|counter\(10) & (!\P_CLK|counter[9]~49\)) # (!\P_CLK|counter\(10) & ((\P_CLK|counter[9]~49\) # (GND)))
-- \P_CLK|counter[10]~51\ = CARRY((!\P_CLK|counter[9]~49\) # (!\P_CLK|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \P_CLK|counter\(10),
	datad => VCC,
	cin => \P_CLK|counter[9]~49\,
	combout => \P_CLK|counter[10]~50_combout\,
	cout => \P_CLK|counter[10]~51\);

-- Location: FF_X16_Y22_N21
\P_CLK|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[10]~50_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(10));

-- Location: LCCOMB_X16_Y22_N22
\P_CLK|counter[11]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[11]~52_combout\ = (\P_CLK|counter\(11) & (\P_CLK|counter[10]~51\ $ (GND))) # (!\P_CLK|counter\(11) & (!\P_CLK|counter[10]~51\ & VCC))
-- \P_CLK|counter[11]~53\ = CARRY((\P_CLK|counter\(11) & !\P_CLK|counter[10]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \P_CLK|counter\(11),
	datad => VCC,
	cin => \P_CLK|counter[10]~51\,
	combout => \P_CLK|counter[11]~52_combout\,
	cout => \P_CLK|counter[11]~53\);

-- Location: FF_X16_Y22_N23
\P_CLK|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[11]~52_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(11));

-- Location: LCCOMB_X16_Y22_N24
\P_CLK|counter[12]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[12]~54_combout\ = (\P_CLK|counter\(12) & (!\P_CLK|counter[11]~53\)) # (!\P_CLK|counter\(12) & ((\P_CLK|counter[11]~53\) # (GND)))
-- \P_CLK|counter[12]~55\ = CARRY((!\P_CLK|counter[11]~53\) # (!\P_CLK|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \P_CLK|counter\(12),
	datad => VCC,
	cin => \P_CLK|counter[11]~53\,
	combout => \P_CLK|counter[12]~54_combout\,
	cout => \P_CLK|counter[12]~55\);

-- Location: FF_X16_Y22_N25
\P_CLK|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[12]~54_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(12));

-- Location: LCCOMB_X16_Y22_N26
\P_CLK|counter[13]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[13]~56_combout\ = (\P_CLK|counter\(13) & (\P_CLK|counter[12]~55\ $ (GND))) # (!\P_CLK|counter\(13) & (!\P_CLK|counter[12]~55\ & VCC))
-- \P_CLK|counter[13]~57\ = CARRY((\P_CLK|counter\(13) & !\P_CLK|counter[12]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(13),
	datad => VCC,
	cin => \P_CLK|counter[12]~55\,
	combout => \P_CLK|counter[13]~56_combout\,
	cout => \P_CLK|counter[13]~57\);

-- Location: FF_X16_Y22_N27
\P_CLK|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[13]~56_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(13));

-- Location: LCCOMB_X16_Y22_N28
\P_CLK|counter[14]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[14]~58_combout\ = (\P_CLK|counter\(14) & (!\P_CLK|counter[13]~57\)) # (!\P_CLK|counter\(14) & ((\P_CLK|counter[13]~57\) # (GND)))
-- \P_CLK|counter[14]~59\ = CARRY((!\P_CLK|counter[13]~57\) # (!\P_CLK|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \P_CLK|counter\(14),
	datad => VCC,
	cin => \P_CLK|counter[13]~57\,
	combout => \P_CLK|counter[14]~58_combout\,
	cout => \P_CLK|counter[14]~59\);

-- Location: FF_X16_Y22_N29
\P_CLK|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[14]~58_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(14));

-- Location: LCCOMB_X16_Y22_N30
\P_CLK|counter[15]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[15]~60_combout\ = (\P_CLK|counter\(15) & (\P_CLK|counter[14]~59\ $ (GND))) # (!\P_CLK|counter\(15) & (!\P_CLK|counter[14]~59\ & VCC))
-- \P_CLK|counter[15]~61\ = CARRY((\P_CLK|counter\(15) & !\P_CLK|counter[14]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(15),
	datad => VCC,
	cin => \P_CLK|counter[14]~59\,
	combout => \P_CLK|counter[15]~60_combout\,
	cout => \P_CLK|counter[15]~61\);

-- Location: FF_X16_Y22_N31
\P_CLK|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[15]~60_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(15));

-- Location: LCCOMB_X16_Y21_N0
\P_CLK|counter[16]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[16]~62_combout\ = (\P_CLK|counter\(16) & (!\P_CLK|counter[15]~61\)) # (!\P_CLK|counter\(16) & ((\P_CLK|counter[15]~61\) # (GND)))
-- \P_CLK|counter[16]~63\ = CARRY((!\P_CLK|counter[15]~61\) # (!\P_CLK|counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \P_CLK|counter\(16),
	datad => VCC,
	cin => \P_CLK|counter[15]~61\,
	combout => \P_CLK|counter[16]~62_combout\,
	cout => \P_CLK|counter[16]~63\);

-- Location: FF_X16_Y21_N1
\P_CLK|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[16]~62_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(16));

-- Location: LCCOMB_X16_Y21_N2
\P_CLK|counter[17]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[17]~64_combout\ = (\P_CLK|counter\(17) & (\P_CLK|counter[16]~63\ $ (GND))) # (!\P_CLK|counter\(17) & (!\P_CLK|counter[16]~63\ & VCC))
-- \P_CLK|counter[17]~65\ = CARRY((\P_CLK|counter\(17) & !\P_CLK|counter[16]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \P_CLK|counter\(17),
	datad => VCC,
	cin => \P_CLK|counter[16]~63\,
	combout => \P_CLK|counter[17]~64_combout\,
	cout => \P_CLK|counter[17]~65\);

-- Location: FF_X16_Y21_N3
\P_CLK|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[17]~64_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(17));

-- Location: LCCOMB_X16_Y21_N4
\P_CLK|counter[18]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[18]~66_combout\ = (\P_CLK|counter\(18) & (!\P_CLK|counter[17]~65\)) # (!\P_CLK|counter\(18) & ((\P_CLK|counter[17]~65\) # (GND)))
-- \P_CLK|counter[18]~67\ = CARRY((!\P_CLK|counter[17]~65\) # (!\P_CLK|counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \P_CLK|counter\(18),
	datad => VCC,
	cin => \P_CLK|counter[17]~65\,
	combout => \P_CLK|counter[18]~66_combout\,
	cout => \P_CLK|counter[18]~67\);

-- Location: FF_X16_Y21_N5
\P_CLK|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[18]~66_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(18));

-- Location: LCCOMB_X16_Y21_N6
\P_CLK|counter[19]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[19]~68_combout\ = (\P_CLK|counter\(19) & (\P_CLK|counter[18]~67\ $ (GND))) # (!\P_CLK|counter\(19) & (!\P_CLK|counter[18]~67\ & VCC))
-- \P_CLK|counter[19]~69\ = CARRY((\P_CLK|counter\(19) & !\P_CLK|counter[18]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(19),
	datad => VCC,
	cin => \P_CLK|counter[18]~67\,
	combout => \P_CLK|counter[19]~68_combout\,
	cout => \P_CLK|counter[19]~69\);

-- Location: FF_X16_Y21_N7
\P_CLK|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[19]~68_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(19));

-- Location: LCCOMB_X16_Y21_N8
\P_CLK|counter[20]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[20]~70_combout\ = (\P_CLK|counter\(20) & (!\P_CLK|counter[19]~69\)) # (!\P_CLK|counter\(20) & ((\P_CLK|counter[19]~69\) # (GND)))
-- \P_CLK|counter[20]~71\ = CARRY((!\P_CLK|counter[19]~69\) # (!\P_CLK|counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \P_CLK|counter\(20),
	datad => VCC,
	cin => \P_CLK|counter[19]~69\,
	combout => \P_CLK|counter[20]~70_combout\,
	cout => \P_CLK|counter[20]~71\);

-- Location: FF_X16_Y21_N9
\P_CLK|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[20]~70_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(20));

-- Location: LCCOMB_X16_Y21_N10
\P_CLK|counter[21]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[21]~72_combout\ = (\P_CLK|counter\(21) & (\P_CLK|counter[20]~71\ $ (GND))) # (!\P_CLK|counter\(21) & (!\P_CLK|counter[20]~71\ & VCC))
-- \P_CLK|counter[21]~73\ = CARRY((\P_CLK|counter\(21) & !\P_CLK|counter[20]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(21),
	datad => VCC,
	cin => \P_CLK|counter[20]~71\,
	combout => \P_CLK|counter[21]~72_combout\,
	cout => \P_CLK|counter[21]~73\);

-- Location: FF_X16_Y21_N11
\P_CLK|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[21]~72_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(21));

-- Location: LCCOMB_X16_Y21_N12
\P_CLK|counter[22]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[22]~74_combout\ = (\P_CLK|counter\(22) & (!\P_CLK|counter[21]~73\)) # (!\P_CLK|counter\(22) & ((\P_CLK|counter[21]~73\) # (GND)))
-- \P_CLK|counter[22]~75\ = CARRY((!\P_CLK|counter[21]~73\) # (!\P_CLK|counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(22),
	datad => VCC,
	cin => \P_CLK|counter[21]~73\,
	combout => \P_CLK|counter[22]~74_combout\,
	cout => \P_CLK|counter[22]~75\);

-- Location: FF_X16_Y21_N13
\P_CLK|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[22]~74_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(22));

-- Location: LCCOMB_X16_Y21_N14
\P_CLK|counter[23]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[23]~76_combout\ = (\P_CLK|counter\(23) & (\P_CLK|counter[22]~75\ $ (GND))) # (!\P_CLK|counter\(23) & (!\P_CLK|counter[22]~75\ & VCC))
-- \P_CLK|counter[23]~77\ = CARRY((\P_CLK|counter\(23) & !\P_CLK|counter[22]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \P_CLK|counter\(23),
	datad => VCC,
	cin => \P_CLK|counter[22]~75\,
	combout => \P_CLK|counter[23]~76_combout\,
	cout => \P_CLK|counter[23]~77\);

-- Location: FF_X16_Y21_N15
\P_CLK|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[23]~76_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(23));

-- Location: LCCOMB_X16_Y21_N16
\P_CLK|counter[24]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[24]~78_combout\ = (\P_CLK|counter\(24) & (!\P_CLK|counter[23]~77\)) # (!\P_CLK|counter\(24) & ((\P_CLK|counter[23]~77\) # (GND)))
-- \P_CLK|counter[24]~79\ = CARRY((!\P_CLK|counter[23]~77\) # (!\P_CLK|counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \P_CLK|counter\(24),
	datad => VCC,
	cin => \P_CLK|counter[23]~77\,
	combout => \P_CLK|counter[24]~78_combout\,
	cout => \P_CLK|counter[24]~79\);

-- Location: FF_X16_Y21_N17
\P_CLK|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[24]~78_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(24));

-- Location: LCCOMB_X16_Y21_N18
\P_CLK|counter[25]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[25]~80_combout\ = (\P_CLK|counter\(25) & (\P_CLK|counter[24]~79\ $ (GND))) # (!\P_CLK|counter\(25) & (!\P_CLK|counter[24]~79\ & VCC))
-- \P_CLK|counter[25]~81\ = CARRY((\P_CLK|counter\(25) & !\P_CLK|counter[24]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \P_CLK|counter\(25),
	datad => VCC,
	cin => \P_CLK|counter[24]~79\,
	combout => \P_CLK|counter[25]~80_combout\,
	cout => \P_CLK|counter[25]~81\);

-- Location: FF_X16_Y21_N19
\P_CLK|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[25]~80_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(25));

-- Location: LCCOMB_X16_Y21_N20
\P_CLK|counter[26]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[26]~82_combout\ = (\P_CLK|counter\(26) & (!\P_CLK|counter[25]~81\)) # (!\P_CLK|counter\(26) & ((\P_CLK|counter[25]~81\) # (GND)))
-- \P_CLK|counter[26]~83\ = CARRY((!\P_CLK|counter[25]~81\) # (!\P_CLK|counter\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \P_CLK|counter\(26),
	datad => VCC,
	cin => \P_CLK|counter[25]~81\,
	combout => \P_CLK|counter[26]~82_combout\,
	cout => \P_CLK|counter[26]~83\);

-- Location: FF_X16_Y21_N21
\P_CLK|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[26]~82_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(26));

-- Location: LCCOMB_X16_Y21_N22
\P_CLK|counter[27]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[27]~84_combout\ = (\P_CLK|counter\(27) & (\P_CLK|counter[26]~83\ $ (GND))) # (!\P_CLK|counter\(27) & (!\P_CLK|counter[26]~83\ & VCC))
-- \P_CLK|counter[27]~85\ = CARRY((\P_CLK|counter\(27) & !\P_CLK|counter[26]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(27),
	datad => VCC,
	cin => \P_CLK|counter[26]~83\,
	combout => \P_CLK|counter[27]~84_combout\,
	cout => \P_CLK|counter[27]~85\);

-- Location: FF_X16_Y21_N23
\P_CLK|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[27]~84_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(27));

-- Location: LCCOMB_X17_Y22_N12
\P_CLK|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|Equal0~7_combout\ = (!\P_CLK|counter\(24) & (!\P_CLK|counter\(25) & (!\P_CLK|counter\(26) & !\P_CLK|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(24),
	datab => \P_CLK|counter\(25),
	datac => \P_CLK|counter\(26),
	datad => \P_CLK|counter\(27),
	combout => \P_CLK|Equal0~7_combout\);

-- Location: LCCOMB_X17_Y22_N14
\P_CLK|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|Equal0~6_combout\ = (!\P_CLK|counter\(22) & (!\P_CLK|counter\(21) & (!\P_CLK|counter\(20) & !\P_CLK|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(22),
	datab => \P_CLK|counter\(21),
	datac => \P_CLK|counter\(20),
	datad => \P_CLK|counter\(23),
	combout => \P_CLK|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y22_N4
\P_CLK|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|Equal0~5_combout\ = (!\P_CLK|counter\(16) & (!\P_CLK|counter\(18) & (!\P_CLK|counter\(19) & !\P_CLK|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(16),
	datab => \P_CLK|counter\(18),
	datac => \P_CLK|counter\(19),
	datad => \P_CLK|counter\(17),
	combout => \P_CLK|Equal0~5_combout\);

-- Location: LCCOMB_X16_Y21_N24
\P_CLK|counter[28]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[28]~86_combout\ = (\P_CLK|counter\(28) & (!\P_CLK|counter[27]~85\)) # (!\P_CLK|counter\(28) & ((\P_CLK|counter[27]~85\) # (GND)))
-- \P_CLK|counter[28]~87\ = CARRY((!\P_CLK|counter[27]~85\) # (!\P_CLK|counter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \P_CLK|counter\(28),
	datad => VCC,
	cin => \P_CLK|counter[27]~85\,
	combout => \P_CLK|counter[28]~86_combout\,
	cout => \P_CLK|counter[28]~87\);

-- Location: FF_X16_Y21_N25
\P_CLK|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[28]~86_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(28));

-- Location: LCCOMB_X16_Y21_N26
\P_CLK|counter[29]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[29]~88_combout\ = (\P_CLK|counter\(29) & (\P_CLK|counter[28]~87\ $ (GND))) # (!\P_CLK|counter\(29) & (!\P_CLK|counter[28]~87\ & VCC))
-- \P_CLK|counter[29]~89\ = CARRY((\P_CLK|counter\(29) & !\P_CLK|counter[28]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(29),
	datad => VCC,
	cin => \P_CLK|counter[28]~87\,
	combout => \P_CLK|counter[29]~88_combout\,
	cout => \P_CLK|counter[29]~89\);

-- Location: FF_X16_Y21_N27
\P_CLK|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[29]~88_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(29));

-- Location: LCCOMB_X16_Y21_N28
\P_CLK|counter[30]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[30]~90_combout\ = (\P_CLK|counter\(30) & (!\P_CLK|counter[29]~89\)) # (!\P_CLK|counter\(30) & ((\P_CLK|counter[29]~89\) # (GND)))
-- \P_CLK|counter[30]~91\ = CARRY((!\P_CLK|counter[29]~89\) # (!\P_CLK|counter\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \P_CLK|counter\(30),
	datad => VCC,
	cin => \P_CLK|counter[29]~89\,
	combout => \P_CLK|counter[30]~90_combout\,
	cout => \P_CLK|counter[30]~91\);

-- Location: FF_X16_Y21_N29
\P_CLK|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[30]~90_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(30));

-- Location: LCCOMB_X16_Y21_N30
\P_CLK|counter[31]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[31]~92_combout\ = \P_CLK|counter\(31) $ (!\P_CLK|counter[30]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(31),
	cin => \P_CLK|counter[30]~91\,
	combout => \P_CLK|counter[31]~92_combout\);

-- Location: FF_X16_Y21_N31
\P_CLK|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|counter[31]~92_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(31));

-- Location: LCCOMB_X17_Y22_N18
\P_CLK|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|Equal0~8_combout\ = (!\P_CLK|counter\(28) & (!\P_CLK|counter\(29) & (!\P_CLK|counter\(30) & !\P_CLK|counter\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(28),
	datab => \P_CLK|counter\(29),
	datac => \P_CLK|counter\(30),
	datad => \P_CLK|counter\(31),
	combout => \P_CLK|Equal0~8_combout\);

-- Location: LCCOMB_X17_Y22_N16
\P_CLK|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|Equal0~9_combout\ = (\P_CLK|Equal0~7_combout\ & (\P_CLK|Equal0~6_combout\ & (\P_CLK|Equal0~5_combout\ & \P_CLK|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|Equal0~7_combout\,
	datab => \P_CLK|Equal0~6_combout\,
	datac => \P_CLK|Equal0~5_combout\,
	datad => \P_CLK|Equal0~8_combout\,
	combout => \P_CLK|Equal0~9_combout\);

-- Location: LCCOMB_X19_Y25_N0
\P_CLK|tmp~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|tmp~0_combout\ = \P_CLK|tmp~q\ $ (((\P_CLK|Equal0~9_combout\ & \P_CLK|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P_CLK|Equal0~9_combout\,
	datac => \P_CLK|Equal0~4_combout\,
	datad => \P_CLK|tmp~q\,
	combout => \P_CLK|tmp~0_combout\);

-- Location: LCCOMB_X19_Y25_N2
\P_CLK|tmp~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|tmp~feeder_combout\ = \P_CLK|tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P_CLK|tmp~0_combout\,
	combout => \P_CLK|tmp~feeder_combout\);

-- Location: FF_X19_Y25_N3
\P_CLK|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \P_CLK|tmp~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|tmp~q\);

-- Location: CLKCTRL_G14
\P_CLK|tmp~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \P_CLK|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \P_CLK|tmp~clkctrl_outclk\);

-- Location: LCCOMB_X11_Y23_N8
\VGA_GEN|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add0~0_combout\ = \VGA_GEN|tmp_hcount\(0) $ (VCC)
-- \VGA_GEN|Add0~1\ = CARRY(\VGA_GEN|tmp_hcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|tmp_hcount\(0),
	datad => VCC,
	combout => \VGA_GEN|Add0~0_combout\,
	cout => \VGA_GEN|Add0~1\);

-- Location: FF_X11_Y23_N9
\VGA_GEN|tmp_hcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|Add0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_hcount\(0));

-- Location: LCCOMB_X11_Y23_N10
\VGA_GEN|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add0~2_combout\ = (\VGA_GEN|tmp_hcount\(1) & (!\VGA_GEN|Add0~1\)) # (!\VGA_GEN|tmp_hcount\(1) & ((\VGA_GEN|Add0~1\) # (GND)))
-- \VGA_GEN|Add0~3\ = CARRY((!\VGA_GEN|Add0~1\) # (!\VGA_GEN|tmp_hcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(1),
	datad => VCC,
	cin => \VGA_GEN|Add0~1\,
	combout => \VGA_GEN|Add0~2_combout\,
	cout => \VGA_GEN|Add0~3\);

-- Location: FF_X11_Y23_N11
\VGA_GEN|tmp_hcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|Add0~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_hcount\(1));

-- Location: LCCOMB_X11_Y23_N12
\VGA_GEN|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add0~4_combout\ = (\VGA_GEN|tmp_hcount\(2) & (\VGA_GEN|Add0~3\ $ (GND))) # (!\VGA_GEN|tmp_hcount\(2) & (!\VGA_GEN|Add0~3\ & VCC))
-- \VGA_GEN|Add0~5\ = CARRY((\VGA_GEN|tmp_hcount\(2) & !\VGA_GEN|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(2),
	datad => VCC,
	cin => \VGA_GEN|Add0~3\,
	combout => \VGA_GEN|Add0~4_combout\,
	cout => \VGA_GEN|Add0~5\);

-- Location: FF_X11_Y23_N13
\VGA_GEN|tmp_hcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|Add0~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_hcount\(2));

-- Location: LCCOMB_X11_Y23_N20
\VGA_GEN|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add0~12_combout\ = (\VGA_GEN|tmp_hcount\(6) & (\VGA_GEN|Add0~11\ $ (GND))) # (!\VGA_GEN|tmp_hcount\(6) & (!\VGA_GEN|Add0~11\ & VCC))
-- \VGA_GEN|Add0~13\ = CARRY((\VGA_GEN|tmp_hcount\(6) & !\VGA_GEN|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|tmp_hcount\(6),
	datad => VCC,
	cin => \VGA_GEN|Add0~11\,
	combout => \VGA_GEN|Add0~12_combout\,
	cout => \VGA_GEN|Add0~13\);

-- Location: LCCOMB_X11_Y23_N22
\VGA_GEN|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add0~14_combout\ = (\VGA_GEN|tmp_hcount\(7) & (!\VGA_GEN|Add0~13\)) # (!\VGA_GEN|tmp_hcount\(7) & ((\VGA_GEN|Add0~13\) # (GND)))
-- \VGA_GEN|Add0~15\ = CARRY((!\VGA_GEN|Add0~13\) # (!\VGA_GEN|tmp_hcount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(7),
	datad => VCC,
	cin => \VGA_GEN|Add0~13\,
	combout => \VGA_GEN|Add0~14_combout\,
	cout => \VGA_GEN|Add0~15\);

-- Location: FF_X11_Y23_N23
\VGA_GEN|tmp_hcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|Add0~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_hcount\(7));

-- Location: LCCOMB_X11_Y23_N24
\VGA_GEN|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add0~16_combout\ = (\VGA_GEN|tmp_hcount\(8) & (\VGA_GEN|Add0~15\ $ (GND))) # (!\VGA_GEN|tmp_hcount\(8) & (!\VGA_GEN|Add0~15\ & VCC))
-- \VGA_GEN|Add0~17\ = CARRY((\VGA_GEN|tmp_hcount\(8) & !\VGA_GEN|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(8),
	datad => VCC,
	cin => \VGA_GEN|Add0~15\,
	combout => \VGA_GEN|Add0~16_combout\,
	cout => \VGA_GEN|Add0~17\);

-- Location: LCCOMB_X11_Y23_N6
\VGA_GEN|tmp_hcount~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_hcount~0_combout\ = (!\VGA_GEN|Equal0~2_combout\ & \VGA_GEN|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_GEN|Equal0~2_combout\,
	datad => \VGA_GEN|Add0~16_combout\,
	combout => \VGA_GEN|tmp_hcount~0_combout\);

-- Location: FF_X11_Y23_N7
\VGA_GEN|tmp_hcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|tmp_hcount~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_hcount\(8));

-- Location: LCCOMB_X12_Y23_N4
\VGA_GEN|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Equal0~1_combout\ = (\VGA_GEN|tmp_hcount\(2) & (!\VGA_GEN|tmp_hcount\(7) & (\VGA_GEN|tmp_hcount\(8) & !\VGA_GEN|tmp_hcount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(2),
	datab => \VGA_GEN|tmp_hcount\(7),
	datac => \VGA_GEN|tmp_hcount\(8),
	datad => \VGA_GEN|tmp_hcount\(5),
	combout => \VGA_GEN|Equal0~1_combout\);

-- Location: LCCOMB_X11_Y23_N14
\VGA_GEN|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add0~6_combout\ = (\VGA_GEN|tmp_hcount\(3) & (!\VGA_GEN|Add0~5\)) # (!\VGA_GEN|tmp_hcount\(3) & ((\VGA_GEN|Add0~5\) # (GND)))
-- \VGA_GEN|Add0~7\ = CARRY((!\VGA_GEN|Add0~5\) # (!\VGA_GEN|tmp_hcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|tmp_hcount\(3),
	datad => VCC,
	cin => \VGA_GEN|Add0~5\,
	combout => \VGA_GEN|Add0~6_combout\,
	cout => \VGA_GEN|Add0~7\);

-- Location: FF_X11_Y23_N15
\VGA_GEN|tmp_hcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|Add0~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_hcount\(3));

-- Location: LCCOMB_X11_Y23_N16
\VGA_GEN|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add0~8_combout\ = (\VGA_GEN|tmp_hcount\(4) & (\VGA_GEN|Add0~7\ $ (GND))) # (!\VGA_GEN|tmp_hcount\(4) & (!\VGA_GEN|Add0~7\ & VCC))
-- \VGA_GEN|Add0~9\ = CARRY((\VGA_GEN|tmp_hcount\(4) & !\VGA_GEN|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|tmp_hcount\(4),
	datad => VCC,
	cin => \VGA_GEN|Add0~7\,
	combout => \VGA_GEN|Add0~8_combout\,
	cout => \VGA_GEN|Add0~9\);

-- Location: FF_X11_Y23_N17
\VGA_GEN|tmp_hcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|Add0~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_hcount\(4));

-- Location: LCCOMB_X11_Y23_N26
\VGA_GEN|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add0~18_combout\ = \VGA_GEN|tmp_hcount\(9) $ (\VGA_GEN|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(9),
	cin => \VGA_GEN|Add0~17\,
	combout => \VGA_GEN|Add0~18_combout\);

-- Location: LCCOMB_X11_Y23_N30
\VGA_GEN|tmp_hcount~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_hcount~1_combout\ = (!\VGA_GEN|Equal0~2_combout\ & \VGA_GEN|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|Equal0~2_combout\,
	datac => \VGA_GEN|Add0~18_combout\,
	combout => \VGA_GEN|tmp_hcount~1_combout\);

-- Location: FF_X11_Y23_N31
\VGA_GEN|tmp_hcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|tmp_hcount~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_hcount\(9));

-- Location: LCCOMB_X11_Y23_N2
\VGA_GEN|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Equal0~0_combout\ = (\VGA_GEN|tmp_hcount\(9) & (\VGA_GEN|tmp_hcount\(0) & (!\VGA_GEN|tmp_hcount\(6) & \VGA_GEN|tmp_hcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(9),
	datab => \VGA_GEN|tmp_hcount\(0),
	datac => \VGA_GEN|tmp_hcount\(6),
	datad => \VGA_GEN|tmp_hcount\(1),
	combout => \VGA_GEN|Equal0~0_combout\);

-- Location: LCCOMB_X11_Y23_N4
\VGA_GEN|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Equal0~2_combout\ = (\VGA_GEN|Equal0~1_combout\ & (\VGA_GEN|tmp_hcount\(3) & (\VGA_GEN|tmp_hcount\(4) & \VGA_GEN|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Equal0~1_combout\,
	datab => \VGA_GEN|tmp_hcount\(3),
	datac => \VGA_GEN|tmp_hcount\(4),
	datad => \VGA_GEN|Equal0~0_combout\,
	combout => \VGA_GEN|Equal0~2_combout\);

-- Location: LCCOMB_X11_Y23_N18
\VGA_GEN|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add0~10_combout\ = (\VGA_GEN|tmp_hcount\(5) & (!\VGA_GEN|Add0~9\)) # (!\VGA_GEN|tmp_hcount\(5) & ((\VGA_GEN|Add0~9\) # (GND)))
-- \VGA_GEN|Add0~11\ = CARRY((!\VGA_GEN|Add0~9\) # (!\VGA_GEN|tmp_hcount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|tmp_hcount\(5),
	datad => VCC,
	cin => \VGA_GEN|Add0~9\,
	combout => \VGA_GEN|Add0~10_combout\,
	cout => \VGA_GEN|Add0~11\);

-- Location: LCCOMB_X11_Y23_N28
\VGA_GEN|tmp_hcount~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_hcount~2_combout\ = (!\VGA_GEN|Equal0~2_combout\ & \VGA_GEN|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_GEN|Equal0~2_combout\,
	datad => \VGA_GEN|Add0~10_combout\,
	combout => \VGA_GEN|tmp_hcount~2_combout\);

-- Location: FF_X11_Y23_N29
\VGA_GEN|tmp_hcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|tmp_hcount~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_hcount\(5));

-- Location: FF_X11_Y23_N21
\VGA_GEN|tmp_hcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|Add0~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_hcount\(6));

-- Location: LCCOMB_X10_Y23_N8
\VGA_GEN|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|process_0~0_combout\ = (\VGA_GEN|tmp_hcount\(9) & (\VGA_GEN|tmp_hcount\(7) & !\VGA_GEN|tmp_hcount\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(9),
	datab => \VGA_GEN|tmp_hcount\(7),
	datad => \VGA_GEN|tmp_hcount\(8),
	combout => \VGA_GEN|process_0~0_combout\);

-- Location: LCCOMB_X10_Y23_N24
\VGA_GEN|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|process_0~1_combout\ = (\VGA_GEN|tmp_hcount\(2)) # ((\VGA_GEN|tmp_hcount\(1) & (\VGA_GEN|tmp_hcount\(0) & \VGA_GEN|tmp_hcount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(2),
	datab => \VGA_GEN|tmp_hcount\(1),
	datac => \VGA_GEN|tmp_hcount\(0),
	datad => \VGA_GEN|tmp_hcount\(5),
	combout => \VGA_GEN|process_0~1_combout\);

-- Location: LCCOMB_X10_Y23_N16
\VGA_GEN|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|process_0~2_combout\ = (\VGA_GEN|tmp_hcount\(4) & ((\VGA_GEN|tmp_hcount\(3)) # (\VGA_GEN|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(4),
	datac => \VGA_GEN|tmp_hcount\(3),
	datad => \VGA_GEN|process_0~1_combout\,
	combout => \VGA_GEN|process_0~2_combout\);

-- Location: LCCOMB_X10_Y23_N18
\VGA_GEN|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|process_0~3_combout\ = (\VGA_GEN|process_0~0_combout\ & ((\VGA_GEN|tmp_hcount\(6) & ((!\VGA_GEN|process_0~2_combout\) # (!\VGA_GEN|tmp_hcount\(5)))) # (!\VGA_GEN|tmp_hcount\(6) & ((\VGA_GEN|tmp_hcount\(5)) # (\VGA_GEN|process_0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(6),
	datab => \VGA_GEN|tmp_hcount\(5),
	datac => \VGA_GEN|process_0~0_combout\,
	datad => \VGA_GEN|process_0~2_combout\,
	combout => \VGA_GEN|process_0~3_combout\);

-- Location: FF_X10_Y23_N19
\VGA_GEN|Horiz_Sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|process_0~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Horiz_Sync~q\);

-- Location: LCCOMB_X9_Y23_N0
\VGA_GEN|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add1~0_combout\ = \VGA_GEN|tmp_vcount\(0) $ (VCC)
-- \VGA_GEN|Add1~1\ = CARRY(\VGA_GEN|tmp_vcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|tmp_vcount\(0),
	datad => VCC,
	combout => \VGA_GEN|Add1~0_combout\,
	cout => \VGA_GEN|Add1~1\);

-- Location: LCCOMB_X11_Y23_N0
\VGA_GEN|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Equal2~0_combout\ = (\VGA_GEN|tmp_hcount\(2)) # (((\VGA_GEN|tmp_hcount\(8)) # (!\VGA_GEN|tmp_hcount\(7))) # (!\VGA_GEN|tmp_hcount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(2),
	datab => \VGA_GEN|tmp_hcount\(5),
	datac => \VGA_GEN|tmp_hcount\(7),
	datad => \VGA_GEN|tmp_hcount\(8),
	combout => \VGA_GEN|Equal2~0_combout\);

-- Location: LCCOMB_X10_Y23_N10
\VGA_GEN|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Equal2~1_combout\ = (((\VGA_GEN|Equal2~0_combout\) # (!\VGA_GEN|Equal0~0_combout\)) # (!\VGA_GEN|tmp_hcount\(3))) # (!\VGA_GEN|tmp_hcount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(4),
	datab => \VGA_GEN|tmp_hcount\(3),
	datac => \VGA_GEN|Equal2~0_combout\,
	datad => \VGA_GEN|Equal0~0_combout\,
	combout => \VGA_GEN|Equal2~1_combout\);

-- Location: LCCOMB_X10_Y23_N12
\VGA_GEN|tmp_vcount[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_vcount[0]~9_combout\ = (!\VGA_GEN|Equal1~2_combout\ & ((\VGA_GEN|Equal2~1_combout\ & ((\VGA_GEN|tmp_vcount\(0)))) # (!\VGA_GEN|Equal2~1_combout\ & (\VGA_GEN|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Add1~0_combout\,
	datab => \VGA_GEN|tmp_vcount\(0),
	datac => \VGA_GEN|Equal1~2_combout\,
	datad => \VGA_GEN|Equal2~1_combout\,
	combout => \VGA_GEN|tmp_vcount[0]~9_combout\);

-- Location: FF_X9_Y23_N15
\VGA_GEN|tmp_vcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	asdata => \VGA_GEN|tmp_vcount[0]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_vcount\(0));

-- Location: LCCOMB_X9_Y23_N2
\VGA_GEN|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add1~2_combout\ = (\VGA_GEN|tmp_vcount\(1) & (!\VGA_GEN|Add1~1\)) # (!\VGA_GEN|tmp_vcount\(1) & ((\VGA_GEN|Add1~1\) # (GND)))
-- \VGA_GEN|Add1~3\ = CARRY((!\VGA_GEN|Add1~1\) # (!\VGA_GEN|tmp_vcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|tmp_vcount\(1),
	datad => VCC,
	cin => \VGA_GEN|Add1~1\,
	combout => \VGA_GEN|Add1~2_combout\,
	cout => \VGA_GEN|Add1~3\);

-- Location: LCCOMB_X9_Y23_N28
\VGA_GEN|tmp_vcount[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_vcount[1]~8_combout\ = (!\VGA_GEN|Equal1~2_combout\ & ((\VGA_GEN|Equal2~1_combout\ & ((\VGA_GEN|tmp_vcount\(1)))) # (!\VGA_GEN|Equal2~1_combout\ & (\VGA_GEN|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Add1~2_combout\,
	datab => \VGA_GEN|Equal1~2_combout\,
	datac => \VGA_GEN|tmp_vcount\(1),
	datad => \VGA_GEN|Equal2~1_combout\,
	combout => \VGA_GEN|tmp_vcount[1]~8_combout\);

-- Location: FF_X9_Y23_N29
\VGA_GEN|tmp_vcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|tmp_vcount[1]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_vcount\(1));

-- Location: LCCOMB_X9_Y23_N4
\VGA_GEN|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add1~4_combout\ = (\VGA_GEN|tmp_vcount\(2) & (\VGA_GEN|Add1~3\ $ (GND))) # (!\VGA_GEN|tmp_vcount\(2) & (!\VGA_GEN|Add1~3\ & VCC))
-- \VGA_GEN|Add1~5\ = CARRY((\VGA_GEN|tmp_vcount\(2) & !\VGA_GEN|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|tmp_vcount\(2),
	datad => VCC,
	cin => \VGA_GEN|Add1~3\,
	combout => \VGA_GEN|Add1~4_combout\,
	cout => \VGA_GEN|Add1~5\);

-- Location: LCCOMB_X9_Y23_N20
\VGA_GEN|tmp_vcount[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_vcount[2]~7_combout\ = (!\VGA_GEN|Equal1~2_combout\ & ((\VGA_GEN|Equal2~1_combout\ & ((\VGA_GEN|tmp_vcount\(2)))) # (!\VGA_GEN|Equal2~1_combout\ & (\VGA_GEN|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Equal1~2_combout\,
	datab => \VGA_GEN|Add1~4_combout\,
	datac => \VGA_GEN|tmp_vcount\(2),
	datad => \VGA_GEN|Equal2~1_combout\,
	combout => \VGA_GEN|tmp_vcount[2]~7_combout\);

-- Location: FF_X9_Y23_N21
\VGA_GEN|tmp_vcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|tmp_vcount[2]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_vcount\(2));

-- Location: LCCOMB_X9_Y23_N6
\VGA_GEN|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add1~6_combout\ = (\VGA_GEN|tmp_vcount\(3) & (!\VGA_GEN|Add1~5\)) # (!\VGA_GEN|tmp_vcount\(3) & ((\VGA_GEN|Add1~5\) # (GND)))
-- \VGA_GEN|Add1~7\ = CARRY((!\VGA_GEN|Add1~5\) # (!\VGA_GEN|tmp_vcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|tmp_vcount\(3),
	datad => VCC,
	cin => \VGA_GEN|Add1~5\,
	combout => \VGA_GEN|Add1~6_combout\,
	cout => \VGA_GEN|Add1~7\);

-- Location: LCCOMB_X9_Y23_N24
\VGA_GEN|tmp_vcount[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_vcount[3]~6_combout\ = (!\VGA_GEN|Equal1~2_combout\ & ((\VGA_GEN|Equal2~1_combout\ & ((\VGA_GEN|tmp_vcount\(3)))) # (!\VGA_GEN|Equal2~1_combout\ & (\VGA_GEN|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Add1~6_combout\,
	datab => \VGA_GEN|Equal1~2_combout\,
	datac => \VGA_GEN|tmp_vcount\(3),
	datad => \VGA_GEN|Equal2~1_combout\,
	combout => \VGA_GEN|tmp_vcount[3]~6_combout\);

-- Location: FF_X9_Y23_N25
\VGA_GEN|tmp_vcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|tmp_vcount[3]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_vcount\(3));

-- Location: LCCOMB_X9_Y23_N8
\VGA_GEN|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add1~8_combout\ = (\VGA_GEN|tmp_vcount\(4) & (\VGA_GEN|Add1~7\ $ (GND))) # (!\VGA_GEN|tmp_vcount\(4) & (!\VGA_GEN|Add1~7\ & VCC))
-- \VGA_GEN|Add1~9\ = CARRY((\VGA_GEN|tmp_vcount\(4) & !\VGA_GEN|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_vcount\(4),
	datad => VCC,
	cin => \VGA_GEN|Add1~7\,
	combout => \VGA_GEN|Add1~8_combout\,
	cout => \VGA_GEN|Add1~9\);

-- Location: LCCOMB_X9_Y23_N22
\VGA_GEN|tmp_vcount[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_vcount[4]~5_combout\ = (!\VGA_GEN|Equal1~2_combout\ & ((\VGA_GEN|Equal2~1_combout\ & ((\VGA_GEN|tmp_vcount\(4)))) # (!\VGA_GEN|Equal2~1_combout\ & (\VGA_GEN|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Add1~8_combout\,
	datab => \VGA_GEN|Equal1~2_combout\,
	datac => \VGA_GEN|tmp_vcount\(4),
	datad => \VGA_GEN|Equal2~1_combout\,
	combout => \VGA_GEN|tmp_vcount[4]~5_combout\);

-- Location: FF_X9_Y23_N23
\VGA_GEN|tmp_vcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|tmp_vcount[4]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_vcount\(4));

-- Location: LCCOMB_X9_Y23_N10
\VGA_GEN|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add1~10_combout\ = (\VGA_GEN|tmp_vcount\(5) & (!\VGA_GEN|Add1~9\)) # (!\VGA_GEN|tmp_vcount\(5) & ((\VGA_GEN|Add1~9\) # (GND)))
-- \VGA_GEN|Add1~11\ = CARRY((!\VGA_GEN|Add1~9\) # (!\VGA_GEN|tmp_vcount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_vcount\(5),
	datad => VCC,
	cin => \VGA_GEN|Add1~9\,
	combout => \VGA_GEN|Add1~10_combout\,
	cout => \VGA_GEN|Add1~11\);

-- Location: LCCOMB_X9_Y23_N26
\VGA_GEN|tmp_vcount[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_vcount[5]~2_combout\ = (!\VGA_GEN|Equal1~2_combout\ & ((\VGA_GEN|Equal2~1_combout\ & ((\VGA_GEN|tmp_vcount\(5)))) # (!\VGA_GEN|Equal2~1_combout\ & (\VGA_GEN|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Add1~10_combout\,
	datab => \VGA_GEN|Equal1~2_combout\,
	datac => \VGA_GEN|tmp_vcount\(5),
	datad => \VGA_GEN|Equal2~1_combout\,
	combout => \VGA_GEN|tmp_vcount[5]~2_combout\);

-- Location: FF_X9_Y23_N27
\VGA_GEN|tmp_vcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|tmp_vcount[5]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_vcount\(5));

-- Location: LCCOMB_X10_Y23_N4
\VGA_GEN|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Equal1~1_combout\ = (!\VGA_GEN|tmp_vcount\(5) & (\VGA_GEN|tmp_vcount\(2) & (\VGA_GEN|tmp_vcount\(3) & !\VGA_GEN|tmp_vcount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_vcount\(5),
	datab => \VGA_GEN|tmp_vcount\(2),
	datac => \VGA_GEN|tmp_vcount\(3),
	datad => \VGA_GEN|tmp_vcount\(4),
	combout => \VGA_GEN|Equal1~1_combout\);

-- Location: LCCOMB_X9_Y23_N12
\VGA_GEN|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add1~12_combout\ = (\VGA_GEN|tmp_vcount\(6) & (\VGA_GEN|Add1~11\ $ (GND))) # (!\VGA_GEN|tmp_vcount\(6) & (!\VGA_GEN|Add1~11\ & VCC))
-- \VGA_GEN|Add1~13\ = CARRY((\VGA_GEN|tmp_vcount\(6) & !\VGA_GEN|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_vcount\(6),
	datad => VCC,
	cin => \VGA_GEN|Add1~11\,
	combout => \VGA_GEN|Add1~12_combout\,
	cout => \VGA_GEN|Add1~13\);

-- Location: LCCOMB_X9_Y23_N30
\VGA_GEN|tmp_vcount[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_vcount[6]~1_combout\ = (!\VGA_GEN|Equal1~2_combout\ & ((\VGA_GEN|Equal2~1_combout\ & ((\VGA_GEN|tmp_vcount\(6)))) # (!\VGA_GEN|Equal2~1_combout\ & (\VGA_GEN|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Add1~12_combout\,
	datab => \VGA_GEN|Equal1~2_combout\,
	datac => \VGA_GEN|tmp_vcount\(6),
	datad => \VGA_GEN|Equal2~1_combout\,
	combout => \VGA_GEN|tmp_vcount[6]~1_combout\);

-- Location: FF_X9_Y23_N31
\VGA_GEN|tmp_vcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|tmp_vcount[6]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_vcount\(6));

-- Location: LCCOMB_X9_Y23_N14
\VGA_GEN|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add1~14_combout\ = (\VGA_GEN|tmp_vcount\(7) & (!\VGA_GEN|Add1~13\)) # (!\VGA_GEN|tmp_vcount\(7) & ((\VGA_GEN|Add1~13\) # (GND)))
-- \VGA_GEN|Add1~15\ = CARRY((!\VGA_GEN|Add1~13\) # (!\VGA_GEN|tmp_vcount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_vcount\(7),
	datad => VCC,
	cin => \VGA_GEN|Add1~13\,
	combout => \VGA_GEN|Add1~14_combout\,
	cout => \VGA_GEN|Add1~15\);

-- Location: LCCOMB_X9_Y23_N16
\VGA_GEN|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add1~16_combout\ = (\VGA_GEN|tmp_vcount\(8) & (\VGA_GEN|Add1~15\ $ (GND))) # (!\VGA_GEN|tmp_vcount\(8) & (!\VGA_GEN|Add1~15\ & VCC))
-- \VGA_GEN|Add1~17\ = CARRY((\VGA_GEN|tmp_vcount\(8) & !\VGA_GEN|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|tmp_vcount\(8),
	datad => VCC,
	cin => \VGA_GEN|Add1~15\,
	combout => \VGA_GEN|Add1~16_combout\,
	cout => \VGA_GEN|Add1~17\);

-- Location: LCCOMB_X10_Y23_N28
\VGA_GEN|tmp_vcount[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_vcount[8]~3_combout\ = (!\VGA_GEN|Equal1~2_combout\ & ((\VGA_GEN|Equal2~1_combout\ & (\VGA_GEN|tmp_vcount\(8))) # (!\VGA_GEN|Equal2~1_combout\ & ((\VGA_GEN|Add1~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Equal1~2_combout\,
	datab => \VGA_GEN|Equal2~1_combout\,
	datac => \VGA_GEN|tmp_vcount\(8),
	datad => \VGA_GEN|Add1~16_combout\,
	combout => \VGA_GEN|tmp_vcount[8]~3_combout\);

-- Location: FF_X10_Y23_N29
\VGA_GEN|tmp_vcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|tmp_vcount[8]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_vcount\(8));

-- Location: LCCOMB_X9_Y23_N18
\VGA_GEN|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add1~18_combout\ = \VGA_GEN|Add1~17\ $ (\VGA_GEN|tmp_vcount\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_GEN|tmp_vcount\(9),
	cin => \VGA_GEN|Add1~17\,
	combout => \VGA_GEN|Add1~18_combout\);

-- Location: LCCOMB_X10_Y23_N14
\VGA_GEN|tmp_vcount[9]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_vcount[9]~4_combout\ = (!\VGA_GEN|Equal1~2_combout\ & ((\VGA_GEN|Equal2~1_combout\ & (\VGA_GEN|tmp_vcount\(9))) # (!\VGA_GEN|Equal2~1_combout\ & ((\VGA_GEN|Add1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Equal1~2_combout\,
	datab => \VGA_GEN|Equal2~1_combout\,
	datac => \VGA_GEN|tmp_vcount\(9),
	datad => \VGA_GEN|Add1~18_combout\,
	combout => \VGA_GEN|tmp_vcount[9]~4_combout\);

-- Location: FF_X10_Y23_N15
\VGA_GEN|tmp_vcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|tmp_vcount[9]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_vcount\(9));

-- Location: LCCOMB_X10_Y23_N0
\VGA_GEN|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Equal1~0_combout\ = (!\VGA_GEN|tmp_vcount\(7) & (!\VGA_GEN|tmp_vcount\(8) & (\VGA_GEN|tmp_vcount\(9) & !\VGA_GEN|tmp_vcount\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_vcount\(7),
	datab => \VGA_GEN|tmp_vcount\(8),
	datac => \VGA_GEN|tmp_vcount\(9),
	datad => \VGA_GEN|tmp_vcount\(6),
	combout => \VGA_GEN|Equal1~0_combout\);

-- Location: LCCOMB_X10_Y23_N22
\VGA_GEN|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Equal1~2_combout\ = (!\VGA_GEN|tmp_vcount\(0) & (!\VGA_GEN|tmp_vcount\(1) & (\VGA_GEN|Equal1~1_combout\ & \VGA_GEN|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_vcount\(0),
	datab => \VGA_GEN|tmp_vcount\(1),
	datac => \VGA_GEN|Equal1~1_combout\,
	datad => \VGA_GEN|Equal1~0_combout\,
	combout => \VGA_GEN|Equal1~2_combout\);

-- Location: LCCOMB_X10_Y23_N20
\VGA_GEN|tmp_vcount[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_vcount[7]~0_combout\ = (!\VGA_GEN|Equal1~2_combout\ & ((\VGA_GEN|Equal2~1_combout\ & (\VGA_GEN|tmp_vcount\(7))) # (!\VGA_GEN|Equal2~1_combout\ & ((\VGA_GEN|Add1~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Equal1~2_combout\,
	datab => \VGA_GEN|Equal2~1_combout\,
	datac => \VGA_GEN|tmp_vcount\(7),
	datad => \VGA_GEN|Add1~14_combout\,
	combout => \VGA_GEN|tmp_vcount[7]~0_combout\);

-- Location: FF_X10_Y23_N21
\VGA_GEN|tmp_vcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|tmp_vcount[7]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_vcount\(7));

-- Location: FF_X9_Y23_N9
\VGA_GEN|Vcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	asdata => \VGA_GEN|tmp_vcount\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Vcount\(7));

-- Location: FF_X9_Y23_N5
\VGA_GEN|Vcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	asdata => \VGA_GEN|tmp_vcount\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Vcount\(6));

-- Location: FF_X9_Y23_N3
\VGA_GEN|Vcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	asdata => \VGA_GEN|tmp_vcount\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Vcount\(4));

-- Location: FF_X9_Y23_N11
\VGA_GEN|Vcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	asdata => \VGA_GEN|tmp_vcount\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Vcount\(1));

-- Location: FF_X9_Y23_N1
\VGA_GEN|Vcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	asdata => \VGA_GEN|tmp_vcount\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Vcount\(2));

-- Location: FF_X8_Y23_N5
\VGA_GEN|Vcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	asdata => \VGA_GEN|tmp_vcount\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Vcount\(0));

-- Location: FF_X9_Y23_N7
\VGA_GEN|Vcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	asdata => \VGA_GEN|tmp_vcount\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Vcount\(3));

-- Location: LCCOMB_X8_Y23_N4
\OUTPUT_GEN|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|process_0~1_combout\ = (\VGA_GEN|Vcount\(1) & (\VGA_GEN|Vcount\(2) & (\VGA_GEN|Vcount\(0) & \VGA_GEN|Vcount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Vcount\(1),
	datab => \VGA_GEN|Vcount\(2),
	datac => \VGA_GEN|Vcount\(0),
	datad => \VGA_GEN|Vcount\(3),
	combout => \OUTPUT_GEN|process_0~1_combout\);

-- Location: FF_X9_Y23_N19
\VGA_GEN|Vcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	asdata => \VGA_GEN|tmp_vcount\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Vcount\(5));

-- Location: LCCOMB_X12_Y23_N22
\OUTPUT_GEN|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|process_0~2_combout\ = (\VGA_GEN|Vcount\(5) & ((\VGA_GEN|Vcount\(4)) # ((\OUTPUT_GEN|process_0~1_combout\ & \VGA_GEN|Vcount\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Vcount\(4),
	datab => \OUTPUT_GEN|process_0~1_combout\,
	datac => \VGA_GEN|Vcount\(5),
	datad => \VGA_GEN|Vcount\(7),
	combout => \OUTPUT_GEN|process_0~2_combout\);

-- Location: FF_X9_Y23_N13
\VGA_GEN|Vcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	asdata => \VGA_GEN|tmp_vcount\(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Vcount\(8));

-- Location: LCCOMB_X12_Y23_N6
\OUTPUT_GEN|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|process_0~6_combout\ = (\VGA_GEN|Vcount\(7) & (!\VGA_GEN|Vcount\(8) & ((\VGA_GEN|Vcount\(6)) # (\OUTPUT_GEN|process_0~2_combout\)))) # (!\VGA_GEN|Vcount\(7) & (!\VGA_GEN|Vcount\(6) & (!\OUTPUT_GEN|process_0~2_combout\ & \VGA_GEN|Vcount\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Vcount\(7),
	datab => \VGA_GEN|Vcount\(6),
	datac => \OUTPUT_GEN|process_0~2_combout\,
	datad => \VGA_GEN|Vcount\(8),
	combout => \OUTPUT_GEN|process_0~6_combout\);

-- Location: FF_X11_Y23_N3
\VGA_GEN|Hcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	asdata => \VGA_GEN|tmp_hcount\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Hcount\(6));

-- Location: LCCOMB_X12_Y23_N20
\VGA_GEN|Hcount[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Hcount[7]~feeder_combout\ = \VGA_GEN|tmp_hcount\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_GEN|tmp_hcount\(7),
	combout => \VGA_GEN|Hcount[7]~feeder_combout\);

-- Location: FF_X12_Y23_N21
\VGA_GEN|Hcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|Hcount[7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Hcount\(7));

-- Location: LCCOMB_X12_Y23_N28
\VGA_GEN|Hcount[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Hcount[5]~feeder_combout\ = \VGA_GEN|tmp_hcount\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_GEN|tmp_hcount\(5),
	combout => \VGA_GEN|Hcount[5]~feeder_combout\);

-- Location: FF_X12_Y23_N29
\VGA_GEN|Hcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|Hcount[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Hcount\(5));

-- Location: FF_X11_Y23_N5
\VGA_GEN|Hcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	asdata => \VGA_GEN|tmp_hcount\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Hcount\(4));

-- Location: FF_X11_Y23_N27
\VGA_GEN|Hcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	asdata => \VGA_GEN|tmp_hcount\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Hcount\(3));

-- Location: FF_X11_Y23_N25
\VGA_GEN|Hcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	asdata => \VGA_GEN|tmp_hcount\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Hcount\(1));

-- Location: FF_X12_Y23_N1
\VGA_GEN|Hcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	asdata => \VGA_GEN|tmp_hcount\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Hcount\(0));

-- Location: FF_X12_Y23_N15
\VGA_GEN|Hcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	asdata => \VGA_GEN|tmp_hcount\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Hcount\(2));

-- Location: LCCOMB_X12_Y23_N0
\COL_ADDR_GEN|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Mux6~0_combout\ = (\VGA_GEN|Hcount\(3) & (\VGA_GEN|Hcount\(1) & (\VGA_GEN|Hcount\(0) & \VGA_GEN|Hcount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Hcount\(3),
	datab => \VGA_GEN|Hcount\(1),
	datac => \VGA_GEN|Hcount\(0),
	datad => \VGA_GEN|Hcount\(2),
	combout => \COL_ADDR_GEN|Mux6~0_combout\);

-- Location: LCCOMB_X12_Y23_N16
\COL_ADDR_GEN|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Mux6~2_combout\ = (\VGA_GEN|Hcount\(5)) # ((\VGA_GEN|Hcount\(4) & \COL_ADDR_GEN|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|Hcount\(5),
	datac => \VGA_GEN|Hcount\(4),
	datad => \COL_ADDR_GEN|Mux6~0_combout\,
	combout => \COL_ADDR_GEN|Mux6~2_combout\);

-- Location: LCCOMB_X12_Y23_N26
\COL_ADDR_GEN|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Mux6~3_combout\ = (\VGA_GEN|Hcount\(6) & ((\VGA_GEN|Hcount\(7) & ((!\VGA_GEN|Hcount\(5)))) # (!\VGA_GEN|Hcount\(7) & (\COL_ADDR_GEN|Mux6~2_combout\)))) # (!\VGA_GEN|Hcount\(6) & (\VGA_GEN|Hcount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Hcount\(6),
	datab => \VGA_GEN|Hcount\(7),
	datac => \COL_ADDR_GEN|Mux6~2_combout\,
	datad => \VGA_GEN|Hcount\(5),
	combout => \COL_ADDR_GEN|Mux6~3_combout\);

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

-- Location: FF_X12_Y23_N11
\VGA_GEN|Hcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	asdata => \VGA_GEN|tmp_hcount\(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Hcount\(8));

-- Location: LCCOMB_X12_Y23_N12
\COL_ADDR_GEN|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Mux6~4_combout\ = (\button[1]~input_o\ & (\COL_ADDR_GEN|Mux6~3_combout\ & ((\VGA_GEN|Hcount\(8))))) # (!\button[1]~input_o\ & (((!\VGA_GEN|Hcount\(7) & !\VGA_GEN|Hcount\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COL_ADDR_GEN|Mux6~3_combout\,
	datab => \VGA_GEN|Hcount\(7),
	datac => \button[1]~input_o\,
	datad => \VGA_GEN|Hcount\(8),
	combout => \COL_ADDR_GEN|Mux6~4_combout\);

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

-- Location: LCCOMB_X12_Y23_N30
\COL_ADDR_GEN|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Mux6~1_combout\ = (\VGA_GEN|Hcount\(5) & ((\VGA_GEN|Hcount\(4)) # ((\VGA_GEN|Hcount\(7) & \COL_ADDR_GEN|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Hcount\(7),
	datab => \VGA_GEN|Hcount\(5),
	datac => \VGA_GEN|Hcount\(4),
	datad => \COL_ADDR_GEN|Mux6~0_combout\,
	combout => \COL_ADDR_GEN|Mux6~1_combout\);

-- Location: LCCOMB_X12_Y23_N10
\OUTPUT_GEN|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|process_0~8_combout\ = (\VGA_GEN|Hcount\(7) & (!\VGA_GEN|Hcount\(8) & ((\COL_ADDR_GEN|Mux6~1_combout\) # (\VGA_GEN|Hcount\(6))))) # (!\VGA_GEN|Hcount\(7) & (!\COL_ADDR_GEN|Mux6~1_combout\ & (\VGA_GEN|Hcount\(8) & !\VGA_GEN|Hcount\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COL_ADDR_GEN|Mux6~1_combout\,
	datab => \VGA_GEN|Hcount\(7),
	datac => \VGA_GEN|Hcount\(8),
	datad => \VGA_GEN|Hcount\(6),
	combout => \OUTPUT_GEN|process_0~8_combout\);

-- Location: LCCOMB_X10_Y23_N6
\VGA_GEN|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|process_0~4_combout\ = (\VGA_GEN|tmp_vcount\(9)) # ((\VGA_GEN|tmp_hcount\(9) & ((\VGA_GEN|tmp_hcount\(7)) # (\VGA_GEN|tmp_hcount\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_vcount\(9),
	datab => \VGA_GEN|tmp_hcount\(7),
	datac => \VGA_GEN|tmp_hcount\(9),
	datad => \VGA_GEN|tmp_hcount\(8),
	combout => \VGA_GEN|process_0~4_combout\);

-- Location: LCCOMB_X10_Y23_N2
\VGA_GEN|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|LessThan1~0_combout\ = (\VGA_GEN|tmp_vcount\(6) & (\VGA_GEN|tmp_vcount\(8) & (\VGA_GEN|tmp_vcount\(5) & \VGA_GEN|tmp_vcount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_vcount\(6),
	datab => \VGA_GEN|tmp_vcount\(8),
	datac => \VGA_GEN|tmp_vcount\(5),
	datad => \VGA_GEN|tmp_vcount\(7),
	combout => \VGA_GEN|LessThan1~0_combout\);

-- Location: LCCOMB_X10_Y23_N30
\VGA_GEN|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|process_0~5_combout\ = (\VGA_GEN|process_0~4_combout\) # (\VGA_GEN|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_GEN|process_0~4_combout\,
	datad => \VGA_GEN|LessThan1~0_combout\,
	combout => \VGA_GEN|process_0~5_combout\);

-- Location: FF_X10_Y23_N31
\VGA_GEN|Video_On\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|process_0~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Video_On~q\);

-- Location: FF_X10_Y23_N27
\VGA_GEN|Vcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	asdata => \VGA_GEN|tmp_vcount\(9),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Vcount\(9));

-- Location: FF_X10_Y23_N7
\VGA_GEN|Hcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	asdata => \VGA_GEN|tmp_hcount\(9),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Hcount\(9));

-- Location: LCCOMB_X10_Y23_N26
\OUTPUT_GEN|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|process_0~0_combout\ = (\VGA_GEN|Video_On~q\ & (!\VGA_GEN|Vcount\(9) & !\VGA_GEN|Hcount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Video_On~q\,
	datac => \VGA_GEN|Vcount\(9),
	datad => \VGA_GEN|Hcount\(9),
	combout => \OUTPUT_GEN|process_0~0_combout\);

-- Location: LCCOMB_X12_Y23_N18
\OUTPUT_GEN|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|process_0~9_combout\ = (\OUTPUT_GEN|process_0~0_combout\ & ((\button[2]~input_o\ & ((\OUTPUT_GEN|process_0~8_combout\))) # (!\button[2]~input_o\ & (\COL_ADDR_GEN|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COL_ADDR_GEN|Mux6~4_combout\,
	datab => \button[2]~input_o\,
	datac => \OUTPUT_GEN|process_0~8_combout\,
	datad => \OUTPUT_GEN|process_0~0_combout\,
	combout => \OUTPUT_GEN|process_0~9_combout\);

-- Location: LCCOMB_X12_Y23_N14
\OUTPUT_GEN|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|process_0~3_combout\ = (\VGA_GEN|Vcount\(5)) # ((\OUTPUT_GEN|process_0~1_combout\ & \VGA_GEN|Vcount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Vcount\(5),
	datab => \OUTPUT_GEN|process_0~1_combout\,
	datad => \VGA_GEN|Vcount\(4),
	combout => \OUTPUT_GEN|process_0~3_combout\);

-- Location: LCCOMB_X12_Y23_N24
\OUTPUT_GEN|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|process_0~4_combout\ = (\VGA_GEN|Vcount\(6) & ((\VGA_GEN|Vcount\(7) & (!\VGA_GEN|Vcount\(5))) # (!\VGA_GEN|Vcount\(7) & ((\OUTPUT_GEN|process_0~3_combout\))))) # (!\VGA_GEN|Vcount\(6) & (((\VGA_GEN|Vcount\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Vcount\(5),
	datab => \OUTPUT_GEN|process_0~3_combout\,
	datac => \VGA_GEN|Vcount\(6),
	datad => \VGA_GEN|Vcount\(7),
	combout => \OUTPUT_GEN|process_0~4_combout\);

-- Location: LCCOMB_X12_Y23_N2
\OUTPUT_GEN|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|process_0~5_combout\ = (\VGA_GEN|Vcount\(8) & (\OUTPUT_GEN|process_0~4_combout\ & (\button[1]~input_o\))) # (!\VGA_GEN|Vcount\(8) & (((!\button[1]~input_o\ & !\VGA_GEN|Vcount\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Vcount\(8),
	datab => \OUTPUT_GEN|process_0~4_combout\,
	datac => \button[1]~input_o\,
	datad => \VGA_GEN|Vcount\(7),
	combout => \OUTPUT_GEN|process_0~5_combout\);

-- Location: LCCOMB_X12_Y23_N8
\OUTPUT_GEN|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|process_0~7_combout\ = (\OUTPUT_GEN|process_0~9_combout\ & ((\button[2]~input_o\ & (\OUTPUT_GEN|process_0~6_combout\)) # (!\button[2]~input_o\ & ((\OUTPUT_GEN|process_0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUTPUT_GEN|process_0~6_combout\,
	datab => \OUTPUT_GEN|process_0~9_combout\,
	datac => \button[2]~input_o\,
	datad => \OUTPUT_GEN|process_0~5_combout\,
	combout => \OUTPUT_GEN|process_0~7_combout\);

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

ww_Horiz_Sync <= \Horiz_Sync~output_o\;

ww_Vert_Sync <= \Vert_Sync~output_o\;

ww_rgb(0) <= \rgb[0]~output_o\;

ww_rgb(1) <= \rgb[1]~output_o\;

ww_rgb(2) <= \rgb[2]~output_o\;

ww_rgb(3) <= \rgb[3]~output_o\;

ww_rgb(4) <= \rgb[4]~output_o\;

ww_rgb(5) <= \rgb[5]~output_o\;

ww_rgb(6) <= \rgb[6]~output_o\;

ww_rgb(7) <= \rgb[7]~output_o\;

ww_rgb(8) <= \rgb[8]~output_o\;

ww_rgb(9) <= \rgb[9]~output_o\;

ww_rgb(10) <= \rgb[10]~output_o\;

ww_rgb(11) <= \rgb[11]~output_o\;
END structure;


