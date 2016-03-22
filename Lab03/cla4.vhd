-- Name			: Kinderley Charles
-- TA			: Brandon Polllack
-- Section		: 11F9
-- Assignment	: Lab 3 Part 2
-- Description	: Design of a 4-bit carry-lookahead adder using
--				: a hierarchical design

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cla4 is
	port(
		x, y : in  std_logic_vector(3 downto 0);
		cin  : in  std_logic;
		s    : out std_logic_vector(3 downto 0);
		cout : out std_logic;
		bp   : out std_logic;
		bg   : out std_logic
	);
end cla4;

architecture CLA_4BIT of cla4 is
	signal p     : std_logic_vector(1 downto 0);
	signal g     : std_logic_vector(1 downto 0);
	signal cout0 : std_logic;
begin
	-- Instantiate Least Significant CLA2
	L_CLA2 : entity work.cla2 port map(
			x	=> x(1 downto 0),
			y	=> y(1 downto 0),
			s	=> s(1 downto 0),
			cin           => cin,
			bp            => p(0),
			bg            => g(0),
			cout          => open
		);

	-- Instantiate a CGEN
	C_GEN : entity work.cgen2 port map(
			G(1 downto 0) => g(1 downto 0),
			P(1 downto 0) => p(1 downto 0),
			cin           => cin,
			cout(0)       => cout0,
			cout(1)       => cout,
			bg            => bg,
			bp            => bp
		);

	-- Instantiate Most significant CLA2
	U_CLA2 : entity work.cla2 port map(
			x	=> x(3 downto 2),
			y	=> y(3 downto 2),
			s	 => s(3 downto 2),
			cin           => cout0,
			bp            => p(1),
			bg            => g(1),
			cout          => open
		);
end CLA_4BIT;