library ieee;
use ieee.std_logic_1164.all;

-- Parametric Register
entity reg_single is 
	port (
		clk		:	in std_logic;
		reset	:	in std_logic;
		d		:	in std_logic;
		q		:	out std_logic
	);
end reg_single;

architecture rtl of reg_single is
begin
	clk_proc : process (clk, reset)
	begin 
		if reset = '1' then
			q <='0';
		elsif rising_edge(clk) then
			q <= d;
		end if;
	end process;
end rtl;
