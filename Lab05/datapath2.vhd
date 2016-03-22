library ieee;
use ieee.std_logic_1164.all;

entity datapath2 is
	generic(
		WIDTH : positive := 16);
	port(
		clk, rst							: in  std_logic;
		x_sel, y_sel, x_en, y_en, output_en : in  std_logic;
		x_lt_y, x_ne_y                      : out std_logic;
		x, y                                : in  std_logic_vector(WIDTH - 1 downto 0);
		output                              : out std_logic_vector(WIDTH - 1 downto 0)
	);
end datapath2;

architecture bhv of datapath2 is
	signal muxx_out, muxy_out, regx_out, regy_out, sub_out : std_logic_vector(WIDTH - 1 downto 0);
	signal tmpx, tmpy	: std_logic_vector(WIDTH-1 downto - 0);
	signal tmp_xlty		: std_logic;
begin

	x_lt_y	<= tmp_xlty;
	
	-- Initialize Multiplexer
	MUX_X : entity work.mux21 generic map(
			width => width)
		port map(
			x      => x,
			y      => sub_out,
			sel    => x_sel,
			output => muxx_out
		);
	MUX_Y : entity work.mux21 generic map(
			width => width)
		port map(
			x      => x,
			y      => sub_out,
			sel    => y_sel,
			output => muxy_out
		);

	-- Initialize Registers
	REG_X : entity work.reg generic map(
			width => width)
		port map(
			clk    => clk,
			rst    => rst,
			x      => muxx_out,
			en     => x_en,
			output => regx_out
		);
		
	REG_Y : entity work.reg generic map(
			width => width)
		port map(
			clk    => clk,
			rst    => rst,
			x      => muxy_out,
			en     => y_en,
			output => regy_out
		);
		
	REG_OUTPUT : entity work.reg generic map(
			width => width)
		port map(
			clk    => clk,
			rst    => rst,
			x      => regx_out,
			en     => output_en,
			output => output
		);

	-- Initialize Comparator
	COMP : entity work.comparator generic map(
			width => width)
		port map(
			x      => regx_out,
			y      => regy_out,
			x_lt_y => tmp_xlty,
			x_ne_y => x_ne_y
		);

	-- Initialize Subtractors
	SUB_X : entity work.subtractor generic map(
			width => width)
		port map(
			x      => tmpx,
			y      => tmpy,
			output => sub_out
		);
	
	MUX_XY0: entity work.mux21 generic map(
			width => width)
		port map(
			x      => regx_out,
			y      => regy_out,
			sel    => tmp_xlty,
			output => tmpx
		);
		
	MUX_XY1: entity work.mux21 generic map(
			width => width)
		port map(
			x      => regy_out,
			y      => regx_out,
			sel    => tmp_xlty,
			output => tmpy
		);
	
end bhv;