library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity clk_div is
    generic(clk_in_freq  : natural;
            clk_out_freq : natural);
    port (
        clk_in  : in  std_logic;
        clk_out : out std_logic;
        rst     : in  std_logic);
end clk_div;

architecture div of clk_div is
	constant MAX_COUNT : natural := (clk_in_freq/clk_out_freq)/2;
	signal tmp	: std_logic;
begin
	-- Follow guidelines for combinational logic
	process(clk_in, rst)
		variable counter : integer := 0;
	begin
		if (rst = '1') then
			tmp <= '0';
		elsif(rising_edge(clk_in)) then
			
			
			if counter = MAX_COUNT then
				tmp <= not tmp;
				counter := 0;
			end if;
			counter := counter + 1;
		end if;
	end process;
	
	-- Update clock outputs
	clk_out <= tmp;
end div;