-- Name:		Kinderley Charles
-- Section:		11F9
-- TA:			Brandon Pollack
-- Assignement:	Lab 02
-- Description:	Generic-width ALU using behavioral architecture 
-- with arith and unsigned package

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity alu_sla is
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
end alu_sla;

architecture ALU of alu_sla is 
begin
	process(input1, input2, sel)
		variable quiz_ans	: std_logic_vector(WIDTH-1 downto 0);
		variable tmp_ovflow		: std_logic;
		variable shift_factor	: integer;
		variable tmp_output		: std_logic_vector(2*WIDTH-1 downto 0);
	begin
		-- Set overflow to default value initially
		overflow		<= '0';
		shift_factor	:= 1;
		tmp_ovflow		:= (tmp_ovflow xor tmp_ovflow);
		tmp_output		:= (tmp_output xor tmp_output);
		quiz_ans 		:= (quiz_ans xor quiz_ans);
		
		case conv_integer(sel) is
			-- ADDITION
			when 0 =>
				tmp_output 	:= ext(input1,(2*WIDTH)) + ext(input2,(2*WIDTH));
				output 		<= tmp_output(WIDTH-1 downto 0);
				overflow	<= tmp_output(WIDTH);
			
			-- SUBSTRACTION
			when 1 =>
				tmp_output 	:= ext((input1 - input2), (2*WIDTH));
				output		<= tmp_output(WIDTH-1 downto 0);
			
			-- MULTIPLICATION
			when 2 =>
				-- To be tested
				tmp_output 	:=  input1 * input2;
				output		<= tmp_output(WIDTH-1 downto 0);
				
				if unsigned(tmp_output((2*WIDTH)-1 downto (WIDTH))) > 0 then
					overflow	<= '1';
				else
					overflow	<= '0';
				end if;
			
			-- AND
			when 3 =>
				output <=  input1 and input2;
			
			-- OR
			when 4 =>
				output <=  input1 or input2;
			
			-- XOR
			when 5 =>
				output <=  input1 xor input2;
			
			-- NOR
			when 6 =>
				output <=  input1 nor input2;
			
			-- NOT
			when 7 =>
				output <= (not (input1));
			
			-- SHIFT LEFT (AKA time: 2)
			when 8 =>
				tmp_ovflow	:= input1(WIDTH - 1);
				output		<= conv_std_logic_vector(shl(unsigned(input1),conv_unsigned(shift_factor, WIDTH)), WIDTH);
				overflow	<= tmp_ovflow;
			
			-- SHIFT RIGHT (AKA divide: 2)
			when 9 =>
				output		<= conv_std_logic_vector(shr(unsigned(input1),conv_unsigned(shift_factor, WIDTH)), WIDTH);
			
			-- SWAP half bits of outputs
			when 10 =>
				tmp_output(WIDTH-1 downto WIDTH/2)	:= input1(WIDTH/2-1 downto 0);
				tmp_output(WIDTH/2 -1 downto 0)  	:= input1(WIDTH-1 downto WIDTH/2);
				output		<= tmp_output(WIDTH-1 downto 0);
			
			-- REVERSE BITS IN INPUT 1
			when 11 =>
				for i in 0 to (WIDTH-1) loop
					tmp_output(WIDTH-1-i)	:= input1(i);
				end loop;
				output 		<= tmp_output(WIDTH-1 downto 0);
		
			-- Finding bit parity (QUIZ 2)
			when 12 =>
				for i in 0 to (WIDTH-1) loop
					if ((input1(i) = '1') and (quiz_ans = '0')) then
						quiz_ans := conv_std_logic_vector(1, WIDTH);
					elsif ((input1(i) = '1') and (quiz_ans = '1')) then
						quiz_ans := conv_std_logic_vector(0, WIDTH);
					else
						quiz_ans := conv_std_logic_vector(0, WIDTH);
					end if;
				end loop;	
				output	<= quiz_ans;
				
			-- Default case: Output 0 to everything
			when others =>
				output		<= std_logic_vector(input1 xor input1);
				overflow 	<= '0';
		end case;
	end process;
end ALU;