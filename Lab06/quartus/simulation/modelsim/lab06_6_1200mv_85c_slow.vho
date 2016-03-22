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

-- DATE "03/11/2016 20:50:39"

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
	Horiz_Sync : OUT std_logic;
	Vert_Sync : OUT std_logic;
	rgb : OUT std_logic_vector(11 DOWNTO 0)
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
-- button[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ROM|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ROM|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ROM|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ROM|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ROM|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ROM|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ROM|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ROM|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ROM|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ROM|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
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
SIGNAL \P_CLK|Equal0~6_combout\ : std_logic;
SIGNAL \P_CLK|counter[23]~77\ : std_logic;
SIGNAL \P_CLK|counter[24]~78_combout\ : std_logic;
SIGNAL \P_CLK|counter[24]~79\ : std_logic;
SIGNAL \P_CLK|counter[25]~80_combout\ : std_logic;
SIGNAL \P_CLK|counter[25]~81\ : std_logic;
SIGNAL \P_CLK|counter[26]~82_combout\ : std_logic;
SIGNAL \P_CLK|counter[26]~83\ : std_logic;
SIGNAL \P_CLK|counter[27]~84_combout\ : std_logic;
SIGNAL \P_CLK|Equal0~7_combout\ : std_logic;
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
SIGNAL \P_CLK|counter~31_combout\ : std_logic;
SIGNAL \P_CLK|counter[1]~32_combout\ : std_logic;
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
SIGNAL \P_CLK|Equal0~1_combout\ : std_logic;
SIGNAL \P_CLK|Equal0~0_combout\ : std_logic;
SIGNAL \P_CLK|Equal0~2_combout\ : std_logic;
SIGNAL \P_CLK|Equal0~3_combout\ : std_logic;
SIGNAL \P_CLK|Equal0~4_combout\ : std_logic;
SIGNAL \P_CLK|tmp~0_combout\ : std_logic;
SIGNAL \P_CLK|tmp~feeder_combout\ : std_logic;
SIGNAL \P_CLK|tmp~q\ : std_logic;
SIGNAL \P_CLK|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \VGA_GEN|Add0~0_combout\ : std_logic;
SIGNAL \VGA_GEN|Add0~1\ : std_logic;
SIGNAL \VGA_GEN|Add0~2_combout\ : std_logic;
SIGNAL \VGA_GEN|Add0~3\ : std_logic;
SIGNAL \VGA_GEN|Add0~4_combout\ : std_logic;
SIGNAL \VGA_GEN|Add0~5\ : std_logic;
SIGNAL \VGA_GEN|Add0~6_combout\ : std_logic;
SIGNAL \VGA_GEN|Add0~7\ : std_logic;
SIGNAL \VGA_GEN|Add0~8_combout\ : std_logic;
SIGNAL \VGA_GEN|Add0~9\ : std_logic;
SIGNAL \VGA_GEN|Add0~10_combout\ : std_logic;
SIGNAL \VGA_GEN|Add0~13\ : std_logic;
SIGNAL \VGA_GEN|Add0~14_combout\ : std_logic;
SIGNAL \VGA_GEN|Add0~15\ : std_logic;
SIGNAL \VGA_GEN|Add0~16_combout\ : std_logic;
SIGNAL \VGA_GEN|tmp_hcount~0_combout\ : std_logic;
SIGNAL \VGA_GEN|Add0~17\ : std_logic;
SIGNAL \VGA_GEN|Add0~18_combout\ : std_logic;
SIGNAL \VGA_GEN|tmp_hcount~1_combout\ : std_logic;
SIGNAL \VGA_GEN|Equal0~0_combout\ : std_logic;
SIGNAL \VGA_GEN|Equal0~1_combout\ : std_logic;
SIGNAL \VGA_GEN|Equal0~2_combout\ : std_logic;
SIGNAL \VGA_GEN|tmp_hcount~2_combout\ : std_logic;
SIGNAL \VGA_GEN|Add0~11\ : std_logic;
SIGNAL \VGA_GEN|Add0~12_combout\ : std_logic;
SIGNAL \VGA_GEN|process_0~1_combout\ : std_logic;
SIGNAL \VGA_GEN|process_0~2_combout\ : std_logic;
SIGNAL \VGA_GEN|process_0~0_combout\ : std_logic;
SIGNAL \VGA_GEN|process_0~3_combout\ : std_logic;
SIGNAL \VGA_GEN|Horiz_Sync~q\ : std_logic;
SIGNAL \button[2]~input_o\ : std_logic;
SIGNAL \button[1]~input_o\ : std_logic;
SIGNAL \COL_ADDR_GEN|Mux5~8_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|Add0~0_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|Mux5~4_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|process_0~0_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|process_0~1_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|process_0~2_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|process_0~3_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|Mux5~6_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|Mux5~5_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|Mux5~7_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|Mux5~9_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|Mux5~10_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|Add0~2_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|Add0~1\ : std_logic;
SIGNAL \COL_ADDR_GEN|Add0~3_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|Add0~5_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|Add0~4\ : std_logic;
SIGNAL \COL_ADDR_GEN|Add0~6_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|Add0~8_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|Add0~7\ : std_logic;
SIGNAL \COL_ADDR_GEN|Add0~9_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|Add0~11_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|Add0~10\ : std_logic;
SIGNAL \COL_ADDR_GEN|Add0~12_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|Add0~14_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|Add0~13\ : std_logic;
SIGNAL \COL_ADDR_GEN|Add0~15_combout\ : std_logic;
SIGNAL \COL_ADDR_GEN|Add0~17_combout\ : std_logic;
SIGNAL \VGA_GEN|Add1~0_combout\ : std_logic;
SIGNAL \VGA_GEN|Equal2~0_combout\ : std_logic;
SIGNAL \VGA_GEN|Equal2~1_combout\ : std_logic;
SIGNAL \VGA_GEN|tmp_vcount[0]~9_combout\ : std_logic;
SIGNAL \VGA_GEN|Add1~1\ : std_logic;
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
SIGNAL \VGA_GEN|tmp_vcount[5]~3_combout\ : std_logic;
SIGNAL \VGA_GEN|Equal1~1_combout\ : std_logic;
SIGNAL \VGA_GEN|Add1~11\ : std_logic;
SIGNAL \VGA_GEN|Add1~12_combout\ : std_logic;
SIGNAL \VGA_GEN|tmp_vcount[6]~2_combout\ : std_logic;
SIGNAL \VGA_GEN|Add1~13\ : std_logic;
SIGNAL \VGA_GEN|Add1~14_combout\ : std_logic;
SIGNAL \VGA_GEN|tmp_vcount[7]~1_combout\ : std_logic;
SIGNAL \VGA_GEN|Add1~15\ : std_logic;
SIGNAL \VGA_GEN|Add1~16_combout\ : std_logic;
SIGNAL \VGA_GEN|tmp_vcount[8]~0_combout\ : std_logic;
SIGNAL \VGA_GEN|Add1~17\ : std_logic;
SIGNAL \VGA_GEN|Add1~18_combout\ : std_logic;
SIGNAL \VGA_GEN|tmp_vcount[9]~4_combout\ : std_logic;
SIGNAL \VGA_GEN|Equal1~0_combout\ : std_logic;
SIGNAL \VGA_GEN|Equal1~2_combout\ : std_logic;
SIGNAL \VGA_GEN|Add1~2_combout\ : std_logic;
SIGNAL \VGA_GEN|tmp_vcount[1]~8_combout\ : std_logic;
SIGNAL \ROW_ADDR_GEN|Mux5~4_combout\ : std_logic;
SIGNAL \ROW_ADDR_GEN|process_0~1_combout\ : std_logic;
SIGNAL \ROW_ADDR_GEN|process_0~4_combout\ : std_logic;
SIGNAL \ROW_ADDR_GEN|process_0~5_combout\ : std_logic;
SIGNAL \ROW_ADDR_GEN|process_0~6_combout\ : std_logic;
SIGNAL \ROW_ADDR_GEN|process_0~2_combout\ : std_logic;
SIGNAL \ROW_ADDR_GEN|process_0~0_combout\ : std_logic;
SIGNAL \ROW_ADDR_GEN|process_0~3_combout\ : std_logic;
SIGNAL \ROW_ADDR_GEN|Mux5~5_combout\ : std_logic;
SIGNAL \ROW_ADDR_GEN|Mux5~6_combout\ : std_logic;
SIGNAL \ROW_ADDR_GEN|Add0~0_combout\ : std_logic;
SIGNAL \ROW_ADDR_GEN|Add0~2_combout\ : std_logic;
SIGNAL \ROW_ADDR_GEN|Add0~1\ : std_logic;
SIGNAL \ROW_ADDR_GEN|Add0~3_combout\ : std_logic;
SIGNAL \ROW_ADDR_GEN|Add0~5_combout\ : std_logic;
SIGNAL \ROW_ADDR_GEN|Add0~4\ : std_logic;
SIGNAL \ROW_ADDR_GEN|Add0~6_combout\ : std_logic;
SIGNAL \ROW_ADDR_GEN|Add0~8_combout\ : std_logic;
SIGNAL \ROW_ADDR_GEN|Add0~7\ : std_logic;
SIGNAL \ROW_ADDR_GEN|Add0~9_combout\ : std_logic;
SIGNAL \ROW_ADDR_GEN|Add0~11_combout\ : std_logic;
SIGNAL \ROW_ADDR_GEN|Add0~10\ : std_logic;
SIGNAL \ROW_ADDR_GEN|Add0~12_combout\ : std_logic;
SIGNAL \ROW_ADDR_GEN|Add0~14_combout\ : std_logic;
SIGNAL \ROW_ADDR_GEN|Add0~13\ : std_logic;
SIGNAL \ROW_ADDR_GEN|Add0~15_combout\ : std_logic;
SIGNAL \ROW_ADDR_GEN|Add0~17_combout\ : std_logic;
SIGNAL \VGA_GEN|process_0~4_combout\ : std_logic;
SIGNAL \VGA_GEN|LessThan1~0_combout\ : std_logic;
SIGNAL \VGA_GEN|process_0~5_combout\ : std_logic;
SIGNAL \VGA_GEN|Video_On~q\ : std_logic;
SIGNAL \OUTPUT_GEN|process_0~0_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|process_0~1_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|process_0~2_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|process_0~3_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|rgb_out[0]~0_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|rgb_out[1]~1_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|rgb_out[2]~2_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|rgb_out[3]~3_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|rgb_out[4]~4_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|rgb_out[5]~5_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|rgb_out[6]~6_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|rgb_out[7]~7_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|rgb_out[8]~8_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|rgb_out[9]~9_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|rgb_out[10]~10_combout\ : std_logic;
SIGNAL \OUTPUT_GEN|rgb_out[11]~11_combout\ : std_logic;
SIGNAL \ROM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
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

\ROM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\ROW_ADDR_GEN|Add0~17_combout\ & \ROW_ADDR_GEN|Add0~14_combout\ & \ROW_ADDR_GEN|Add0~11_combout\ & \ROW_ADDR_GEN|Add0~8_combout\ & \ROW_ADDR_GEN|Add0~5_combout\ & 
\ROW_ADDR_GEN|Add0~2_combout\ & \COL_ADDR_GEN|Add0~17_combout\ & \COL_ADDR_GEN|Add0~14_combout\ & \COL_ADDR_GEN|Add0~11_combout\ & \COL_ADDR_GEN|Add0~8_combout\ & \COL_ADDR_GEN|Add0~5_combout\ & \COL_ADDR_GEN|Add0~2_combout\);

\ROM|altsyncram_component|auto_generated|q_a\(0) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\ROM|altsyncram_component|auto_generated|q_a\(1) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\ROM|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\ROW_ADDR_GEN|Add0~17_combout\ & \ROW_ADDR_GEN|Add0~14_combout\ & \ROW_ADDR_GEN|Add0~11_combout\ & \ROW_ADDR_GEN|Add0~8_combout\ & \ROW_ADDR_GEN|Add0~5_combout\ & 
\ROW_ADDR_GEN|Add0~2_combout\ & \COL_ADDR_GEN|Add0~17_combout\ & \COL_ADDR_GEN|Add0~14_combout\ & \COL_ADDR_GEN|Add0~11_combout\ & \COL_ADDR_GEN|Add0~8_combout\ & \COL_ADDR_GEN|Add0~5_combout\ & \COL_ADDR_GEN|Add0~2_combout\);

\ROM|altsyncram_component|auto_generated|q_a\(2) <= \ROM|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\ROM|altsyncram_component|auto_generated|q_a\(3) <= \ROM|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\ROM|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\ROW_ADDR_GEN|Add0~17_combout\ & \ROW_ADDR_GEN|Add0~14_combout\ & \ROW_ADDR_GEN|Add0~11_combout\ & \ROW_ADDR_GEN|Add0~8_combout\ & \ROW_ADDR_GEN|Add0~5_combout\ & 
\ROW_ADDR_GEN|Add0~2_combout\ & \COL_ADDR_GEN|Add0~17_combout\ & \COL_ADDR_GEN|Add0~14_combout\ & \COL_ADDR_GEN|Add0~11_combout\ & \COL_ADDR_GEN|Add0~8_combout\ & \COL_ADDR_GEN|Add0~5_combout\ & \COL_ADDR_GEN|Add0~2_combout\);

\ROM|altsyncram_component|auto_generated|q_a\(4) <= \ROM|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\ROM|altsyncram_component|auto_generated|q_a\(5) <= \ROM|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\ROM|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\ROW_ADDR_GEN|Add0~17_combout\ & \ROW_ADDR_GEN|Add0~14_combout\ & \ROW_ADDR_GEN|Add0~11_combout\ & \ROW_ADDR_GEN|Add0~8_combout\ & \ROW_ADDR_GEN|Add0~5_combout\ & 
\ROW_ADDR_GEN|Add0~2_combout\ & \COL_ADDR_GEN|Add0~17_combout\ & \COL_ADDR_GEN|Add0~14_combout\ & \COL_ADDR_GEN|Add0~11_combout\ & \COL_ADDR_GEN|Add0~8_combout\ & \COL_ADDR_GEN|Add0~5_combout\ & \COL_ADDR_GEN|Add0~2_combout\);

\ROM|altsyncram_component|auto_generated|q_a\(6) <= \ROM|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\ROM|altsyncram_component|auto_generated|q_a\(7) <= \ROM|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\ROM|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\ROW_ADDR_GEN|Add0~17_combout\ & \ROW_ADDR_GEN|Add0~14_combout\ & \ROW_ADDR_GEN|Add0~11_combout\ & \ROW_ADDR_GEN|Add0~8_combout\ & \ROW_ADDR_GEN|Add0~5_combout\ & 
\ROW_ADDR_GEN|Add0~2_combout\ & \COL_ADDR_GEN|Add0~17_combout\ & \COL_ADDR_GEN|Add0~14_combout\ & \COL_ADDR_GEN|Add0~11_combout\ & \COL_ADDR_GEN|Add0~8_combout\ & \COL_ADDR_GEN|Add0~5_combout\ & \COL_ADDR_GEN|Add0~2_combout\);

\ROM|altsyncram_component|auto_generated|q_a\(8) <= \ROM|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\ROM|altsyncram_component|auto_generated|q_a\(9) <= \ROM|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);

\ROM|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\ROW_ADDR_GEN|Add0~17_combout\ & \ROW_ADDR_GEN|Add0~14_combout\ & \ROW_ADDR_GEN|Add0~11_combout\ & \ROW_ADDR_GEN|Add0~8_combout\ & \ROW_ADDR_GEN|Add0~5_combout\ & 
\ROW_ADDR_GEN|Add0~2_combout\ & \COL_ADDR_GEN|Add0~17_combout\ & \COL_ADDR_GEN|Add0~14_combout\ & \COL_ADDR_GEN|Add0~11_combout\ & \COL_ADDR_GEN|Add0~8_combout\ & \COL_ADDR_GEN|Add0~5_combout\ & \COL_ADDR_GEN|Add0~2_combout\);

\ROM|altsyncram_component|auto_generated|q_a\(10) <= \ROM|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\ROM|altsyncram_component|auto_generated|q_a\(11) <= \ROM|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);

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
	i => \OUTPUT_GEN|rgb_out[0]~0_combout\,
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
	i => \OUTPUT_GEN|rgb_out[1]~1_combout\,
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
	i => \OUTPUT_GEN|rgb_out[2]~2_combout\,
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
	i => \OUTPUT_GEN|rgb_out[3]~3_combout\,
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
	i => \OUTPUT_GEN|rgb_out[4]~4_combout\,
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
	i => \OUTPUT_GEN|rgb_out[5]~5_combout\,
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
	i => \OUTPUT_GEN|rgb_out[6]~6_combout\,
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
	i => \OUTPUT_GEN|rgb_out[7]~7_combout\,
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
	i => \OUTPUT_GEN|rgb_out[8]~8_combout\,
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
	i => \OUTPUT_GEN|rgb_out[9]~9_combout\,
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
	i => \OUTPUT_GEN|rgb_out[10]~10_combout\,
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
	i => \OUTPUT_GEN|rgb_out[11]~11_combout\,
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

-- Location: LCCOMB_X11_Y23_N18
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

-- Location: FF_X11_Y23_N19
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

-- Location: LCCOMB_X10_Y23_N14
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

-- Location: LCCOMB_X10_Y23_N16
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

-- Location: FF_X10_Y23_N17
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

-- Location: LCCOMB_X10_Y23_N18
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

-- Location: FF_X10_Y23_N19
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

-- Location: LCCOMB_X10_Y23_N20
\P_CLK|counter[10]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[10]~50_combout\ = (\P_CLK|counter\(10) & (!\P_CLK|counter[9]~49\)) # (!\P_CLK|counter\(10) & ((\P_CLK|counter[9]~49\) # (GND)))
-- \P_CLK|counter[10]~51\ = CARRY((!\P_CLK|counter[9]~49\) # (!\P_CLK|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(10),
	datad => VCC,
	cin => \P_CLK|counter[9]~49\,
	combout => \P_CLK|counter[10]~50_combout\,
	cout => \P_CLK|counter[10]~51\);

-- Location: FF_X10_Y23_N21
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

-- Location: LCCOMB_X10_Y23_N22
\P_CLK|counter[11]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter[11]~52_combout\ = (\P_CLK|counter\(11) & (\P_CLK|counter[10]~51\ $ (GND))) # (!\P_CLK|counter\(11) & (!\P_CLK|counter[10]~51\ & VCC))
-- \P_CLK|counter[11]~53\ = CARRY((\P_CLK|counter\(11) & !\P_CLK|counter[10]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(11),
	datad => VCC,
	cin => \P_CLK|counter[10]~51\,
	combout => \P_CLK|counter[11]~52_combout\,
	cout => \P_CLK|counter[11]~53\);

-- Location: FF_X10_Y23_N23
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

-- Location: LCCOMB_X10_Y23_N24
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

-- Location: FF_X10_Y23_N25
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

-- Location: LCCOMB_X10_Y23_N26
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

-- Location: FF_X10_Y23_N27
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

-- Location: LCCOMB_X10_Y23_N28
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

-- Location: FF_X10_Y23_N29
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

-- Location: LCCOMB_X10_Y23_N30
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

-- Location: FF_X10_Y23_N31
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

-- Location: LCCOMB_X10_Y22_N0
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

-- Location: FF_X10_Y22_N1
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

-- Location: LCCOMB_X10_Y22_N2
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

-- Location: FF_X10_Y22_N3
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

-- Location: LCCOMB_X10_Y22_N4
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

-- Location: FF_X10_Y22_N5
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

-- Location: LCCOMB_X10_Y22_N6
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

-- Location: FF_X10_Y22_N7
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

-- Location: LCCOMB_X10_Y22_N8
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

-- Location: FF_X10_Y22_N9
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

-- Location: LCCOMB_X10_Y22_N10
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

-- Location: FF_X10_Y22_N11
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

-- Location: LCCOMB_X10_Y22_N12
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

-- Location: FF_X10_Y22_N13
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

-- Location: LCCOMB_X10_Y22_N14
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

-- Location: FF_X10_Y22_N15
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

-- Location: LCCOMB_X11_Y23_N26
\P_CLK|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|Equal0~6_combout\ = (!\P_CLK|counter\(21) & (!\P_CLK|counter\(23) & (!\P_CLK|counter\(20) & !\P_CLK|counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(21),
	datab => \P_CLK|counter\(23),
	datac => \P_CLK|counter\(20),
	datad => \P_CLK|counter\(22),
	combout => \P_CLK|Equal0~6_combout\);

-- Location: LCCOMB_X10_Y22_N16
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

-- Location: FF_X10_Y22_N17
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

-- Location: LCCOMB_X10_Y22_N18
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

-- Location: FF_X10_Y22_N19
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

-- Location: LCCOMB_X10_Y22_N20
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

-- Location: FF_X10_Y22_N21
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

-- Location: LCCOMB_X10_Y22_N22
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

-- Location: FF_X10_Y22_N23
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

-- Location: LCCOMB_X11_Y23_N0
\P_CLK|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|Equal0~7_combout\ = (!\P_CLK|counter\(25) & (!\P_CLK|counter\(27) & (!\P_CLK|counter\(24) & !\P_CLK|counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(25),
	datab => \P_CLK|counter\(27),
	datac => \P_CLK|counter\(24),
	datad => \P_CLK|counter\(26),
	combout => \P_CLK|Equal0~7_combout\);

-- Location: LCCOMB_X11_Y23_N4
\P_CLK|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|Equal0~5_combout\ = (!\P_CLK|counter\(16) & (!\P_CLK|counter\(17) & (!\P_CLK|counter\(19) & !\P_CLK|counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(16),
	datab => \P_CLK|counter\(17),
	datac => \P_CLK|counter\(19),
	datad => \P_CLK|counter\(18),
	combout => \P_CLK|Equal0~5_combout\);

-- Location: LCCOMB_X10_Y22_N24
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

-- Location: FF_X10_Y22_N25
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

-- Location: LCCOMB_X10_Y22_N26
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

-- Location: FF_X10_Y22_N27
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

-- Location: LCCOMB_X10_Y22_N28
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

-- Location: FF_X10_Y22_N29
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

-- Location: LCCOMB_X10_Y22_N30
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

-- Location: FF_X10_Y22_N31
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

-- Location: LCCOMB_X11_Y23_N28
\P_CLK|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|Equal0~8_combout\ = (!\P_CLK|counter\(29) & (!\P_CLK|counter\(28) & (!\P_CLK|counter\(30) & !\P_CLK|counter\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(29),
	datab => \P_CLK|counter\(28),
	datac => \P_CLK|counter\(30),
	datad => \P_CLK|counter\(31),
	combout => \P_CLK|Equal0~8_combout\);

-- Location: LCCOMB_X11_Y23_N20
\P_CLK|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|Equal0~9_combout\ = (\P_CLK|Equal0~6_combout\ & (\P_CLK|Equal0~7_combout\ & (\P_CLK|Equal0~5_combout\ & \P_CLK|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|Equal0~6_combout\,
	datab => \P_CLK|Equal0~7_combout\,
	datac => \P_CLK|Equal0~5_combout\,
	datad => \P_CLK|Equal0~8_combout\,
	combout => \P_CLK|Equal0~9_combout\);

-- Location: LCCOMB_X11_Y23_N6
\P_CLK|counter~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|counter~31_combout\ = (\P_CLK|counter\(0) & ((!\P_CLK|Equal0~9_combout\) # (!\P_CLK|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P_CLK|counter\(0),
	datac => \P_CLK|Equal0~4_combout\,
	datad => \P_CLK|Equal0~9_combout\,
	combout => \P_CLK|counter~31_combout\);

-- Location: LCCOMB_X10_Y23_N2
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

-- Location: FF_X11_Y23_N13
\P_CLK|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \P_CLK|counter[1]~32_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P_CLK|counter\(1));

-- Location: LCCOMB_X10_Y23_N4
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

-- Location: FF_X10_Y23_N5
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

-- Location: LCCOMB_X10_Y23_N6
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

-- Location: FF_X10_Y23_N7
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

-- Location: LCCOMB_X10_Y23_N8
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

-- Location: FF_X10_Y23_N9
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

-- Location: LCCOMB_X10_Y23_N10
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

-- Location: FF_X10_Y23_N11
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

-- Location: LCCOMB_X10_Y23_N12
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

-- Location: FF_X10_Y23_N13
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

-- Location: FF_X10_Y23_N15
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

-- Location: LCCOMB_X11_Y23_N22
\P_CLK|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|Equal0~1_combout\ = (!\P_CLK|counter\(7) & (!\P_CLK|counter\(5) & (!\P_CLK|counter\(4) & !\P_CLK|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(7),
	datab => \P_CLK|counter\(5),
	datac => \P_CLK|counter\(4),
	datad => \P_CLK|counter\(6),
	combout => \P_CLK|Equal0~1_combout\);

-- Location: LCCOMB_X11_Y23_N24
\P_CLK|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|Equal0~0_combout\ = (!\P_CLK|counter\(1) & (\P_CLK|counter\(0) & (!\P_CLK|counter\(2) & !\P_CLK|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(1),
	datab => \P_CLK|counter\(0),
	datac => \P_CLK|counter\(2),
	datad => \P_CLK|counter\(3),
	combout => \P_CLK|Equal0~0_combout\);

-- Location: LCCOMB_X10_Y23_N0
\P_CLK|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|Equal0~2_combout\ = (!\P_CLK|counter\(11) & (!\P_CLK|counter\(8) & (!\P_CLK|counter\(10) & !\P_CLK|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(11),
	datab => \P_CLK|counter\(8),
	datac => \P_CLK|counter\(10),
	datad => \P_CLK|counter\(9),
	combout => \P_CLK|Equal0~2_combout\);

-- Location: LCCOMB_X11_Y23_N16
\P_CLK|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|Equal0~3_combout\ = (!\P_CLK|counter\(15) & (!\P_CLK|counter\(14) & (!\P_CLK|counter\(13) & !\P_CLK|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|counter\(15),
	datab => \P_CLK|counter\(14),
	datac => \P_CLK|counter\(13),
	datad => \P_CLK|counter\(12),
	combout => \P_CLK|Equal0~3_combout\);

-- Location: LCCOMB_X11_Y23_N30
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

-- Location: LCCOMB_X11_Y23_N12
\P_CLK|tmp~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|tmp~0_combout\ = \P_CLK|tmp~q\ $ (((\P_CLK|Equal0~4_combout\ & \P_CLK|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_CLK|Equal0~4_combout\,
	datab => \P_CLK|tmp~q\,
	datad => \P_CLK|Equal0~9_combout\,
	combout => \P_CLK|tmp~0_combout\);

-- Location: LCCOMB_X11_Y23_N14
\P_CLK|tmp~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P_CLK|tmp~feeder_combout\ = \P_CLK|tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P_CLK|tmp~0_combout\,
	combout => \P_CLK|tmp~feeder_combout\);

-- Location: FF_X11_Y23_N15
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

-- Location: CLKCTRL_G12
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

-- Location: LCCOMB_X29_Y23_N10
\VGA_GEN|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add0~0_combout\ = \VGA_GEN|tmp_hcount\(0) $ (VCC)
-- \VGA_GEN|Add0~1\ = CARRY(\VGA_GEN|tmp_hcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(0),
	datad => VCC,
	combout => \VGA_GEN|Add0~0_combout\,
	cout => \VGA_GEN|Add0~1\);

-- Location: FF_X29_Y23_N11
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

-- Location: LCCOMB_X29_Y23_N12
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

-- Location: FF_X29_Y23_N13
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

-- Location: LCCOMB_X29_Y23_N14
\VGA_GEN|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add0~4_combout\ = (\VGA_GEN|tmp_hcount\(2) & (\VGA_GEN|Add0~3\ $ (GND))) # (!\VGA_GEN|tmp_hcount\(2) & (!\VGA_GEN|Add0~3\ & VCC))
-- \VGA_GEN|Add0~5\ = CARRY((\VGA_GEN|tmp_hcount\(2) & !\VGA_GEN|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|tmp_hcount\(2),
	datad => VCC,
	cin => \VGA_GEN|Add0~3\,
	combout => \VGA_GEN|Add0~4_combout\,
	cout => \VGA_GEN|Add0~5\);

-- Location: FF_X29_Y23_N15
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

-- Location: LCCOMB_X29_Y23_N16
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

-- Location: FF_X29_Y23_N17
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

-- Location: LCCOMB_X29_Y23_N18
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

-- Location: FF_X29_Y23_N19
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

-- Location: LCCOMB_X29_Y23_N20
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

-- Location: LCCOMB_X29_Y23_N22
\VGA_GEN|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add0~12_combout\ = (\VGA_GEN|tmp_hcount\(6) & (\VGA_GEN|Add0~11\ $ (GND))) # (!\VGA_GEN|tmp_hcount\(6) & (!\VGA_GEN|Add0~11\ & VCC))
-- \VGA_GEN|Add0~13\ = CARRY((\VGA_GEN|tmp_hcount\(6) & !\VGA_GEN|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(6),
	datad => VCC,
	cin => \VGA_GEN|Add0~11\,
	combout => \VGA_GEN|Add0~12_combout\,
	cout => \VGA_GEN|Add0~13\);

-- Location: LCCOMB_X29_Y23_N24
\VGA_GEN|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add0~14_combout\ = (\VGA_GEN|tmp_hcount\(7) & (!\VGA_GEN|Add0~13\)) # (!\VGA_GEN|tmp_hcount\(7) & ((\VGA_GEN|Add0~13\) # (GND)))
-- \VGA_GEN|Add0~15\ = CARRY((!\VGA_GEN|Add0~13\) # (!\VGA_GEN|tmp_hcount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|tmp_hcount\(7),
	datad => VCC,
	cin => \VGA_GEN|Add0~13\,
	combout => \VGA_GEN|Add0~14_combout\,
	cout => \VGA_GEN|Add0~15\);

-- Location: FF_X29_Y23_N25
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

-- Location: LCCOMB_X29_Y23_N26
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

-- Location: LCCOMB_X29_Y23_N6
\VGA_GEN|tmp_hcount~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_hcount~0_combout\ = (\VGA_GEN|Add0~16_combout\ & !\VGA_GEN|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_GEN|Add0~16_combout\,
	datad => \VGA_GEN|Equal0~2_combout\,
	combout => \VGA_GEN|tmp_hcount~0_combout\);

-- Location: FF_X29_Y23_N7
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

-- Location: LCCOMB_X29_Y23_N28
\VGA_GEN|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add0~18_combout\ = \VGA_GEN|tmp_hcount\(9) $ (\VGA_GEN|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|tmp_hcount\(9),
	cin => \VGA_GEN|Add0~17\,
	combout => \VGA_GEN|Add0~18_combout\);

-- Location: LCCOMB_X29_Y23_N8
\VGA_GEN|tmp_hcount~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_hcount~1_combout\ = (!\VGA_GEN|Equal0~2_combout\ & \VGA_GEN|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|Equal0~2_combout\,
	datad => \VGA_GEN|Add0~18_combout\,
	combout => \VGA_GEN|tmp_hcount~1_combout\);

-- Location: FF_X29_Y23_N9
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

-- Location: LCCOMB_X29_Y23_N30
\VGA_GEN|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Equal0~0_combout\ = (\VGA_GEN|tmp_hcount\(0) & (\VGA_GEN|tmp_hcount\(9) & (\VGA_GEN|tmp_hcount\(1) & !\VGA_GEN|tmp_hcount\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(0),
	datab => \VGA_GEN|tmp_hcount\(9),
	datac => \VGA_GEN|tmp_hcount\(1),
	datad => \VGA_GEN|tmp_hcount\(6),
	combout => \VGA_GEN|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y23_N16
\VGA_GEN|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Equal0~1_combout\ = (\VGA_GEN|tmp_hcount\(2) & (\VGA_GEN|tmp_hcount\(8) & (!\VGA_GEN|tmp_hcount\(7) & !\VGA_GEN|tmp_hcount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(2),
	datab => \VGA_GEN|tmp_hcount\(8),
	datac => \VGA_GEN|tmp_hcount\(7),
	datad => \VGA_GEN|tmp_hcount\(5),
	combout => \VGA_GEN|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y23_N2
\VGA_GEN|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Equal0~2_combout\ = (\VGA_GEN|Equal0~0_combout\ & (\VGA_GEN|tmp_hcount\(4) & (\VGA_GEN|tmp_hcount\(3) & \VGA_GEN|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Equal0~0_combout\,
	datab => \VGA_GEN|tmp_hcount\(4),
	datac => \VGA_GEN|tmp_hcount\(3),
	datad => \VGA_GEN|Equal0~1_combout\,
	combout => \VGA_GEN|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y23_N4
\VGA_GEN|tmp_hcount~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_hcount~2_combout\ = (\VGA_GEN|Add0~10_combout\ & !\VGA_GEN|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|Add0~10_combout\,
	datad => \VGA_GEN|Equal0~2_combout\,
	combout => \VGA_GEN|tmp_hcount~2_combout\);

-- Location: FF_X29_Y23_N5
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

-- Location: FF_X29_Y23_N23
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

-- Location: LCCOMB_X30_Y23_N0
\VGA_GEN|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|process_0~1_combout\ = (\VGA_GEN|tmp_hcount\(2)) # ((\VGA_GEN|tmp_hcount\(5) & (\VGA_GEN|tmp_hcount\(1) & \VGA_GEN|tmp_hcount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(2),
	datab => \VGA_GEN|tmp_hcount\(5),
	datac => \VGA_GEN|tmp_hcount\(1),
	datad => \VGA_GEN|tmp_hcount\(0),
	combout => \VGA_GEN|process_0~1_combout\);

-- Location: LCCOMB_X30_Y23_N14
\VGA_GEN|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|process_0~2_combout\ = (\VGA_GEN|tmp_hcount\(4) & ((\VGA_GEN|tmp_hcount\(3)) # (\VGA_GEN|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(3),
	datab => \VGA_GEN|tmp_hcount\(4),
	datad => \VGA_GEN|process_0~1_combout\,
	combout => \VGA_GEN|process_0~2_combout\);

-- Location: LCCOMB_X30_Y23_N24
\VGA_GEN|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|process_0~0_combout\ = (\VGA_GEN|tmp_hcount\(9) & (!\VGA_GEN|tmp_hcount\(8) & \VGA_GEN|tmp_hcount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(9),
	datab => \VGA_GEN|tmp_hcount\(8),
	datad => \VGA_GEN|tmp_hcount\(7),
	combout => \VGA_GEN|process_0~0_combout\);

-- Location: LCCOMB_X30_Y23_N20
\VGA_GEN|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|process_0~3_combout\ = (\VGA_GEN|process_0~0_combout\ & ((\VGA_GEN|tmp_hcount\(6) & ((!\VGA_GEN|tmp_hcount\(5)) # (!\VGA_GEN|process_0~2_combout\))) # (!\VGA_GEN|tmp_hcount\(6) & ((\VGA_GEN|process_0~2_combout\) # (\VGA_GEN|tmp_hcount\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(6),
	datab => \VGA_GEN|process_0~2_combout\,
	datac => \VGA_GEN|tmp_hcount\(5),
	datad => \VGA_GEN|process_0~0_combout\,
	combout => \VGA_GEN|process_0~3_combout\);

-- Location: FF_X30_Y23_N21
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

-- Location: FF_X29_Y23_N31
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

-- Location: LCCOMB_X27_Y23_N6
\COL_ADDR_GEN|Mux5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Mux5~8_combout\ = (\button[2]~input_o\) # (\button[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button[2]~input_o\,
	datad => \button[1]~input_o\,
	combout => \COL_ADDR_GEN|Mux5~8_combout\);

-- Location: FF_X29_Y23_N21
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

-- Location: LCCOMB_X28_Y23_N14
\COL_ADDR_GEN|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Add0~0_combout\ = (\VGA_GEN|Hcount\(0) & (\VGA_GEN|Hcount\(1) $ (VCC))) # (!\VGA_GEN|Hcount\(0) & (\VGA_GEN|Hcount\(1) & VCC))
-- \COL_ADDR_GEN|Add0~1\ = CARRY((\VGA_GEN|Hcount\(0) & \VGA_GEN|Hcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Hcount\(0),
	datab => \VGA_GEN|Hcount\(1),
	datad => VCC,
	combout => \COL_ADDR_GEN|Add0~0_combout\,
	cout => \COL_ADDR_GEN|Add0~1\);

-- Location: FF_X30_Y23_N15
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

-- Location: FF_X30_Y23_N17
\VGA_GEN|Hcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	asdata => \VGA_GEN|tmp_hcount\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Hcount\(7));

-- Location: FF_X30_Y23_N31
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

-- Location: LCCOMB_X29_Y21_N14
\COL_ADDR_GEN|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Mux5~4_combout\ = (!\VGA_GEN|Hcount\(8) & (!\VGA_GEN|Hcount\(7) & !\VGA_GEN|Hcount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|Hcount\(8),
	datac => \VGA_GEN|Hcount\(7),
	datad => \VGA_GEN|Hcount\(9),
	combout => \COL_ADDR_GEN|Mux5~4_combout\);

-- Location: FF_X29_Y23_N1
\VGA_GEN|Hcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	asdata => \VGA_GEN|tmp_hcount\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|Hcount\(5));

-- Location: FF_X30_Y23_N25
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

-- Location: LCCOMB_X28_Y23_N8
\COL_ADDR_GEN|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|process_0~0_combout\ = (!\VGA_GEN|Hcount\(9) & (((!\VGA_GEN|Hcount\(7)) # (!\VGA_GEN|Hcount\(6))) # (!\VGA_GEN|Hcount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Hcount\(9),
	datab => \VGA_GEN|Hcount\(5),
	datac => \VGA_GEN|Hcount\(6),
	datad => \VGA_GEN|Hcount\(7),
	combout => \COL_ADDR_GEN|process_0~0_combout\);

-- Location: FF_X29_Y23_N27
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

-- Location: FF_X29_Y23_N3
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

-- Location: LCCOMB_X28_Y23_N26
\COL_ADDR_GEN|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|process_0~1_combout\ = (\VGA_GEN|Hcount\(0) & (\VGA_GEN|Hcount\(2) & (\VGA_GEN|Hcount\(1) & \VGA_GEN|Hcount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Hcount\(0),
	datab => \VGA_GEN|Hcount\(2),
	datac => \VGA_GEN|Hcount\(1),
	datad => \VGA_GEN|Hcount\(3),
	combout => \COL_ADDR_GEN|process_0~1_combout\);

-- Location: FF_X29_Y23_N29
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

-- Location: LCCOMB_X28_Y23_N0
\COL_ADDR_GEN|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|process_0~2_combout\ = ((!\VGA_GEN|Hcount\(5) & ((!\VGA_GEN|Hcount\(4)) # (!\COL_ADDR_GEN|process_0~1_combout\)))) # (!\VGA_GEN|Hcount\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COL_ADDR_GEN|process_0~1_combout\,
	datab => \VGA_GEN|Hcount\(5),
	datac => \VGA_GEN|Hcount\(6),
	datad => \VGA_GEN|Hcount\(4),
	combout => \COL_ADDR_GEN|process_0~2_combout\);

-- Location: LCCOMB_X29_Y21_N8
\COL_ADDR_GEN|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|process_0~3_combout\ = (\COL_ADDR_GEN|process_0~0_combout\ & (\VGA_GEN|Hcount\(8) & ((\VGA_GEN|Hcount\(7)) # (!\COL_ADDR_GEN|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COL_ADDR_GEN|process_0~0_combout\,
	datab => \VGA_GEN|Hcount\(8),
	datac => \VGA_GEN|Hcount\(7),
	datad => \COL_ADDR_GEN|process_0~2_combout\,
	combout => \COL_ADDR_GEN|process_0~3_combout\);

-- Location: LCCOMB_X28_Y23_N6
\COL_ADDR_GEN|Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Mux5~6_combout\ = (\VGA_GEN|Hcount\(5) & ((\VGA_GEN|Hcount\(4)) # ((\VGA_GEN|Hcount\(7) & \COL_ADDR_GEN|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Hcount\(7),
	datab => \VGA_GEN|Hcount\(5),
	datac => \COL_ADDR_GEN|process_0~1_combout\,
	datad => \VGA_GEN|Hcount\(4),
	combout => \COL_ADDR_GEN|Mux5~6_combout\);

-- Location: LCCOMB_X29_Y21_N20
\COL_ADDR_GEN|Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Mux5~5_combout\ = (\button[2]~input_o\ & (!\VGA_GEN|Hcount\(9) & (\VGA_GEN|Hcount\(7) $ (\VGA_GEN|Hcount\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Hcount\(7),
	datab => \VGA_GEN|Hcount\(8),
	datac => \button[2]~input_o\,
	datad => \VGA_GEN|Hcount\(9),
	combout => \COL_ADDR_GEN|Mux5~5_combout\);

-- Location: LCCOMB_X29_Y21_N22
\COL_ADDR_GEN|Mux5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Mux5~7_combout\ = (\COL_ADDR_GEN|Mux5~5_combout\ & (\VGA_GEN|Hcount\(7) $ (((!\COL_ADDR_GEN|Mux5~6_combout\ & !\VGA_GEN|Hcount\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COL_ADDR_GEN|Mux5~6_combout\,
	datab => \VGA_GEN|Hcount\(6),
	datac => \VGA_GEN|Hcount\(7),
	datad => \COL_ADDR_GEN|Mux5~5_combout\,
	combout => \COL_ADDR_GEN|Mux5~7_combout\);

-- Location: LCCOMB_X30_Y21_N2
\COL_ADDR_GEN|Mux5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Mux5~9_combout\ = (\button[2]~input_o\ & (((\COL_ADDR_GEN|Mux5~7_combout\)))) # (!\button[2]~input_o\ & (\button[1]~input_o\ & ((\COL_ADDR_GEN|process_0~3_combout\) # (\COL_ADDR_GEN|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COL_ADDR_GEN|process_0~3_combout\,
	datab => \button[1]~input_o\,
	datac => \button[2]~input_o\,
	datad => \COL_ADDR_GEN|Mux5~7_combout\,
	combout => \COL_ADDR_GEN|Mux5~9_combout\);

-- Location: LCCOMB_X30_Y21_N28
\COL_ADDR_GEN|Mux5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Mux5~10_combout\ = (\COL_ADDR_GEN|Mux5~9_combout\) # ((\COL_ADDR_GEN|Mux5~4_combout\ & (!\button[1]~input_o\ & !\button[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COL_ADDR_GEN|Mux5~4_combout\,
	datab => \button[1]~input_o\,
	datac => \button[2]~input_o\,
	datad => \COL_ADDR_GEN|Mux5~9_combout\,
	combout => \COL_ADDR_GEN|Mux5~10_combout\);

-- Location: LCCOMB_X28_Y23_N28
\COL_ADDR_GEN|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Add0~2_combout\ = (\COL_ADDR_GEN|Mux5~10_combout\ & ((\COL_ADDR_GEN|Mux5~8_combout\ & ((\COL_ADDR_GEN|Add0~0_combout\))) # (!\COL_ADDR_GEN|Mux5~8_combout\ & (\VGA_GEN|Hcount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Hcount\(1),
	datab => \COL_ADDR_GEN|Mux5~8_combout\,
	datac => \COL_ADDR_GEN|Add0~0_combout\,
	datad => \COL_ADDR_GEN|Mux5~10_combout\,
	combout => \COL_ADDR_GEN|Add0~2_combout\);

-- Location: LCCOMB_X28_Y23_N16
\COL_ADDR_GEN|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Add0~3_combout\ = (\VGA_GEN|Hcount\(2) & (!\COL_ADDR_GEN|Add0~1\)) # (!\VGA_GEN|Hcount\(2) & ((\COL_ADDR_GEN|Add0~1\) # (GND)))
-- \COL_ADDR_GEN|Add0~4\ = CARRY((!\COL_ADDR_GEN|Add0~1\) # (!\VGA_GEN|Hcount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|Hcount\(2),
	datad => VCC,
	cin => \COL_ADDR_GEN|Add0~1\,
	combout => \COL_ADDR_GEN|Add0~3_combout\,
	cout => \COL_ADDR_GEN|Add0~4\);

-- Location: LCCOMB_X28_Y23_N2
\COL_ADDR_GEN|Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Add0~5_combout\ = (\COL_ADDR_GEN|Mux5~10_combout\ & ((\COL_ADDR_GEN|Mux5~8_combout\ & (\COL_ADDR_GEN|Add0~3_combout\)) # (!\COL_ADDR_GEN|Mux5~8_combout\ & ((\VGA_GEN|Hcount\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COL_ADDR_GEN|Add0~3_combout\,
	datab => \VGA_GEN|Hcount\(2),
	datac => \COL_ADDR_GEN|Mux5~8_combout\,
	datad => \COL_ADDR_GEN|Mux5~10_combout\,
	combout => \COL_ADDR_GEN|Add0~5_combout\);

-- Location: LCCOMB_X28_Y23_N18
\COL_ADDR_GEN|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Add0~6_combout\ = (\VGA_GEN|Hcount\(3) & (\COL_ADDR_GEN|Add0~4\ $ (GND))) # (!\VGA_GEN|Hcount\(3) & (!\COL_ADDR_GEN|Add0~4\ & VCC))
-- \COL_ADDR_GEN|Add0~7\ = CARRY((\VGA_GEN|Hcount\(3) & !\COL_ADDR_GEN|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Hcount\(3),
	datad => VCC,
	cin => \COL_ADDR_GEN|Add0~4\,
	combout => \COL_ADDR_GEN|Add0~6_combout\,
	cout => \COL_ADDR_GEN|Add0~7\);

-- Location: LCCOMB_X28_Y23_N4
\COL_ADDR_GEN|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Add0~8_combout\ = (\COL_ADDR_GEN|Mux5~10_combout\ & ((\COL_ADDR_GEN|Mux5~8_combout\ & ((\COL_ADDR_GEN|Add0~6_combout\))) # (!\COL_ADDR_GEN|Mux5~8_combout\ & (\VGA_GEN|Hcount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Hcount\(3),
	datab => \COL_ADDR_GEN|Add0~6_combout\,
	datac => \COL_ADDR_GEN|Mux5~8_combout\,
	datad => \COL_ADDR_GEN|Mux5~10_combout\,
	combout => \COL_ADDR_GEN|Add0~8_combout\);

-- Location: LCCOMB_X28_Y23_N20
\COL_ADDR_GEN|Add0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Add0~9_combout\ = (\button[2]~input_o\ & ((\VGA_GEN|Hcount\(4) & (\COL_ADDR_GEN|Add0~7\ & VCC)) # (!\VGA_GEN|Hcount\(4) & (!\COL_ADDR_GEN|Add0~7\)))) # (!\button[2]~input_o\ & ((\VGA_GEN|Hcount\(4) & (!\COL_ADDR_GEN|Add0~7\)) # 
-- (!\VGA_GEN|Hcount\(4) & ((\COL_ADDR_GEN|Add0~7\) # (GND)))))
-- \COL_ADDR_GEN|Add0~10\ = CARRY((\button[2]~input_o\ & (!\VGA_GEN|Hcount\(4) & !\COL_ADDR_GEN|Add0~7\)) # (!\button[2]~input_o\ & ((!\COL_ADDR_GEN|Add0~7\) # (!\VGA_GEN|Hcount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \VGA_GEN|Hcount\(4),
	datad => VCC,
	cin => \COL_ADDR_GEN|Add0~7\,
	combout => \COL_ADDR_GEN|Add0~9_combout\,
	cout => \COL_ADDR_GEN|Add0~10\);

-- Location: LCCOMB_X28_Y23_N10
\COL_ADDR_GEN|Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Add0~11_combout\ = (\COL_ADDR_GEN|Mux5~10_combout\ & ((\COL_ADDR_GEN|Mux5~8_combout\ & (\COL_ADDR_GEN|Add0~9_combout\)) # (!\COL_ADDR_GEN|Mux5~8_combout\ & ((\VGA_GEN|Hcount\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COL_ADDR_GEN|Add0~9_combout\,
	datab => \VGA_GEN|Hcount\(4),
	datac => \COL_ADDR_GEN|Mux5~8_combout\,
	datad => \COL_ADDR_GEN|Mux5~10_combout\,
	combout => \COL_ADDR_GEN|Add0~11_combout\);

-- Location: LCCOMB_X28_Y23_N22
\COL_ADDR_GEN|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Add0~12_combout\ = ((\button[2]~input_o\ $ (\VGA_GEN|Hcount\(5) $ (\COL_ADDR_GEN|Add0~10\)))) # (GND)
-- \COL_ADDR_GEN|Add0~13\ = CARRY((\button[2]~input_o\ & (\VGA_GEN|Hcount\(5) & !\COL_ADDR_GEN|Add0~10\)) # (!\button[2]~input_o\ & ((\VGA_GEN|Hcount\(5)) # (!\COL_ADDR_GEN|Add0~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \VGA_GEN|Hcount\(5),
	datad => VCC,
	cin => \COL_ADDR_GEN|Add0~10\,
	combout => \COL_ADDR_GEN|Add0~12_combout\,
	cout => \COL_ADDR_GEN|Add0~13\);

-- Location: LCCOMB_X28_Y23_N12
\COL_ADDR_GEN|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Add0~14_combout\ = (\COL_ADDR_GEN|Mux5~10_combout\ & ((\COL_ADDR_GEN|Mux5~8_combout\ & (\COL_ADDR_GEN|Add0~12_combout\)) # (!\COL_ADDR_GEN|Mux5~8_combout\ & ((\VGA_GEN|Hcount\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COL_ADDR_GEN|Add0~12_combout\,
	datab => \COL_ADDR_GEN|Mux5~8_combout\,
	datac => \VGA_GEN|Hcount\(5),
	datad => \COL_ADDR_GEN|Mux5~10_combout\,
	combout => \COL_ADDR_GEN|Add0~14_combout\);

-- Location: LCCOMB_X28_Y23_N24
\COL_ADDR_GEN|Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Add0~15_combout\ = \VGA_GEN|Hcount\(6) $ (\COL_ADDR_GEN|Add0~13\ $ (\button[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Hcount\(6),
	datad => \button[2]~input_o\,
	cin => \COL_ADDR_GEN|Add0~13\,
	combout => \COL_ADDR_GEN|Add0~15_combout\);

-- Location: LCCOMB_X28_Y23_N30
\COL_ADDR_GEN|Add0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COL_ADDR_GEN|Add0~17_combout\ = (\COL_ADDR_GEN|Mux5~10_combout\ & ((\COL_ADDR_GEN|Mux5~8_combout\ & ((\COL_ADDR_GEN|Add0~15_combout\))) # (!\COL_ADDR_GEN|Mux5~8_combout\ & (\VGA_GEN|Hcount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Hcount\(6),
	datab => \COL_ADDR_GEN|Add0~15_combout\,
	datac => \COL_ADDR_GEN|Mux5~8_combout\,
	datad => \COL_ADDR_GEN|Mux5~10_combout\,
	combout => \COL_ADDR_GEN|Add0~17_combout\);

-- Location: LCCOMB_X31_Y23_N6
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

-- Location: LCCOMB_X29_Y23_N0
\VGA_GEN|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Equal2~0_combout\ = (\VGA_GEN|tmp_hcount\(8)) # ((\VGA_GEN|tmp_hcount\(2)) # ((!\VGA_GEN|tmp_hcount\(7)) # (!\VGA_GEN|tmp_hcount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(8),
	datab => \VGA_GEN|tmp_hcount\(2),
	datac => \VGA_GEN|tmp_hcount\(5),
	datad => \VGA_GEN|tmp_hcount\(7),
	combout => \VGA_GEN|Equal2~0_combout\);

-- Location: LCCOMB_X30_Y23_N22
\VGA_GEN|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Equal2~1_combout\ = (((\VGA_GEN|Equal2~0_combout\) # (!\VGA_GEN|Equal0~0_combout\)) # (!\VGA_GEN|tmp_hcount\(4))) # (!\VGA_GEN|tmp_hcount\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(3),
	datab => \VGA_GEN|tmp_hcount\(4),
	datac => \VGA_GEN|Equal2~0_combout\,
	datad => \VGA_GEN|Equal0~0_combout\,
	combout => \VGA_GEN|Equal2~1_combout\);

-- Location: LCCOMB_X30_Y23_N26
\VGA_GEN|tmp_vcount[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_vcount[0]~9_combout\ = (!\VGA_GEN|Equal1~2_combout\ & ((\VGA_GEN|Equal2~1_combout\ & ((\VGA_GEN|tmp_vcount\(0)))) # (!\VGA_GEN|Equal2~1_combout\ & (\VGA_GEN|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Add1~0_combout\,
	datab => \VGA_GEN|Equal1~2_combout\,
	datac => \VGA_GEN|tmp_vcount\(0),
	datad => \VGA_GEN|Equal2~1_combout\,
	combout => \VGA_GEN|tmp_vcount[0]~9_combout\);

-- Location: FF_X31_Y23_N21
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

-- Location: LCCOMB_X31_Y23_N8
\VGA_GEN|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add1~2_combout\ = (\VGA_GEN|tmp_vcount\(1) & (!\VGA_GEN|Add1~1\)) # (!\VGA_GEN|tmp_vcount\(1) & ((\VGA_GEN|Add1~1\) # (GND)))
-- \VGA_GEN|Add1~3\ = CARRY((!\VGA_GEN|Add1~1\) # (!\VGA_GEN|tmp_vcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_vcount\(1),
	datad => VCC,
	cin => \VGA_GEN|Add1~1\,
	combout => \VGA_GEN|Add1~2_combout\,
	cout => \VGA_GEN|Add1~3\);

-- Location: LCCOMB_X31_Y23_N10
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

-- Location: LCCOMB_X30_Y23_N6
\VGA_GEN|tmp_vcount[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_vcount[2]~7_combout\ = (!\VGA_GEN|Equal1~2_combout\ & ((\VGA_GEN|Equal2~1_combout\ & ((\VGA_GEN|tmp_vcount\(2)))) # (!\VGA_GEN|Equal2~1_combout\ & (\VGA_GEN|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Equal2~1_combout\,
	datab => \VGA_GEN|Add1~4_combout\,
	datac => \VGA_GEN|tmp_vcount\(2),
	datad => \VGA_GEN|Equal1~2_combout\,
	combout => \VGA_GEN|tmp_vcount[2]~7_combout\);

-- Location: FF_X30_Y23_N7
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

-- Location: LCCOMB_X31_Y23_N12
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

-- Location: LCCOMB_X31_Y23_N2
\VGA_GEN|tmp_vcount[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_vcount[3]~6_combout\ = (!\VGA_GEN|Equal1~2_combout\ & ((\VGA_GEN|Equal2~1_combout\ & (\VGA_GEN|tmp_vcount\(3))) # (!\VGA_GEN|Equal2~1_combout\ & ((\VGA_GEN|Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Equal1~2_combout\,
	datab => \VGA_GEN|Equal2~1_combout\,
	datac => \VGA_GEN|tmp_vcount\(3),
	datad => \VGA_GEN|Add1~6_combout\,
	combout => \VGA_GEN|tmp_vcount[3]~6_combout\);

-- Location: FF_X31_Y23_N3
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

-- Location: LCCOMB_X31_Y23_N14
\VGA_GEN|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add1~8_combout\ = (\VGA_GEN|tmp_vcount\(4) & (\VGA_GEN|Add1~7\ $ (GND))) # (!\VGA_GEN|tmp_vcount\(4) & (!\VGA_GEN|Add1~7\ & VCC))
-- \VGA_GEN|Add1~9\ = CARRY((\VGA_GEN|tmp_vcount\(4) & !\VGA_GEN|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|tmp_vcount\(4),
	datad => VCC,
	cin => \VGA_GEN|Add1~7\,
	combout => \VGA_GEN|Add1~8_combout\,
	cout => \VGA_GEN|Add1~9\);

-- Location: LCCOMB_X31_Y23_N4
\VGA_GEN|tmp_vcount[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_vcount[4]~5_combout\ = (!\VGA_GEN|Equal1~2_combout\ & ((\VGA_GEN|Equal2~1_combout\ & ((\VGA_GEN|tmp_vcount\(4)))) # (!\VGA_GEN|Equal2~1_combout\ & (\VGA_GEN|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Equal1~2_combout\,
	datab => \VGA_GEN|Add1~8_combout\,
	datac => \VGA_GEN|tmp_vcount\(4),
	datad => \VGA_GEN|Equal2~1_combout\,
	combout => \VGA_GEN|tmp_vcount[4]~5_combout\);

-- Location: FF_X31_Y23_N5
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

-- Location: LCCOMB_X31_Y23_N16
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

-- Location: LCCOMB_X30_Y23_N8
\VGA_GEN|tmp_vcount[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_vcount[5]~3_combout\ = (!\VGA_GEN|Equal1~2_combout\ & ((\VGA_GEN|Equal2~1_combout\ & (\VGA_GEN|tmp_vcount\(5))) # (!\VGA_GEN|Equal2~1_combout\ & ((\VGA_GEN|Add1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Equal2~1_combout\,
	datab => \VGA_GEN|Equal1~2_combout\,
	datac => \VGA_GEN|tmp_vcount\(5),
	datad => \VGA_GEN|Add1~10_combout\,
	combout => \VGA_GEN|tmp_vcount[5]~3_combout\);

-- Location: FF_X30_Y23_N9
\VGA_GEN|tmp_vcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|tmp_vcount[5]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_vcount\(5));

-- Location: LCCOMB_X30_Y23_N18
\VGA_GEN|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Equal1~1_combout\ = (\VGA_GEN|tmp_vcount\(3) & (\VGA_GEN|tmp_vcount\(2) & (!\VGA_GEN|tmp_vcount\(5) & !\VGA_GEN|tmp_vcount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_vcount\(3),
	datab => \VGA_GEN|tmp_vcount\(2),
	datac => \VGA_GEN|tmp_vcount\(5),
	datad => \VGA_GEN|tmp_vcount\(4),
	combout => \VGA_GEN|Equal1~1_combout\);

-- Location: LCCOMB_X31_Y23_N18
\VGA_GEN|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add1~12_combout\ = (\VGA_GEN|tmp_vcount\(6) & (\VGA_GEN|Add1~11\ $ (GND))) # (!\VGA_GEN|tmp_vcount\(6) & (!\VGA_GEN|Add1~11\ & VCC))
-- \VGA_GEN|Add1~13\ = CARRY((\VGA_GEN|tmp_vcount\(6) & !\VGA_GEN|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|tmp_vcount\(6),
	datad => VCC,
	cin => \VGA_GEN|Add1~11\,
	combout => \VGA_GEN|Add1~12_combout\,
	cout => \VGA_GEN|Add1~13\);

-- Location: LCCOMB_X31_Y23_N28
\VGA_GEN|tmp_vcount[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_vcount[6]~2_combout\ = (!\VGA_GEN|Equal1~2_combout\ & ((\VGA_GEN|Equal2~1_combout\ & (\VGA_GEN|tmp_vcount\(6))) # (!\VGA_GEN|Equal2~1_combout\ & ((\VGA_GEN|Add1~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Equal1~2_combout\,
	datab => \VGA_GEN|Equal2~1_combout\,
	datac => \VGA_GEN|tmp_vcount\(6),
	datad => \VGA_GEN|Add1~12_combout\,
	combout => \VGA_GEN|tmp_vcount[6]~2_combout\);

-- Location: FF_X31_Y23_N29
\VGA_GEN|tmp_vcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|tmp_vcount[6]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_vcount\(6));

-- Location: LCCOMB_X31_Y23_N20
\VGA_GEN|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add1~14_combout\ = (\VGA_GEN|tmp_vcount\(7) & (!\VGA_GEN|Add1~13\)) # (!\VGA_GEN|tmp_vcount\(7) & ((\VGA_GEN|Add1~13\) # (GND)))
-- \VGA_GEN|Add1~15\ = CARRY((!\VGA_GEN|Add1~13\) # (!\VGA_GEN|tmp_vcount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|tmp_vcount\(7),
	datad => VCC,
	cin => \VGA_GEN|Add1~13\,
	combout => \VGA_GEN|Add1~14_combout\,
	cout => \VGA_GEN|Add1~15\);

-- Location: LCCOMB_X30_Y23_N4
\VGA_GEN|tmp_vcount[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_vcount[7]~1_combout\ = (!\VGA_GEN|Equal1~2_combout\ & ((\VGA_GEN|Equal2~1_combout\ & (\VGA_GEN|tmp_vcount\(7))) # (!\VGA_GEN|Equal2~1_combout\ & ((\VGA_GEN|Add1~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Equal2~1_combout\,
	datab => \VGA_GEN|Equal1~2_combout\,
	datac => \VGA_GEN|tmp_vcount\(7),
	datad => \VGA_GEN|Add1~14_combout\,
	combout => \VGA_GEN|tmp_vcount[7]~1_combout\);

-- Location: FF_X30_Y23_N5
\VGA_GEN|tmp_vcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|tmp_vcount[7]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_vcount\(7));

-- Location: LCCOMB_X31_Y23_N22
\VGA_GEN|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Add1~16_combout\ = (\VGA_GEN|tmp_vcount\(8) & (\VGA_GEN|Add1~15\ $ (GND))) # (!\VGA_GEN|tmp_vcount\(8) & (!\VGA_GEN|Add1~15\ & VCC))
-- \VGA_GEN|Add1~17\ = CARRY((\VGA_GEN|tmp_vcount\(8) & !\VGA_GEN|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_vcount\(8),
	datad => VCC,
	cin => \VGA_GEN|Add1~15\,
	combout => \VGA_GEN|Add1~16_combout\,
	cout => \VGA_GEN|Add1~17\);

-- Location: LCCOMB_X31_Y23_N26
\VGA_GEN|tmp_vcount[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_vcount[8]~0_combout\ = (!\VGA_GEN|Equal1~2_combout\ & ((\VGA_GEN|Equal2~1_combout\ & ((\VGA_GEN|tmp_vcount\(8)))) # (!\VGA_GEN|Equal2~1_combout\ & (\VGA_GEN|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Add1~16_combout\,
	datab => \VGA_GEN|Equal2~1_combout\,
	datac => \VGA_GEN|tmp_vcount\(8),
	datad => \VGA_GEN|Equal1~2_combout\,
	combout => \VGA_GEN|tmp_vcount[8]~0_combout\);

-- Location: FF_X31_Y23_N27
\VGA_GEN|tmp_vcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P_CLK|tmp~clkctrl_outclk\,
	d => \VGA_GEN|tmp_vcount[8]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_GEN|tmp_vcount\(8));

-- Location: LCCOMB_X31_Y23_N24
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

-- Location: LCCOMB_X31_Y23_N0
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

-- Location: FF_X31_Y23_N1
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

-- Location: LCCOMB_X30_Y23_N28
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

-- Location: LCCOMB_X30_Y23_N2
\VGA_GEN|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|Equal1~2_combout\ = (!\VGA_GEN|tmp_vcount\(0) & (\VGA_GEN|Equal1~1_combout\ & (!\VGA_GEN|tmp_vcount\(1) & \VGA_GEN|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_vcount\(0),
	datab => \VGA_GEN|Equal1~1_combout\,
	datac => \VGA_GEN|tmp_vcount\(1),
	datad => \VGA_GEN|Equal1~0_combout\,
	combout => \VGA_GEN|Equal1~2_combout\);

-- Location: LCCOMB_X31_Y23_N30
\VGA_GEN|tmp_vcount[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|tmp_vcount[1]~8_combout\ = (!\VGA_GEN|Equal1~2_combout\ & ((\VGA_GEN|Equal2~1_combout\ & ((\VGA_GEN|tmp_vcount\(1)))) # (!\VGA_GEN|Equal2~1_combout\ & (\VGA_GEN|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Equal1~2_combout\,
	datab => \VGA_GEN|Add1~2_combout\,
	datac => \VGA_GEN|tmp_vcount\(1),
	datad => \VGA_GEN|Equal2~1_combout\,
	combout => \VGA_GEN|tmp_vcount[1]~8_combout\);

-- Location: FF_X31_Y23_N31
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

-- Location: FF_X30_Y23_N3
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

-- Location: FF_X30_Y23_N29
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

-- Location: FF_X31_Y23_N7
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

-- Location: FF_X30_Y23_N11
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

-- Location: LCCOMB_X30_Y21_N12
\ROW_ADDR_GEN|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROW_ADDR_GEN|Mux5~4_combout\ = (!\VGA_GEN|Vcount\(9) & (!\VGA_GEN|Vcount\(8) & !\VGA_GEN|Vcount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Vcount\(9),
	datac => \VGA_GEN|Vcount\(8),
	datad => \VGA_GEN|Vcount\(7),
	combout => \ROW_ADDR_GEN|Mux5~4_combout\);

-- Location: FF_X31_Y23_N23
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

-- Location: FF_X30_Y23_N27
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

-- Location: FF_X31_Y23_N19
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

-- Location: LCCOMB_X27_Y23_N8
\ROW_ADDR_GEN|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROW_ADDR_GEN|process_0~1_combout\ = (\VGA_GEN|Vcount\(1) & (\VGA_GEN|Vcount\(3) & (\VGA_GEN|Vcount\(0) & \VGA_GEN|Vcount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Vcount\(1),
	datab => \VGA_GEN|Vcount\(3),
	datac => \VGA_GEN|Vcount\(0),
	datad => \VGA_GEN|Vcount\(2),
	combout => \ROW_ADDR_GEN|process_0~1_combout\);

-- Location: FF_X30_Y23_N19
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

-- Location: LCCOMB_X30_Y21_N4
\ROW_ADDR_GEN|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROW_ADDR_GEN|process_0~4_combout\ = (\VGA_GEN|Vcount\(9) & ((\VGA_GEN|Vcount\(7)))) # (!\VGA_GEN|Vcount\(9) & (\VGA_GEN|Vcount\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Vcount\(9),
	datac => \VGA_GEN|Vcount\(8),
	datad => \VGA_GEN|Vcount\(7),
	combout => \ROW_ADDR_GEN|process_0~4_combout\);

-- Location: FF_X31_Y23_N11
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

-- Location: LCCOMB_X30_Y21_N26
\ROW_ADDR_GEN|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROW_ADDR_GEN|process_0~5_combout\ = (\VGA_GEN|Vcount\(5) & ((\VGA_GEN|Vcount\(4)) # ((\ROW_ADDR_GEN|process_0~1_combout\ & !\ROW_ADDR_GEN|process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROW_ADDR_GEN|process_0~1_combout\,
	datab => \VGA_GEN|Vcount\(5),
	datac => \ROW_ADDR_GEN|process_0~4_combout\,
	datad => \VGA_GEN|Vcount\(4),
	combout => \ROW_ADDR_GEN|process_0~5_combout\);

-- Location: FF_X31_Y23_N25
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

-- Location: LCCOMB_X30_Y21_N24
\ROW_ADDR_GEN|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROW_ADDR_GEN|process_0~6_combout\ = (\VGA_GEN|Vcount\(7) & ((\ROW_ADDR_GEN|process_0~4_combout\) # ((!\ROW_ADDR_GEN|process_0~5_combout\ & !\VGA_GEN|Vcount\(6))))) # (!\VGA_GEN|Vcount\(7) & ((\ROW_ADDR_GEN|process_0~5_combout\) # ((\VGA_GEN|Vcount\(6)) # 
-- (!\ROW_ADDR_GEN|process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROW_ADDR_GEN|process_0~5_combout\,
	datab => \VGA_GEN|Vcount\(7),
	datac => \ROW_ADDR_GEN|process_0~4_combout\,
	datad => \VGA_GEN|Vcount\(6),
	combout => \ROW_ADDR_GEN|process_0~6_combout\);

-- Location: LCCOMB_X30_Y21_N10
\ROW_ADDR_GEN|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROW_ADDR_GEN|process_0~2_combout\ = ((!\VGA_GEN|Vcount\(5) & ((!\VGA_GEN|Vcount\(4)) # (!\ROW_ADDR_GEN|process_0~1_combout\)))) # (!\VGA_GEN|Vcount\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROW_ADDR_GEN|process_0~1_combout\,
	datab => \VGA_GEN|Vcount\(6),
	datac => \VGA_GEN|Vcount\(5),
	datad => \VGA_GEN|Vcount\(4),
	combout => \ROW_ADDR_GEN|process_0~2_combout\);

-- Location: LCCOMB_X30_Y21_N16
\ROW_ADDR_GEN|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROW_ADDR_GEN|process_0~0_combout\ = (!\VGA_GEN|Vcount\(9) & (((!\VGA_GEN|Vcount\(6)) # (!\VGA_GEN|Vcount\(5))) # (!\VGA_GEN|Vcount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Vcount\(9),
	datab => \VGA_GEN|Vcount\(7),
	datac => \VGA_GEN|Vcount\(5),
	datad => \VGA_GEN|Vcount\(6),
	combout => \ROW_ADDR_GEN|process_0~0_combout\);

-- Location: LCCOMB_X30_Y21_N0
\ROW_ADDR_GEN|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROW_ADDR_GEN|process_0~3_combout\ = (\ROW_ADDR_GEN|process_0~0_combout\ & (\VGA_GEN|Vcount\(8) & ((\VGA_GEN|Vcount\(7)) # (!\ROW_ADDR_GEN|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROW_ADDR_GEN|process_0~2_combout\,
	datab => \ROW_ADDR_GEN|process_0~0_combout\,
	datac => \VGA_GEN|Vcount\(8),
	datad => \VGA_GEN|Vcount\(7),
	combout => \ROW_ADDR_GEN|process_0~3_combout\);

-- Location: LCCOMB_X30_Y21_N18
\ROW_ADDR_GEN|Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROW_ADDR_GEN|Mux5~5_combout\ = (\button[2]~input_o\ & (!\ROW_ADDR_GEN|process_0~6_combout\)) # (!\button[2]~input_o\ & (((\button[1]~input_o\ & \ROW_ADDR_GEN|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROW_ADDR_GEN|process_0~6_combout\,
	datab => \button[1]~input_o\,
	datac => \button[2]~input_o\,
	datad => \ROW_ADDR_GEN|process_0~3_combout\,
	combout => \ROW_ADDR_GEN|Mux5~5_combout\);

-- Location: LCCOMB_X30_Y21_N8
\ROW_ADDR_GEN|Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROW_ADDR_GEN|Mux5~6_combout\ = (\ROW_ADDR_GEN|Mux5~5_combout\) # ((\ROW_ADDR_GEN|Mux5~4_combout\ & (!\button[1]~input_o\ & !\button[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROW_ADDR_GEN|Mux5~4_combout\,
	datab => \button[1]~input_o\,
	datac => \button[2]~input_o\,
	datad => \ROW_ADDR_GEN|Mux5~5_combout\,
	combout => \ROW_ADDR_GEN|Mux5~6_combout\);

-- Location: LCCOMB_X27_Y23_N14
\ROW_ADDR_GEN|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROW_ADDR_GEN|Add0~0_combout\ = (\VGA_GEN|Vcount\(0) & (\VGA_GEN|Vcount\(1) $ (VCC))) # (!\VGA_GEN|Vcount\(0) & (\VGA_GEN|Vcount\(1) & VCC))
-- \ROW_ADDR_GEN|Add0~1\ = CARRY((\VGA_GEN|Vcount\(0) & \VGA_GEN|Vcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Vcount\(0),
	datab => \VGA_GEN|Vcount\(1),
	datad => VCC,
	combout => \ROW_ADDR_GEN|Add0~0_combout\,
	cout => \ROW_ADDR_GEN|Add0~1\);

-- Location: LCCOMB_X27_Y23_N4
\ROW_ADDR_GEN|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROW_ADDR_GEN|Add0~2_combout\ = (\ROW_ADDR_GEN|Mux5~6_combout\ & ((\COL_ADDR_GEN|Mux5~8_combout\ & ((\ROW_ADDR_GEN|Add0~0_combout\))) # (!\COL_ADDR_GEN|Mux5~8_combout\ & (\VGA_GEN|Vcount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Vcount\(1),
	datab => \ROW_ADDR_GEN|Mux5~6_combout\,
	datac => \ROW_ADDR_GEN|Add0~0_combout\,
	datad => \COL_ADDR_GEN|Mux5~8_combout\,
	combout => \ROW_ADDR_GEN|Add0~2_combout\);

-- Location: LCCOMB_X27_Y23_N16
\ROW_ADDR_GEN|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROW_ADDR_GEN|Add0~3_combout\ = (\VGA_GEN|Vcount\(2) & (!\ROW_ADDR_GEN|Add0~1\)) # (!\VGA_GEN|Vcount\(2) & ((\ROW_ADDR_GEN|Add0~1\) # (GND)))
-- \ROW_ADDR_GEN|Add0~4\ = CARRY((!\ROW_ADDR_GEN|Add0~1\) # (!\VGA_GEN|Vcount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|Vcount\(2),
	datad => VCC,
	cin => \ROW_ADDR_GEN|Add0~1\,
	combout => \ROW_ADDR_GEN|Add0~3_combout\,
	cout => \ROW_ADDR_GEN|Add0~4\);

-- Location: LCCOMB_X27_Y23_N30
\ROW_ADDR_GEN|Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROW_ADDR_GEN|Add0~5_combout\ = (\ROW_ADDR_GEN|Mux5~6_combout\ & ((\COL_ADDR_GEN|Mux5~8_combout\ & (\ROW_ADDR_GEN|Add0~3_combout\)) # (!\COL_ADDR_GEN|Mux5~8_combout\ & ((\VGA_GEN|Vcount\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COL_ADDR_GEN|Mux5~8_combout\,
	datab => \ROW_ADDR_GEN|Add0~3_combout\,
	datac => \ROW_ADDR_GEN|Mux5~6_combout\,
	datad => \VGA_GEN|Vcount\(2),
	combout => \ROW_ADDR_GEN|Add0~5_combout\);

-- Location: LCCOMB_X27_Y23_N18
\ROW_ADDR_GEN|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROW_ADDR_GEN|Add0~6_combout\ = (\VGA_GEN|Vcount\(3) & (\ROW_ADDR_GEN|Add0~4\ $ (GND))) # (!\VGA_GEN|Vcount\(3) & (!\ROW_ADDR_GEN|Add0~4\ & VCC))
-- \ROW_ADDR_GEN|Add0~7\ = CARRY((\VGA_GEN|Vcount\(3) & !\ROW_ADDR_GEN|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_GEN|Vcount\(3),
	datad => VCC,
	cin => \ROW_ADDR_GEN|Add0~4\,
	combout => \ROW_ADDR_GEN|Add0~6_combout\,
	cout => \ROW_ADDR_GEN|Add0~7\);

-- Location: LCCOMB_X27_Y23_N28
\ROW_ADDR_GEN|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROW_ADDR_GEN|Add0~8_combout\ = (\ROW_ADDR_GEN|Mux5~6_combout\ & ((\COL_ADDR_GEN|Mux5~8_combout\ & (\ROW_ADDR_GEN|Add0~6_combout\)) # (!\COL_ADDR_GEN|Mux5~8_combout\ & ((\VGA_GEN|Vcount\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COL_ADDR_GEN|Mux5~8_combout\,
	datab => \ROW_ADDR_GEN|Add0~6_combout\,
	datac => \ROW_ADDR_GEN|Mux5~6_combout\,
	datad => \VGA_GEN|Vcount\(3),
	combout => \ROW_ADDR_GEN|Add0~8_combout\);

-- Location: LCCOMB_X27_Y23_N20
\ROW_ADDR_GEN|Add0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROW_ADDR_GEN|Add0~9_combout\ = (\VGA_GEN|Vcount\(4) & ((\button[2]~input_o\ & (\ROW_ADDR_GEN|Add0~7\ & VCC)) # (!\button[2]~input_o\ & (!\ROW_ADDR_GEN|Add0~7\)))) # (!\VGA_GEN|Vcount\(4) & ((\button[2]~input_o\ & (!\ROW_ADDR_GEN|Add0~7\)) # 
-- (!\button[2]~input_o\ & ((\ROW_ADDR_GEN|Add0~7\) # (GND)))))
-- \ROW_ADDR_GEN|Add0~10\ = CARRY((\VGA_GEN|Vcount\(4) & (!\button[2]~input_o\ & !\ROW_ADDR_GEN|Add0~7\)) # (!\VGA_GEN|Vcount\(4) & ((!\ROW_ADDR_GEN|Add0~7\) # (!\button[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Vcount\(4),
	datab => \button[2]~input_o\,
	datad => VCC,
	cin => \ROW_ADDR_GEN|Add0~7\,
	combout => \ROW_ADDR_GEN|Add0~9_combout\,
	cout => \ROW_ADDR_GEN|Add0~10\);

-- Location: LCCOMB_X27_Y23_N10
\ROW_ADDR_GEN|Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROW_ADDR_GEN|Add0~11_combout\ = (\ROW_ADDR_GEN|Mux5~6_combout\ & ((\COL_ADDR_GEN|Mux5~8_combout\ & ((\ROW_ADDR_GEN|Add0~9_combout\))) # (!\COL_ADDR_GEN|Mux5~8_combout\ & (\VGA_GEN|Vcount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COL_ADDR_GEN|Mux5~8_combout\,
	datab => \ROW_ADDR_GEN|Mux5~6_combout\,
	datac => \VGA_GEN|Vcount\(4),
	datad => \ROW_ADDR_GEN|Add0~9_combout\,
	combout => \ROW_ADDR_GEN|Add0~11_combout\);

-- Location: LCCOMB_X27_Y23_N22
\ROW_ADDR_GEN|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROW_ADDR_GEN|Add0~12_combout\ = ((\button[2]~input_o\ $ (\VGA_GEN|Vcount\(5) $ (\ROW_ADDR_GEN|Add0~10\)))) # (GND)
-- \ROW_ADDR_GEN|Add0~13\ = CARRY((\button[2]~input_o\ & (\VGA_GEN|Vcount\(5) & !\ROW_ADDR_GEN|Add0~10\)) # (!\button[2]~input_o\ & ((\VGA_GEN|Vcount\(5)) # (!\ROW_ADDR_GEN|Add0~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \VGA_GEN|Vcount\(5),
	datad => VCC,
	cin => \ROW_ADDR_GEN|Add0~10\,
	combout => \ROW_ADDR_GEN|Add0~12_combout\,
	cout => \ROW_ADDR_GEN|Add0~13\);

-- Location: LCCOMB_X27_Y23_N12
\ROW_ADDR_GEN|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROW_ADDR_GEN|Add0~14_combout\ = (\ROW_ADDR_GEN|Mux5~6_combout\ & ((\COL_ADDR_GEN|Mux5~8_combout\ & (\ROW_ADDR_GEN|Add0~12_combout\)) # (!\COL_ADDR_GEN|Mux5~8_combout\ & ((\VGA_GEN|Vcount\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COL_ADDR_GEN|Mux5~8_combout\,
	datab => \ROW_ADDR_GEN|Mux5~6_combout\,
	datac => \ROW_ADDR_GEN|Add0~12_combout\,
	datad => \VGA_GEN|Vcount\(5),
	combout => \ROW_ADDR_GEN|Add0~14_combout\);

-- Location: LCCOMB_X27_Y23_N24
\ROW_ADDR_GEN|Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROW_ADDR_GEN|Add0~15_combout\ = \button[2]~input_o\ $ (\ROW_ADDR_GEN|Add0~13\ $ (\VGA_GEN|Vcount\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datad => \VGA_GEN|Vcount\(6),
	cin => \ROW_ADDR_GEN|Add0~13\,
	combout => \ROW_ADDR_GEN|Add0~15_combout\);

-- Location: LCCOMB_X27_Y23_N26
\ROW_ADDR_GEN|Add0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ROW_ADDR_GEN|Add0~17_combout\ = (\ROW_ADDR_GEN|Mux5~6_combout\ & ((\COL_ADDR_GEN|Mux5~8_combout\ & ((\ROW_ADDR_GEN|Add0~15_combout\))) # (!\COL_ADDR_GEN|Mux5~8_combout\ & (\VGA_GEN|Vcount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COL_ADDR_GEN|Mux5~8_combout\,
	datab => \ROW_ADDR_GEN|Mux5~6_combout\,
	datac => \VGA_GEN|Vcount\(6),
	datad => \ROW_ADDR_GEN|Add0~15_combout\,
	combout => \ROW_ADDR_GEN|Add0~17_combout\);

-- Location: M9K_X25_Y19_N0
\ROM|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE32FFFFFFFFFFFFFFFFFF7DFFFFFFFF0359BFFFFFFFFFFFFFFFFB113FFFFFFF4BFD7FFFFFFFFFFFFFFFFDFFBFFFFFFFD6F7FFFFFFFFFFFFFFFFF8FFBFFFFFFFE5A4575559591F43969559A656955555F951035D396FD8F66AB59A55EAA485C9FF9D9BE35F8BD0F93FC72F90FFC4BFD3FCD79BD35F8FFBFFBFC72E9DBFC6FFD3F9B59BD35F895B57FFC72FFD3FC7DFD3F5B597D34B4755957BF72AFD3BF7F253DED8E71A67627590D2251E4ED221F813FF9BF5DF776E6F9BF9ABAF97F9ABCBD3FD13FF51FFEEFFC8BFD07FFFFFFFFFD3FF3FFFAAFFFBFFCCFFD2BFFFFFFF2FD3FFFFFFD7FF9DBFE9FFD5FFFFFFFFE55A",
	mem_init2 => X"FFABFFEBFF9ABFFBFFEAFFFFFFFF9555FFFFFFFFFFFFFFFFFEB2FFFFFFFFFFFFEF25FEEC7FFA71FFFDB46FFFFFD7E41FFAB0FB2097F7A2FFF789FFFFFFE5CF7BF23F10F7ACFEBD1FFEAF37ADF6FDBBFCFF5FF43FFDFFFF07FBBE1ABBA161EAF9FFC4FF2FF8E7AFC9AEFFFFFFFB557FBBFFF37F1FFE021E9E5EFFFFFFFFFFFF5BFFFD2F967FC1BAAFFFFFFFFAFFFF9C5FFFFFFF883FFFFFFFFFFFF6951A1055FFFFFFBBC6FFFFFFFFFFFE1D861B71BFFFFFFF77FFFFFFFFFFFFF6A8FB7ABFFFFFFFFF9FFFFFFFFFFFFFEAA63FFFFFFFFFFFFD2FFFFFFFFFFFFD2557FFFFFFFFFFFFFC2FFFFFFFFFFFD2EEFFFFFFFFFFFFFFFCBFFFFFFFFFC85557FFFFFFFFFFFF",
	mem_init1 => X"FFFF3FFFFFFFF8371E7FFFFFFFFFFFFFFFFE7FFFFFFFFD03EFFFFFFFFFFFFFFFFFFCBFFF2BBFC779FFFFFFFFFFFFFFFFFFFD7FFFBEF1D5FFFFFFFFFFFFFFFFFFFFFEBFFFFF654FFFFFFFFFFFFFFFFFFFFFFE7FFAA9AABFFFFFFFFFFFFFFFFFFFFFFF2E1F8068BFFFFFFFFFFFFFFFFFFFFFFFCEC542FFFFFFFFFFFFFFFFFFFFFFFFFF0FD544FFFFFFFFFFFFFFFFFFFFFFFFFF91FE8B3FFFFFFFFFFFFFFFFFFFFFFFFFC83FFA1FFFFFFFFFFFFFFFFFFFFFFFFFF73EE4BBFFFFFFFFFFFFFFFFFFFFFFFFFF97FFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFD5B16BFFFFFFFFFFFFFFFFFFFFFFFFFFFC5D7DFFFFFFFFFFFFFFFFFFFFFFFFFFFF87C3FFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFEBE7FFFFFFFFFFFFFFFFFFF96E6F55995F6BD0B95AF56EFFEABF5BF55D42F6A403CEE356E0F1A6FFE5B607FF69C6F7C6F64B6FD2C2FDF1FFF1B854FE6E1FFBC6E655FF43C29DF1FFE5912C6F9B43FBC6FE15FF83D29DF1FFE591B56F5C8FFBC6C755FF47C299F1FD0592F96FD6E6F6C6E74B6FEBC26DF1FE0592F96FCF6EFA64D69FEFEFB7EEA5FCF592F96FFD6BAAAAFEABE6FFEEAAB5FFE592F96FFC4FD3FBE1439EFBE158F5EAE592F86FFB03DFFBEFABDAB3E626D5D2A5A53D3FF39FCD72A75F9A1BE596D6E41554F92FF7FFEAAA7AFAE6AAAAAAAAE555A5B96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../brom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:ROM|altsyncram:altsyncram_component|altsyncram_h2s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => VCC,
	portaaddr => \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y23_N30
\VGA_GEN|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|process_0~4_combout\ = (\VGA_GEN|tmp_vcount\(9)) # ((\VGA_GEN|tmp_hcount\(9) & ((\VGA_GEN|tmp_hcount\(7)) # (\VGA_GEN|tmp_hcount\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_hcount\(7),
	datab => \VGA_GEN|tmp_hcount\(8),
	datac => \VGA_GEN|tmp_hcount\(9),
	datad => \VGA_GEN|tmp_vcount\(9),
	combout => \VGA_GEN|process_0~4_combout\);

-- Location: LCCOMB_X30_Y23_N10
\VGA_GEN|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GEN|LessThan1~0_combout\ = (\VGA_GEN|tmp_vcount\(6) & (\VGA_GEN|tmp_vcount\(5) & (\VGA_GEN|tmp_vcount\(7) & \VGA_GEN|tmp_vcount\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|tmp_vcount\(6),
	datab => \VGA_GEN|tmp_vcount\(5),
	datac => \VGA_GEN|tmp_vcount\(7),
	datad => \VGA_GEN|tmp_vcount\(8),
	combout => \VGA_GEN|LessThan1~0_combout\);

-- Location: LCCOMB_X30_Y23_N12
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

-- Location: FF_X30_Y23_N13
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

-- Location: LCCOMB_X30_Y21_N14
\OUTPUT_GEN|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|process_0~0_combout\ = (\COL_ADDR_GEN|process_0~3_combout\ & (\button[1]~input_o\ & \ROW_ADDR_GEN|process_0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COL_ADDR_GEN|process_0~3_combout\,
	datab => \button[1]~input_o\,
	datad => \ROW_ADDR_GEN|process_0~3_combout\,
	combout => \OUTPUT_GEN|process_0~0_combout\);

-- Location: LCCOMB_X30_Y21_N20
\OUTPUT_GEN|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|process_0~1_combout\ = (!\VGA_GEN|Vcount\(9) & (!\button[1]~input_o\ & (!\VGA_GEN|Vcount\(8) & !\VGA_GEN|Vcount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Vcount\(9),
	datab => \button[1]~input_o\,
	datac => \VGA_GEN|Vcount\(8),
	datad => \VGA_GEN|Vcount\(7),
	combout => \OUTPUT_GEN|process_0~1_combout\);

-- Location: LCCOMB_X30_Y21_N22
\OUTPUT_GEN|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|process_0~2_combout\ = (!\button[2]~input_o\ & ((\OUTPUT_GEN|process_0~0_combout\) # ((\COL_ADDR_GEN|Mux5~4_combout\ & \OUTPUT_GEN|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COL_ADDR_GEN|Mux5~4_combout\,
	datab => \button[2]~input_o\,
	datac => \OUTPUT_GEN|process_0~0_combout\,
	datad => \OUTPUT_GEN|process_0~1_combout\,
	combout => \OUTPUT_GEN|process_0~2_combout\);

-- Location: LCCOMB_X30_Y21_N6
\OUTPUT_GEN|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|process_0~3_combout\ = (\VGA_GEN|Video_On~q\ & ((\OUTPUT_GEN|process_0~2_combout\) # ((!\ROW_ADDR_GEN|process_0~6_combout\ & \COL_ADDR_GEN|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_GEN|Video_On~q\,
	datab => \ROW_ADDR_GEN|process_0~6_combout\,
	datac => \OUTPUT_GEN|process_0~2_combout\,
	datad => \COL_ADDR_GEN|Mux5~7_combout\,
	combout => \OUTPUT_GEN|process_0~3_combout\);

-- Location: LCCOMB_X29_Y21_N0
\OUTPUT_GEN|rgb_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|rgb_out[0]~0_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(0) & \OUTPUT_GEN|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|altsyncram_component|auto_generated|q_a\(0),
	datad => \OUTPUT_GEN|process_0~3_combout\,
	combout => \OUTPUT_GEN|rgb_out[0]~0_combout\);

-- Location: LCCOMB_X29_Y21_N26
\OUTPUT_GEN|rgb_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|rgb_out[1]~1_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(1) & \OUTPUT_GEN|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ROM|altsyncram_component|auto_generated|q_a\(1),
	datad => \OUTPUT_GEN|process_0~3_combout\,
	combout => \OUTPUT_GEN|rgb_out[1]~1_combout\);

-- Location: M9K_X25_Y18_N0
\ROM|altsyncram_component|auto_generated|ram_block1a2\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFEBFFFFFFFFFEFAFFFFFFFFFFFFFFFFFEFEFFFFFFFFFBFEFFFFFFFFFFFFFFFFFBFEBFFFFFFFFBFEFFFFFFFFFFFFFFFFFBFEFFFFFFFFFAABFFFFFFFFFFFFFFFFFAAAFFFFFFFFFFFEEFEBAFAAABAAEBEBAFFEABEBBFABFFFBEFEFBFBFFBFEEBFBEFFFEBFBFFEFFFBAEFEFBFBFFAFEABFBEFBAEBFBFFEFFEFEEFEFBFBFFAFEABFBEEBEEBFBFFEFFEFEEFEFBFBAFABEEBEBEEBEEBEBEFEFFABBEAEBAAAEEFBFFAEBEABAFAEBEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFEFFFEBFFBEFFFBFFFBFFFFBFFFFFFFFFEFFFABFFBEFFFBFFFBFFFFBFFFFFFFAFEB",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFFFBFFFFFEFFFFF6AFFFFFFFFFFFFF9BE6F9F5FFD6D7FFEAF5FFFFFFABA9BFEAFD7EFD3FFFF6FFEBF4956AFFF9AFBFFDBF9FFF5FFFFDFFEFFAAA955AFFAAFFFF7FE7FFD7EAFE151FFFFFFFEAAFFDBFFFDFFAFFF945BE5ABFFFFFFFFFFFFFBFFFFBFDAFFFFFFFFFFFFFFFFFFFFFABFFFFF9FD1FFFFFFFFFFFFFF95ABEAABFFFFFF8FFFFFFFFFFFFFFFE165A9AFFFFFFFFF8FFFFFFFFFFFFFFD5A5AFFFFFFFFFFFF6FFFFFFFFFFFFFA695FFFFFFFFFFFFFF7FFFFFFFFFFFFE556FFFFFFFFFFFFFFF7FFFFFFFFFFFE992FFFFFFFFFFFFFFFE7FFFFFFFFFFB9A6FFFFFFFFFFFFF",
	mem_init1 => X"FFFDBFFFFFFFFFD956FFFFFFFFFFFFFFFFFDBFFFFFFFFFF87FFFFFFFFFFFFFFFFFFDBFFFEAFFF99BFFFFFFFFFFFFFFFFFFFDBFFFEA5ABFFFFFFFFFFFFFFFFFFFFFFEBFFFFFEABFFFFFFFFFFFFFFFFFFFFFFFBFFFFFAAFFFFFFFFFFFFFFFFFFFFFFFFBF906AABFFFFFFFFFFFFFFFFFFFFFFFFBF907FFFFFFFFFFFFFFFFFFFFFFFFFFFEFF91AFFFFFFFFFFFFFFFFFFFFFFFFFFDBFFBDBFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFAFFFFFFFFFFFFFFFFFFFFFFFFFFE9BFAEBFFFFFFFFFFFFFFFFFFFFFFFFFFF9BE7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFEEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFEBF6FFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFBEAAEBEFABAEBEABFEBEFFEABEAAFEBFBBFAFBEBEEBFAFFBFEBEFFEABAAABFAAEBFAFBFAEEBFEFFBFEBEFFFAFAFABFAEEFFAFBFAEEBFEFFBEABEFFFAFAFEBFEBEBFAFBFBEEBFEFFBFEBEFFFAFAFEBFEBEBFAFBEBEEBFAFFBFEBEFEAAFAFEBFFBFAAAEBFAABAABFEAAABEFFAAFAFEBFFFFFFFFFFFFFFFFFFFFFFEFFFAFAFEBFFFFBFFEFBFFEFBEFBFFFBEEBFAFAFEBFFEFFFBEFBAFAFBEFBEFFBEEAAAAAFAAFFEFFFBEFBEFAFBFBBFBFBEEAAAAABAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../brom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:ROM|altsyncram:altsyncram_component|altsyncram_h2s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => VCC,
	portaaddr => \ROM|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y21_N28
\OUTPUT_GEN|rgb_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|rgb_out[2]~2_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(2) & \OUTPUT_GEN|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ROM|altsyncram_component|auto_generated|q_a\(2),
	datad => \OUTPUT_GEN|process_0~3_combout\,
	combout => \OUTPUT_GEN|rgb_out[2]~2_combout\);

-- Location: LCCOMB_X29_Y21_N2
\OUTPUT_GEN|rgb_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|rgb_out[3]~3_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(3) & \OUTPUT_GEN|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ROM|altsyncram_component|auto_generated|q_a\(3),
	datad => \OUTPUT_GEN|process_0~3_combout\,
	combout => \OUTPUT_GEN|rgb_out[3]~3_combout\);

-- Location: M9K_X25_Y23_N0
\ROM|altsyncram_component|auto_generated|ram_block1a4\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE95FFFFFFFFFFFFFFFFFF17FFFFFFFFBD0C7FFFFFFFFFFFFFFFF9C87FFFFFFF2FF8FFFFFFFFFFFFFFFFF3FDBFFFFFFFC6F1FFFFFFFFFFFFFFFFFBFD7FFFFFFFE4A2024008087F1E41800CA701803000F808BB4008390E426A80D5C16A82BF79FF4487DB7F6BCDF483E76F8DF3EA7F87FD4587DB7F6FFCFCC3E76DC5B3E6FFDBF97C07DB7FA41C4403E76C7D83E7DFDBF07C4F8B6A5434CE0BD76A3DCBD7DD4BC20EF58E60781FCAC3B143B7C3B0DE4BFF4BF08B262D2F47F4975F87F497FBDBFDCBFF4DFFE6FFE77FDF3FFFFFFFFFDBFF47FFE7FFE3FFE2FFFAAFFFFFFFAFD7FF57FF01FF80BFEDFFD07FFFFFFF7CC9",
	mem_init2 => X"FF97FFD7FF95BFF7FFE5FFFFFFFF7001FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFF57AFF7DBFFB96FFFE93BFFFFFEBFA6FF37BDBEAEBFB8BFFF93AFFFFFFF05533F81F66DBF6FEFE4FFC3F53AC5BFE31F6FFA7F17FFEFFFF5BF9FF0013A61AE05EFFEAFD6FF9E91FC6E6FFFFFFF900BFB3FFF7BF0FFED4668F06FFFFFFFFFFFFA3FFFEEFE1BFDAFBAFFFFFFFFFFFFFE72FFFFF7FD17FFFFFFFFFFFFA2AC38F02FFFFFF5FEBFFFFFFFFFFFF86CBC316FFFFFFFF1BFFFFFFFFFFFFFAB4F1BEFFFFFFFFFF8FFFFFFFFFFFFF496ABFFFFFFFFFFFFE6FFFFFFFFFFFFCAA8BFFFFFFFFFFFFFD7FFFFFFFFFFFCE65FFFFFFFFFFFFFFFCBFFFFFFFFFD5208BFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFDB3ACBFFFFFFFFFFFFFFFFF3FFFFFFFFE51FFFFFFFFFFFFFFFFFFFD7FFF41BFD332FFFFFFFFFFFFFFFFFFFE3FFF95FC6AFFFFFFFFFFFFFFFFFFFFFD7FFFFF901FFFFFFFFFFFFFFFFFFFFFFE3FFAAE50BFFFFFFFFFFFFFFFFFFFFFFF3FE5BF06BFFFFFFFFFFFFFFFFFFFFFFF6F50ABFFFFFFFFFFFFFFFFFFFFFFFFFFBFE213FFFFFFFFFFFFFFFFFFFFFFFFFFE2FF5F3FFFFFFFFFFFFFFFFFFFFFFFFFE8BFFBCFFFFFFFFFFFFFFFFFFFFFFFFFF9F7F393FFFFFFFFFFFFFFFFFFFFFFFFFFE37DE1FFFFFFFFFFFFFFFFFFFFFFFFFFFE0B883FFFFFFFFFFFFFFFFFFFFFFFFFFFE2EBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3D5FFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFBFBFFFFFFFFFFFFFFFFFFF56D1E45855E17CFB815F56EFFD57E07F15CBB57778B06387373FD9BFFF0F604BC0865F8D6C5C56F1AF1F937FFC038007D27D7F8E6E8C13F0FF18A37FFD150906FE90FF8E6F6517F4BF16537FFD182B06FC247F8D6EAC13F0FF19937FCE182F46FA1F5E7D2F7C51F2BE12937FFC182F46FE3531BCAF826741F8572DBFE3182F46FFC2AAAAABDABE6FFAAAAB7FFD182F46FFEE7DBE76F79B6DB5F4A67C9D1B2B46FF8ABC3D7255CFE8F13924BE2E0E0B01FFD9BF44E2100BDC210C14BE000507C3FEEFFE95669F5926666AA6ED00050B41FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../brom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:ROM|altsyncram:altsyncram_component|altsyncram_h2s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => VCC,
	portaaddr => \ROM|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y21_N16
\OUTPUT_GEN|rgb_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|rgb_out[4]~4_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(4) & \OUTPUT_GEN|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|altsyncram_component|auto_generated|q_a\(4),
	datad => \OUTPUT_GEN|process_0~3_combout\,
	combout => \OUTPUT_GEN|rgb_out[4]~4_combout\);

-- Location: LCCOMB_X29_Y21_N18
\OUTPUT_GEN|rgb_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|rgb_out[5]~5_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(5) & \OUTPUT_GEN|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ROM|altsyncram_component|auto_generated|q_a\(5),
	datad => \OUTPUT_GEN|process_0~3_combout\,
	combout => \OUTPUT_GEN|rgb_out[5]~5_combout\);

-- Location: M9K_X25_Y21_N0
\ROM|altsyncram_component|auto_generated|ram_block1a6\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABFFFFFFFFFFFFFFFFFFEAFFFFFFFFAAF5FFFFFFFFFFFFFFFFFEB9BFFFFFFFE7FDBFFFFFFFFFFFFFFFFAFE7FFFFFFFF7FEFFFFFFFFFFFFFFFFF6FEFFFFFFFFF556FFFFFFFFAFEBFFFFF555FFFFEFFFFFF98BDB6F5A96A5D7E75FBD97E66A87FFFBDFDB6F6FF2FDABE79FFADBE6FFDBFEB6DFDB6F6FF6FE6BE79F79DBE7FFDBFDF9DFDB6F6FF6FEABE79EBDABE7FFDBFDF9DBDB6F66E579E7E79DBDA7E7EBDBF9B6D697565AEA7AF5979969F597E69BFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDBFFBBFFFBFFFBFFEEFFFAFFFFFFFFFFDBFFABFF7DFFFBFFEAFFEB7FFFFFFFBFDBFFABFFBEFFFBFFF7FFFFBFFFFFFF9B97",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEFFFFFFFFFFFFFEFEBFAFAFFEBEBFFFEFAFFFFFFFFFEFFFFFEBFFEBFFFFBFFFFFAEABFFFFEFFFFFEFFEFFFAFFFFEFFFFFFFFEAAFFFFFFFFFBFFBFFEBFFFFAAAFFFFFFFFFFFFEFFFFEFFFFFFAAAFFAFFFFFFFFFFFFFFFFFFFFBFEFFFFFFFFFFFFFFFFFFFFFFEFFFFFFEFEAFFFFFFFFFFFFFFEABFFAFFFFFFFFEFFFFFFFFFFFFFFFFABABEFFFFFFFFFFEFFFFFFFFFFFFFFEAFAFFFFFFFFFFFFFBFFFFFFFFFFFFFFBEAFFFFFFFFFFFFFFBFFFFFFFFFFFFFAABFFFFFFFFFFFFFFFBFFFFFFFFFFFFAEBFFFFFFFFFFFFFFFFBFFFFFFFFFFFEFBFFFFFFFFFFFFF",
	mem_init1 => X"FFFEBFFFFFFFFFEEABFFFFFFFFFFFFFFFFFEFFFFFFFFFFFEBFFFFFFFFFFFFFFFFFFEFFFFFFFFFEEFFFFFFFFFFFFFFFFFFFFEFFFFFFABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFEABFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFEAEFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFBFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFFFFFFFFFFFFFFFFD7F69A5D69B9B9A6D96F97EFFD57D56FE7FA7F6E7E79E7F9BE7FDBEFFE5B555BF599BF6E7F69DBFDBE7FDBEFFF5F5B97F5EDBF6E7F99DBFDBE7D9BEFFF5F5FD7F9ADBF6E7E79DBFDBE7FDBEFFA5F5FD7FD7D7F5E7D79E7F9FE7FDBEFD15F5FD7FEBF9A5A6E69B9ABFE6997EFE95F5FD7FFFFFFFFFFFFFFFFFFFFFFEFFF5F5FD7FFEABFBEFBAEAEBEFBAFEBEE7F5E5FD7FFEABFBEFBAF6E7EBBDBFBED55555B96FFAFFEBEBBEFAE7BBBF7FBED55555B55FFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../brom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:ROM|altsyncram:altsyncram_component|altsyncram_h2s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => VCC,
	portaaddr => \ROM|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y21_N24
\OUTPUT_GEN|rgb_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|rgb_out[6]~6_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(6) & \OUTPUT_GEN|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ROM|altsyncram_component|auto_generated|q_a\(6),
	datad => \OUTPUT_GEN|process_0~3_combout\,
	combout => \OUTPUT_GEN|rgb_out[6]~6_combout\);

-- Location: LCCOMB_X29_Y21_N30
\OUTPUT_GEN|rgb_out[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|rgb_out[7]~7_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(7) & \OUTPUT_GEN|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ROM|altsyncram_component|auto_generated|q_a\(7),
	datad => \OUTPUT_GEN|process_0~3_combout\,
	combout => \OUTPUT_GEN|rgb_out[7]~7_combout\);

-- Location: M9K_X25_Y22_N0
\ROM|altsyncram_component|auto_generated|ram_block1a8\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D41FFFFFFFFFFFFFFFFFECEFFFFFFFF64F57FFFFFFFFFFFFFFFF7B13FFFFFFFD7F9BFFFFFFFFFFFFFFFFBFF3FFFFFFFFAF0FFFFFFFFFFFFFFFFFDF83FFFFFFFDA05FE3FF7F72BC67DBFF1C8FDBCFFFFFBC2071B7B5391F73DA760FFFDA8DAC0FF3353F7AFCBC0F56BDF3FB4DBDD3F93FCFF53F7AFCFF3FE6BDF0C7E9BDEFFA3FA7913F7AFC7C232EBDF0EFE2BDFCBE3FC3A1BA39ABEED7B23FB38BA63FAF913CBB5DB16BA92CA71F55419E1B514F413FF77ECBAE22CDF77F7971FB3F797EBA3FCB7FF38FFD2FF863FCAFFFFFFFFFFA3FF23FF55FFEBFFD9BFE52FFFFFFF6FE3FFFFFFFCFF7BBFE4FFC03FFFFFFFDB91",
	mem_init2 => X"FF97FF97FF85BFF7FFE5FFFFFFFF6FFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFBEFFFFFFFFFFBAFFFFFFFFFFFFFABABFAFAFFAAEBFFEAFAFFFFFFAEAABFEBFEBEFEBFFFFAFFEBFABABFFFFABFAFFEFFEFFFAFFFFEFFFFFBFFEAAAFFABEFFFBFFBFFEBFFFFFAAFFFFFFFFAAFFEBFFFEFFAFFFAAABEAFFFFFFFFFFFFFFFBFFFFBFEFFFFFFFFFFFFFFFFFFFFFFEAFFFFFAFEAFFFFFFFFFFFFFFEEABAAABFFFFFFEFFFFFFFFFFFFFFFFABAAABFFFFFFFFFEFFFFFFFFFFFFFFEAEAFFFFFFFFFFFFFBFFFFFFFFFFFFFFBEAFFFFFFFFFFFFFFBFFFFFFFFFFFFEAABFFFFFFFFFFFFFFFBFFFFFFFFFFFEAEBFFFFFFFFFFFFFFFEFFFFFFFFFFFBAEBFFFFFFFFFFFFF",
	mem_init1 => X"FFFEBFFFFFFFFEAAAAFFFFFFFFFFFFFFFFFEFFFFFFFFFFFABFFFFFFFFFFFFFFFFFFEBFFFAAFFEAAFFFFFFFFFFFFFFFFFFFFEBFFFEAAAFFFFFFFFFFFFFFFFFFFFFFFEBFFFFFFAAFFFFFFFFFFFFFFFFFFFFFFFBFFFFFEAFFFFFFFFFFFFFFFFFFFFFFFFBFAFAAABFFFFFFFFFFFFFFFFFFFFFFFFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFBEAFFFFFFFFFFFFFFFFFFFFFFFFFFEAFFFEBFFFFFFFFFFFFFFFFFFFFFFFFFFAFFFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFAEBFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFEEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFBFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3DDCEF0703ACEFA7BF0F3DFFFD07EE3F94F90A3010E4E426BB1F48EFFC03E01BD37B4E4F2D14E5F4DD0F97EFFC06800BC2F1BF9F2D44D7FC7D0797EFFC040006FD683F9F1FAC8BF03D0387EFFD071B81F840BE8F2CA8D3FCBD0B97EFF7062B01FA0F4E4E1F64E3F6BC0D97EFC0062B01FF7076B88E91EB94F9786FEFC0062B01FEFD65659B856D1FF9A956EFBD062B01FFF4AC3F2961269F789349E8CC052B01FF5F3F7F3AA11A15758CDBE92E030342FF77B9A155EB590764BFDBEA00050BC0FEAFFA97224E08D2E12551FCFFF0F73CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../brom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:ROM|altsyncram:altsyncram_component|altsyncram_h2s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => VCC,
	portaaddr => \ROM|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y21_N4
\OUTPUT_GEN|rgb_out[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|rgb_out[8]~8_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(8) & \OUTPUT_GEN|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ROM|altsyncram_component|auto_generated|q_a\(8),
	datad => \OUTPUT_GEN|process_0~3_combout\,
	combout => \OUTPUT_GEN|rgb_out[8]~8_combout\);

-- Location: LCCOMB_X29_Y21_N10
\OUTPUT_GEN|rgb_out[9]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|rgb_out[9]~9_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(9) & \OUTPUT_GEN|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ROM|altsyncram_component|auto_generated|q_a\(9),
	datad => \OUTPUT_GEN|process_0~3_combout\,
	combout => \OUTPUT_GEN|rgb_out[9]~9_combout\);

-- Location: M9K_X25_Y20_N0
\ROM|altsyncram_component|auto_generated|ram_block1a10\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABFFFFFFFFFFFFFFFFFFA6FFFFFFFFAAA4FFFFFFFFFFFFFFFFFDA8BFFFFFFFA7FCBFFFFFFFFFFFFFFFF6FD7FFFFFFFE3FEFFFFFFFFFFFFFFFFF2FEFFFFFFFFF052ABEAAEAEAFABEBEAA411ABEBAAAAFEB88BC61E194650C3D24FA843D22A47FFEACFCB2F2FF2FC97E38FEAD7E2FFCBFE61CFCB2F2FF5FD57E39F64D7E3FFCBFCF8CFCB2F2EB5ED57E39D7C97E3FFCBF8F8CBCB2F11A068D7D38D7C97D3DBCBF466D1870119AA6AE1938529E193D68BFFEFFBEFBFFFBFEFFEFFFFEFFEFFEFCBFFABFFEBFFFBFFEEFFFABFFFFFFFFFCBFF9BFF7DFFF7FFE6FFEB7FFFFFFFBFCBFF57FF6AFFE6FFF7FFFFBFFFFFFF5A87",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFEAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFBFAFEFEFBBEAFEAFFEBFFFFFFFAFF83E2950D28747592842F83FFFD07801FD2E53F1D3D3893F47E3FC7FFFD070007F0487F1D3F1887F8BE3EC7FFFF0F0B43F0D8BF1D3F4487FCBE3C47FFFF0E0F83F86C7F1D3E3887F8BE3EC7FFE90E0FC3FC3C3F1D3C3892F4FE3BC7FFD00E0FC3FD7F45092E147457FD1542FFE50E0FC3FFEBFFFFFFFFFFFFFFFFFFFFFF0E0FC3FFDA7FBDF7AE9E7DF7AEE7FD3F0E0FC3FFD5BE7DF75F5E7DB797B6FC00040B41FF9EFE6DB79A5E7A77A2B6FC00000701FFBFFFFEFFFFFFBFBFFFFFFFAAAFAFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../brom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:ROM|altsyncram:altsyncram_component|altsyncram_h2s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => VCC,
	portaaddr => \ROM|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y21_N12
\OUTPUT_GEN|rgb_out[10]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|rgb_out[10]~10_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(10) & \OUTPUT_GEN|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|altsyncram_component|auto_generated|q_a\(10),
	datad => \OUTPUT_GEN|process_0~3_combout\,
	combout => \OUTPUT_GEN|rgb_out[10]~10_combout\);

-- Location: LCCOMB_X29_Y21_N6
\OUTPUT_GEN|rgb_out[11]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTPUT_GEN|rgb_out[11]~11_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(11) & \OUTPUT_GEN|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ROM|altsyncram_component|auto_generated|q_a\(11),
	datad => \OUTPUT_GEN|process_0~3_combout\,
	combout => \OUTPUT_GEN|rgb_out[11]~11_combout\);

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


