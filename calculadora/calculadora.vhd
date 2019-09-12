library ieee;	
use ieee.std_logic_1164.all;

entity calculadora is
	port(
		a,b : in std_logic_vector(7 downto 0);
		cin : in std_logic;
		s: out std_logic_vector(7 downto 0);
		cout : out std_logic
	);
end calculadora;

architecture calcular of calculadora is
	component somador_completo
		port(
			a,b : in std_logic_vector(7 downto 0);
			cin : in std_logic;
			s : out std_logic_vector(7 downto 0);
			cout : out std_logic
		);
	end component;
	
	signal C : std_logic_vector(7 downto 0);
	
	begin 
		i0 : somador_completo port map (A, B, cin, S, cout); 
end calcular;





