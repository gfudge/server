library ieee;
use ieee.std_logic_1164.all;

entity dff is 
	generic (
		c2q : time := 2 ns
	);
	port (
		clk : in std_logic;
		reset : in std_logic;
		d : in std_logic;
		q : out std_logic
		);
end dff;

architecture rtl of dff is
begin	
	clk_proc : process ( clk , reset )
	begin
	
		if (reset = '1') then
			q <= transport '0' after c2q;
		elsif rising_edge ( clk ) then
			q <= transport d after c2q;
		end if;
	end process;
end rtl;
