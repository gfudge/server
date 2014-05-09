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

architecture of 
