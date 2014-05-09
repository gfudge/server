library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_fsm is
end tb_fsm;

architecture exercise of tb_fsm is

	component fsm
	port(
		din	:	in std_logic_vector(31 downto 0);
		dout	:	out std_logic_vector(31 downto 0);
		addr	:	in std_logic_vector(31 downto 0);
		maddr	:	buffer std_logic_vector(31 downto 0);
		burst	:	in std_logic_vector(3 downto 0);
		req	:	in std_logic;
		rdy	:	out std_logic;
		clk	:	in std_logic;
		reset	:	in std_logic
	);
	end component;
	
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
		DUT	:	fsm
		port map (
			din => tb_din,
			dout =>	tb_dout,
			addr =>	tb_addr,
			clk => tb_clk,
			reset => tb_reset,
			burst => tb_burst,
			req => tb_req,
			rdy => tb_rdy
		);
		
		apply_inputs : process
		begin
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
			tb_reset <= '1';
			wait for 10 ns;
			tb_reset <= '0';
			wait for 190 ns;
		end process reset;

end exercise;
