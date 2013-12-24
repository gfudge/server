library ieee;
use ieee.std_logic_1164.all;

entity reg_flop is 
	generic (
		width : integer := 8
		);
	port (
		d : in std_logic_vector(width - 1 downto 0);
		q : out std_logic_vector(width - 1 downto 0);
		clk : in std_logic;
		reset : in std_logic
		);
end reg_flop;

architecture struct of reg_flop is 
	
	component dff
	port (
		d,clk,reset : in std_logic;
		q : out std_logic
		);
end component;

begin
	GEN_REG :
		for i in 0 to width - 1 generate
			I_REG : dff port map (
			d	=>	d(i),
			q 	=>	q(i),
			clk	=>	clk,
			reset	=>	reset
		);
		
		end generate;
end struct;
