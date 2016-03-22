library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity datapath_component_tb is
end datapath_component_tb;

architecture TB of datapath_component_tb is
	constant WIDTH : positive  := 8;
	signal clk     : std_logic := '0';
	signal rst     : std_logic := '1';
	signal sel     : std_logic;
	signal reg_en  : std_logic;
	signal x_lt_y  : std_logic;
	signal x_ne_y  : std_logic;
	signal input0  : std_logic_vector(WIDTH - 1 downto 0);
	signal input1  : std_logic_vector(WIDTH - 1 downto 0);
	signal output  : std_logic_vector(WIDTH - 1 downto 0);

begin

	-- 2X1 MUX Test
	MUX21 : entity work.mux21 generic map(
			width => width)
		port map(
			x      => input0,
			y      => input1,
			sel    => sel,
			output => output
		);

	process
	begin
		input0 <= std_logic_vector(to_unsigned(10, WIDTH));
		input1 <= std_logic_vector(to_unsigned(2, WIDTH));

		-- Test output
		sel <= '0';
		wait for 5 ns;
		assert (output = std_logic_vector(to_unsigned(10, WIDTH))) report "Output should be 10" severity warning;

		sel <= '1';
		wait for 5 ns;
		assert (output = std_logic_vector(to_unsigned(2, WIDTH))) report "Output should be 2" severity warning;

		wait;
	end process;

	----------------------------------------------------------------------------------------------------------------
	-- Temporary register test
	REG : entity work.reg generic map(
			width => width)
		port map(
			clk    => clk,
			rst    => rst,
			en     => reg_en,
			x      => input0,
			output => output
		);
end TB;