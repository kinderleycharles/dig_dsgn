library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_tb is
end uart_tb;

architecture TB of uart_tb is
	constant WIDTH   : positive := 8;
	
	signal in_data: std_logic_vector(WIDTH-1 downto 0);
	signal clk    : std_logic                          := '0';
    signal rst    : std_logic						   := '1';
    signal go     : std_logic                          := '1';
    signal done   : std_logic;
    signal tx	  : std_logic;

begin
	
	UUT : entity work.uart
        generic map (
            WIDTH => WIDTH)
        port map (
            clk    => clk,
            rst    => rst,
            go     => go,
            in_data   => in_data,
            tx      => tx,
            done    => done);
	
    clk <= not clk after 10 ns;
    
    process
    begin
    	
    	rst <= '1';
    	wait for 10 ns;
    	
    	in_data <= x"A7";
    	
    	rst <= '0';
    	wait for 10ns;
    	
    	 -- wait for 5 cycles
        for i in 0 to 5 loop
            wait until clk'event and clk = '1';
        end loop;  -- i

        wait;
        
    	
    end process;
end TB;