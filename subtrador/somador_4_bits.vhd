library ieee;
use ieee.std_logic_1164.all;

entity somador_4_bits is 
	port(
		a,b : in std_logic_vector(3 downto 0);
		s : out std_logic_vector(3 downto 0);
		cout : out std_logic
	);
end somador_4_bits;

architecture somador of somador_4_bits is
	component meio_somador 
		port(
			a,b : in std_logic;
			s,cout : out std_logic
		);
	end component;
	
	component somador_completo
		port(
			a,b,cin : in std_logic;
			s, cout : out std_logic
		);
	end component;

	signal c1,c2,c3 : std_logic;
	
	begin 
	i0 : meio_somador port map (A(0), B(0), S(0), C1);
	i1 : somador_completo port map (A(1), B(1), C1, S(1), C2);
	i2 : somador_completo port map (A(2), B(2), C2, S(2), C3);
	i3 : somador_completo port map (A(3), B(3), C3, S(3), Cout);
end somador;