library ieee;
use ieee.std_logic_1164.all;

entity quiz is
    port (
        clk    : in  std_logic;
        rst    : in  std_logic;
        output : out std_logic_vector(3 downto 0));
end quiz;

architecture arch of quiz is
	type STATE is (STATE0, STATE1, STATE2, STATE3);
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
				output	<= "0011";
				nxt_state <= STATE1;
			
			when STATE1 =>
				output	<= "0111";
				nxt_state <= STATE2;
			
			when STATE2 =>
				output	<= "0100";
				nxt_state <= STATE3;
			
			when STATE3 =>
				output	<= "0010";
				nxt_state <= STATE0;
			
			when others => null;
		end case;
	end process;
end arch;