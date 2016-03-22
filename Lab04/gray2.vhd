library ieee;
use ieee.std_logic_1164.all;

entity gray2 is
    port (
        clk    : in  std_logic;
        rst    : in  std_logic;
        output : out std_logic_vector(3 downto 0));
end gray2;

architecture arch of gray2 is
	type STATE is (STATE0, STATE1, STATE2, STATE3, STATE4, STATE5, STATE6, STATE7, STATE8, STATE9, STATE10, STATE11, STATE12, STATE13, STATE14, STATE15);
	signal curr_state, nxt_state	: STATE;
	
begin
	
	process(clk, rst)
	begin
		if (rst = '1') then
			curr_state   <= STATE0;
		elsif (rising_edge(clk)) then
			curr_state	<= nxt_state;
		end if;
	end process;
	
	
	process(curr_state)
	begin
		case curr_state is
			when STATE0 =>
				output	<= "0000";
				nxt_state <= STATE1;
			
			when STATE1 =>
				output	<= "0001";
				nxt_state <= STATE2;
			
			when STATE2 =>
				output	<= "0011";
				nxt_state <= STATE3;
			
			when STATE3 =>
				output	<= "0010";
				nxt_state <= STATE4;
			
			when STATE4 =>
				output	<= "0110";
				nxt_state <= STATE5;
			
			when STATE5 =>
				output	<= "0111";
				nxt_state <= STATE6;
			
			when STATE6 =>
				output	<= "0101";
				nxt_state <= STATE7;
			
			when STATE7 =>
				output	<= "0100";
				nxt_state <= STATE8;
			
			when STATE8 =>
				output	<= "1100";
				nxt_state <= STATE9;
			
			when STATE9 =>
				output	<= "1101";
				nxt_state <= STATE10;
			
			when STATE10 =>
				output	<= "1111";
				nxt_state <= STATE11;
			
			when STATE11 =>
				output	<= "1110";
				nxt_state <= STATE12;
			
			when STATE12 =>
				output	<= "1010";
				nxt_state <= STATE13;
			
			when STATE13 =>
				output	<= "1011";
				nxt_state <= STATE14;
			
			when STATE14 =>
				output	<= "1001";
				nxt_state <= STATE15;
			
			when STATE15 =>
				output	<= "1000";
				nxt_state <= STATE0;
			
			when others => null;
		end case;
	end process;
end arch;