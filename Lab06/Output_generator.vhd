library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Output_generator is
	generic(
		WIDTH	: positive	:= 12
	);
	port(
		vid_en, row_en, col_en	: in std_logic;
		rgb_in					: in std_logic_vector(WIDTH-1 downto 0);
		rgb_out					: out std_logic_vector(WIDTH-1 downto 0)
	);
end Output_generator;

architecture CTRL of Output_generator is
begin
	process(vid_en, row_en, col_en, rgb_in)
	begin
		if((vid_en and row_en and col_en) = '1') then
			rgb_out	<= rgb_in;
		else
			rgb_out	<= (others => '0');
		end if;
	end process;
end CTRL;