-- Name:		Kinderley Charles
-- Section:		11F9
-- TA:			Brandon Pollack
-- Assignement:	Lab 02
-- Description:	Simple test bench for the Decoder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder7seg_tb is
end decoder7seg_tb;

architecture TB of decoder7seg_tb is 
	
	-- Create an testbench instance of the decoder to be tested
	component decoder7seg_tb
		port(
			input:	in std_logic_vector(3 downto 0);
			output:	out std_logic_vector(6 downto 0)
		);
	end component decoder7seg_tb;
	
	signal input	: std_logic_vector(3 downto 0);
	signal output	: std_logic_vector(6 downto 0);
	
begin -- Beginnning of the Test bench
	-- Create an instance of the Decoder that will 
	-- be tested
	DEC1	: entity work.decoder7seg(decode)
		port map (
			input 	=> input,
			output	=> output
		);
		
	process
	begin
		-- Loop to test all combinations
		for i in 0 to 15 loop
			input <= std_logic_vector(to_unsigned(i, 4));
			wait for 10 ns;
			
			-- Series of TESTS
			if i = 0 then
				assert output = "0000001"
				REPORT "ERROR: wrong output for input 0" SEVERITY warning;
			elsif i = 1 then
				assert output = "1001111"
				REPORT "ERROR: wrong output for input 1" SEVERITY warning;
			elsif i = 7 then
				assert output = "0001111"
				REPORT "ERROR: wrong output for input 7" SEVERITY warning;
			elsif i = 10 then
				assert output = "0001000"
				REPORT "ERROR: wrong output for input 10" SEVERITY warning;
			end if;
		end loop;
	end process;
end TB;