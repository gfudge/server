library ieee;
use ieee.std_logic_1164.all;
use work.bram_package.all;
use work.log_package.all;

entity memctrl is
generic (
	WIDTH 		:	integer := 32;
	LOCATIONS	:	integer := 1024;
	BURSTWIDTH	:	integer := 4
);
port (
	request	:	in std_logic;
	address	:	in std_logic_vector(width - 1 downto 0);
	burst	:	in std_logic_vector(burstwidth - 1 downto 0);
	dataout	:	out std_logic_vector(width - 1 downto 0);
	ready	:	out std_logic;
	clock	:	in std_logic;
	reset	:	in std_logic
);	
end memctrl;

architecture struct of memctrl is

signal mem_din	:	std_logic_vector(width - 1 downto 0);
signal membuf	:	std_logic_vector(width - 1 downto 0);
signal memaddr	:	std_logic_vector(width - 1 downto 0);
signal we_i	:	std_logic;

component fsm 
	port (
		clk	:	in std_logic;
		reset	:	in std_logic;
		req	:	in std_logic;
		addr	:	in std_logic_vector(width - 1 downto 0);
		burst	:	in std_logic_vector(burstwidth - 1 downto 0);
		din	:	in std_logic_vector(width - 1 downto 0);
		dout 	:	out std_logic_vector(width - 1 downto 0);
		maddr	:	out std_logic_vector(width - 1 downto 0);
		rdy	:	out std_logic
	);
end component;

component bram_param
	generic (
		width : integer := 32;
		locations : integer := 1024
	);
	port (
		clk	:	in std_logic;
		addr	:	in std_logic_vector(width - 1 downto 0);
		din 	:	in std_logic_vector(width - 1 downto 0);
		dout	:	out std_logic_vector(width - 1 downto 0);
		WE	: 	in std_logic
	);
end component;

	begin
		we_i <= '0';
		mem_din <= (others => '0');
		-- BRAM
		I_BRAM	:	bram_param
		generic map (
			LOCATIONS => L,
			WIDTH => W
		) 
		port map (
			clk => clock,
			addr => memaddr,
			din => mem_din,
			dout => membuf,
			WE => we_i
		);

		-- FSM
		I_FSM	:	fsm
		port map (
			clk => clock,
			reset => reset,
			req => request,
			addr => address,
			burst => burst,
			din => membuf,
			dout => dataout,
			maddr => memaddr,
			rdy => ready
		);
		
end struct;	
			
