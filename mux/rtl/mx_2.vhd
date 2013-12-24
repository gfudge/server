Library ieee;
Use ieee.std_logic_1164.all;
Entity MX2_1 is
Port (
	A : in std_logic;
	B: in std_logic;
	Sel : in std_logic;
	Z : out std_logic
);
end MX2_1;
architecture struct of MX2_1 is

	signal n1 : std_logic;
	signal n2 : std_logic;
	signal n3 : std_logic;

component AND2
Port (
	A : in std_logic;
	B : in std_logic;
	Z : out std_logic
);
end component;

component OR2
Port (
	A : in std_logic;
	B : in std_logic;
	Z : out std_logic
);
end component;

component INV
port(
	A : in std_logic;
	Z : out std_logic
);
end component;

begin

	I_INV : INV port map (
	  A => sel,
	  Z => n1
	);

	I_AND1 : AND2 port map (
	  A => n1,
	  B => A,
	  Z => n2
	);

	I_AND2 : AND2 port map (
	  A => sel,
	  B => B,
	  Z => n3
	);

	I_OR1 : OR2 port map (
	  A => n2,
	  B => n3,
	  Z => Z
	);
end struct;
