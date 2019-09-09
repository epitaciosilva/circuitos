library ieee;
use ieee.std_logic_1164.all;

entity exercicio801_with_select is
	port(
		entrada: in std_logic;
		sl1,sl2: in std_logic;
		s1,s2,s3,s4: out std_logic
	);
end exercicio801_with_select;

architecture demux of exercicio801_with_select is
	begin 
		
		with (sl1 = '0' and sl2 = '0') select 
			s1 <= entrada when true,
					'0' when false;
			
		with (sl1 = '0' and sl2 = '1') select 
			s2 <= entrada when true,
					'0' when false;
			
		with (sl1 = '1' and sl2 = '0') select 
			s3 <= entrada when true,
					'0' when false;
			
		with (sl1 = '1' and sl2 = '1') select 
			s4 <= entrada when true,
					'0' when false;

end demux;