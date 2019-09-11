library ieee;
use ieee.std_logic_1164.all;

entity subtrador is 
	port(
		a,b : in std_logic_vector(3 downto 0);
		s : out std_logic_vector(3 downto 0);
		cout : out std_logic
	);
end subtrador;

architecture subtrair of subtrador is
	component inversor
		port(
			b : in std_logic_vector(3 downto 0);
			cout : out std_logic_vector(3 downto 0)
		);
	end component;
	
	component somador_4_bits 
		port(
			a,b : in std_logic_vector(3 downto 0);
			s : out std_logic_vector(3 downto 0);
			cout : out std_logic
		);
	end component;

	signal cout1 : std_logic;
	signal inversor_B,menos_B : std_logic_vector(3 downto 0);
	
	begin 
		i1: inversor port map (b, inversor_B);
		s0: somador_4_bits port map(inversor_b, "0001", menos_B, cout1);
		s1: somador_4_bits port map(a, menos_b, s, cout);
end subtrair;