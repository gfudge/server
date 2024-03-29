library ieee;
use ieee.std_logic_1164.all;

entity multiplier is 

	generic ( width : integer := 8 );
	
	port (
		portA : in std_logic_vector(width - 1 downto 0);
		portB : in std_logic_vector(width - 1 downto 0);
		portZ : in std_logic_vector(width - 1 downto 0)
);
end multiplier;

architecture struct of mac is 
	signal A_IN : std_logic_vector(w - 1 downto 0);
	signal B_IN : std_logic_vector(w - 1 downto 0);
	signal A_MUL : std_logic_vector(w - 1 downto 0);
	signal B_MUL : std_logic_vector(w - 1 downto 0);
	signal Z_MUL : std_logic_vector(2*w - 1 downto 0);

	component multiplier 
	port (
		mulPortA, mulPortB : in std_logic_vector(width - 1 downto 0);
		mulPortZ : out std_logic_vector(2*width - 1 downto 0)
	);
	end component;

	component adder 
	port (
		adderPortA, adderPortB : in std_logic_vector(width - 1 downto 0);
		adderPortZ : out std_logic_vector(width - 1 downto 0)
	);
	end component;
	
	component genericReg
	port (
		clock, reset : in std_logic;
		dataIn : in std_logic_vector(w - 1 downto 0)
		dataOut : in std_logic_vector(w - 1 downto 0)
	);

	begin

		RegA : genericReg
		port map (
			clock => clock,
			reset => reset,
			dataIn => A_IN,
			dataOut => A_MUL
		);

		RegB : genericReg
		generic map ( width => w )		
		port map (
			clock => clock,
			reset => reset,
			dataIn => B_IN,
			dataOut => B_MUL
		);

