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
		
		igual(4) <= '1';
		menor(4) <= '0';
		maior(4) <= '0';
		
		process(A,B)
			begin
				for I in 4 to 1 loop
					igual(I-1) <= igual(I) and (not(A(I) xor B(I)));
					maior(I-1) <= maior(I) or (igual(I) and (A(I) and (not B(I))));
					menor(I-1) <= menor(I) or (igual(I) and ((not A(I)) and B(I)));
				end loop;
				x <= igual(0) and (not(A(0) xor B(0)));
				y <= maior(0) or (igual(0) and (A(0) and (not B(0))));
				z <= menor(0) or (igual(0) and ((not A(0)) and B(0)));
		end process;
		
		
		
--		igual(3) <= igual(4) and (not(A(4) xor B(4)));
--		maior(3) <= maior(4) or (igual(4) and (A(4) and (not B(4))));
--		menor(3) <= menor(4) or (igual(4) and ((not A(4)) and B(4)));
--		
--		igual(2) <= igual(3) and (not(A(3) xor B(3)));
--		maior(2) <= maior(3) or (igual(3) and (A(3) and (not B(3))));
--		menor(2) <= menor(3) or (igual(3) and ((not A(3)) and B(3)));
--		
--		igual(1) <= igual(2) and (not(A(2) xor B(2)));
--		maior(1) <= maior(2) or (igual(2) and (A(2) and (not B(2))));
--		menor(1) <= menor(2) or (igual(2) and ((not A(2)) and B(2)));
--		
--		
--		igual(0) <= igual(1) and (not(A(1) xor B(1)));
--		maior(0) <= maior(1) or (igual(1) and (A(1) and (not B(1))));
--		menor(0) <= menor(1) or (igual(1) and ((not A(1)) and B(1)));
--
--		
--		x <= igual(0) and (not(A(0) xor B(0)));
--		y <= maior(0) or (igual(0) and (A(0) and (not B(0))));
--		z <= menor(0) or (igual(0) and ((not A(0)) and B(0)));
		
--		X <= igual(4);
--		Y <= maior(4);
--		Z <= menor(4);
end comparar;