library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;
use work.mac_package.all;

entity param_mac is
generic (WIDTH : integer := 8);
port (
	clk		:	in std_logic;
	reset	:	in std_logic;
	A		:	in std_logic_vector ( WIDTH - 1 downto 0);
	B		:	in std_logic_vector ( WIDTH - 1 downto 0);
	Accr_r	:	out std_logic_vector( 2 * WIDTH - 1 downto 0)
);
end param_mac;

architecture struct of param_mac is 
		signal A_R	: 	std_logic_vector ( W - 1 downto 0 );
		signal B_R	:	std_logic_vector ( W - 1 downto 0 );
		signal MRES_I :	std_logic_vector ( 2 * W - 1 downto 0 );
		signal MRES_R:	std_logic_vector ( 2 * W - 1 downto 0 );
		signal ARES_I	:	std_logic_vector ( 2 * W - 1 downto 0 );
		signal ACC_IR :	std_logic_vector ( 2 * W - 1 downto 0);

	component param_reg
	generic (WIDTH : integer := 8);
	port (
		clk, reset	:	in std_logic;
		d		:	in std_logic_vector (WIDTH-1 downto 0);
		q		:	out std_logic_vector (WIDTH-1 downto 0)
	);
	end component;

	component param_mult
	generic (WIDTH : integer := 8);
	port (
		A		:	in std_logic_vector (WIDTH-1 downto 0);
		B		:	in std_logic_vector (WIDTH-1 downto 0);
		Z		:	out std_logic_vector (2 * WIDTH-1 downto 0)
	);
	end component;	

	component param_add
	generic (WIDTH : integer := 16);
	port (
		A		:	in std_logic_vector (WIDTH-1 downto 0);
		B		:	in std_logic_vector (WIDTH-1 downto 0);
		Z		:	out std_logic_vector (WIDTH-1 downto 0)
	);
	end component;

	begin

		I_REG1	:	param_reg generic map (
			WIDTH => W
		)
		port map (
			clk => clk,
			reset => reset,
			d => A,
			q => A_R
		);

		I_REG2	:	param_reg generic map (
			WIDTH => W
		)
		port map (
			clk => clk,
			reset => reset,
			d => B,
			q => B_R
		);

		I_REG3	:	param_reg generic map (
			WIDTH => 2 * W
		)
		port map (
			clk => clk,
			reset => reset,
			d => MRES_I,
			q => MRES_R
		);

		I_REG4	:	param_reg generic map (
			WIDTH => 2 * W
		)
		port map (
			clk => clk,
			reset => reset,
			d => ARES_I,
			q => ACC_IR
		);

		I_MULT	:	param_mult generic map (
			WIDTH => W
		)
		port map (
			a => A_R,
			b => B_R,
			z => MRES_I
		);

		I_ADD	:	param_add generic map (
			WIDTH => 2 * W
		)
		port map (
			a => MRES_R,
			b => ACC_IR,
			z => ARES_I
		);

-- Drive output

Accr_r <= ACC_IR;

end struct;
					
