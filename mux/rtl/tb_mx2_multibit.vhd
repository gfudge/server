library ieee;
use ieee.std_logic_1164.all;
entity tb_mx2_multibit is

end tb_mx2_multibit;

architecture exercise of tb_mx2_multibit is
-- Declare components
  component mx2_multibit
  generic (
    width : integer := 4
    );
  port (
    a : in std_logic_vector(width - 1 downto 0);
    b : in std_logic_vector(width - 1 downto 0);
    sel : in std_logic;
    z : out std_logic_vector(width-1 downto 0)
    );
end component;

-- Declare internal signals
signal a_i : std_logic_vector(3 downto 0);
signal b_i : std_logic_vector(3 downto 0);
signal z_i : std_logic_vector(3 downto 0);
signal sel_i : std_logic;

begin

  -- Instantiate Design-Under-Test
  DUT : mx2_multibit generic map (
    width => 4
    )
  port map (
    a          =>      a_i, 
    b           =>      b_i, 
    sel         =>      sel_i,
    z          =>      z_i
    );

  stimulus_proc : process 
  begin
    -- Verify port A(3:0) operation
    -- Default assignments b_i <= "1111";
    sel_i <= '0';

    for i in 0 to 3 loop
      -- Drive a
      a_i <= (others => '0');
      a_i(i) <= '1';
      wait for 10 ns ;
      -- Test z
      assert (z_i = a_i)
        report "z_i differs from a_i" severity failure;
    end loop;

    -- Verify port B(3:0) operation
    -- Default assignments a_i <= "1111";
    sel_i <= '1';

    for i in 0 to 3 loop
      -- Drive a
      b_i <= (others => '0');
      b_i(i) <= '1';
      wait for 10 ns ;
      -- Test z
      assert (z_i = b_i)
        report "z_i differs from b_i" severity failure;
    end loop;

      report "SIMULATION END"
      severity failure;

  end process;
end exercise;
