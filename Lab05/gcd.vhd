library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gcd is
    generic (
        WIDTH : positive := 16);
    port (
        clk    : in  std_logic;
        rst    : in  std_logic;
        go     : in  std_logic;
        done   : out std_logic;
        x      : in  std_logic_vector(WIDTH-1 downto 0);
        y      : in  std_logic_vector(WIDTH-1 downto 0);
        output : out std_logic_vector(WIDTH-1 downto 0));
end gcd;


architecture FSMD of gcd is
	type STATE_TYPE is (START, WAIT_0, WAIT_1, INIT, LOOP_COND,
                      LOOP_BODY, OUTPUT_RESULT);
    signal state		: STATE_TYPE;
    signal tmp_x, tmp_y	: unsigned(WIDTH-1 downto 0);
                      
begin  -- FSMD
	
	-- Default value to prevent having to set values in every case
	-- output	<= std_logic_vector(to_unsigned(0,WIDTH));
	-- done	<= '0';
	
	process(clk, rst, go)
	begin
		if(rst = '1') then
			state	<= START;
			done	<= '0';
			tmp_x	<= to_unsigned(0, WIDTH);
			tmp_y	<= to_unsigned(0, WIDTH);
			output	<= (others => '0');
		elsif(rising_edge(clk)) then
			case state is
				when START =>
					-- Set all outputs that need to be set				
					done <= '0';
					
					-- Next State
					if(go = '0') then
						state 	<= WAIT_1;
					else
						state	<= INIT;
					end if;
					
				when INIT =>
					-- Set tmporary register
					tmp_x	<= unsigned(x);
					tmp_y	<= unsigned(y);
					
					-- Next State
					state	<= LOOP_COND;
					
				when LOOP_COND =>
					if(tmp_x /= tmp_y) then
						state	<= LOOP_BODY;
					else
						state	<= OUTPUT_RESULT;
					end if;
					
				when LOOP_BODY =>
					if(tmp_x < tmp_y) then
						tmp_y	<= tmp_y - tmp_x;
					else
						tmp_x	<= tmp_x - tmp_y;
					end if;
					state	<= LOOP_COND;
					
				when OUTPUT_RESULT =>
					output	<= std_logic_vector(tmp_x);
					done	<= '1';
					state	<= WAIT_0;
					
				when WAIT_0 =>
					done	<= '1';
					
					if(go = '0') then
						state <= WAIT_1;
					else
						state <= WAIT_0;
					end if;
					
				when WAIT_1 =>
					if(go = '0') then
						state <= WAIT_1;
					else 
						state <= INIT;
					end if;
				when others	=> null;
			end case;
		end if;
	end process;
end FSMD;


architecture FSM_D1 of gcd is
	signal x_lt_y, x_ne_y, x_sel, y_sel, x_en, y_en, output_en : std_logic;
begin  -- FSM_D1
	-- Create a Datapath instance
	D1 : entity work.datapath1 generic map(
			width)
		port map(
			clk    => clk,
			rst    => rst,
			x_sel     => x_sel,
			y_sel     => y_sel,
			x_en      => x_en,
			y_en      => y_en,
			output_en => output_en,
			x_lt_y    => x_lt_y,
			x_ne_y    => x_ne_y,
			x         => x,
			y         => y,
			output    => output
		);

	-- Create a Control instance
	CTRL : entity work.ctrl1 port map(
			clk       => clk,
			rst       => rst,
			go		  => go,
			x_lt_y    => x_lt_y,
			x_ne_y    => x_ne_y,
			x_sel     => x_sel,
			y_sel     => y_sel,
			x_en      => x_en,
			y_en      => y_en,
			done	  => done,
			output_en => output_en
		);

end FSM_D1;

architecture FSM_D2 of gcd is
	signal x_lt_y, x_ne_y, x_sel, y_sel, x_en, y_en, output_en : std_logic;
begin  -- FSM_D2
	-- Create a Datapath instance
	DATAPATH2 : entity work.datapath2 generic map(
			width)
		port map(
			clk    => clk,
			rst    => rst,
			x_sel     => x_sel,
			y_sel     => y_sel,
			x_en      => x_en,
			y_en      => y_en,
			output_en => output_en,
			x_lt_y    => x_lt_y,
			x_ne_y    => x_ne_y,
			x         => x,
			y         => y,
			output    => output
		);

	-- Create a Control instance
	CTRL2 : entity work.ctrl2 port map(
			clk       => clk,
			rst       => rst,
			go		  => go,
			x_lt_y    => x_lt_y,
			x_ne_y    => x_ne_y,
			x_sel     => x_sel,
			y_sel     => y_sel,
			x_en      => x_en,
			y_en      => y_en,
			done	  => done,
			output_en => output_en
		);

end FSM_D2;


-- EXTRA CREDIT
architecture FSMD2 of gcd is

begin  -- FSMD2



end FSMD2;
