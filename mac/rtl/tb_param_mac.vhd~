library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_arith.all;
Use ieee.std_logic_unsigned.all;
Use work.mac_package.all;

entity tb_param_mac is
end tb_param_mac;

architecture exercise of tb_param_mac is

	type input_array IS ARRAY (0 to 7) of std_logic_vector(7 downto 0);
	constant input_vectors_a: input_array := ("00000001","00000010","00000011","00000100","00000101","00000110","00000111","00001000");
	constant input_vectors_b: input_array := ("00000001","00000010","00000011","00000100","00000101","00000110","00000111","00001000");

	component param_mac
	port (
		clk		:	in std_logic;
		reset	:	in std_logic;
		A		:	in std_logic_vector ( 7 downto 0);
		B		:	in std_logic_vector ( 7 downto 0);
		Accr_r	:	out std_logic_vector( 15 downto 0)
	);
	end component;

	signal a_i	:	std_logic_vector (7 downto 0);
	signal b_i	:	std_logic_vector (7 downto 0);
	signal z_i	:	std_logic_vector ( 15 downto 0);
	signal clk_i	:	std_logic;
	signal reset_i :	std_logic;

	constant clk_period	:	time := 10 ns ;

	begin
		DUT : param_mac
		port map (
			A => a_i,
			B => b_i,
			Accr_r => z_i,
			clk => clk_i,
			reset => reset_i
		);
		
		apply_inputs : process
		begin 
			wait for 20 ns;
			for j in input_vectors_a'RANGE LOOP
				a_i <= input_vectors_a(j);
				b_i <= input_vectors_b(j);
				wait for clk_period;
			end loop;
			assert(false)
				report "SIMULATION END"
				severity failure;
		end process apply_inputs;

		clock : process
		begin
			clk_i <= '0';
			wait for clk_period / 2;
			clk_i <= '1';
			wait for clk_period / 2;
		end process clock;

		reset : process
		begin
			reset_i <= '1';
			wait for 20 ns;
			reset_i <= '0';
			wait for 100 ns;
		end process reset;

end exercise;
		
