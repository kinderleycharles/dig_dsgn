library ieee;
use ieee.std_logic_1164.all;

entity FSM_D1 is
	generic(
		WIDTH : positive := 16);
	port(
		clk, rst, go : in  std_logic;
		x, y         : in  std_logic_vector(WIDTH - 1 downto 0);
		done         : out std_logic;
		output       : out std_logic_vector(WIDTH - 1 downto 0)
	);
end FSM_D1;

architecture bhv of FSM_D1 is
	signal x_lt_y, x_ne_y, x_sel, y_sel, x_en, y_en, output_en : std_logic;
begin
	-- Create a Datapath instance
	D1 : entity work.datapath1 port map(
			clk    => clk,
			rst    => rst,
			x_sel     => x_sel,
			y_sel     => y_sel,
			x_en      => x_en,
			y_en      => y_en,
			output_en => output_en,
			x_lt_y    => x_lt_y,
			x_ne_y    => x_ne_y,
			x         => x,
			y         => y,
			output    => output
		);

	-- Create a Control instance
	CTRL : entity work.ctrl1 port map(
			clk       => clk,
			rst       => rst,
			go		  => go,
			x_lt_y    => x_lt_y,
			x_ne_y    => x_ne_y,
			x_sel     => x_sel,
			y_sel     => y_sel,
			x_en      => x_en,
			y_en      => y_en,
			done	  => done,
			output_en => output_en
		);

end bhv;