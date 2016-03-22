library ieee;
use ieee.std_logic_1164.all;

entity reg is
	generic(
		WIDTH : positive := 16
	);
	port(
		clk, rst, en : in  std_logic;
		x            : in  std_logic_vector(WIDTH-1 downto 0);
		output       : out std_logic_vector(WIDTH-1 downto 0)
	);
end reg;

architecture bhv of reg is
	signal tmp_out	: std_logic_vector(WIDTH-1 downto 0);
begin
	process(clk, rst, en)
	begin
		if (rst = '1') then
			tmp_out <= (others => '0');
		elsif (rising_edge(clk)) then
			if (en = '1') then
				tmp_out <= x;
			else
				tmp_out <= tmp_out;
			end if;
		end if;
	end process;
	
	-- Set output
	output	<= tmp_out;
end bhv;