library ieee;
use ieee.std_logic_1164.all;

entity comparador_N_bit is
	port(
		A, B : in std_logic_vector(5 downto 0);
		X, Y, Z : out std_logic
	);
end comparador_N_bit;

architecture comparar of comparador_N_bit is
	begin 
		process(A,B)
			begin
				for I in 0 to 5 loop
					X <= not(A0 xor B0);
					Y <= A0 and (not B0);
					Z <= (not A0) and B0;
					
					if (Y = '1' or Z = '1') then 
						exit;
					end if;
				end loop;
		end process;
end comparar;