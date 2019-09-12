library ieee;
use ieee.std_logic_1164.all;

entity comparador is
	port(
		A, B : in std_logic_vector(4 downto 0);
		X, Y, Z : out std_logic
	);
end comparador;

architecture comparar of comparador is
	signal igual,menor,maior : std_logic_vector(4 downto 0);
	
	begin
		igual(0) <= '1';
		menor(0) <= '0';
		maior(0) <= '0';
		
		igual(1) <= igual(0) and (not(A(1) xor B(1)));
		maior(1) <= maior(0) or (igual(0) and (A(1) and (not B(1))));
		menor(1) <= menor(0) or (igual(0) and ((not A(1)) and B(1)));
		
		igual(2) <= igual(1) and (not(A(2) xor B(2)));
		maior(2) <= maior(1) or (igual(1) and (A(2) and (not B(2))));
		menor(2) <= menor(1) or (igual(1) and ((not A(2)) and B(2)));
		
		igual(3) <= igual(2) and (not(A(3) xor B(3)));
		maior(3) <= maior(2) or (igual(2) and (A(3) and (not B(3))));
		menor(3) <= menor(2) or (igual(2) and ((not A(3)) and B(3)));
		
		x <= igual(3) and (not(A(4) xor B(4)));
		y <= maior(3) or (igual(3) and (A(4) and (not B(4))));
		z <= menor(3) or (igual(3) and ((not A(4)) and B(4)));
		
--		X <= igual(4);
--		Y <= maior(4);
--		Z <= menor(4);
end comparar;