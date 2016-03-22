-- Name			: Kinderley Charles
-- TA			: Brandon Polllack
-- Section		: 11F9
-- Assignment	: Lab 3 Part 1
-- Description	: This file provide the definition and codes for 
--				  a full adder

library ieee;
use ieee.std_logic_1164.all;

entity fa is
    port (
        x, y : in  std_logic;
        cin  : in  std_logic;
        s	 : out std_logic;
        cout : out std_logic
    );
end fa;

architecture FULL_ADDER of fa is
begin  -- FULL ADDER
	cout	<= (cin and x) or (cin and y) or (x and y);
	s		<= x xor y xor cin;	
end FULL_ADDER;