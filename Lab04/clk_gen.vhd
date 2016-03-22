library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity clk_gen is
	generic(
		ms_period : positive);          -- amount of ms for button to be
	-- pressed before creating clock pulse
	port(
		clk50MHz : in  std_logic;
		rst      : in  std_logic;
		button_n : in  std_logic;
		clk_out  : out std_logic);
end clk_gen;

architecture generator of clk_gen is
	signal tmp_clk_out   : std_logic;
	signal tmp           : integer range 0 to ms_period := 0;
	constant CLK_IN_FRQ  : natural := 50000000;
	constant CLK_OUT_FRQ : natural := 1000;

begin
	-- Create an instance of the clock divider
	CLK_DIV : entity work.clk_div generic map(
			clk_in_freq  => CLK_IN_FRQ,
			clk_out_freq => CLK_OUT_FRQ)
		port map(
			clk_in  => clk50MHz,
			clk_out => tmp_clk_out,
			rst     => rst
		);

	process(tmp_clk_out, rst, button_n)
	begin
		if (rst = '1') then
			clk_out <= '0';
		elsif (rising_edge(tmp_clk_out)) then
			-- Start counting until ms period
			if button_n = '0' then
				if tmp = ms_period then
					tmp     <= 1;
					clk_out <= '1';
				else
					clk_out <= '0';
					tmp <= tmp + 1;
				end if;
			else
				clk_out <= '0';
				tmp     <= 0;
			end if;
		end if;
	end process;

end generator;