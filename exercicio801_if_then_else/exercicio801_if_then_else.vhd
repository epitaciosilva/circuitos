library ieee;
use ieee.std_logic_1164.all;

entity exercicio801_if_then_else is
	port(
		entrada: in std_logic;
		sl1, sl2: in std_logic;
		s1,s2,s3,s4: out std_logic
	);
end exercicio801_if_then_else;

architecture demux of exercicio801_if_then_else is
	begin 
		process(entrada, sl1, sl2) is
			begin
				s1 <= '0';
				s2 <= '0';
				s3 <= '0';
				s4 <= '0';
				
				if (sl1 = '0' and sl2 = '0') then
					s1 <= entrada;
				elsif (sl1 = '0' and sl2 = '1') then 
					s2 <= entrada;
				elsif (sl1 = '1' and sl2 = '0') then 
					s3 <= entrada;
				else
					s4 <= entrada;
				end if;
		end process;
end demux;
