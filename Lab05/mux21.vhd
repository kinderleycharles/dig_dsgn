library ieee;
use ieee.std_logic_1164.all;

entity mux21 is
	generic(
		WIDTH : positive := 16
	);
	port(
		sel    : in  std_logic;
		x, y   : in  std_logic_vector(WIDTH - 1 downto 0);
		output : out std_logic_vector(WIDTH - 1 downto 0)
	);
end entity;

architecture bhv of mux21 is
begin
	process(x, y, sel)
	begin
		if(sel = '1') then
			output	<= y;
		else 
			output <= x;
		end if;
	end process;
end bhv;