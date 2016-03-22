library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.VGA_LIB.all;

entity VGA_sync_gen is
	port(
		clk, rst	: in std_logic;
		Horiz_Sync, Vert_Sync, Video_On	: out std_logic;
		Hcount, Vcount	: out std_logic_vector(COUNT_WIDTH-1 downto 0) 
	);
end VGA_sync_gen;


-- ONE PROCESS MODEL
-- Using one process model to create the VGA generator synchronization
architecture model_1proc of VGA_sync_gen is
	
	-- Need to de declared as 10-bit std_logic/unsigned signals
	signal tmp_hcount, tmp_vcount	: unsigned(COUNT_WIDTH-1 downto 0);
	
begin

	-- Use this process to increment and reset counter 
	-- as see fit
	process(rst, clk)
	begin
		if(rst = '1') then
			tmp_hcount	<= (others => '0');
			tmp_vcount	<= (others => '0');
			Hcount		<= (others => '0');
			Vcount		<= (others => '0');
			Video_On 	<= '0';
			Horiz_Sync 	<= '1';
			Vert_Sync	<= '1';
		elsif(rising_edge(clk)) then
			-- Incrementing horizontal count
			if(tmp_hcount = H_MAX) then
				tmp_hcount	<= (others => '0');
			else
				tmp_hcount	<= tmp_hcount + to_unsigned(1, COUNT_WIDTH);
			end if;
			
			-- Incrementing vertical count
			if(tmp_vcount = V_MAX) then
				tmp_vcount	<= (others => '0');
			elsif(tmp_hcount = H_VERT_INC) then
				tmp_vcount	<= tmp_vcount + to_unsigned(1, COUNT_WIDTH);
			else
				tmp_vcount 	<= tmp_vcount;
			end if;
			
			-- OUTPUTTING ALL THE RESULTS 
			-- VIDEO OUTPUT
			if(tmp_hcount > H_DISPLAY_END or tmp_vcount > V_DISPLAY_END) then
				Video_On	<= '1';
			else
				Video_On	<= '0';
			end if;
			
			-- VERTICAL SYNC OUTPUT
			if(tmp_vcount > VSYNC_BEGIN and tmp_vcount < VSYNC_END) then
				Vert_Sync	<= '0';
			else
				Vert_Sync	<= '1';
			end if;
			
			-- HORIZONTAL SYNC OUTPUT
			if(tmp_hcount > HSYNC_BEGIN and tmp_hcount < HSYNC_END) then
				Horiz_Sync	<= '0';
			else
				Horiz_Sync	<= '1';
			end if;
			
			-- HCOUNT && VCOUNT OUTPUT
			Hcount	<= std_logic_vector(tmp_hcount);
			Vcount	<= std_logic_vector(tmp_vcount);	
		end if;
	end process;
end model_1proc;



-- TWO PROCESS MODEL
-- 2 process model of the same solution
architecture model_2proc of VGA_sync_gen is
	
	-- Need to de declared as 10-bit std_logic/unsigned signals
	signal tmp_hcount, tmp_vcount	: unsigned(COUNT_WIDTH-1 downto 0);
	
begin

	-- Use this process to increment and reset counter 
	-- as see fit
	process(rst, clk)
	begin
		if(rst = '1') then
			tmp_hcount	<= (others => '0');
			tmp_vcount	<= (others => '0');
		elsif(rising_edge(clk)) then
			-- Incrementing horizontal count
			if(tmp_hcount = H_MAX) then
				tmp_hcount	<= (others => '0');
			else
				tmp_hcount	<= tmp_hcount + to_unsigned(1, COUNT_WIDTH);
			end if;
			
			-- Incrementing vertical count
			if(tmp_vcount = V_MAX) then
				tmp_vcount	<= (others => '0');
			elsif(tmp_hcount = H_VERT_INC) then
				tmp_vcount	<= tmp_vcount + to_unsigned(1, COUNT_WIDTH);
			else
				tmp_vcount 	<= tmp_vcount;
			end if;
			
		end if;
	end process;
	
	
			
	-- Use this process to generate different output based on the value
	-- of the horizontal and vertical counter
	process(tmp_hcount, tmp_vcount, rst)
	begin
		if(rst = '1') then
			Video_On 	<= '0';
			Horiz_Sync 	<= '1';
			Vert_Sync	<= '1';
		else
			-- VIDEO OUTPUT
			if(tmp_hcount > H_DISPLAY_END or tmp_vcount > V_DISPLAY_END) then
				Video_On	<= '1';
			else
				Video_On	<= '0';
			end if;
			
			-- VERTICAL SYNC OUTPUT
			if(tmp_vcount > VSYNC_BEGIN and tmp_vcount < VSYNC_END) then
				Vert_Sync	<= '0';
			else
				Vert_Sync	<= '1';
			end if;
			
			-- HORIZONTAL SYNC OUTPUT
			if(tmp_hcount >= HSYNC_BEGIN and tmp_hcount < HSYNC_END) then
				Horiz_Sync	<= '0';
			else
				Horiz_Sync	<= '1';
			end if;
			
			-- HCOUNT && VCOUNT OUTPUT
			Hcount	<= std_logic_vector(tmp_hcount);
			Vcount	<= std_logic_vector(tmp_vcount);
		end if;
	end process;
end model_2proc;