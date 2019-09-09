library ieee;
use ieee.std_logic_1164.all;

entity exercicio801_when_else is
	port(
		entrada: IN std_logic;
		sl1,sl2: IN std_logic;
		s1,s2,s3,s4: OUT std_logic
	);
end exercicio801_when_else;

architecture demux_when_else of exercicio801_when_else is
	begin 
		s1 <= entrada when sl1 = '0' and sl2 = '0' else '0';
		s2 <= entrada when sl1 = '0' and sl2 = '1' else '0';
		s3 <= entrada when sl1 = '1' and sl2 = '0' else '0';
		s4 <= entrada when sl1 = '1' and sl2 = '1' else '0';
end demux_when_else;