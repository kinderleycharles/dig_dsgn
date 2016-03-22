library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity alu_ns_tb is
end alu_ns_tb;

architecture TB of alu_ns_tb is

    component alu_ns

        generic (
            WIDTH : positive := 16
            );
        port (
            input1   : in  std_logic_vector(WIDTH-1 downto 0);
            input2   : in  std_logic_vector(WIDTH-1 downto 0);
            sel      : in  std_logic_vector(3 downto 0);
            output   : out std_logic_vector(WIDTH-1 downto 0);
            overflow : out std_logic
            );

    end component;

    constant WIDTH  : positive                           := 8;
    signal input1   : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
    signal input2   : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
    signal sel      : std_logic_vector(3 downto 0)       := (others => '0');
    signal output   : std_logic_vector(WIDTH-1 downto 0);
    signal overflow : std_logic;

begin  -- TB

    UUT : alu_ns
        generic map (WIDTH => WIDTH)
        port map (
            input1   => input1,
            input2   => input2,
            sel      => sel,
            output   => output,
            overflow => overflow);

    process
    begin

        -- test 2+6 (no overflow)
        sel    <= "0000";
        input1 <= conv_std_logic_vector(2, input1'length);
        input2 <= conv_std_logic_vector(6, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(8, output'length)) report "Error : 2+6 = " & integer'image(conv_integer(output)) & " instead of 8" severity warning;
        assert(overflow = '0') report "Error                                   : overflow incorrect for 2+8" severity warning;

        -- test 250+50 (with overflow)
        sel    <= "0000";
        input1 <= conv_std_logic_vector(250, input1'length);
        input2 <= conv_std_logic_vector(50, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(300, output'length)) report "Error : 250+50 = " & integer'image(conv_integer(output)) & " instead of 44" severity warning;
        assert(overflow = '1') report "Error                                     : overflow incorrect for 250+50" severity warning;

		-- test 10-2
		sel    <= "0001";
		input1 <= conv_std_logic_vector(10, input1'length);
        input2 <= conv_std_logic_vector(2, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(8, output'length)) report "Error : 10-2 = " & integer'image(conv_integer(output)) & " instead of 8" severity warning;
        assert(overflow = '0') report "Error                                   : overflow incorrect for 10-2" severity warning;
        
        -- test 5*6 (no overflow)
        sel    <= "0010";
        input1 <= conv_std_logic_vector(5, input1'length);
        input2 <= conv_std_logic_vector(6, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(30, output'length)) report "Error : 5*6 = " & integer'image(conv_integer(output)) & " instead of 30" severity warning;
        assert(overflow = '0') report "Error                                    : overflow incorrect for 5*6" severity warning;

        -- test 50*60 (overflow)
        sel    <= "0010";
        input1 <= conv_std_logic_vector(64, input1'length);
        input2 <= conv_std_logic_vector(64, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(4096, output'length)) report "Error : 64*64 = " & integer'image(conv_integer(output)) & " instead of 0" severity warning;
        assert(overflow = '1') report "Error                                      : overflow incorrect for 64*64" severity warning;

        -- test 3 AND 7
		sel    <= "0011";
        input1 <= conv_std_logic_vector(3, input1'length);
        input2 <= conv_std_logic_vector(7, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(3, output'length)) report "Error : 3 AND 7 = " & integer'image(conv_integer(output)) & " instead of 3" severity warning;
        assert(overflow = '0') report "Error                                   : overflow incorrect for 3 AND 7" severity warning;
		
		
		-- test 3 OR 7
		sel    <= "0100";
        input1 <= conv_std_logic_vector(3, input1'length);
        input2 <= conv_std_logic_vector(7, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(7, output'length)) report "Error : 3 OR 7 = " & integer'image(conv_integer(output)) & " instead of 7" severity warning;
        assert(overflow = '0') report "Error                                   : overflow incorrect for 3 OR 7" severity warning;
        
        -- test 3 XOR 7
		sel    <= "0101";
        input1 <= conv_std_logic_vector(3, input1'length);
        input2 <= conv_std_logic_vector(7, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(4, output'length)) report "Error : 3 XOR 7 = " & integer'image(conv_integer(output)) & " instead of 4" severity warning;
        assert(overflow = '0') report "Error                                   : overflow incorrect for 3 OR 7" severity warning;

		-- test 3 NOR 7
		sel    <= "0110";
        input1 <= conv_std_logic_vector(3, input1'length);
        input2 <= conv_std_logic_vector(7, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(248, output'length)) report "Error : 3 NOR 7 = " & integer'image(conv_integer(output)) & " instead of 248" severity warning;
        assert(overflow = '0') report "Error                                     : overflow incorrect for 3 NOR 7" severity warning;
		
		-- test NOT 7
		sel    <= "0111";
        input1 <= conv_std_logic_vector(7, input1'length);
        input2 <= conv_std_logic_vector(3, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(248, output'length)) report "Error : NOT 7 = " & integer'image(conv_integer(output)) & " instead of 248" severity warning;
        assert(overflow = '0') report "Error                                     : overflow incorrect for NOT 7" severity warning;
		
		-- test Mutiply 128 by 2 (no overflow)
		sel    <= "1000";
        input1 <= conv_std_logic_vector(3, input1'length);
        input2 <= conv_std_logic_vector(7, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(6, output'length)) report "Error : 3 * 2 = " & integer'image(conv_integer(output)) & " instead of 6" severity warning;
        assert(overflow = '0') report "Error                                   : overflow incorrect for 3 * 2" severity warning;
		
		-- test Mutiply 128 by 2 (overflow)
		sel    <= "1000";
        input1 <= conv_std_logic_vector(128, input1'length);
        input2 <= conv_std_logic_vector(7, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(0, output'length)) report "Error : 128 * 2 = " & integer'image(conv_integer(output)) & " instead of 0" severity warning;
        assert(overflow = '1') report "Error                                   : overflow incorrect for 128 * 2" severity warning;
		
		-- test Divide 10 by 2
		sel    <= "1001";
        input1 <= conv_std_logic_vector(10, input1'length);
        input2 <= conv_std_logic_vector(3, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(5, output'length)) report "Error : 10 / 2 = " & integer'image(conv_integer(output)) & " instead of 5" severity warning;
        assert(overflow = '0') report "Error                                   : overflow incorrect for 10 / 2" severity warning;
		
		-- Swap High bits with LOW bits
		sel    <= "1010";
        input1 <= conv_std_logic_vector(65, input1'length);
        input2 <= conv_std_logic_vector(3, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(20, output'length)) report "Error : Swapping high && low bits = " & integer'image(conv_integer(output)) & " instead of 130" severity warning;
        assert(overflow = '0') report "Error                                     : overflow incorrect for Swapping high && low bits" severity warning;
		
		-- Reverse bits of 7
		sel    <= "1011";
        input1 <= conv_std_logic_vector(7, input1'length);
        input2 <= conv_std_logic_vector(3, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(224, output'length)) report "Error : Reverse bits of 7 = " & integer'image(conv_integer(output)) & " instead of 224" severity warning;
        assert(overflow = '0') report "Error                                     : overflow Reverse bits of 7" severity warning;
		
		-- Undefined operations
		sel    <= "1101";
        input1 <= conv_std_logic_vector(7, input1'length);
        input2 <= conv_std_logic_vector(3, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(0, output'length)) report "Error : Undef operation = " & integer'image(conv_integer(output)) & " instead of 0" severity warning;
        assert(overflow = '0') report "Error                                   : overflow Undef operation" severity warning;
		
		
		wait;
    end process;



end TB;