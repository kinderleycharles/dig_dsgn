-- Name:		Kinderley Charles
-- Section:		11F9
-- TA:			Brandon Pollack
-- Assignement:	Lab 02
-- Description:	Generic-width ALU using behavioral architecture with numberic std package

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity alu_ns is
	generic (
		WIDTH : positive := 16
	);
	port (
		input1 : in std_logic_vector(WIDTH-1 downto 0);
		input2 : in std_logic_vector(WIDTH-1 downto 0);
		sel : in std_logic_vector(3 downto 0);
		output : out std_logic_vector(WIDTH-1 downto 0);
		overflow : out std_logic
	);
end alu_ns;

architecture ALU of alu_ns is 
begin
	process(input1, input2, sel)
		variable tmp_ovflow	: std_logic;
		variable tmp_output	: std_logic_vector(2*WIDTH-1 downto 0);
	begin
		-- Set overflow to default value initially
		overflow	<= '0';
		tmp_ovflow	:= (tmp_ovflow xor tmp_ovflow);
		tmp_output	:= (tmp_output xor tmp_output);
		
		case to_integer(unsigned(sel)) is
			-- ADDITION
			when 0 =>
				tmp_output 	:= std_logic_vector( resize(unsigned(input1),(2*WIDTH)) + resize(unsigned(input2),(2*WIDTH)) );
				output 		<= tmp_output(WIDTH-1 downto 0);
				overflow	<= tmp_output(WIDTH);
			
			-- SUBSTRACTION
			when 1 =>
				tmp_output 	:= std_logic_vector( resize(unsigned(input1),(2*WIDTH)) - resize(unsigned(input2),(2*WIDTH)) );
				output		<= tmp_output(WIDTH-1 downto 0);
			
			-- MULTIPLICATION
			when 2 =>
				-- To be tested
				tmp_output 	:= std_logic_vector(unsigned(input1) * unsigned(input2));
				output		<= tmp_output(WIDTH-1 downto 0);
				
				if unsigned(tmp_output((2*WIDTH)-1 downto (WIDTH))) > 0 then
					overflow	<= '1';
				else
					overflow	<= '0';
				end if;
			
			-- AND
			when 3 =>
				output <= std_logic_vector(unsigned(input1) and unsigned(input2));
			
			-- OR
			when 4 =>
				output <= std_logic_vector(unsigned(input1) or unsigned(input2));
			
			-- XOR
			when 5 =>
				output <= std_logic_vector(unsigned(input1) xor unsigned(input2));
			
			-- NOR
			when 6 =>
				output <= std_logic_vector(unsigned(input1) nor unsigned(input2));
			
			-- NOT
			when 7 =>
				output <= std_logic_vector(not unsigned(input1));
			
			-- SHIFT LEFT (AKA time: 2)
			when 8 =>
				tmp_ovflow	:= input1(WIDTH - 1);
				output 		<= std_logic_vector(shift_left(unsigned(input1),1));
				overflow	<= tmp_ovflow;
			
			-- SHIFT LEFT (AKA divide: 2)
			when 9 =>
				output <= std_logic_vector(shift_right(unsigned(input1),1));
			
			-- SWAP half bits of outputs
			when 10 =>
				tmp_output(WIDTH-1 downto WIDTH/2)	:= input1((WIDTH/2-1) downto 0);
				tmp_output((WIDTH/2-1) downto 0)  	:= input1(WIDTH-1 downto WIDTH/2);
				output		<= tmp_output(WIDTH-1 downto 0);
			
			-- REVERSE BITS IN INPUT 1
			when 11 =>
				for i in 0 to (WIDTH-1) loop
					tmp_output(WIDTH-1-i)	:= input1(i);
				end loop;
				output 		<= tmp_output(WIDTH-1 downto 0);
			
			-- Default case: Output 0 to everything
			when others =>
				output		<= std_logic_vector(input1 xor input1);
				overflow 	<= '0';
		end case;
	end process;
end ALU;