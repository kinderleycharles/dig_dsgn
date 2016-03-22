library ieee;
use ieee.std_logic_1164.all;

entity gray1 is
	port(
		clk    : in  std_logic;
		rst    : in  std_logic;
		output : out std_logic_vector(3 downto 0));
end gray1;

architecture arch of gray1 is
	type STATE is (STATE0, STATE1, STATE2, STATE3, STATE4, STATE5, STATE6, STATE7, STATE8, STATE9, STATE10, STATE11, STATE12, STATE13, STATE14, STATE15);
	signal curr_state	: STATE;
begin
	process(clk, rst)
	begin
		if (rst = '1') then
			curr_state	<= STATE0;
			output <= (others => '0');
		elsif (rising_edge(clk)) then
			case curr_state is
				when STATE0 =>
					output	<= "0000";
					curr_state <= STATE1;
				
				when STATE1 =>
					output	<= "0001";
					curr_state <= STATE2;
				
				when STATE2 =>
					output	<= "0011";
					curr_state <= STATE3;
				
				when STATE3 =>
					output	<= "0010";
					curr_state <= STATE4;
				
				when STATE4 =>
					output	<= "0110";
					curr_state <= STATE5;
				
				when STATE5 =>
					output	<= "0111";
					curr_state <= STATE6;
				
				when STATE6 =>
					output	<= "0101";
					curr_state <= STATE7;
				
				when STATE7 =>
					output	<= "0100";
					curr_state <= STATE8;
				
				when STATE8 =>
					output	<= "1100";
					curr_state <= STATE9;
				
				when STATE9 =>
					output	<= "1101";
					curr_state <= STATE10;
				
				when STATE10 =>
					output	<= "1111";
					curr_state <= STATE11;
				
				when STATE11 =>
					output	<= "1110";
					curr_state <= STATE12;
				
				when STATE12 =>
					output	<= "1010";
					curr_state <= STATE13;
				
				when STATE13 =>
					output	<= "1011";
					curr_state <= STATE14;
				
				when STATE14 =>
					output	<= "1001";
					curr_state <= STATE15;
				
				when STATE15 =>
					output	<= "1000";
					curr_state <= STATE0;
				
				when others => null;
			end case;
		end if;
	end process;
end arch;