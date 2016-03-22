library ieee;
use ieee.std_logic_1164.all;

entity ctrl2 is
	port(
		clk, rst, go          : in  std_logic;
		x_lt_y, x_ne_y        : in  std_logic;
		x_sel, y_sel, done    : out std_logic;
		x_en, y_en, output_en : out std_logic
	);
end ctrl2;

architecture bhv of ctrl2 is
	type STATE_TYPE is (START, END_PROG, INIT, LOOP_STATE,
		                LOOP_BODY, OUTPUT_RESULT);
	signal state, nxt_state : STATE_TYPE;

begin

	-- Set the state
	process(clk, rst, nxt_state)
	begin
		if (rst = '1') then
			state <= START;
		elsif (rising_edge(clk)) then
			state <= nxt_state;
		end if;
	end process;

	-- Set the next state and display output
	process(state, x_lt_y, x_ne_y, go)
	begin
		-- Set Default values
		x_sel     <= '0';
		y_sel     <= '0';
		x_en      <= '0';
		y_en      <= '0';
		output_en <= '0';
		done      <= '0';

		case state is
			when START =>
				-- Next State
				if (go = '0') then
					nxt_state <= START;
				else
					nxt_state <= INIT;
				end if;

			when INIT =>
				
				-- Set temporary register
				x_sel     <= '0';
				y_sel     <= '0';
				x_en      <= '1';
				y_en      <= '1';
				done      <= '0';
				output_en <= '1';
				
				-- Next State
				nxt_state <= LOOP_STATE;

			when LOOP_STATE =>
				-- Loop is Done
				if (x_ne_y = '0') then
					output_en <= '1';
					nxt_state <= OUTPUT_RESULT;

				-- Loop is NOT done
				else
					-- X < Y
					if(x_lt_y = '1') then
						y_sel	<= '1';
					
					-- Y < X
					else 
						x_sel	<= '1';
					end if;

					nxt_state <= LOOP_STATE;
				end if;

			when OUTPUT_RESULT =>
				done      <= '1';
				output_en <= '1';
				nxt_state <= END_PROG;

			when END_PROG =>
				done <= '1';
				output_en <= '1';
				if (go = '1') then
					nxt_state <= END_PROG;
				else
					done      <= '0';
					nxt_state <= START;
				end if;

			when others => null;
		end case;
	end process;

end bhv;