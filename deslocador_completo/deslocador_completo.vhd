library ieee;
use ieee.std_logic_1164.all;

entity deslocador_completo is
	port(
		entrada : in std_logic_vector(7 downto 0);
		shiftR, shiftL : in std_logic;
		deslocado : out std_logic_vector(7 downto 0)
	);
end deslocador_completo;

architecture deslocador of deslocador_completo is
	begin 
		process(entrada, shiftR, shiftL)
			begin 
				if(shiftL = '1' and shiftR = '0') then 
					for I in 0 to 7 loop
						if (I = 0) then
							deslocado(I) <= entrada(I) and (not shiftL);
						else 
							deslocado(I) <= (entrada(I) and (not shiftL)) or (entrada(I-1) and (shiftL));
						end if;
					end loop;
				elsif(shiftL = '0' and shiftR = '1') then
					for I in 0 to 7 loop
						if (I = 7) then
							deslocado(I) <= entrada(I) and (not shiftR);
						else 
							deslocado(I) <= (entrada(I) and (not shiftR)) or (entrada(I+1) and (shiftR));
						end if;
					end loop;
				else
					deslocado <= entrada;
				end if;
		end process;
end deslocador;