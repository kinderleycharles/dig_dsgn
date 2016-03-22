library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart is
	generic(
		width : positive := 8);
	port(
		in_data      : in  std_logic_vector(WIDTH - 1 downto 0);
		go, rst, clk : in  std_logic;
		tx, done     : out std_logic
	);
end uart;

architecture bhv of uart is
	type STATE_TYPE is (START, END_PROG, INIT, LOOP_STATE, END_PROG1);
	signal state, nxt_state : STATE_TYPE;
	signal parity	: std_logic;
	signal count	: integer;
	
begin
	process(clk, rst, state)
		variable data : std_logic_vector(WIDTH-1 downto 0);
	begin
		if (rst = '1') then
			tx <= '1';
			done <= '0';
			state <= START;
		elsif (rising_edge(clk)) then
			case state is
				when START =>
					if(go = '0') then
						state <= START;
					else
						done <= '0';
						state <= INIT;
					end if;
				
				when INIT =>
					parity	<= '0';
					tx		<= '0';
					count	<= 0;
					data	:= in_data;
					state	<= LOOP_STATE;
				
				when LOOP_STATE =>
					count	<= count+1;
					if(count = width) then
						state <= END_PROG;
					else
						parity <= parity xor data(0);
						tx	<= data(0);
						data := std_logic_vector(shift_right(unsigned(data),1));
						state <= LOOP_STATE;
					end if;
					
				when END_PROG =>
					tx	 <= parity;
					state <= END_PROG1;
					
				when END_PROG1 =>
					tx	 <= '1';
					done <= '1';
					state	<= START;
			end case;
		end if;
	end process;
end bhv;