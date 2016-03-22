-- The following code perform the following operation
-- x - y

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity subtractor is
	generic(
		WIDTH : positive := 16
	);
	port(
		x, y   : in  std_logic_vector(WIDTH - 1 downto 0);
		output : out std_logic_vector(WIDTH - 1 downto 0)
	);
end subtractor;

architecture bhv of subtractor is
begin
	output <= std_logic_vector(signed(x) - signed(y));
end bhv;