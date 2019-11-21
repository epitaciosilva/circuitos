library ieee;
use ieee.std_logic_1164.all;

entity comparador_3_numeros is
	port(
		num1, num2, num3 : in std_logic_vector(7 downto 0);
		maior : out std_logic_vector(7 downto 0)
	);
end comparador_3_numeros;

architecture comparar of comparador_3_numeros is 
	begin 
		process(num1,num2,num3) 
			begin 
				if(num1 >= num2 and num1 >= num3) then 
					maior <= num1;
				elsif(num2 >= num1 and num2 >= num3) then
					maior <= num2;
				else
					maior <= num3;
				end if;
		end process;
end comparar;	
				