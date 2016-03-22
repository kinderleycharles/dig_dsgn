library ieee;
use ieee.std_logic_1164.all;

entity top_level is
	port(
		clk50MHz : in  std_logic;
		switch   : in  std_logic_vector(9 downto 0);
		button   : in  std_logic_vector(2 downto 1);
		led0     : out std_logic_vector(6 downto 0);
		led0_dp  : out std_logic;
		led1     : out std_logic_vector(6 downto 0)
	);
end top_level;

architecture STR of top_level is
	
	signal gcd_out	   : std_logic_vector(7 downto 0);
	signal done,rst    : std_logic;

begin                                   -- STR

	GCD_ENT : entity work.gcd(FSMD) 
		generic map(
			width	=> 8)
		port map(
			clk    => clk50MHz,
			rst    => rst,
			go     => button(2),
			x      => "000" & switch(9 downto 5),
			y      => "000" & switch(4 downto 0),
			done   => done,
			output => gcd_out
		);

	-- map adder output to two leftmost LEDs
	U_LED3 : entity work.decoder7seg port map(
			input  => gcd_out(7 downto 4),
			output => led1);

	U_LED2 : entity work.decoder7seg port map(
			input  => gcd_out(3 downto 0),
			output => led0);
	
	rst	<= button(1);
	-- Light up decimal point 0 if GCD done computing
	led0_dp <= done;
end STR;
