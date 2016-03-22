-- Name			: Kinderley Charles
-- TA			: Brandon Polllack
-- Section		: 11F9
-- Assignment	: Lab 3 Part 2
-- Description	: Design of a 2-bit carry-lookahead adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cla2 is
	port(
		x, y : in  std_logic_vector(1 downto 0);
		cin  : in  std_logic;
		s    : out std_logic_vector(1 downto 0);
		cout : out std_logic;
		bp   : out std_logic;
		bg   : out std_logic
	);
end cla2;

architecture CLA_2BIT of cla2 is
begin
	process(x, y, cin)
		variable cout0 : std_logic;
		variable g0    : std_logic;
		variable p0    : std_logic;
	begin
		-- Least Significant Bit
		g0    := x(0) and y(0);
		p0    := x(0) or y(0);
		s(0)  <= x(0) xor y(0) xor cin;
		cout0 := g0 or (p0 and cin);

		-- Most Significant Bit
		-- BG(1) = G(1) + P(0)*G(0)
		bg <= (x(1) and y(1)) or ((x(1) or y(1)) and g0);
		-- BP(1) = P(1)*P(0)
		bp <= p0 and (x(1) or y(1));

		cout <= (x(1) and y(1)) or ((x(1) or y(1)) and cout0);
		s(1) <= x(1) xor y(1) xor cout0;
	end process;
end CLA_2BIT;