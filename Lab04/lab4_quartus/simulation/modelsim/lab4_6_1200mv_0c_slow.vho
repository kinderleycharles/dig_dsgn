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

-- DATE "02/19/2016 19:41:41"

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
	switch : IN std_logic_vector(9 DOWNTO 0);
	button : IN std_logic_vector(2 DOWNTO 0);
	led0 : OUT std_logic_vector(6 DOWNTO 0);
	led0_dp : OUT std_logic;
	led1 : OUT std_logic_vector(6 DOWNTO 0);
	led1_dp : OUT std_logic;
	led2 : OUT std_logic_vector(6 DOWNTO 0);
	led2_dp : OUT std_logic;
	led3 : OUT std_logic_vector(6 DOWNTO 0);
	led3_dp : OUT std_logic
	);
END top_level;

-- Design Ports Information
-- switch[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \U_CLK_GEN|CLK_DIV|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_CLK_GEN|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
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
SIGNAL \clk50MHz~input_o\ : std_logic;
SIGNAL \clk50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[0]~37_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[1]~31_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[1]~32\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[2]~33_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[2]~34\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[3]~35_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[3]~36\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[4]~38_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[4]~39\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[5]~40_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[5]~41\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[6]~42_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[6]~43\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[7]~44_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[7]~45\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[8]~46_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[8]~47\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[9]~48_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[9]~49\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[10]~50_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[10]~51\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[11]~52_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[11]~53\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[12]~54_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[12]~55\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[13]~56_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[13]~57\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[14]~58_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[14]~59\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[15]~60_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[15]~61\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[16]~62_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[16]~63\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[17]~64_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[17]~65\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[18]~66_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[18]~67\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[19]~68_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[19]~69\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[20]~70_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[20]~71\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[21]~72_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[21]~73\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[22]~74_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[22]~75\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[23]~76_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[23]~77\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[24]~78_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[24]~79\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[25]~80_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[25]~81\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[26]~82_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[26]~83\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[27]~84_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[27]~85\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[28]~86_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[28]~87\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[29]~88_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[29]~89\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[30]~90_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[30]~91\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|counter[31]~92_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|Equal0~9_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|Equal0~8_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|Equal0~2_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|Equal0~3_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|Equal0~0_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|Equal0~1_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|Equal0~4_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|Equal0~5_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|Equal0~6_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|Equal0~7_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|Equal0~10_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|tmp~0_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|tmp~feeder_combout\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|tmp~q\ : std_logic;
SIGNAL \U_CLK_GEN|CLK_DIV|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \button[2]~input_o\ : std_logic;
SIGNAL \U_CLK_GEN|tmp[0]~9_combout\ : std_logic;
SIGNAL \button[2]~_wirecell_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~0_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~1_combout\ : std_logic;
SIGNAL \U_CLK_GEN|tmp[6]~11_combout\ : std_logic;
SIGNAL \U_CLK_GEN|tmp[0]~10\ : std_logic;
SIGNAL \U_CLK_GEN|tmp[1]~12_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \U_CLK_GEN|tmp[1]~13\ : std_logic;
SIGNAL \U_CLK_GEN|tmp[2]~14_combout\ : std_logic;
SIGNAL \U_CLK_GEN|tmp[2]~15\ : std_logic;
SIGNAL \U_CLK_GEN|tmp[3]~16_combout\ : std_logic;
SIGNAL \U_CLK_GEN|tmp[3]~17\ : std_logic;
SIGNAL \U_CLK_GEN|tmp[4]~18_combout\ : std_logic;
SIGNAL \U_CLK_GEN|tmp[4]~19\ : std_logic;
SIGNAL \U_CLK_GEN|tmp[5]~20_combout\ : std_logic;
SIGNAL \U_CLK_GEN|tmp[5]~21\ : std_logic;
SIGNAL \U_CLK_GEN|tmp[6]~22_combout\ : std_logic;
SIGNAL \U_CLK_GEN|tmp[6]~23\ : std_logic;
SIGNAL \U_CLK_GEN|tmp[7]~24_combout\ : std_logic;
SIGNAL \U_CLK_GEN|tmp[7]~25\ : std_logic;
SIGNAL \U_CLK_GEN|tmp[8]~26_combout\ : std_logic;
SIGNAL \U_CLK_GEN|clk_out~0_combout\ : std_logic;
SIGNAL \U_CLK_GEN|clk_out~q\ : std_logic;
SIGNAL \U_CLK_GEN|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \U_QUIZ|curr_state.STATE2~feeder_combout\ : std_logic;
SIGNAL \U_QUIZ|curr_state.STATE2~q\ : std_logic;
SIGNAL \U_QUIZ|curr_state.STATE3~feeder_combout\ : std_logic;
SIGNAL \U_QUIZ|curr_state.STATE3~q\ : std_logic;
SIGNAL \U_QUIZ|curr_state.STATE0~0_combout\ : std_logic;
SIGNAL \U_QUIZ|curr_state.STATE0~q\ : std_logic;
SIGNAL \U_QUIZ|curr_state.STATE1~0_combout\ : std_logic;
SIGNAL \U_QUIZ|curr_state.STATE1~q\ : std_logic;
SIGNAL \U_LED1|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux4~0_combout\ : std_logic;
SIGNAL \U_QUIZ|output~3_combout\ : std_logic;
SIGNAL \button[1]~input_o\ : std_logic;
SIGNAL \button[0]~input_o\ : std_logic;
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \U_COUNTER|tmp~3_combout\ : std_logic;
SIGNAL \U_COUNTER|tmp[1]~5_cout\ : std_logic;
SIGNAL \U_COUNTER|tmp[1]~6_combout\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \U_COUNTER|tmp[1]~7\ : std_logic;
SIGNAL \U_COUNTER|tmp[2]~8_combout\ : std_logic;
SIGNAL \switch[8]~input_o\ : std_logic;
SIGNAL \U_COUNTER|tmp[2]~9\ : std_logic;
SIGNAL \U_COUNTER|tmp[3]~10_combout\ : std_logic;
SIGNAL \switch[9]~input_o\ : std_logic;
SIGNAL \U_LED2|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux0~0_combout\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE4~feeder_combout\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE4~q\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE5~q\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE6~feeder_combout\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE6~q\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE7~feeder_combout\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE7~q\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE8~feeder_combout\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE8~q\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE9~feeder_combout\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE9~q\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE10~feeder_combout\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE10~q\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE11~feeder_combout\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE11~q\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE12~q\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE13~q\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE14~q\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE15~q\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE0~0_combout\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE0~q\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE1~0_combout\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE1~q\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE2~q\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE3~feeder_combout\ : std_logic;
SIGNAL \U_GRAY|curr_state.STATE3~q\ : std_logic;
SIGNAL \U_GRAY|WideOr3~0_combout\ : std_logic;
SIGNAL \U_GRAY|WideOr2~0_combout\ : std_logic;
SIGNAL \U_GRAY|WideOr3~combout\ : std_logic;
SIGNAL \U_GRAY|WideOr0~0_combout\ : std_logic;
SIGNAL \U_GRAY|WideOr1~0_combout\ : std_logic;
SIGNAL \U_GRAY|WideOr1~combout\ : std_logic;
SIGNAL \U_GRAY|WideOr0~1_combout\ : std_logic;
SIGNAL \U_GRAY|WideOr0~combout\ : std_logic;
SIGNAL \U_GRAY|WideOr2~1_combout\ : std_logic;
SIGNAL \U_GRAY|WideOr2~combout\ : std_logic;
SIGNAL \U_LED3|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux0~0_combout\ : std_logic;
SIGNAL \U_COUNTER|tmp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_CLK_GEN|tmp\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_CLK_GEN|CLK_DIV|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_LED2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U_QUIZ|ALT_INV_curr_state.STATE2~q\ : std_logic;
SIGNAL \U_LED1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_button[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \U_LED3|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \U_LED3|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \U_LED3|ALT_INV_Mux3~0_combout\ : std_logic;

BEGIN

ww_clk50MHz <= clk50MHz;
ww_rst <= rst;
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

\U_CLK_GEN|CLK_DIV|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_CLK_GEN|CLK_DIV|tmp~q\);

\U_CLK_GEN|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_CLK_GEN|clk_out~q\);

\clk50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50MHz~input_o\);
\U_LED2|ALT_INV_Mux6~0_combout\ <= NOT \U_LED2|Mux6~0_combout\;
\U_QUIZ|ALT_INV_curr_state.STATE2~q\ <= NOT \U_QUIZ|curr_state.STATE2~q\;
\U_LED1|ALT_INV_Mux6~0_combout\ <= NOT \U_LED1|Mux6~0_combout\;
\ALT_INV_button[0]~input_o\ <= NOT \button[0]~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\U_LED3|ALT_INV_Mux1~0_combout\ <= NOT \U_LED3|Mux1~0_combout\;
\U_LED3|ALT_INV_Mux2~0_combout\ <= NOT \U_LED3|Mux2~0_combout\;
\U_LED3|ALT_INV_Mux3~0_combout\ <= NOT \U_LED3|Mux3~0_combout\;

-- Location: IOOBUF_X26_Y29_N16
\led0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => \U_LED1|ALT_INV_Mux6~0_combout\,
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
	i => \U_QUIZ|ALT_INV_curr_state.STATE2~q\,
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
	i => \U_LED1|Mux4~0_combout\,
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
	i => \U_QUIZ|output~3_combout\,
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
	i => \U_QUIZ|curr_state.STATE3~q\,
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
	i => \U_QUIZ|curr_state.STATE2~q\,
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
	i => \U_LED2|ALT_INV_Mux6~0_combout\,
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
	i => \U_LED2|Mux5~0_combout\,
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
	i => \U_LED2|Mux4~0_combout\,
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
	i => \U_LED2|Mux3~0_combout\,
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
	i => \U_LED2|Mux2~0_combout\,
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
	i => \U_LED2|Mux1~0_combout\,
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
	i => \U_LED2|Mux0~0_combout\,
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
	i => \U_LED3|Mux6~0_combout\,
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
	i => \U_LED3|Mux5~0_combout\,
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
	i => \U_LED3|Mux4~0_combout\,
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
	i => \U_LED3|ALT_INV_Mux3~0_combout\,
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
	i => \U_LED3|ALT_INV_Mux2~0_combout\,
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
	i => \U_LED3|ALT_INV_Mux1~0_combout\,
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
	i => \U_LED3|Mux0~0_combout\,
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

-- Location: LCCOMB_X14_Y14_N26
\U_CLK_GEN|CLK_DIV|counter[0]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[0]~37_combout\ = \rst~input_o\ $ (!\U_CLK_GEN|CLK_DIV|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \U_CLK_GEN|CLK_DIV|counter\(0),
	combout => \U_CLK_GEN|CLK_DIV|counter[0]~37_combout\);

-- Location: FF_X14_Y14_N27
\U_CLK_GEN|CLK_DIV|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(0));

-- Location: LCCOMB_X15_Y14_N2
\U_CLK_GEN|CLK_DIV|counter[1]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[1]~31_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(0) & (\U_CLK_GEN|CLK_DIV|counter\(1) $ (VCC))) # (!\U_CLK_GEN|CLK_DIV|counter\(0) & (\U_CLK_GEN|CLK_DIV|counter\(1) & VCC))
-- \U_CLK_GEN|CLK_DIV|counter[1]~32\ = CARRY((\U_CLK_GEN|CLK_DIV|counter\(0) & \U_CLK_GEN|CLK_DIV|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|counter\(0),
	datab => \U_CLK_GEN|CLK_DIV|counter\(1),
	datad => VCC,
	combout => \U_CLK_GEN|CLK_DIV|counter[1]~31_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[1]~32\);

-- Location: FF_X15_Y14_N3
\U_CLK_GEN|CLK_DIV|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[1]~31_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(1));

-- Location: LCCOMB_X15_Y14_N4
\U_CLK_GEN|CLK_DIV|counter[2]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[2]~33_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(2) & (!\U_CLK_GEN|CLK_DIV|counter[1]~32\)) # (!\U_CLK_GEN|CLK_DIV|counter\(2) & ((\U_CLK_GEN|CLK_DIV|counter[1]~32\) # (GND)))
-- \U_CLK_GEN|CLK_DIV|counter[2]~34\ = CARRY((!\U_CLK_GEN|CLK_DIV|counter[1]~32\) # (!\U_CLK_GEN|CLK_DIV|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|CLK_DIV|counter\(2),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[1]~32\,
	combout => \U_CLK_GEN|CLK_DIV|counter[2]~33_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[2]~34\);

-- Location: FF_X15_Y14_N5
\U_CLK_GEN|CLK_DIV|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[2]~33_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(2));

-- Location: LCCOMB_X15_Y14_N6
\U_CLK_GEN|CLK_DIV|counter[3]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[3]~35_combout\ = (\U_CLK_GEN|CLK_DIV|counter[2]~34\ & (\U_CLK_GEN|CLK_DIV|counter\(3) & (!\U_CLK_GEN|CLK_DIV|Equal0~10_combout\ & VCC))) # (!\U_CLK_GEN|CLK_DIV|counter[2]~34\ & ((((\U_CLK_GEN|CLK_DIV|counter\(3) & 
-- !\U_CLK_GEN|CLK_DIV|Equal0~10_combout\)))))
-- \U_CLK_GEN|CLK_DIV|counter[3]~36\ = CARRY((\U_CLK_GEN|CLK_DIV|counter\(3) & (!\U_CLK_GEN|CLK_DIV|Equal0~10_combout\ & !\U_CLK_GEN|CLK_DIV|counter[2]~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|counter\(3),
	datab => \U_CLK_GEN|CLK_DIV|Equal0~10_combout\,
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[2]~34\,
	combout => \U_CLK_GEN|CLK_DIV|counter[3]~35_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[3]~36\);

-- Location: FF_X15_Y14_N7
\U_CLK_GEN|CLK_DIV|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[3]~35_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(3));

-- Location: LCCOMB_X15_Y14_N8
\U_CLK_GEN|CLK_DIV|counter[4]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[4]~38_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(4) & (!\U_CLK_GEN|CLK_DIV|counter[3]~36\)) # (!\U_CLK_GEN|CLK_DIV|counter\(4) & ((\U_CLK_GEN|CLK_DIV|counter[3]~36\) # (GND)))
-- \U_CLK_GEN|CLK_DIV|counter[4]~39\ = CARRY((!\U_CLK_GEN|CLK_DIV|counter[3]~36\) # (!\U_CLK_GEN|CLK_DIV|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|CLK_DIV|counter\(4),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[3]~36\,
	combout => \U_CLK_GEN|CLK_DIV|counter[4]~38_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[4]~39\);

-- Location: FF_X15_Y14_N9
\U_CLK_GEN|CLK_DIV|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[4]~38_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(4));

-- Location: LCCOMB_X15_Y14_N10
\U_CLK_GEN|CLK_DIV|counter[5]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[5]~40_combout\ = (\U_CLK_GEN|CLK_DIV|counter[4]~39\ & (\U_CLK_GEN|CLK_DIV|counter\(5) & (!\U_CLK_GEN|CLK_DIV|Equal0~10_combout\ & VCC))) # (!\U_CLK_GEN|CLK_DIV|counter[4]~39\ & ((((\U_CLK_GEN|CLK_DIV|counter\(5) & 
-- !\U_CLK_GEN|CLK_DIV|Equal0~10_combout\)))))
-- \U_CLK_GEN|CLK_DIV|counter[5]~41\ = CARRY((\U_CLK_GEN|CLK_DIV|counter\(5) & (!\U_CLK_GEN|CLK_DIV|Equal0~10_combout\ & !\U_CLK_GEN|CLK_DIV|counter[4]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|counter\(5),
	datab => \U_CLK_GEN|CLK_DIV|Equal0~10_combout\,
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[4]~39\,
	combout => \U_CLK_GEN|CLK_DIV|counter[5]~40_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[5]~41\);

-- Location: FF_X15_Y14_N11
\U_CLK_GEN|CLK_DIV|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[5]~40_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(5));

-- Location: LCCOMB_X15_Y14_N12
\U_CLK_GEN|CLK_DIV|counter[6]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[6]~42_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(6) & (!\U_CLK_GEN|CLK_DIV|counter[5]~41\)) # (!\U_CLK_GEN|CLK_DIV|counter\(6) & ((\U_CLK_GEN|CLK_DIV|counter[5]~41\) # (GND)))
-- \U_CLK_GEN|CLK_DIV|counter[6]~43\ = CARRY((!\U_CLK_GEN|CLK_DIV|counter[5]~41\) # (!\U_CLK_GEN|CLK_DIV|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|counter\(6),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[5]~41\,
	combout => \U_CLK_GEN|CLK_DIV|counter[6]~42_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[6]~43\);

-- Location: FF_X15_Y14_N13
\U_CLK_GEN|CLK_DIV|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[6]~42_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(6));

-- Location: LCCOMB_X15_Y14_N14
\U_CLK_GEN|CLK_DIV|counter[7]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[7]~44_combout\ = (\U_CLK_GEN|CLK_DIV|counter[6]~43\ & (\U_CLK_GEN|CLK_DIV|counter\(7) & (!\U_CLK_GEN|CLK_DIV|Equal0~10_combout\ & VCC))) # (!\U_CLK_GEN|CLK_DIV|counter[6]~43\ & ((((\U_CLK_GEN|CLK_DIV|counter\(7) & 
-- !\U_CLK_GEN|CLK_DIV|Equal0~10_combout\)))))
-- \U_CLK_GEN|CLK_DIV|counter[7]~45\ = CARRY((\U_CLK_GEN|CLK_DIV|counter\(7) & (!\U_CLK_GEN|CLK_DIV|Equal0~10_combout\ & !\U_CLK_GEN|CLK_DIV|counter[6]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|counter\(7),
	datab => \U_CLK_GEN|CLK_DIV|Equal0~10_combout\,
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[6]~43\,
	combout => \U_CLK_GEN|CLK_DIV|counter[7]~44_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[7]~45\);

-- Location: FF_X15_Y14_N15
\U_CLK_GEN|CLK_DIV|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[7]~44_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(7));

-- Location: LCCOMB_X15_Y14_N16
\U_CLK_GEN|CLK_DIV|counter[8]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[8]~46_combout\ = (\U_CLK_GEN|CLK_DIV|counter[7]~45\ & (((\U_CLK_GEN|CLK_DIV|Equal0~10_combout\)) # (!\U_CLK_GEN|CLK_DIV|counter\(8)))) # (!\U_CLK_GEN|CLK_DIV|counter[7]~45\ & (((\U_CLK_GEN|CLK_DIV|counter\(8) & 
-- !\U_CLK_GEN|CLK_DIV|Equal0~10_combout\)) # (GND)))
-- \U_CLK_GEN|CLK_DIV|counter[8]~47\ = CARRY(((\U_CLK_GEN|CLK_DIV|Equal0~10_combout\) # (!\U_CLK_GEN|CLK_DIV|counter[7]~45\)) # (!\U_CLK_GEN|CLK_DIV|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|counter\(8),
	datab => \U_CLK_GEN|CLK_DIV|Equal0~10_combout\,
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[7]~45\,
	combout => \U_CLK_GEN|CLK_DIV|counter[8]~46_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[8]~47\);

-- Location: FF_X15_Y14_N17
\U_CLK_GEN|CLK_DIV|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[8]~46_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(8));

-- Location: LCCOMB_X15_Y14_N18
\U_CLK_GEN|CLK_DIV|counter[9]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[9]~48_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(9) & (\U_CLK_GEN|CLK_DIV|counter[8]~47\ $ (GND))) # (!\U_CLK_GEN|CLK_DIV|counter\(9) & (!\U_CLK_GEN|CLK_DIV|counter[8]~47\ & VCC))
-- \U_CLK_GEN|CLK_DIV|counter[9]~49\ = CARRY((\U_CLK_GEN|CLK_DIV|counter\(9) & !\U_CLK_GEN|CLK_DIV|counter[8]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|CLK_DIV|counter\(9),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[8]~47\,
	combout => \U_CLK_GEN|CLK_DIV|counter[9]~48_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[9]~49\);

-- Location: FF_X15_Y14_N19
\U_CLK_GEN|CLK_DIV|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[9]~48_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(9));

-- Location: LCCOMB_X15_Y14_N20
\U_CLK_GEN|CLK_DIV|counter[10]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[10]~50_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(10) & (!\U_CLK_GEN|CLK_DIV|counter[9]~49\)) # (!\U_CLK_GEN|CLK_DIV|counter\(10) & ((\U_CLK_GEN|CLK_DIV|counter[9]~49\) # (GND)))
-- \U_CLK_GEN|CLK_DIV|counter[10]~51\ = CARRY((!\U_CLK_GEN|CLK_DIV|counter[9]~49\) # (!\U_CLK_GEN|CLK_DIV|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|CLK_DIV|counter\(10),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[9]~49\,
	combout => \U_CLK_GEN|CLK_DIV|counter[10]~50_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[10]~51\);

-- Location: FF_X15_Y14_N21
\U_CLK_GEN|CLK_DIV|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[10]~50_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(10));

-- Location: LCCOMB_X15_Y14_N22
\U_CLK_GEN|CLK_DIV|counter[11]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[11]~52_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(11) & (\U_CLK_GEN|CLK_DIV|counter[10]~51\ $ (GND))) # (!\U_CLK_GEN|CLK_DIV|counter\(11) & (!\U_CLK_GEN|CLK_DIV|counter[10]~51\ & VCC))
-- \U_CLK_GEN|CLK_DIV|counter[11]~53\ = CARRY((\U_CLK_GEN|CLK_DIV|counter\(11) & !\U_CLK_GEN|CLK_DIV|counter[10]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|counter\(11),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[10]~51\,
	combout => \U_CLK_GEN|CLK_DIV|counter[11]~52_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[11]~53\);

-- Location: FF_X15_Y14_N23
\U_CLK_GEN|CLK_DIV|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[11]~52_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(11));

-- Location: LCCOMB_X15_Y14_N24
\U_CLK_GEN|CLK_DIV|counter[12]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[12]~54_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(12) & (!\U_CLK_GEN|CLK_DIV|counter[11]~53\)) # (!\U_CLK_GEN|CLK_DIV|counter\(12) & ((\U_CLK_GEN|CLK_DIV|counter[11]~53\) # (GND)))
-- \U_CLK_GEN|CLK_DIV|counter[12]~55\ = CARRY((!\U_CLK_GEN|CLK_DIV|counter[11]~53\) # (!\U_CLK_GEN|CLK_DIV|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|CLK_DIV|counter\(12),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[11]~53\,
	combout => \U_CLK_GEN|CLK_DIV|counter[12]~54_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[12]~55\);

-- Location: FF_X15_Y14_N25
\U_CLK_GEN|CLK_DIV|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[12]~54_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(12));

-- Location: LCCOMB_X15_Y14_N26
\U_CLK_GEN|CLK_DIV|counter[13]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[13]~56_combout\ = (\U_CLK_GEN|CLK_DIV|counter[12]~55\ & (\U_CLK_GEN|CLK_DIV|counter\(13) & (!\U_CLK_GEN|CLK_DIV|Equal0~10_combout\ & VCC))) # (!\U_CLK_GEN|CLK_DIV|counter[12]~55\ & ((((\U_CLK_GEN|CLK_DIV|counter\(13) & 
-- !\U_CLK_GEN|CLK_DIV|Equal0~10_combout\)))))
-- \U_CLK_GEN|CLK_DIV|counter[13]~57\ = CARRY((\U_CLK_GEN|CLK_DIV|counter\(13) & (!\U_CLK_GEN|CLK_DIV|Equal0~10_combout\ & !\U_CLK_GEN|CLK_DIV|counter[12]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|counter\(13),
	datab => \U_CLK_GEN|CLK_DIV|Equal0~10_combout\,
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[12]~55\,
	combout => \U_CLK_GEN|CLK_DIV|counter[13]~56_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[13]~57\);

-- Location: FF_X15_Y14_N27
\U_CLK_GEN|CLK_DIV|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[13]~56_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(13));

-- Location: LCCOMB_X15_Y14_N28
\U_CLK_GEN|CLK_DIV|counter[14]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[14]~58_combout\ = (\U_CLK_GEN|CLK_DIV|counter[13]~57\ & ((\U_CLK_GEN|CLK_DIV|Equal0~10_combout\) # ((!\U_CLK_GEN|CLK_DIV|counter\(14))))) # (!\U_CLK_GEN|CLK_DIV|counter[13]~57\ & (((!\U_CLK_GEN|CLK_DIV|Equal0~10_combout\ & 
-- \U_CLK_GEN|CLK_DIV|counter\(14))) # (GND)))
-- \U_CLK_GEN|CLK_DIV|counter[14]~59\ = CARRY((\U_CLK_GEN|CLK_DIV|Equal0~10_combout\) # ((!\U_CLK_GEN|CLK_DIV|counter[13]~57\) # (!\U_CLK_GEN|CLK_DIV|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|Equal0~10_combout\,
	datab => \U_CLK_GEN|CLK_DIV|counter\(14),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[13]~57\,
	combout => \U_CLK_GEN|CLK_DIV|counter[14]~58_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[14]~59\);

-- Location: FF_X15_Y14_N29
\U_CLK_GEN|CLK_DIV|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[14]~58_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(14));

-- Location: LCCOMB_X15_Y14_N30
\U_CLK_GEN|CLK_DIV|counter[15]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[15]~60_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(15) & (\U_CLK_GEN|CLK_DIV|counter[14]~59\ $ (GND))) # (!\U_CLK_GEN|CLK_DIV|counter\(15) & (!\U_CLK_GEN|CLK_DIV|counter[14]~59\ & VCC))
-- \U_CLK_GEN|CLK_DIV|counter[15]~61\ = CARRY((\U_CLK_GEN|CLK_DIV|counter\(15) & !\U_CLK_GEN|CLK_DIV|counter[14]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|counter\(15),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[14]~59\,
	combout => \U_CLK_GEN|CLK_DIV|counter[15]~60_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[15]~61\);

-- Location: FF_X15_Y14_N31
\U_CLK_GEN|CLK_DIV|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[15]~60_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(15));

-- Location: LCCOMB_X15_Y13_N0
\U_CLK_GEN|CLK_DIV|counter[16]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[16]~62_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(16) & (!\U_CLK_GEN|CLK_DIV|counter[15]~61\)) # (!\U_CLK_GEN|CLK_DIV|counter\(16) & ((\U_CLK_GEN|CLK_DIV|counter[15]~61\) # (GND)))
-- \U_CLK_GEN|CLK_DIV|counter[16]~63\ = CARRY((!\U_CLK_GEN|CLK_DIV|counter[15]~61\) # (!\U_CLK_GEN|CLK_DIV|counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|CLK_DIV|counter\(16),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[15]~61\,
	combout => \U_CLK_GEN|CLK_DIV|counter[16]~62_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[16]~63\);

-- Location: FF_X15_Y13_N1
\U_CLK_GEN|CLK_DIV|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[16]~62_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(16));

-- Location: LCCOMB_X15_Y13_N2
\U_CLK_GEN|CLK_DIV|counter[17]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[17]~64_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(17) & (\U_CLK_GEN|CLK_DIV|counter[16]~63\ $ (GND))) # (!\U_CLK_GEN|CLK_DIV|counter\(17) & (!\U_CLK_GEN|CLK_DIV|counter[16]~63\ & VCC))
-- \U_CLK_GEN|CLK_DIV|counter[17]~65\ = CARRY((\U_CLK_GEN|CLK_DIV|counter\(17) & !\U_CLK_GEN|CLK_DIV|counter[16]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|CLK_DIV|counter\(17),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[16]~63\,
	combout => \U_CLK_GEN|CLK_DIV|counter[17]~64_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[17]~65\);

-- Location: FF_X15_Y13_N3
\U_CLK_GEN|CLK_DIV|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[17]~64_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(17));

-- Location: LCCOMB_X15_Y13_N4
\U_CLK_GEN|CLK_DIV|counter[18]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[18]~66_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(18) & (!\U_CLK_GEN|CLK_DIV|counter[17]~65\)) # (!\U_CLK_GEN|CLK_DIV|counter\(18) & ((\U_CLK_GEN|CLK_DIV|counter[17]~65\) # (GND)))
-- \U_CLK_GEN|CLK_DIV|counter[18]~67\ = CARRY((!\U_CLK_GEN|CLK_DIV|counter[17]~65\) # (!\U_CLK_GEN|CLK_DIV|counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|CLK_DIV|counter\(18),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[17]~65\,
	combout => \U_CLK_GEN|CLK_DIV|counter[18]~66_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[18]~67\);

-- Location: FF_X15_Y13_N5
\U_CLK_GEN|CLK_DIV|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[18]~66_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(18));

-- Location: LCCOMB_X15_Y13_N6
\U_CLK_GEN|CLK_DIV|counter[19]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[19]~68_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(19) & (\U_CLK_GEN|CLK_DIV|counter[18]~67\ $ (GND))) # (!\U_CLK_GEN|CLK_DIV|counter\(19) & (!\U_CLK_GEN|CLK_DIV|counter[18]~67\ & VCC))
-- \U_CLK_GEN|CLK_DIV|counter[19]~69\ = CARRY((\U_CLK_GEN|CLK_DIV|counter\(19) & !\U_CLK_GEN|CLK_DIV|counter[18]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|counter\(19),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[18]~67\,
	combout => \U_CLK_GEN|CLK_DIV|counter[19]~68_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[19]~69\);

-- Location: FF_X15_Y13_N7
\U_CLK_GEN|CLK_DIV|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[19]~68_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(19));

-- Location: LCCOMB_X15_Y13_N8
\U_CLK_GEN|CLK_DIV|counter[20]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[20]~70_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(20) & (!\U_CLK_GEN|CLK_DIV|counter[19]~69\)) # (!\U_CLK_GEN|CLK_DIV|counter\(20) & ((\U_CLK_GEN|CLK_DIV|counter[19]~69\) # (GND)))
-- \U_CLK_GEN|CLK_DIV|counter[20]~71\ = CARRY((!\U_CLK_GEN|CLK_DIV|counter[19]~69\) # (!\U_CLK_GEN|CLK_DIV|counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|CLK_DIV|counter\(20),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[19]~69\,
	combout => \U_CLK_GEN|CLK_DIV|counter[20]~70_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[20]~71\);

-- Location: FF_X15_Y13_N9
\U_CLK_GEN|CLK_DIV|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[20]~70_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(20));

-- Location: LCCOMB_X15_Y13_N10
\U_CLK_GEN|CLK_DIV|counter[21]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[21]~72_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(21) & (\U_CLK_GEN|CLK_DIV|counter[20]~71\ $ (GND))) # (!\U_CLK_GEN|CLK_DIV|counter\(21) & (!\U_CLK_GEN|CLK_DIV|counter[20]~71\ & VCC))
-- \U_CLK_GEN|CLK_DIV|counter[21]~73\ = CARRY((\U_CLK_GEN|CLK_DIV|counter\(21) & !\U_CLK_GEN|CLK_DIV|counter[20]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|counter\(21),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[20]~71\,
	combout => \U_CLK_GEN|CLK_DIV|counter[21]~72_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[21]~73\);

-- Location: FF_X15_Y13_N11
\U_CLK_GEN|CLK_DIV|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[21]~72_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(21));

-- Location: LCCOMB_X15_Y13_N12
\U_CLK_GEN|CLK_DIV|counter[22]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[22]~74_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(22) & (!\U_CLK_GEN|CLK_DIV|counter[21]~73\)) # (!\U_CLK_GEN|CLK_DIV|counter\(22) & ((\U_CLK_GEN|CLK_DIV|counter[21]~73\) # (GND)))
-- \U_CLK_GEN|CLK_DIV|counter[22]~75\ = CARRY((!\U_CLK_GEN|CLK_DIV|counter[21]~73\) # (!\U_CLK_GEN|CLK_DIV|counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|counter\(22),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[21]~73\,
	combout => \U_CLK_GEN|CLK_DIV|counter[22]~74_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[22]~75\);

-- Location: FF_X15_Y13_N13
\U_CLK_GEN|CLK_DIV|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[22]~74_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(22));

-- Location: LCCOMB_X15_Y13_N14
\U_CLK_GEN|CLK_DIV|counter[23]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[23]~76_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(23) & (\U_CLK_GEN|CLK_DIV|counter[22]~75\ $ (GND))) # (!\U_CLK_GEN|CLK_DIV|counter\(23) & (!\U_CLK_GEN|CLK_DIV|counter[22]~75\ & VCC))
-- \U_CLK_GEN|CLK_DIV|counter[23]~77\ = CARRY((\U_CLK_GEN|CLK_DIV|counter\(23) & !\U_CLK_GEN|CLK_DIV|counter[22]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|CLK_DIV|counter\(23),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[22]~75\,
	combout => \U_CLK_GEN|CLK_DIV|counter[23]~76_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[23]~77\);

-- Location: FF_X15_Y13_N15
\U_CLK_GEN|CLK_DIV|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[23]~76_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(23));

-- Location: LCCOMB_X15_Y13_N16
\U_CLK_GEN|CLK_DIV|counter[24]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[24]~78_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(24) & (!\U_CLK_GEN|CLK_DIV|counter[23]~77\)) # (!\U_CLK_GEN|CLK_DIV|counter\(24) & ((\U_CLK_GEN|CLK_DIV|counter[23]~77\) # (GND)))
-- \U_CLK_GEN|CLK_DIV|counter[24]~79\ = CARRY((!\U_CLK_GEN|CLK_DIV|counter[23]~77\) # (!\U_CLK_GEN|CLK_DIV|counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|CLK_DIV|counter\(24),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[23]~77\,
	combout => \U_CLK_GEN|CLK_DIV|counter[24]~78_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[24]~79\);

-- Location: FF_X15_Y13_N17
\U_CLK_GEN|CLK_DIV|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[24]~78_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(24));

-- Location: LCCOMB_X15_Y13_N18
\U_CLK_GEN|CLK_DIV|counter[25]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[25]~80_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(25) & (\U_CLK_GEN|CLK_DIV|counter[24]~79\ $ (GND))) # (!\U_CLK_GEN|CLK_DIV|counter\(25) & (!\U_CLK_GEN|CLK_DIV|counter[24]~79\ & VCC))
-- \U_CLK_GEN|CLK_DIV|counter[25]~81\ = CARRY((\U_CLK_GEN|CLK_DIV|counter\(25) & !\U_CLK_GEN|CLK_DIV|counter[24]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|CLK_DIV|counter\(25),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[24]~79\,
	combout => \U_CLK_GEN|CLK_DIV|counter[25]~80_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[25]~81\);

-- Location: FF_X15_Y13_N19
\U_CLK_GEN|CLK_DIV|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[25]~80_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(25));

-- Location: LCCOMB_X15_Y13_N20
\U_CLK_GEN|CLK_DIV|counter[26]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[26]~82_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(26) & (!\U_CLK_GEN|CLK_DIV|counter[25]~81\)) # (!\U_CLK_GEN|CLK_DIV|counter\(26) & ((\U_CLK_GEN|CLK_DIV|counter[25]~81\) # (GND)))
-- \U_CLK_GEN|CLK_DIV|counter[26]~83\ = CARRY((!\U_CLK_GEN|CLK_DIV|counter[25]~81\) # (!\U_CLK_GEN|CLK_DIV|counter\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|CLK_DIV|counter\(26),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[25]~81\,
	combout => \U_CLK_GEN|CLK_DIV|counter[26]~82_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[26]~83\);

-- Location: FF_X15_Y13_N21
\U_CLK_GEN|CLK_DIV|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[26]~82_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(26));

-- Location: LCCOMB_X15_Y13_N22
\U_CLK_GEN|CLK_DIV|counter[27]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[27]~84_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(27) & (\U_CLK_GEN|CLK_DIV|counter[26]~83\ $ (GND))) # (!\U_CLK_GEN|CLK_DIV|counter\(27) & (!\U_CLK_GEN|CLK_DIV|counter[26]~83\ & VCC))
-- \U_CLK_GEN|CLK_DIV|counter[27]~85\ = CARRY((\U_CLK_GEN|CLK_DIV|counter\(27) & !\U_CLK_GEN|CLK_DIV|counter[26]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|counter\(27),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[26]~83\,
	combout => \U_CLK_GEN|CLK_DIV|counter[27]~84_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[27]~85\);

-- Location: FF_X15_Y13_N23
\U_CLK_GEN|CLK_DIV|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[27]~84_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(27));

-- Location: LCCOMB_X15_Y13_N24
\U_CLK_GEN|CLK_DIV|counter[28]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[28]~86_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(28) & (!\U_CLK_GEN|CLK_DIV|counter[27]~85\)) # (!\U_CLK_GEN|CLK_DIV|counter\(28) & ((\U_CLK_GEN|CLK_DIV|counter[27]~85\) # (GND)))
-- \U_CLK_GEN|CLK_DIV|counter[28]~87\ = CARRY((!\U_CLK_GEN|CLK_DIV|counter[27]~85\) # (!\U_CLK_GEN|CLK_DIV|counter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|CLK_DIV|counter\(28),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[27]~85\,
	combout => \U_CLK_GEN|CLK_DIV|counter[28]~86_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[28]~87\);

-- Location: FF_X15_Y13_N25
\U_CLK_GEN|CLK_DIV|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[28]~86_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(28));

-- Location: LCCOMB_X15_Y13_N26
\U_CLK_GEN|CLK_DIV|counter[29]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[29]~88_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(29) & (\U_CLK_GEN|CLK_DIV|counter[28]~87\ $ (GND))) # (!\U_CLK_GEN|CLK_DIV|counter\(29) & (!\U_CLK_GEN|CLK_DIV|counter[28]~87\ & VCC))
-- \U_CLK_GEN|CLK_DIV|counter[29]~89\ = CARRY((\U_CLK_GEN|CLK_DIV|counter\(29) & !\U_CLK_GEN|CLK_DIV|counter[28]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|counter\(29),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[28]~87\,
	combout => \U_CLK_GEN|CLK_DIV|counter[29]~88_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[29]~89\);

-- Location: FF_X15_Y13_N27
\U_CLK_GEN|CLK_DIV|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[29]~88_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(29));

-- Location: LCCOMB_X15_Y13_N28
\U_CLK_GEN|CLK_DIV|counter[30]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[30]~90_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(30) & (!\U_CLK_GEN|CLK_DIV|counter[29]~89\)) # (!\U_CLK_GEN|CLK_DIV|counter\(30) & ((\U_CLK_GEN|CLK_DIV|counter[29]~89\) # (GND)))
-- \U_CLK_GEN|CLK_DIV|counter[30]~91\ = CARRY((!\U_CLK_GEN|CLK_DIV|counter[29]~89\) # (!\U_CLK_GEN|CLK_DIV|counter\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|CLK_DIV|counter\(30),
	datad => VCC,
	cin => \U_CLK_GEN|CLK_DIV|counter[29]~89\,
	combout => \U_CLK_GEN|CLK_DIV|counter[30]~90_combout\,
	cout => \U_CLK_GEN|CLK_DIV|counter[30]~91\);

-- Location: FF_X15_Y13_N29
\U_CLK_GEN|CLK_DIV|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[30]~90_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(30));

-- Location: LCCOMB_X15_Y13_N30
\U_CLK_GEN|CLK_DIV|counter[31]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|counter[31]~92_combout\ = \U_CLK_GEN|CLK_DIV|counter\(31) $ (!\U_CLK_GEN|CLK_DIV|counter[30]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|counter\(31),
	cin => \U_CLK_GEN|CLK_DIV|counter[30]~91\,
	combout => \U_CLK_GEN|CLK_DIV|counter[31]~92_combout\);

-- Location: FF_X15_Y13_N31
\U_CLK_GEN|CLK_DIV|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|counter[31]~92_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|counter\(31));

-- Location: LCCOMB_X16_Y13_N24
\U_CLK_GEN|CLK_DIV|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|Equal0~9_combout\ = (!\U_CLK_GEN|CLK_DIV|counter\(29) & (!\U_CLK_GEN|CLK_DIV|counter\(28) & (!\U_CLK_GEN|CLK_DIV|counter\(31) & !\U_CLK_GEN|CLK_DIV|counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|counter\(29),
	datab => \U_CLK_GEN|CLK_DIV|counter\(28),
	datac => \U_CLK_GEN|CLK_DIV|counter\(31),
	datad => \U_CLK_GEN|CLK_DIV|counter\(30),
	combout => \U_CLK_GEN|CLK_DIV|Equal0~9_combout\);

-- Location: LCCOMB_X14_Y13_N0
\U_CLK_GEN|CLK_DIV|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|Equal0~8_combout\ = (!\U_CLK_GEN|CLK_DIV|counter\(26) & (!\U_CLK_GEN|CLK_DIV|counter\(24) & (!\U_CLK_GEN|CLK_DIV|counter\(27) & !\U_CLK_GEN|CLK_DIV|counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|counter\(26),
	datab => \U_CLK_GEN|CLK_DIV|counter\(24),
	datac => \U_CLK_GEN|CLK_DIV|counter\(27),
	datad => \U_CLK_GEN|CLK_DIV|counter\(25),
	combout => \U_CLK_GEN|CLK_DIV|Equal0~8_combout\);

-- Location: LCCOMB_X14_Y14_N30
\U_CLK_GEN|CLK_DIV|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|Equal0~2_combout\ = (!\U_CLK_GEN|CLK_DIV|counter\(10) & (!\U_CLK_GEN|CLK_DIV|counter\(9) & (!\U_CLK_GEN|CLK_DIV|counter\(11) & \U_CLK_GEN|CLK_DIV|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|counter\(10),
	datab => \U_CLK_GEN|CLK_DIV|counter\(9),
	datac => \U_CLK_GEN|CLK_DIV|counter\(11),
	datad => \U_CLK_GEN|CLK_DIV|counter\(8),
	combout => \U_CLK_GEN|CLK_DIV|Equal0~2_combout\);

-- Location: LCCOMB_X14_Y14_N28
\U_CLK_GEN|CLK_DIV|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|Equal0~3_combout\ = (!\U_CLK_GEN|CLK_DIV|counter\(15) & (\U_CLK_GEN|CLK_DIV|counter\(14) & (!\U_CLK_GEN|CLK_DIV|counter\(12) & \U_CLK_GEN|CLK_DIV|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|counter\(15),
	datab => \U_CLK_GEN|CLK_DIV|counter\(14),
	datac => \U_CLK_GEN|CLK_DIV|counter\(12),
	datad => \U_CLK_GEN|CLK_DIV|counter\(13),
	combout => \U_CLK_GEN|CLK_DIV|Equal0~3_combout\);

-- Location: LCCOMB_X14_Y14_N22
\U_CLK_GEN|CLK_DIV|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|Equal0~0_combout\ = (!\U_CLK_GEN|CLK_DIV|counter\(1) & (\U_CLK_GEN|CLK_DIV|counter\(3) & (!\U_CLK_GEN|CLK_DIV|counter\(0) & !\U_CLK_GEN|CLK_DIV|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|counter\(1),
	datab => \U_CLK_GEN|CLK_DIV|counter\(3),
	datac => \U_CLK_GEN|CLK_DIV|counter\(0),
	datad => \U_CLK_GEN|CLK_DIV|counter\(2),
	combout => \U_CLK_GEN|CLK_DIV|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y14_N24
\U_CLK_GEN|CLK_DIV|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|Equal0~1_combout\ = (\U_CLK_GEN|CLK_DIV|counter\(7) & (\U_CLK_GEN|CLK_DIV|counter\(5) & (!\U_CLK_GEN|CLK_DIV|counter\(4) & !\U_CLK_GEN|CLK_DIV|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|counter\(7),
	datab => \U_CLK_GEN|CLK_DIV|counter\(5),
	datac => \U_CLK_GEN|CLK_DIV|counter\(4),
	datad => \U_CLK_GEN|CLK_DIV|counter\(6),
	combout => \U_CLK_GEN|CLK_DIV|Equal0~1_combout\);

-- Location: LCCOMB_X14_Y14_N6
\U_CLK_GEN|CLK_DIV|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|Equal0~4_combout\ = (\U_CLK_GEN|CLK_DIV|Equal0~2_combout\ & (\U_CLK_GEN|CLK_DIV|Equal0~3_combout\ & (\U_CLK_GEN|CLK_DIV|Equal0~0_combout\ & \U_CLK_GEN|CLK_DIV|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|Equal0~2_combout\,
	datab => \U_CLK_GEN|CLK_DIV|Equal0~3_combout\,
	datac => \U_CLK_GEN|CLK_DIV|Equal0~0_combout\,
	datad => \U_CLK_GEN|CLK_DIV|Equal0~1_combout\,
	combout => \U_CLK_GEN|CLK_DIV|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y14_N4
\U_CLK_GEN|CLK_DIV|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|Equal0~5_combout\ = (!\U_CLK_GEN|CLK_DIV|counter\(18) & (!\U_CLK_GEN|CLK_DIV|counter\(19) & (!\U_CLK_GEN|CLK_DIV|counter\(16) & !\U_CLK_GEN|CLK_DIV|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|counter\(18),
	datab => \U_CLK_GEN|CLK_DIV|counter\(19),
	datac => \U_CLK_GEN|CLK_DIV|counter\(16),
	datad => \U_CLK_GEN|CLK_DIV|counter\(17),
	combout => \U_CLK_GEN|CLK_DIV|Equal0~5_combout\);

-- Location: LCCOMB_X16_Y14_N2
\U_CLK_GEN|CLK_DIV|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|Equal0~6_combout\ = (!\U_CLK_GEN|CLK_DIV|counter\(20) & !\U_CLK_GEN|CLK_DIV|counter\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CLK_GEN|CLK_DIV|counter\(20),
	datad => \U_CLK_GEN|CLK_DIV|counter\(21),
	combout => \U_CLK_GEN|CLK_DIV|Equal0~6_combout\);

-- Location: LCCOMB_X16_Y14_N24
\U_CLK_GEN|CLK_DIV|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|Equal0~7_combout\ = (!\U_CLK_GEN|CLK_DIV|counter\(23) & (!\U_CLK_GEN|CLK_DIV|counter\(22) & (\U_CLK_GEN|CLK_DIV|Equal0~5_combout\ & \U_CLK_GEN|CLK_DIV|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|counter\(23),
	datab => \U_CLK_GEN|CLK_DIV|counter\(22),
	datac => \U_CLK_GEN|CLK_DIV|Equal0~5_combout\,
	datad => \U_CLK_GEN|CLK_DIV|Equal0~6_combout\,
	combout => \U_CLK_GEN|CLK_DIV|Equal0~7_combout\);

-- Location: LCCOMB_X15_Y14_N0
\U_CLK_GEN|CLK_DIV|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|Equal0~10_combout\ = (\U_CLK_GEN|CLK_DIV|Equal0~9_combout\ & (\U_CLK_GEN|CLK_DIV|Equal0~8_combout\ & (\U_CLK_GEN|CLK_DIV|Equal0~4_combout\ & \U_CLK_GEN|CLK_DIV|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|CLK_DIV|Equal0~9_combout\,
	datab => \U_CLK_GEN|CLK_DIV|Equal0~8_combout\,
	datac => \U_CLK_GEN|CLK_DIV|Equal0~4_combout\,
	datad => \U_CLK_GEN|CLK_DIV|Equal0~7_combout\,
	combout => \U_CLK_GEN|CLK_DIV|Equal0~10_combout\);

-- Location: LCCOMB_X14_Y14_N12
\U_CLK_GEN|CLK_DIV|tmp~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|tmp~0_combout\ = \U_CLK_GEN|CLK_DIV|Equal0~10_combout\ $ (\U_CLK_GEN|CLK_DIV|tmp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CLK_GEN|CLK_DIV|Equal0~10_combout\,
	datad => \U_CLK_GEN|CLK_DIV|tmp~q\,
	combout => \U_CLK_GEN|CLK_DIV|tmp~0_combout\);

-- Location: LCCOMB_X14_Y14_N0
\U_CLK_GEN|CLK_DIV|tmp~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|CLK_DIV|tmp~feeder_combout\ = \U_CLK_GEN|CLK_DIV|tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|CLK_DIV|tmp~0_combout\,
	combout => \U_CLK_GEN|CLK_DIV|tmp~feeder_combout\);

-- Location: FF_X14_Y14_N1
\U_CLK_GEN|CLK_DIV|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|CLK_DIV|tmp~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|CLK_DIV|tmp~q\);

-- Location: CLKCTRL_G2
\U_CLK_GEN|CLK_DIV|tmp~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_CLK_GEN|CLK_DIV|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_CLK_GEN|CLK_DIV|tmp~clkctrl_outclk\);

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

-- Location: LCCOMB_X1_Y14_N12
\U_CLK_GEN|tmp[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|tmp[0]~9_combout\ = \U_CLK_GEN|tmp\(0) $ (VCC)
-- \U_CLK_GEN|tmp[0]~10\ = CARRY(\U_CLK_GEN|tmp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|tmp\(0),
	datad => VCC,
	combout => \U_CLK_GEN|tmp[0]~9_combout\,
	cout => \U_CLK_GEN|tmp[0]~10\);

-- Location: LCCOMB_X1_Y14_N8
\button[2]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \button[2]~_wirecell_combout\ = !\button[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button[2]~input_o\,
	combout => \button[2]~_wirecell_combout\);

-- Location: LCCOMB_X1_Y14_N30
\U_CLK_GEN|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Equal0~0_combout\ = (\U_CLK_GEN|tmp\(0)) # ((\U_CLK_GEN|tmp\(3)) # ((\U_CLK_GEN|tmp\(1)) # (!\U_CLK_GEN|tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|tmp\(0),
	datab => \U_CLK_GEN|tmp\(3),
	datac => \U_CLK_GEN|tmp\(1),
	datad => \U_CLK_GEN|tmp\(2),
	combout => \U_CLK_GEN|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y14_N0
\U_CLK_GEN|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Equal0~1_combout\ = (((!\U_CLK_GEN|tmp\(6)) # (!\U_CLK_GEN|tmp\(7))) # (!\U_CLK_GEN|tmp\(4))) # (!\U_CLK_GEN|tmp\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|tmp\(5),
	datab => \U_CLK_GEN|tmp\(4),
	datac => \U_CLK_GEN|tmp\(7),
	datad => \U_CLK_GEN|tmp\(6),
	combout => \U_CLK_GEN|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y14_N6
\U_CLK_GEN|tmp[6]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|tmp[6]~11_combout\ = (\button[2]~input_o\) # ((\U_CLK_GEN|tmp\(8) & (!\U_CLK_GEN|Equal0~0_combout\ & !\U_CLK_GEN|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \U_CLK_GEN|tmp\(8),
	datac => \U_CLK_GEN|Equal0~0_combout\,
	datad => \U_CLK_GEN|Equal0~1_combout\,
	combout => \U_CLK_GEN|tmp[6]~11_combout\);

-- Location: FF_X1_Y14_N13
\U_CLK_GEN|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|CLK_DIV|tmp~clkctrl_outclk\,
	d => \U_CLK_GEN|tmp[0]~9_combout\,
	asdata => \button[2]~_wirecell_combout\,
	sload => \U_CLK_GEN|tmp[6]~11_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|tmp\(0));

-- Location: LCCOMB_X1_Y14_N14
\U_CLK_GEN|tmp[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|tmp[1]~12_combout\ = (\U_CLK_GEN|tmp\(1) & (!\U_CLK_GEN|tmp[0]~10\)) # (!\U_CLK_GEN|tmp\(1) & ((\U_CLK_GEN|tmp[0]~10\) # (GND)))
-- \U_CLK_GEN|tmp[1]~13\ = CARRY((!\U_CLK_GEN|tmp[0]~10\) # (!\U_CLK_GEN|tmp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|tmp\(1),
	datad => VCC,
	cin => \U_CLK_GEN|tmp[0]~10\,
	combout => \U_CLK_GEN|tmp[1]~12_combout\,
	cout => \U_CLK_GEN|tmp[1]~13\);

-- Location: LCCOMB_X1_Y14_N4
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X1_Y14_N15
\U_CLK_GEN|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|CLK_DIV|tmp~clkctrl_outclk\,
	d => \U_CLK_GEN|tmp[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \U_CLK_GEN|tmp[6]~11_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|tmp\(1));

-- Location: LCCOMB_X1_Y14_N16
\U_CLK_GEN|tmp[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|tmp[2]~14_combout\ = (\U_CLK_GEN|tmp\(2) & (\U_CLK_GEN|tmp[1]~13\ $ (GND))) # (!\U_CLK_GEN|tmp\(2) & (!\U_CLK_GEN|tmp[1]~13\ & VCC))
-- \U_CLK_GEN|tmp[2]~15\ = CARRY((\U_CLK_GEN|tmp\(2) & !\U_CLK_GEN|tmp[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|tmp\(2),
	datad => VCC,
	cin => \U_CLK_GEN|tmp[1]~13\,
	combout => \U_CLK_GEN|tmp[2]~14_combout\,
	cout => \U_CLK_GEN|tmp[2]~15\);

-- Location: FF_X1_Y14_N17
\U_CLK_GEN|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|CLK_DIV|tmp~clkctrl_outclk\,
	d => \U_CLK_GEN|tmp[2]~14_combout\,
	asdata => \~GND~combout\,
	sload => \U_CLK_GEN|tmp[6]~11_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|tmp\(2));

-- Location: LCCOMB_X1_Y14_N18
\U_CLK_GEN|tmp[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|tmp[3]~16_combout\ = (\U_CLK_GEN|tmp\(3) & (!\U_CLK_GEN|tmp[2]~15\)) # (!\U_CLK_GEN|tmp\(3) & ((\U_CLK_GEN|tmp[2]~15\) # (GND)))
-- \U_CLK_GEN|tmp[3]~17\ = CARRY((!\U_CLK_GEN|tmp[2]~15\) # (!\U_CLK_GEN|tmp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|tmp\(3),
	datad => VCC,
	cin => \U_CLK_GEN|tmp[2]~15\,
	combout => \U_CLK_GEN|tmp[3]~16_combout\,
	cout => \U_CLK_GEN|tmp[3]~17\);

-- Location: FF_X1_Y14_N19
\U_CLK_GEN|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|CLK_DIV|tmp~clkctrl_outclk\,
	d => \U_CLK_GEN|tmp[3]~16_combout\,
	asdata => \~GND~combout\,
	sload => \U_CLK_GEN|tmp[6]~11_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|tmp\(3));

-- Location: LCCOMB_X1_Y14_N20
\U_CLK_GEN|tmp[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|tmp[4]~18_combout\ = (\U_CLK_GEN|tmp\(4) & (\U_CLK_GEN|tmp[3]~17\ $ (GND))) # (!\U_CLK_GEN|tmp\(4) & (!\U_CLK_GEN|tmp[3]~17\ & VCC))
-- \U_CLK_GEN|tmp[4]~19\ = CARRY((\U_CLK_GEN|tmp\(4) & !\U_CLK_GEN|tmp[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|tmp\(4),
	datad => VCC,
	cin => \U_CLK_GEN|tmp[3]~17\,
	combout => \U_CLK_GEN|tmp[4]~18_combout\,
	cout => \U_CLK_GEN|tmp[4]~19\);

-- Location: FF_X1_Y14_N21
\U_CLK_GEN|tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|CLK_DIV|tmp~clkctrl_outclk\,
	d => \U_CLK_GEN|tmp[4]~18_combout\,
	asdata => \~GND~combout\,
	sload => \U_CLK_GEN|tmp[6]~11_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|tmp\(4));

-- Location: LCCOMB_X1_Y14_N22
\U_CLK_GEN|tmp[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|tmp[5]~20_combout\ = (\U_CLK_GEN|tmp\(5) & (!\U_CLK_GEN|tmp[4]~19\)) # (!\U_CLK_GEN|tmp\(5) & ((\U_CLK_GEN|tmp[4]~19\) # (GND)))
-- \U_CLK_GEN|tmp[5]~21\ = CARRY((!\U_CLK_GEN|tmp[4]~19\) # (!\U_CLK_GEN|tmp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|tmp\(5),
	datad => VCC,
	cin => \U_CLK_GEN|tmp[4]~19\,
	combout => \U_CLK_GEN|tmp[5]~20_combout\,
	cout => \U_CLK_GEN|tmp[5]~21\);

-- Location: FF_X1_Y14_N23
\U_CLK_GEN|tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|CLK_DIV|tmp~clkctrl_outclk\,
	d => \U_CLK_GEN|tmp[5]~20_combout\,
	asdata => \~GND~combout\,
	sload => \U_CLK_GEN|tmp[6]~11_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|tmp\(5));

-- Location: LCCOMB_X1_Y14_N24
\U_CLK_GEN|tmp[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|tmp[6]~22_combout\ = (\U_CLK_GEN|tmp\(6) & (\U_CLK_GEN|tmp[5]~21\ $ (GND))) # (!\U_CLK_GEN|tmp\(6) & (!\U_CLK_GEN|tmp[5]~21\ & VCC))
-- \U_CLK_GEN|tmp[6]~23\ = CARRY((\U_CLK_GEN|tmp\(6) & !\U_CLK_GEN|tmp[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|tmp\(6),
	datad => VCC,
	cin => \U_CLK_GEN|tmp[5]~21\,
	combout => \U_CLK_GEN|tmp[6]~22_combout\,
	cout => \U_CLK_GEN|tmp[6]~23\);

-- Location: FF_X1_Y14_N25
\U_CLK_GEN|tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|CLK_DIV|tmp~clkctrl_outclk\,
	d => \U_CLK_GEN|tmp[6]~22_combout\,
	asdata => \~GND~combout\,
	sload => \U_CLK_GEN|tmp[6]~11_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|tmp\(6));

-- Location: LCCOMB_X1_Y14_N26
\U_CLK_GEN|tmp[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|tmp[7]~24_combout\ = (\U_CLK_GEN|tmp\(7) & (!\U_CLK_GEN|tmp[6]~23\)) # (!\U_CLK_GEN|tmp\(7) & ((\U_CLK_GEN|tmp[6]~23\) # (GND)))
-- \U_CLK_GEN|tmp[7]~25\ = CARRY((!\U_CLK_GEN|tmp[6]~23\) # (!\U_CLK_GEN|tmp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|tmp\(7),
	datad => VCC,
	cin => \U_CLK_GEN|tmp[6]~23\,
	combout => \U_CLK_GEN|tmp[7]~24_combout\,
	cout => \U_CLK_GEN|tmp[7]~25\);

-- Location: FF_X1_Y14_N27
\U_CLK_GEN|tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|CLK_DIV|tmp~clkctrl_outclk\,
	d => \U_CLK_GEN|tmp[7]~24_combout\,
	asdata => \~GND~combout\,
	sload => \U_CLK_GEN|tmp[6]~11_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|tmp\(7));

-- Location: LCCOMB_X1_Y14_N28
\U_CLK_GEN|tmp[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|tmp[8]~26_combout\ = \U_CLK_GEN|tmp[7]~25\ $ (!\U_CLK_GEN|tmp\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_CLK_GEN|tmp\(8),
	cin => \U_CLK_GEN|tmp[7]~25\,
	combout => \U_CLK_GEN|tmp[8]~26_combout\);

-- Location: FF_X1_Y14_N29
\U_CLK_GEN|tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|CLK_DIV|tmp~clkctrl_outclk\,
	d => \U_CLK_GEN|tmp[8]~26_combout\,
	asdata => \~GND~combout\,
	sload => \U_CLK_GEN|tmp[6]~11_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|tmp\(8));

-- Location: LCCOMB_X1_Y14_N2
\U_CLK_GEN|clk_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|clk_out~0_combout\ = (!\button[2]~input_o\ & (\U_CLK_GEN|tmp\(8) & (!\U_CLK_GEN|Equal0~0_combout\ & !\U_CLK_GEN|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \U_CLK_GEN|tmp\(8),
	datac => \U_CLK_GEN|Equal0~0_combout\,
	datad => \U_CLK_GEN|Equal0~1_combout\,
	combout => \U_CLK_GEN|clk_out~0_combout\);

-- Location: FF_X1_Y14_N3
\U_CLK_GEN|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|CLK_DIV|tmp~clkctrl_outclk\,
	d => \U_CLK_GEN|clk_out~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|clk_out~q\);

-- Location: CLKCTRL_G1
\U_CLK_GEN|clk_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_CLK_GEN|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_CLK_GEN|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y28_N24
\U_QUIZ|curr_state.STATE2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_QUIZ|curr_state.STATE2~feeder_combout\ = \U_QUIZ|curr_state.STATE1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_QUIZ|curr_state.STATE1~q\,
	combout => \U_QUIZ|curr_state.STATE2~feeder_combout\);

-- Location: FF_X24_Y28_N25
\U_QUIZ|curr_state.STATE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_QUIZ|curr_state.STATE2~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_QUIZ|curr_state.STATE2~q\);

-- Location: LCCOMB_X24_Y28_N12
\U_QUIZ|curr_state.STATE3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_QUIZ|curr_state.STATE3~feeder_combout\ = \U_QUIZ|curr_state.STATE2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_QUIZ|curr_state.STATE2~q\,
	combout => \U_QUIZ|curr_state.STATE3~feeder_combout\);

-- Location: FF_X24_Y28_N13
\U_QUIZ|curr_state.STATE3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_QUIZ|curr_state.STATE3~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_QUIZ|curr_state.STATE3~q\);

-- Location: LCCOMB_X24_Y28_N16
\U_QUIZ|curr_state.STATE0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_QUIZ|curr_state.STATE0~0_combout\ = !\U_QUIZ|curr_state.STATE3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_QUIZ|curr_state.STATE3~q\,
	combout => \U_QUIZ|curr_state.STATE0~0_combout\);

-- Location: FF_X24_Y28_N17
\U_QUIZ|curr_state.STATE0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_QUIZ|curr_state.STATE0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_QUIZ|curr_state.STATE0~q\);

-- Location: LCCOMB_X24_Y28_N18
\U_QUIZ|curr_state.STATE1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_QUIZ|curr_state.STATE1~0_combout\ = !\U_QUIZ|curr_state.STATE0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_QUIZ|curr_state.STATE0~q\,
	combout => \U_QUIZ|curr_state.STATE1~0_combout\);

-- Location: FF_X24_Y28_N19
\U_QUIZ|curr_state.STATE1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_QUIZ|curr_state.STATE1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_QUIZ|curr_state.STATE1~q\);

-- Location: LCCOMB_X24_Y28_N10
\U_LED1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|Mux6~0_combout\ = ((\U_QUIZ|curr_state.STATE3~q\) # (!\U_QUIZ|curr_state.STATE0~q\)) # (!\U_QUIZ|curr_state.STATE1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_QUIZ|curr_state.STATE1~q\,
	datac => \U_QUIZ|curr_state.STATE3~q\,
	datad => \U_QUIZ|curr_state.STATE0~q\,
	combout => \U_LED1|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y28_N26
\U_LED1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|Mux4~0_combout\ = ((\U_QUIZ|curr_state.STATE2~q\) # (\U_QUIZ|curr_state.STATE1~q\)) # (!\U_QUIZ|curr_state.STATE0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_QUIZ|curr_state.STATE0~q\,
	datac => \U_QUIZ|curr_state.STATE2~q\,
	datad => \U_QUIZ|curr_state.STATE1~q\,
	combout => \U_LED1|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y28_N0
\U_QUIZ|output~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_QUIZ|output~3_combout\ = (!\U_QUIZ|curr_state.STATE3~q\ & \U_QUIZ|curr_state.STATE0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_QUIZ|curr_state.STATE3~q\,
	datad => \U_QUIZ|curr_state.STATE0~q\,
	combout => \U_QUIZ|output~3_combout\);

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

-- Location: LCCOMB_X23_Y26_N12
\U_COUNTER|tmp~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_COUNTER|tmp~3_combout\ = (\button[0]~input_o\ & (!\U_COUNTER|tmp\(0))) # (!\button[0]~input_o\ & ((\switch[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[0]~input_o\,
	datac => \U_COUNTER|tmp\(0),
	datad => \switch[6]~input_o\,
	combout => \U_COUNTER|tmp~3_combout\);

-- Location: FF_X23_Y26_N13
\U_COUNTER|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_COUNTER|tmp~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|tmp\(0));

-- Location: LCCOMB_X23_Y26_N16
\U_COUNTER|tmp[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_COUNTER|tmp[1]~5_cout\ = CARRY(\U_COUNTER|tmp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|tmp\(0),
	datad => VCC,
	cout => \U_COUNTER|tmp[1]~5_cout\);

-- Location: LCCOMB_X23_Y26_N18
\U_COUNTER|tmp[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_COUNTER|tmp[1]~6_combout\ = (\button[1]~input_o\ & ((\U_COUNTER|tmp\(1) & (\U_COUNTER|tmp[1]~5_cout\ & VCC)) # (!\U_COUNTER|tmp\(1) & (!\U_COUNTER|tmp[1]~5_cout\)))) # (!\button[1]~input_o\ & ((\U_COUNTER|tmp\(1) & (!\U_COUNTER|tmp[1]~5_cout\)) # 
-- (!\U_COUNTER|tmp\(1) & ((\U_COUNTER|tmp[1]~5_cout\) # (GND)))))
-- \U_COUNTER|tmp[1]~7\ = CARRY((\button[1]~input_o\ & (!\U_COUNTER|tmp\(1) & !\U_COUNTER|tmp[1]~5_cout\)) # (!\button[1]~input_o\ & ((!\U_COUNTER|tmp[1]~5_cout\) # (!\U_COUNTER|tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \U_COUNTER|tmp\(1),
	datad => VCC,
	cin => \U_COUNTER|tmp[1]~5_cout\,
	combout => \U_COUNTER|tmp[1]~6_combout\,
	cout => \U_COUNTER|tmp[1]~7\);

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

-- Location: FF_X23_Y26_N19
\U_COUNTER|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_COUNTER|tmp[1]~6_combout\,
	asdata => \switch[7]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \ALT_INV_button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|tmp\(1));

-- Location: LCCOMB_X23_Y26_N20
\U_COUNTER|tmp[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_COUNTER|tmp[2]~8_combout\ = ((\button[1]~input_o\ $ (\U_COUNTER|tmp\(2) $ (!\U_COUNTER|tmp[1]~7\)))) # (GND)
-- \U_COUNTER|tmp[2]~9\ = CARRY((\button[1]~input_o\ & ((\U_COUNTER|tmp\(2)) # (!\U_COUNTER|tmp[1]~7\))) # (!\button[1]~input_o\ & (\U_COUNTER|tmp\(2) & !\U_COUNTER|tmp[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \U_COUNTER|tmp\(2),
	datad => VCC,
	cin => \U_COUNTER|tmp[1]~7\,
	combout => \U_COUNTER|tmp[2]~8_combout\,
	cout => \U_COUNTER|tmp[2]~9\);

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

-- Location: FF_X23_Y26_N21
\U_COUNTER|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_COUNTER|tmp[2]~8_combout\,
	asdata => \switch[8]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \ALT_INV_button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|tmp\(2));

-- Location: LCCOMB_X23_Y26_N22
\U_COUNTER|tmp[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_COUNTER|tmp[3]~10_combout\ = \U_COUNTER|tmp\(3) $ (\U_COUNTER|tmp[2]~9\ $ (\button[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|tmp\(3),
	datad => \button[1]~input_o\,
	cin => \U_COUNTER|tmp[2]~9\,
	combout => \U_COUNTER|tmp[3]~10_combout\);

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

-- Location: FF_X23_Y26_N23
\U_COUNTER|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_COUNTER|tmp[3]~10_combout\,
	asdata => \switch[9]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \ALT_INV_button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|tmp\(3));

-- Location: LCCOMB_X23_Y26_N2
\U_LED2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux6~0_combout\ = (\U_COUNTER|tmp\(0) & ((\U_COUNTER|tmp\(3)) # (\U_COUNTER|tmp\(1) $ (\U_COUNTER|tmp\(2))))) # (!\U_COUNTER|tmp\(0) & ((\U_COUNTER|tmp\(1)) # (\U_COUNTER|tmp\(3) $ (\U_COUNTER|tmp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|tmp\(1),
	datab => \U_COUNTER|tmp\(0),
	datac => \U_COUNTER|tmp\(3),
	datad => \U_COUNTER|tmp\(2),
	combout => \U_LED2|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y26_N0
\U_LED2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux5~0_combout\ = (\U_COUNTER|tmp\(1) & (!\U_COUNTER|tmp\(3) & ((\U_COUNTER|tmp\(0)) # (!\U_COUNTER|tmp\(2))))) # (!\U_COUNTER|tmp\(1) & (\U_COUNTER|tmp\(0) & (\U_COUNTER|tmp\(3) $ (!\U_COUNTER|tmp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|tmp\(1),
	datab => \U_COUNTER|tmp\(0),
	datac => \U_COUNTER|tmp\(3),
	datad => \U_COUNTER|tmp\(2),
	combout => \U_LED2|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y26_N26
\U_LED2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux4~0_combout\ = (\U_COUNTER|tmp\(1) & (\U_COUNTER|tmp\(0) & (!\U_COUNTER|tmp\(3)))) # (!\U_COUNTER|tmp\(1) & ((\U_COUNTER|tmp\(2) & ((!\U_COUNTER|tmp\(3)))) # (!\U_COUNTER|tmp\(2) & (\U_COUNTER|tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|tmp\(1),
	datab => \U_COUNTER|tmp\(0),
	datac => \U_COUNTER|tmp\(3),
	datad => \U_COUNTER|tmp\(2),
	combout => \U_LED2|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y26_N8
\U_LED2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux3~0_combout\ = (\U_COUNTER|tmp\(0) & (\U_COUNTER|tmp\(1) $ (((!\U_COUNTER|tmp\(2)))))) # (!\U_COUNTER|tmp\(0) & ((\U_COUNTER|tmp\(1) & (\U_COUNTER|tmp\(3) & !\U_COUNTER|tmp\(2))) # (!\U_COUNTER|tmp\(1) & (!\U_COUNTER|tmp\(3) & 
-- \U_COUNTER|tmp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|tmp\(1),
	datab => \U_COUNTER|tmp\(0),
	datac => \U_COUNTER|tmp\(3),
	datad => \U_COUNTER|tmp\(2),
	combout => \U_LED2|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y26_N10
\U_LED2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux2~0_combout\ = (\U_COUNTER|tmp\(3) & (\U_COUNTER|tmp\(2) & ((\U_COUNTER|tmp\(1)) # (!\U_COUNTER|tmp\(0))))) # (!\U_COUNTER|tmp\(3) & (\U_COUNTER|tmp\(1) & (!\U_COUNTER|tmp\(0) & !\U_COUNTER|tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|tmp\(1),
	datab => \U_COUNTER|tmp\(0),
	datac => \U_COUNTER|tmp\(3),
	datad => \U_COUNTER|tmp\(2),
	combout => \U_LED2|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y26_N28
\U_LED2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux1~0_combout\ = (\U_COUNTER|tmp\(1) & ((\U_COUNTER|tmp\(0) & (\U_COUNTER|tmp\(3))) # (!\U_COUNTER|tmp\(0) & ((\U_COUNTER|tmp\(2)))))) # (!\U_COUNTER|tmp\(1) & (\U_COUNTER|tmp\(2) & (\U_COUNTER|tmp\(0) $ (\U_COUNTER|tmp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|tmp\(1),
	datab => \U_COUNTER|tmp\(0),
	datac => \U_COUNTER|tmp\(3),
	datad => \U_COUNTER|tmp\(2),
	combout => \U_LED2|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y26_N6
\U_LED2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux0~0_combout\ = (\U_COUNTER|tmp\(3) & (\U_COUNTER|tmp\(0) & (\U_COUNTER|tmp\(1) $ (\U_COUNTER|tmp\(2))))) # (!\U_COUNTER|tmp\(3) & (!\U_COUNTER|tmp\(1) & (\U_COUNTER|tmp\(0) $ (\U_COUNTER|tmp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|tmp\(1),
	datab => \U_COUNTER|tmp\(0),
	datac => \U_COUNTER|tmp\(3),
	datad => \U_COUNTER|tmp\(2),
	combout => \U_LED2|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y26_N22
\U_GRAY|curr_state.STATE4~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|curr_state.STATE4~feeder_combout\ = \U_GRAY|curr_state.STATE3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GRAY|curr_state.STATE3~q\,
	combout => \U_GRAY|curr_state.STATE4~feeder_combout\);

-- Location: FF_X35_Y26_N23
\U_GRAY|curr_state.STATE4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_GRAY|curr_state.STATE4~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|curr_state.STATE4~q\);

-- Location: FF_X35_Y26_N21
\U_GRAY|curr_state.STATE5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	asdata => \U_GRAY|curr_state.STATE4~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|curr_state.STATE5~q\);

-- Location: LCCOMB_X35_Y26_N16
\U_GRAY|curr_state.STATE6~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|curr_state.STATE6~feeder_combout\ = \U_GRAY|curr_state.STATE5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GRAY|curr_state.STATE5~q\,
	combout => \U_GRAY|curr_state.STATE6~feeder_combout\);

-- Location: FF_X35_Y26_N17
\U_GRAY|curr_state.STATE6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_GRAY|curr_state.STATE6~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|curr_state.STATE6~q\);

-- Location: LCCOMB_X35_Y26_N10
\U_GRAY|curr_state.STATE7~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|curr_state.STATE7~feeder_combout\ = \U_GRAY|curr_state.STATE6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GRAY|curr_state.STATE6~q\,
	combout => \U_GRAY|curr_state.STATE7~feeder_combout\);

-- Location: FF_X35_Y26_N11
\U_GRAY|curr_state.STATE7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_GRAY|curr_state.STATE7~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|curr_state.STATE7~q\);

-- Location: LCCOMB_X35_Y26_N2
\U_GRAY|curr_state.STATE8~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|curr_state.STATE8~feeder_combout\ = \U_GRAY|curr_state.STATE7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GRAY|curr_state.STATE7~q\,
	combout => \U_GRAY|curr_state.STATE8~feeder_combout\);

-- Location: FF_X35_Y26_N3
\U_GRAY|curr_state.STATE8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_GRAY|curr_state.STATE8~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|curr_state.STATE8~q\);

-- Location: LCCOMB_X35_Y26_N6
\U_GRAY|curr_state.STATE9~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|curr_state.STATE9~feeder_combout\ = \U_GRAY|curr_state.STATE8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GRAY|curr_state.STATE8~q\,
	combout => \U_GRAY|curr_state.STATE9~feeder_combout\);

-- Location: FF_X35_Y26_N7
\U_GRAY|curr_state.STATE9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_GRAY|curr_state.STATE9~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|curr_state.STATE9~q\);

-- Location: LCCOMB_X35_Y26_N12
\U_GRAY|curr_state.STATE10~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|curr_state.STATE10~feeder_combout\ = \U_GRAY|curr_state.STATE9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GRAY|curr_state.STATE9~q\,
	combout => \U_GRAY|curr_state.STATE10~feeder_combout\);

-- Location: FF_X35_Y26_N13
\U_GRAY|curr_state.STATE10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_GRAY|curr_state.STATE10~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|curr_state.STATE10~q\);

-- Location: LCCOMB_X35_Y26_N4
\U_GRAY|curr_state.STATE11~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|curr_state.STATE11~feeder_combout\ = \U_GRAY|curr_state.STATE10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GRAY|curr_state.STATE10~q\,
	combout => \U_GRAY|curr_state.STATE11~feeder_combout\);

-- Location: FF_X35_Y26_N5
\U_GRAY|curr_state.STATE11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_GRAY|curr_state.STATE11~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|curr_state.STATE11~q\);

-- Location: FF_X35_Y26_N27
\U_GRAY|curr_state.STATE12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	asdata => \U_GRAY|curr_state.STATE11~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|curr_state.STATE12~q\);

-- Location: FF_X35_Y26_N15
\U_GRAY|curr_state.STATE13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	asdata => \U_GRAY|curr_state.STATE12~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|curr_state.STATE13~q\);

-- Location: FF_X35_Y26_N31
\U_GRAY|curr_state.STATE14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	asdata => \U_GRAY|curr_state.STATE13~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|curr_state.STATE14~q\);

-- Location: FF_X35_Y26_N25
\U_GRAY|curr_state.STATE15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	asdata => \U_GRAY|curr_state.STATE14~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|curr_state.STATE15~q\);

-- Location: LCCOMB_X35_Y26_N18
\U_GRAY|curr_state.STATE0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|curr_state.STATE0~0_combout\ = !\U_GRAY|curr_state.STATE15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GRAY|curr_state.STATE15~q\,
	combout => \U_GRAY|curr_state.STATE0~0_combout\);

-- Location: FF_X35_Y26_N19
\U_GRAY|curr_state.STATE0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_GRAY|curr_state.STATE0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|curr_state.STATE0~q\);

-- Location: LCCOMB_X35_Y26_N8
\U_GRAY|curr_state.STATE1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|curr_state.STATE1~0_combout\ = !\U_GRAY|curr_state.STATE0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GRAY|curr_state.STATE0~q\,
	combout => \U_GRAY|curr_state.STATE1~0_combout\);

-- Location: FF_X35_Y26_N9
\U_GRAY|curr_state.STATE1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_GRAY|curr_state.STATE1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|curr_state.STATE1~q\);

-- Location: FF_X35_Y26_N1
\U_GRAY|curr_state.STATE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	asdata => \U_GRAY|curr_state.STATE1~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|curr_state.STATE2~q\);

-- Location: LCCOMB_X35_Y26_N28
\U_GRAY|curr_state.STATE3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|curr_state.STATE3~feeder_combout\ = \U_GRAY|curr_state.STATE2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GRAY|curr_state.STATE2~q\,
	combout => \U_GRAY|curr_state.STATE3~feeder_combout\);

-- Location: FF_X35_Y26_N29
\U_GRAY|curr_state.STATE3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_GRAY|curr_state.STATE3~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|curr_state.STATE3~q\);

-- Location: LCCOMB_X35_Y26_N26
\U_GRAY|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr3~0_combout\ = (\U_GRAY|curr_state.STATE3~q\) # ((\U_GRAY|curr_state.STATE11~q\) # ((\U_GRAY|curr_state.STATE12~q\) # (\U_GRAY|curr_state.STATE4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|curr_state.STATE3~q\,
	datab => \U_GRAY|curr_state.STATE11~q\,
	datac => \U_GRAY|curr_state.STATE12~q\,
	datad => \U_GRAY|curr_state.STATE4~q\,
	combout => \U_GRAY|WideOr3~0_combout\);

-- Location: LCCOMB_X35_Y26_N24
\U_GRAY|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr2~0_combout\ = (!\U_GRAY|curr_state.STATE7~q\ & (!\U_GRAY|curr_state.STATE8~q\ & (!\U_GRAY|curr_state.STATE15~q\ & \U_GRAY|curr_state.STATE0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|curr_state.STATE7~q\,
	datab => \U_GRAY|curr_state.STATE8~q\,
	datac => \U_GRAY|curr_state.STATE15~q\,
	datad => \U_GRAY|curr_state.STATE0~q\,
	combout => \U_GRAY|WideOr2~0_combout\);

-- Location: LCCOMB_X36_Y26_N12
\U_GRAY|WideOr3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr3~combout\ = (\U_GRAY|WideOr3~0_combout\) # (!\U_GRAY|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_GRAY|WideOr3~0_combout\,
	datad => \U_GRAY|WideOr2~0_combout\,
	combout => \U_GRAY|WideOr3~combout\);

-- Location: LCCOMB_X35_Y26_N0
\U_GRAY|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr0~0_combout\ = (!\U_GRAY|curr_state.STATE3~q\ & (!\U_GRAY|curr_state.STATE1~q\ & (!\U_GRAY|curr_state.STATE2~q\ & \U_GRAY|curr_state.STATE0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|curr_state.STATE3~q\,
	datab => \U_GRAY|curr_state.STATE1~q\,
	datac => \U_GRAY|curr_state.STATE2~q\,
	datad => \U_GRAY|curr_state.STATE0~q\,
	combout => \U_GRAY|WideOr0~0_combout\);

-- Location: LCCOMB_X35_Y26_N14
\U_GRAY|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr1~0_combout\ = (\U_GRAY|curr_state.STATE12~q\) # ((\U_GRAY|curr_state.STATE14~q\) # ((\U_GRAY|curr_state.STATE13~q\) # (\U_GRAY|curr_state.STATE15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|curr_state.STATE12~q\,
	datab => \U_GRAY|curr_state.STATE14~q\,
	datac => \U_GRAY|curr_state.STATE13~q\,
	datad => \U_GRAY|curr_state.STATE15~q\,
	combout => \U_GRAY|WideOr1~0_combout\);

-- Location: LCCOMB_X36_Y26_N24
\U_GRAY|WideOr1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr1~combout\ = (\U_GRAY|WideOr1~0_combout\) # (!\U_GRAY|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_GRAY|WideOr0~0_combout\,
	datad => \U_GRAY|WideOr1~0_combout\,
	combout => \U_GRAY|WideOr1~combout\);

-- Location: LCCOMB_X35_Y26_N20
\U_GRAY|WideOr0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr0~1_combout\ = (\U_GRAY|curr_state.STATE4~q\) # ((\U_GRAY|curr_state.STATE6~q\) # ((\U_GRAY|curr_state.STATE5~q\) # (\U_GRAY|curr_state.STATE7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|curr_state.STATE4~q\,
	datab => \U_GRAY|curr_state.STATE6~q\,
	datac => \U_GRAY|curr_state.STATE5~q\,
	datad => \U_GRAY|curr_state.STATE7~q\,
	combout => \U_GRAY|WideOr0~1_combout\);

-- Location: LCCOMB_X36_Y26_N22
\U_GRAY|WideOr0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr0~combout\ = (\U_GRAY|WideOr0~1_combout\) # (!\U_GRAY|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_GRAY|WideOr0~0_combout\,
	datad => \U_GRAY|WideOr0~1_combout\,
	combout => \U_GRAY|WideOr0~combout\);

-- Location: LCCOMB_X35_Y26_N30
\U_GRAY|WideOr2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr2~1_combout\ = (\U_GRAY|curr_state.STATE9~q\) # ((\U_GRAY|curr_state.STATE1~q\) # ((\U_GRAY|curr_state.STATE14~q\) # (\U_GRAY|curr_state.STATE6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|curr_state.STATE9~q\,
	datab => \U_GRAY|curr_state.STATE1~q\,
	datac => \U_GRAY|curr_state.STATE14~q\,
	datad => \U_GRAY|curr_state.STATE6~q\,
	combout => \U_GRAY|WideOr2~1_combout\);

-- Location: LCCOMB_X36_Y26_N14
\U_GRAY|WideOr2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr2~combout\ = (\U_GRAY|WideOr2~1_combout\) # (!\U_GRAY|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GRAY|WideOr2~0_combout\,
	datad => \U_GRAY|WideOr2~1_combout\,
	combout => \U_GRAY|WideOr2~combout\);

-- Location: LCCOMB_X37_Y26_N24
\U_LED3|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux6~0_combout\ = (\U_GRAY|WideOr3~combout\ & (\U_GRAY|WideOr2~combout\ & (\U_GRAY|WideOr1~combout\ $ (!\U_GRAY|WideOr0~combout\)))) # (!\U_GRAY|WideOr3~combout\ & (\U_GRAY|WideOr0~combout\ & (\U_GRAY|WideOr1~combout\ $ 
-- (!\U_GRAY|WideOr2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr3~combout\,
	datab => \U_GRAY|WideOr1~combout\,
	datac => \U_GRAY|WideOr0~combout\,
	datad => \U_GRAY|WideOr2~combout\,
	combout => \U_LED3|Mux6~0_combout\);

-- Location: LCCOMB_X37_Y26_N2
\U_LED3|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux5~0_combout\ = (\U_GRAY|WideOr3~combout\ & (\U_GRAY|WideOr1~combout\ & (\U_GRAY|WideOr0~combout\ & !\U_GRAY|WideOr2~combout\))) # (!\U_GRAY|WideOr3~combout\ & (\U_GRAY|WideOr0~combout\ $ (((!\U_GRAY|WideOr1~combout\ & 
-- \U_GRAY|WideOr2~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr3~combout\,
	datab => \U_GRAY|WideOr1~combout\,
	datac => \U_GRAY|WideOr0~combout\,
	datad => \U_GRAY|WideOr2~combout\,
	combout => \U_LED3|Mux5~0_combout\);

-- Location: LCCOMB_X37_Y26_N0
\U_LED3|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux4~0_combout\ = (\U_GRAY|WideOr2~combout\ & ((\U_GRAY|WideOr1~combout\ & (!\U_GRAY|WideOr3~combout\)) # (!\U_GRAY|WideOr1~combout\ & ((\U_GRAY|WideOr0~combout\))))) # (!\U_GRAY|WideOr2~combout\ & (!\U_GRAY|WideOr3~combout\ & 
-- ((\U_GRAY|WideOr0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr3~combout\,
	datab => \U_GRAY|WideOr1~combout\,
	datac => \U_GRAY|WideOr0~combout\,
	datad => \U_GRAY|WideOr2~combout\,
	combout => \U_LED3|Mux4~0_combout\);

-- Location: LCCOMB_X36_Y26_N4
\U_LED3|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux3~0_combout\ = (\U_GRAY|WideOr3~combout\ & ((\U_GRAY|WideOr0~combout\ & ((\U_GRAY|WideOr1~combout\) # (!\U_GRAY|WideOr2~combout\))) # (!\U_GRAY|WideOr0~combout\ & ((\U_GRAY|WideOr2~combout\) # (!\U_GRAY|WideOr1~combout\))))) # 
-- (!\U_GRAY|WideOr3~combout\ & ((\U_GRAY|WideOr1~combout\ $ (\U_GRAY|WideOr2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr0~combout\,
	datab => \U_GRAY|WideOr1~combout\,
	datac => \U_GRAY|WideOr2~combout\,
	datad => \U_GRAY|WideOr3~combout\,
	combout => \U_LED3|Mux3~0_combout\);

-- Location: LCCOMB_X36_Y26_N10
\U_LED3|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux2~0_combout\ = (\U_GRAY|WideOr0~combout\ & (((\U_GRAY|WideOr2~combout\) # (!\U_GRAY|WideOr3~combout\)) # (!\U_GRAY|WideOr1~combout\))) # (!\U_GRAY|WideOr0~combout\ & ((\U_GRAY|WideOr1~combout\) # ((\U_GRAY|WideOr2~combout\ & 
-- !\U_GRAY|WideOr3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr0~combout\,
	datab => \U_GRAY|WideOr1~combout\,
	datac => \U_GRAY|WideOr2~combout\,
	datad => \U_GRAY|WideOr3~combout\,
	combout => \U_LED3|Mux2~0_combout\);

-- Location: LCCOMB_X37_Y26_N6
\U_LED3|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux1~0_combout\ = (\U_GRAY|WideOr0~combout\ & ((\U_GRAY|WideOr1~combout\) # (\U_GRAY|WideOr3~combout\ $ (!\U_GRAY|WideOr2~combout\)))) # (!\U_GRAY|WideOr0~combout\ & ((\U_GRAY|WideOr3~combout\ & (\U_GRAY|WideOr1~combout\)) # 
-- (!\U_GRAY|WideOr3~combout\ & ((\U_GRAY|WideOr2~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr3~combout\,
	datab => \U_GRAY|WideOr1~combout\,
	datac => \U_GRAY|WideOr0~combout\,
	datad => \U_GRAY|WideOr2~combout\,
	combout => \U_LED3|Mux1~0_combout\);

-- Location: LCCOMB_X36_Y26_N0
\U_LED3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux0~0_combout\ = (\U_GRAY|WideOr0~combout\ & (\U_GRAY|WideOr2~combout\ & (\U_GRAY|WideOr1~combout\ $ (\U_GRAY|WideOr3~combout\)))) # (!\U_GRAY|WideOr0~combout\ & (!\U_GRAY|WideOr3~combout\ & (\U_GRAY|WideOr1~combout\ $ 
-- (\U_GRAY|WideOr2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr0~combout\,
	datab => \U_GRAY|WideOr1~combout\,
	datac => \U_GRAY|WideOr2~combout\,
	datad => \U_GRAY|WideOr3~combout\,
	combout => \U_LED3|Mux0~0_combout\);

-- Location: IOIBUF_X11_Y29_N1
\switch[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

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


