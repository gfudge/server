library ieee;
use ieee.std_logic_1164.all;
use work.bram_package.all;
use work.log_package.all;


entity ram_piped is
generic ( 
	WIDTH : integer := 32;
	LOCATIONS : integer := 1024
);
port (
	din	:	in std_logic_vector ( WIDTH - 1 downto 0);
	dout :	out std_logic_vector ( WIDTH - 1 downto 0);
	addr :	in std_logic_vector ( log2(LOCATIONS) - 1 downto 0);
	WE	:	in std_logic;
	clk	:	in std_logic;
	reset :	in std_logic
);
end ram_piped;

architecture struct of ram_piped is
	signal din_i		:	std_logic_vector ( W - 1 downto 0 );
	signal dout_i	:	std_logic_vector ( W - 1 downto 0 );
	--signal din_r		:	std_logic_vector ( W - 1 downto 0 );
	signal dout_r	:	std_logic_vector ( W - 1 downto 0 );
	--signal addr_r	:	std_logic_vector ( log2(L) - 1 downto 0);
	signal addr_i	:	std_logic_vector ( log2(L) - 1 downto 0);
	signal WE_i		:	std_logic;

	component param_reg
		generic ( 
			width : integer := 32
		);
		port (
			clk	:	in std_logic;
			reset:	in std_logic;
			d	:	in std_logic_vector (width - 1 downto 0);
			q	:	out std_logic_vector (width - 1 downto 0)
		);
	end component;

	component reg_single
		port (
			clk	:	in std_logic;
			reset:	in std_logic;
			d	:	in std_logic;
			q	:	out std_logic
		);
	end component;

	component bram_param
		generic ( 
			width : integer := 32;
			locations : integer := 1024
		);
		port (
			clk	:	in std_logic;
			addr :	in std_logic_vector (log2(LOCATIONS) - 1 downto 0);
			din 	:	in std_logic_vector (width - 1 downto 0);
			dout :	out std_logic_vector (width - 1 downto 0);
			WE:	in std_logic
		);
	end component;

	begin

		-- Input buffer
		I_REG_IB	:	param_reg generic map (
			WIDTH => W
		)
		port map (
			clk => clk,
			reset => reset,
			d => din,
			q => din_i
		);

		-- Output buffer
		I_REG_OB	:	param_reg generic map (
			WIDTH => W
		)
		port map (
			clk => clk,
			reset => reset,
			d => dout_i,
			q => dout_r
		);

		-- Address bus register
		I_REG_AB	:	param_reg generic map (
			WIDTH => log2(LOCATIONS)
		-- log2 locations?
		)
		port map (
			clk => clk,
			reset => reset,
			d => addr,
			q => addr_i
		);

		-- Write flag buffer
		I_REG_WF	:	reg_single port map (
			clk => clk,
			reset => reset,
			d => WE,
			q => WE_i
		);
		
		-- Block RAM unit
		I_BRAM	:	bram_param generic map (
			LOCATIONS => L,
			WIDTH => W
		)
		port map (
			clk => clk,
			addr =>	addr_i,
			din => din_i,
			dout => dout_i,
			WE => WE_i
		);

-- Drive output bus
dout <= dout_r;
end struct;
