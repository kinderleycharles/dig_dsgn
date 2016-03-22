-- Name			: Kinderley Charles
-- TA			: Brandon Polllack
-- Section		: 11F9
-- Assignment	: Lab 3 Part 2
-- Description	: Design of a carrry generator

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cgen2 is
	port(
		cin  : in  std_logic;
		G    : in  std_logic_vector(1 downto 0);
		P    : in  std_logic_vector(1 downto 0);
		cout : out std_logic_vector(1 downto 0);
		bg   : out std_logic;
		bp   : out std_logic
	);
end cgen2;

architecture GEN of cgen2 is
begin
	-- Least Significant
	cout(0)	<= G(0) or (P(0) and cin);
	
	-- Most Significant
	cout(1)	<= G(1) or (P(1) and (G(0) or (P(0) and cin)));
	
	-- Block propagate and block generate
	bp	<= P(0) and P(1);
	bg	<= G(1) or (P(1) and G(0));
	
end GEN;