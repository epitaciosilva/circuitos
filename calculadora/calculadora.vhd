library ieee;	
use ieee.std_logic_1164.all;

entity calculadora is
	port(
		a,b,cin : in std_logic_vector(3 downto 0);
		s: out std_logic_vector(3 downto 0);
		cout : out std_logic
	);
end calculadora;

architecture calcular of calculadora is
	component somador_completo
		port(
			a,b,cin : in std_logic;
			s, cout : out std_logic
		);
	end component;
	
	signal C : std_logic_vector(3 downto 0);
	
	begin 
		C(0) <= '0';
		i0 : somador_completo port map (A(0), B(0) xor C(0), C(0), S(0), C(1));
		i1 : somador_completo port map (A(1), B(1) xor C(0), C(1), S(1), C(2));
		i2 : somador_completo port map (A(2), B(2) xor C(0), C(2), S(2), C(3));
		i3 : somador_completo port map (A(3), B(3) xor C(0), C(3), S(3), Cout);
		
end calcular;