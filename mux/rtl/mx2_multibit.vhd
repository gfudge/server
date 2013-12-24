library ieee;
use ieee.std_logic_1164.all;
entity  mx2_multibit is
  generic (
    width : integer := 4
    );
  port (
    a : in std_logic_vector(width - 1 downto 0);
    b : in std_logic_vector(width - 1 downto 0);
    sel : in std_logic;
    z : out std_logic_vector(width-1 downto 0)
    );
end mx2_multibit;

architecture struct of mx2_multibit is
  -- Declare components component mx2_1
  component mx2_1
  port (
    a,b,sel : in std_logic;
    z : out std_logic
    );
end component;--mx2_1;

begin
  GEN_MUX :
    for i in 0 to width - 1 generate
      I_MUX2_1 : mx2_1 port map (
      a      =>      a(i), 
      b      =>      b(i), 
      sel     =>      sel,
      z      =>      z(i)
      );

    end generate;
end struct;
