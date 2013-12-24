library ieee;
use ieee.std_logic_1164.all;

entity tb_reg_flop is
end tb_reg_flop;

architecture exercise of tb_reg_flop is

	type input_array IS ARRAY (0 to 3) of std_logic_vector(7 downto 0);
	constant input_vectors: input_array := ("00000000", "01010101", "10101010", "11111111");


	component reg_flop
	generic (
		width : integer := 8
		);
	port  (
		d : in std_logic_vector(width - 1 downto 0);
		q : out std_logic_vector(width - 1 downto 0);
		clk : in std_logic;
		reset : in std_logic
		);
end component;

signal d_i : std_logic_vector(7 downto 0);
signal q_i : std_logic_vector(7 downto 0);
signal clk_i : std_logic := '1';
signal reset_i : std_logic := '0';

constant clk_period : time := 10 ns;
constant reset_hold : time := 3 ns;

begin 

-- Instantiate DUT
	DUT : reg_flop generic map (
		width => 8
		)
	port map (
	d => d_i,
	q => q_i,
	clk => clk_i,
	reset => reset_i
	);

	apply_inputs : process
	begin	
		for j in input_vectors'RANGE LOOP
			d_i <= input_vectors(j);
			wait for clk_period;
		end loop;
		assert (false)
			report "SIMULATION END"
			severity failure;
	end process apply_inputs;

	clock : process
	begin
		clk_i <= '0';
		wait for clk_period/2;
		clk_i <= '1';
		wait for clk_period/2;
	end process clock;

	reset_test : process
	begin
		reset_i <= '1';
		wait for clk_period + reset_hold;
		reset_i <= '0';
		wait for 33 ns;
		reset_i <= '1';
		wait for clk_period;
		reset_i <= '0';
	end process reset_test;

end exercise;
		
