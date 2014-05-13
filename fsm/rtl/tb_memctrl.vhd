library ieee;
--library xgates;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_memctrl is
end tb_memctrl;

architecture exercise of tb_memctrl is

	component memctrl
	--generic (
	--	width	:	integer := 32;
	--	locations:	integer	:= 1024;
	--	burstwidth:	integer	:= 4
	--);
	port (
		request	:	in std_logic;
		dataout	:	out std_logic_vector(31 downto 0);
		address	:	in std_logic_vector(31 downto 0);
		burst	:	in std_logic_vector(3 downto 0);
		ready	:	out std_logic;
		clock	:	in std_logic;
		reset	:	in std_logic
	);
	end component;
	
--for all:memctrl use entity xgates.memctrl;

	signal tb_din	:	std_logic_vector(31 downto 0);
	signal tb_dout	:	std_logic_vector(31 downto 0);
	signal tb_addr	:	std_logic_vector(31 downto 0);
	signal tb_clk	:	std_logic;
	signal tb_reset	:	std_logic;
	signal tb_rdy	:	std_logic;
	signal tb_req	:	std_logic;
	signal tb_burst	:	std_logic_vector(3 downto 0);

	constant clk_period	:	time := 10 ns;

	begin
		DUT	:	memctrl
		port map (
			dataout => tb_dout,
			address => tb_addr,
			clock => tb_clk,
			reset => tb_reset,
			burst => tb_burst,
			request => tb_req,
			ready => tb_rdy
		);
		
		apply_inputs : process
		begin
		-- Post layout sim delay
			wait for 200 ns;
		-- wait for reset to clear
			wait for 20 ns;
		-- Simulate 4 item cache line fill
			tb_addr <= std_logic_vector(to_unsigned(16#00#, 32));
			tb_burst <= std_logic_vector(to_unsigned(4, 4));
			tb_req <= '1';
			wait for 40 ns;
			tb_req <= '0';
			wait for 60 ns;
		
		assert(false)
			report "SIMULATION END"
			severity failure;
		end process apply_inputs;

		clock	:	process
		begin 
			tb_clk <= '0';
			wait for clk_period/2;
			tb_clk <= '1';
			wait for clk_period/2;
		end process clock;

		reset	:	process
		begin
			wait for 200 ns;
			tb_reset <= '1';
			wait for 10 ns;
			tb_reset <= '0';
			wait for 190 ns;
		end process reset;

end exercise;
