library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.VGA_LIB.all;

entity VGA_sync_gen_tb is
end VGA_sync_gen_tb;

architecture TB of VGA_sync_gen_tb is
	
	-- Test signals declarations
	signal clk              : std_logic := '0';
	signal pixel_clk		: std_logic;
  	signal rst              : std_logic := '1';
  	signal Horiz_Sync, Vert_Sync, Video_On	: std_logic;
  	signal Hcount, Vcount	: std_logic_vector(COUNT_WIDTH-1 downto 0);
  	
  	-- Horizontal parameters
  	constant HORIZ_SWEEP_PER : time	:=	31770 ns;
  	constant B_VAL			 : time :=  3770 ns;
  	constant TIME_0			 : time := 0 ns; 
  	
begin
	-- INTANCE OF THE COL and ROW generator, to be removed
	
	
	-- INTANCE OF THE PIXEL CLOCK
	P_CLK: entity work.clk_div generic map(
		clk_in_freq  => 50E+6,
        clk_out_freq => 25E+6)
        port map(
        	clk_in  => clk,
        	clk_out => pixel_clk,
        	rst     => rst
        );
	
	-- INSTANCE OF THE VGA GENERATOR
	UUT : entity work.VGA_sync_gen(model_1proc) port map (
	    clk       => pixel_clk,
	    rst       => rst,
	    Hcount	  => Hcount,
	    Vcount	  => Vcount,
	    Horiz_Sync=> Horiz_Sync,
	    Vert_Sync => Vert_Sync,
	    Video_On  => Video_On);
	    
	-- Setting the duration of each clock pulse
	clk <= not clk after 10 ns;
	
	
	process
		variable before_A	: time	:= 0 ns;
		variable before_B, before_C, before_D, before_E : time;
		variable after_A, after_B, after_C, after_D, after_E	: time;
		variable A, B, C, D, E	: time;
	begin
		
		-- Setting the reset value
		rst       <= '1';
    	wait for 100 ns;
    	
    	-- Clear reset and see what the values are
    	rst                 <= '0';
    	
    	wait until Horiz_Sync = '0';
	    before_A := now;
	    
    	for i in 0 to 5 loop
    		wait until Horiz_Sync = '0';
    		after_A	:= now;
    		
			-- Ignore computation Horizontal Sync goes low for first time
			if(before_A /= TIME_0) then
				A 	:= after_A - before_A;
				report "A should be " & time'image(HORIZ_SWEEP_PER) & ", instead A is " & time'image(A) severity warning;
				before_A	:= after_A;
				before_B	:= after_A;
			end if;
    		
    	
	    	wait until Horiz_Sync = '1';
	    	after_B		:= now;
	    	before_C	:= after_B;
	    	
	    	-- Compute B and Display message
	    	B	:= after_B - before_A;
	    	report "B should be " & time'image(B_VAL) & ", instead B is " & time'image(B) severity warning;
	    	
    	end loop;
    	
    	
    	wait;
    	
	end process;
	
end TB;