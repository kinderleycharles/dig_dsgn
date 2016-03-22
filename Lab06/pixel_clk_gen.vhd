
-- This generator takes a given clock 50Mhz and cut it down to 25 Mhz
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pixel_clk_gen is
    port (
        clk,rst   : in  std_logic;
        pixel_clk : out std_logic);
end pixel_clk_gen;

architecture arch of clk_div is
	signal counter : unsigned(0 downto 0);
begin
	-- Follow guidelines for combinational logic
	process(clk, rst)
	begin
		if (rst = '1') then
			counter <= (others => '0');
		elsif(rising_edge(clk)) then
			counter <= counter + to_unsigned(1, 1);
		end if;
	end process;
	
	process(counter)
	begin
		if(counter = 0) then
			pixel_clk	<= '1';
		else
	end process;
end arch;