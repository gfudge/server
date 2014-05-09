library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.log_package.all;

entity bram_param is
	generic ( 
		LOCATIONS	:	integer := 1024;
		WIDTH		:	integer := 32
	);
	port (
		clk		:	in std_logic;
		addr	:	in std_logic_vector (log2(LOCATIONS) - 1 downto 0);
		din		:	in std_logic_vector (WIDTH - 1 downto 0);
		dout	:	out std_logic_vector (WIDTH - 1 downto 0);
		WE		:	in std_logic
	);
end bram_param;

architecture behavioural of bram_param is 
type ramT is array ( 0 to LOCATIONS - 1) of std_logic_vector (WIDTH - 1 downto 0);
signal ram_ir	:	ramT;

begin
		clk_proc	:	process (clk)
		begin
			if rising_edge(clk)	then
				if WE = '1' then
					ram_ir(to_integer(unsigned(addr))) <= din;
				end if;
				dout <= ram_ir(to_integer(unsigned(addr)));
			end if;
		end process;
end behavioural;
