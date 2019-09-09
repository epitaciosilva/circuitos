library ieee;
use ieee.std_logic_1164.all;
entity exercicio801_case is
	port(
		entrada: in std_logic;
		sl1, sl2: in std_logic;
		s1,s2,s3,s4: out std_logic
	);
end exercicio801_case;
architecture demux of exercicio801_case is
	begin 
		process(entrada,sl1,sl2) is
			begin 		
				s1 <= '0';
				s2 <= '0';
				s3 <= '0';
				s4 <= '0';
				case (sl1)	is
					when '0' => 
						case (sl2) is
							when '0' => s1 <= entrada;
							when others => s2 <= entrada;
						end case;
					when '1' => 
						case (sl2) is
							when '0' => s3 <= entrada;
							when others => s4 <= entrada;
						end case;
				end case;
		end process;
end demux;

					