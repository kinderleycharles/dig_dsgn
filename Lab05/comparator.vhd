library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparator is
	generic(
		WIDTH : positive := 16
	);
	port(
		x, y           : in  std_logic_vector(WIDTH - 1 downto 0);
		x_lt_y, x_ne_y : out std_logic
	);
end comparator;

architecture bhv of comparator is
begin
	process(x,y)
	begin
		if(x /= y) then
			x_ne_y <= '1';
			x_lt_y <= '0';
		elsif (x < y) then
			x_ne_y <= '0';
			x_lt_y <= '1';
		else
			x_lt_y <= '0';
			x_ne_y <= '0';
		end if;
	end process;
end bhv;