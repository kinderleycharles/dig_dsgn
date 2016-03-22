library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
    port (
        clk    : in  std_logic;
        rst    : in  std_logic;
        up_n   : in  std_logic;         -- active low
        load_n : in  std_logic;         -- active low
        input  : in  std_logic_vector(3 downto 0);
        output : out std_logic_vector(3 downto 0));
end counter;

architecture arch of counter is
	signal tmp	: unsigned(output'length-1 downto 0);
begin
	process(clk, rst, up_n, load_n)
	begin
		if rst = '1' then
			tmp	<= (others => '0');
		elsif (rising_edge(clk)) then
			-- Load has the highest priority if TRUE
			if(load_n = '0') then
				tmp	<= unsigned(input);
			elsif(up_n = '0') then
				tmp	<= (tmp + 1) mod 16;
			else 
				tmp <= (tmp - 1) mod 16;
			end if;
			
		end if; 
	end process;
	
	-- Output result
	output	<= std_logic_vector(tmp);		
end arch;