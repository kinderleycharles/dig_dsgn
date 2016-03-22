library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.VGA_LIB.all;

entity top_level is
	port(
		clk50MHz 				: in  std_logic;
		rst						: in  std_logic;
		button   				: in  std_logic_vector(2 downto 0);
		Horiz_Sync, Vert_Sync	: out std_logic;
		rgb						: out std_logic_vector(11 downto 0)
	);
end top_level;

architecture STR of top_level is
	
	signal Video_on, row_en, col_en, pixel_clk	: std_logic;
	signal Hcount, Vcount			:  std_logic_vector(COUNT_WIDTH-1 downto 0);
	signal ROM_rgb_out				:  std_logic_vector(rgb'length-1 downto 0); 
	signal ROM_addr					:  std_logic_vector(ROM_ADDR_WIDTH-1 downto 0);

begin                                -- STR

	-- INTANCE OF THE PIXEL CLOCK
	P_CLK: entity work.clk_div generic map(
		clk_in_freq  => 50E+6,
        clk_out_freq => 25E+6)
        port map(
        	clk_in  => clk50MHz,
        	clk_out => pixel_clk,
        	rst     => rst
        );
        
	VGA_GEN : entity work.VGA_sync_gen(model_1proc) port map (
	    clk       => pixel_clk,
	    rst       => rst,
	    Hcount	  => Hcount,
	    Vcount	  => Vcount,
	    Horiz_Sync=> Horiz_Sync,
	    Vert_Sync => Vert_Sync,
	    Video_On  => Video_On);
	
	ROW_ADDR_GEN : entity work.row_address_gen port map (
		button_n	=> button,
		Vcount		=> Vcount,
		addr_out	=> ROM_addr(ROM_ADDR_WIDTH-1 downto (ROM_ADDR_WIDTH/2)),
		out_en		=> row_en
	);
	
	COL_ADDR_GEN : entity work.col_address_gen port map (
		button_n	=> button,
		Hcount		=> Hcount,
		addr_out	=> ROM_addr((ROM_ADDR_WIDTH/2)-1 downto 0),
		out_en		=> col_en
	);
	
	ROM_TEST : entity work.Rom_test port map (
		address	=> ROM_addr,
		rgb		=> ROM_rgb_out
	);
	
--	ROM : entity work.vga_rom port map(
--		address	=>	ROM_addr,
--		clock	=>  '1',
--		q		=>	ROM_rgb_out
--	);
	
	OUTPUT_GEN : entity work.Output_generator generic map(
		width	=> rgb'length)
		port map(
			vid_en	=> Video_on,
			row_en	=> row_en,
			col_en	=> col_en,
			rgb_in	=> ROM_rgb_out,
			rgb_out	=> rgb
		);
end STR;
