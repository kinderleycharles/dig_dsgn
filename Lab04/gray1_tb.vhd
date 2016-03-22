library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity gray1_tb is
end gray1_tb;

architecture TB of gray1_tb is
                                                         
   signal clk	: std_logic := '0';
   signal rst	: std_logic;
   signal output: std_logic_vector(3 downto 0);

begin  -- TB

    U_GRAY1 : entity work.gray1 port map (
            clk 	=> clk,
            rst 	=> rst,
            output  => output);

	-- Delay for 1 ns, then begin test
    clk <= not clk after 5 ns;

    process
        variable curr_state, nxt_state : std_logic_vector(3 downto 0);

    begin

        rst      <= '1';
		assert (output = conv_std_logic_vector(0, output'length)) report "Error!!! when reset=TRUE, output =" & integer'image(conv_integer(output)) & " instead of 0" severity warning;
		wait for 8 ns;

        rst      <= '0';

		-- Perform 16 test cases
        curr_state := output;
        nxt_state  := unsigned(output)+1;
        wait until clk = '1';
        
        -- Print message if test failed
        assert (output = conv_std_logic_vector(conv_integer(nxt_state), output'length)) report "Error!!! Current State =" & integer'image(conv_integer(curr_state)) & " instead of 0" severity warning;

        wait;
    end process;
end TB;
