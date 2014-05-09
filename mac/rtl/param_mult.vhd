library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;
use work.mac_package.all;

-- Parametric Multiplier
entity param_mult is
	generic (WIDTH : integer := 8);
	port (
		A	:	in std_logic_vector (WIDTH-1 downto 0);
		B	: 	in std_logic_vector (WIDTH-1 downto 0);
		Z	:	out std_logic_vector (2 * WIDTH-1 downto 0)
);
end param_mult;

architecture rtl of param_mult is 
begin
	multi_proc : process (A, B)
	begin
		Z <= A * B;
	end process;
end rtl;