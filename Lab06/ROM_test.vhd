library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.vga_lib.all;

entity Rom_test is
	port(
		address	: in std_logic_vector(ROM_ADDR_WIDTH-1 downto 0);
		rgb		: out std_logic_vector(11 downto 0)
	);
end Rom_test;

architecture arch of Rom_test is
begin
	rgb	<= "010011000100";
end arch;