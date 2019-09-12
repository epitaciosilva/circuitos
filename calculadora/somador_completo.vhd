library ieee;
use ieee.std_logic_1164.all;

entity somador_completo is
	port(
		a,b : in std_logic_vector(7 downto 0);
		cin : in std_logic;
		s : out std_logic_vector(7 downto 0);
		COUT : out std_logic
	);
end somador_completo;

architecture somador of somador_completo is
	signal COUTs : std_logic_vector(7 downto 0);
	begin 
		process (A,B,CIN)
			begin
				for I in 0 to 7 loop
					if(I = 0) then 
						S(I) <= A(I) xor (B(I) xor CIN) xor CIN;
						COUTs(I) <= ((A(I) xor (B(I) xor CIN)) and CIN) or (A(I) and (B(I) xor CIN));
					else 
						S(I) <= A(I) xor (B(I) xor CIN) xor COUTs(I-1);
						COUTs(I) <= ((A(I) xor (B(I) xor CIN)) and COUTs(I-1)) or (A(I) and (B(I) xor CIN));
					end if;
					COUT <= COUTs(I);
				end loop;
		end process;
end somador;