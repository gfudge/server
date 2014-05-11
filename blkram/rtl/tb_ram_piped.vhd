library ieee;
library xgates;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.bram_package.all;

entity tb_ram_piped is
end tb_ram_piped;

architecture exercise of tb_ram_piped is
	
	--type data_array IS ARRAY (0 to 1) of integer ;--range 16#00000000# to 16#ffffffff#;
	--type address_array IS ARRAY (0 to 1) of std_logic_vector(9 downto 0);
	--constant input_data: input_array := ("00000001000000010000000100000001","00000010000000100000001000000010");
	--constant input_data: data_array := (16#deafbeef#, 16#deadbeef#);
	--constant input_address: address_array := ("0000000001","0000000010");
	--constant TT : integer := 16#deadbeef#;
	component ram_piped
	port (
		din	:	in std_logic_vector ( 31 downto 0);
		dout :	out std_logic_vector ( 31 downto 0);
		addr :	in std_logic_vector ( 9 downto 0);
		WE	:	in std_logic;
		clk	:	in std_logic;
		reset :	in std_logic
	);
	end component;

for all:ram_piped use entity xgates.ram_piped;

	signal tb_data_in	:	std_logic_vector( 31 downto 0 );
	signal tb_data_out	:	std_logic_vector( 31 downto 0 );
	signal tb_address	:	std_logic_vector( 9 downto 0 );
	signal tb_clk		:	std_logic;
	signal tb_reset		:	std_logic;
	signal tb_we		:	std_logic;

	constant clk_period	:	time := 10 ns;

	begin
		DUT : ram_piped
		port map (
			din => tb_data_in,
			dout => tb_data_out,
			addr => tb_address,
			WE => tb_we,
			clk => tb_clk,
			reset => tb_reset
		);

		apply_inputs : process
		begin
			wait for 200 ns;
			tb_we <= '0';
			wait for 40 ns;
			--for j in input_address'RANGE LOOP
			--	tb_address <= input_address(j);
			--	tb_data_in <= input_data(j);
			--	wait for clk_period;
			--end loop;
			tb_we <= '1';
			tb_address <= std_logic_vector(to_unsigned(16#05#, 10));
			tb_data_in <= std_logic_vector(to_unsigned(16#DEAD#, 32));
			wait for clk_period;
			tb_address <= std_logic_vector(to_unsigned(16#0A#, 10));
			tb_data_in <= std_logic_vector(to_unsigned(16#BEEF#, 32));
			wait for clk_period;
			tb_address <= std_logic_vector(to_unsigned(16#0F#, 10));
			tb_data_in <= std_logic_vector(to_unsigned(16#A5A5#, 32));
			wait for clk_period;
			wait for 50 ns;
			tb_we <= '0';
			tb_address <= std_logic_vector(to_unsigned(16#05#, 10));
			wait for clk_period;
			tb_address <= std_logic_vector(to_unsigned(16#0A#, 10));
			wait for clk_period;
			tb_address <= std_logic_vector(to_unsigned(16#0F#, 10));
			wait for clk_period;
			wait for 50 ns;
			
			assert(false)
				report "SIMULATION END"
				severity failure;
		end process apply_inputs;
	
		clock : process
		begin
			tb_clk <= '0';
			wait for clk_period / 2;
			tb_clk <= '1';
			wait for clk_period / 2;
		end process clock;

		reset : process
		begin
			wait for 200 ns;
			tb_reset <= '1';
			wait for 20 ns;
			tb_reset <= '0';
			wait for 180 ns;
		end process reset;

end exercise;
