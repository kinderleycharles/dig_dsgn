library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity counter_tb is
end counter_tb;

architecture TB of counter_tb is
                                                            
   signal clk	: std_logic := '0';
   signal rst	: std_logic;
   signal up_n	: std_logic;
   signal load_n: std_logic;
   signal input	: std_logic_vector(3 downto 0);
   signal output: std_logic_vector(3 downto 0);

begin  -- TB

    U_COUNTER : entity work.counter port map (
        clk 	=> clk,
        rst 	=> rst,
        up_n	=> up_n,
        load_n	=> load_n,
        input	=> input,
        output  => output);

	-- Delay for 1 ns, then begin test
    clk <= not clk after 5 ns;

    process
        variable curr_state, nxt_state : std_logic_vector(3 downto 0);

    begin

    	rst      <= '1';
    	load_n	 <= '1';
    	up_n	 <= '1';
    	wait until clk'event and clk = '1';
		assert (output = conv_std_logic_vector(0, output'length)) report "Error!!! when reset=TRUE, output = " & integer'image(conv_integer(output)) & ", instead of output = 0" severity warning;
		

		-- Set reset false
        rst      <= '0';
        
        -- Test loading
        input	<= "1010";
        load_n	<= '0';
        up_n	<= '0';
        wait until clk'event and clk = '1';
        assert(output = conv_std_logic_vector(10, output'length)) report "Error! Load fail, output = " & integer'image(conv_integer(output)) & ", instead of output = 10" severity warning;
        
        
        -- Test that increment counter work
        load_n	<= '1';
        up_n	<= '0';
        curr_state	:= output;
        nxt_state	:= (unsigned(output) + 1);
        wait until clk'event and clk = '1';
        if(curr_state = conv_std_logic_vector(15, curr_state'length)) then
        	assert(output = conv_std_logic_vector(conv_integer(nxt_state), output'length)) report "Error! Load fail, output = " & integer'image(conv_integer(output)) & ", instead of output = 0" severity warning;
        else
        	assert(output = conv_std_logic_vector(conv_integer(nxt_state), output'length)) report "Current state = " & integer'image(conv_integer(curr_state)) & ". Next State (output) = " & integer'image(conv_integer(output)) & " instead of Next State = " & integer'image(conv_integer(nxt_state)) severity warning;
        end if;
        
	    
        wait for 60 ns;
        
        -- Test that decrement counter work
        load_n	<= '1';
        up_n	<= '1';
        curr_state	:= output;
        nxt_state	:= (unsigned(output) - 1);
        wait until clk'event and clk = '1';
        if(curr_state = conv_std_logic_vector(0, curr_state'length)) then
        	assert(output = conv_std_logic_vector(conv_integer(nxt_state), output'length)) report "Error! Load fail, output = " & integer'image(conv_integer(output)) & ", instead of output = 0" severity warning;
        else
        	assert(output = conv_std_logic_vector(conv_integer(nxt_state), output'length)) report "Current state = " & integer'image(conv_integer(curr_state)) & ". Next State (output) = " & integer'image(conv_integer(output)) & " instead of Next State = " & integer'image(conv_integer(nxt_state)) severity warning;
        end if;
        
		
        wait for 30 ns;
    end process;

end TB;
