library ieee;
use ieee.std_logic_1164.all;

-- Parametric Register
entity param_reg is 
	generic (WIDTH : integer := 32);
	port (
		clk		:	in std_logic;
		reset	:	in std_logic;
		d		:	in std_logic_vector (WIDTH-1 downto 0);
		q		:	out std_logic_vector (WIDTH-1 downto 0)
	);
end param_reg;

architecture rtl of param_reg is
begin
	clk_proc : process (clk, reset)
	begin 
		if reset = '1' then
			q <= (others => '0');
		elsif rising_edge(clk) then
			q <= d;
		end if;
	end process;
end rtl;
