library ieee;
use ieee.std_logic_1164.all;

entity comparador is
	port(
		A, B : in std_logic_vector(4 downto 0);
		ig, me, ma : out std_logic
	);
end comparador;

architecture comparar of comparador is
	signal igual,menor,maior : std_logic_vector(4 downto 0);
	
	begin
		
		process(A,B)
			begin
				for I in 0 to 4 loop
					if (I = 0) then 
						igual(I) <= '1' and (not(A(4-I) xor B(4-I)));
						maior(I) <= maior(4-I) or ('1' and (A(4-I) and (not B(4-I))));
						menor(I) <= menor(4-I) or ('1' and ((not A(4-I)) and B(4-I)));
					elsif (I = 4) then
						ig <= igual(I-1) and (not(A(4-I) xor B(4-I)));
						ma <= maior(I-1) or (igual(I-1) and (A(4-I) and (not B(4-I))));
						me <= menor(I-1) or (igual(I-1) and ((not A(4-I)) and B(4-I)));
					else
						igual(I) <= igual(I-1) and (not(A(4-I) xor B(4-I)));
						maior(I) <= maior(I-1) or (igual(I-1) and (A(4-I) and (not B(4-I))));
						menor(I) <= menor(I-1) or (igual(I-1) and ((not A(4-I)) and B(4-I)));
					end if;
				end loop;
		end process;
end comparar;