library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.vga_lib.all;

entity col_address_gen is
	port(
		button_n	: in std_logic_vector(2 downto 0);
		Hcount		: in std_logic_vector(COUNT_WIDTH-1 downto 0);
		addr_out	: out std_logic_vector((ROM_ADDR_WIDTH/2)-1 downto 0);
		out_en		: out std_logic
	);	
end col_address_gen;

architecture gen of col_address_gen is
	constant FACTOR		: natural	:= 2;
	signal button_nat	: natural	:= to_integer(unsigned(button_n));
	signal Hcount_nat	: natural	:= to_integer(unsigned(Hcount));
begin
	
	process(button_nat, Hcount, Hcount_nat)
		variable tmp	:	unsigned(Hcount'length-1 downto 0);
		variable tmp_out:	std_logic_vector(tmp'length-1 downto 0);
	begin
		-- Default values
		out_en		<=	'0';
		tmp			:= to_unsigned(0,Hcount'length);
		
		case button_nat is
		when TOP_LEFT =>
			if(Hcount_nat >= TOP_LEFT_Y_START and Hcount_nat <= TOP_LEFT_Y_END) then
				tmp			:= unsigned(Hcount) - TOP_LEFT_Y_START;
				out_en		<= '1';
			end if;
		when TOP_RIGHT =>
			if(Hcount_nat >= TOP_RIGHT_Y_START and Hcount_nat <= TOP_RIGHT_Y_END) then
				tmp			:= unsigned(Hcount) - TOP_RIGHT_Y_START;
				out_en		<= '1';
			end if;
		when BOTTOM_LEFT =>
			if(Hcount_nat >= BOTTOM_LEFT_Y_START and Hcount_nat <= BOTTOM_LEFT_Y_END) then
				tmp			:= unsigned(Hcount) - BOTTOM_LEFT_Y_START;
				out_en		<= '1';
			end if;
		when BOTTOM_RIGHT =>
			if(Hcount_nat >= BOTTOM_RIGHT_Y_START and Hcount_nat <= BOTTOM_RIGHT_Y_END) then
				tmp			:= unsigned(Hcount) - BOTTOM_RIGHT_Y_START;
				out_en		<= '1';
			end if;
		when others =>
			if(Hcount_nat >= CENTERED_Y_START and Hcount_nat <= CENTERED_Y_END) then
				tmp			:= unsigned(Hcount) - CENTERED_Y_START;
				out_en		<= '1';
			end if;
		end case;
		
		-- Compute address corresponding to ROM
		tmp_out	:=	std_logic_vector(tmp/FACTOR);
		addr_out	<= tmp_out(addr_out'length-1 downto 0);
	end process;
end gen;