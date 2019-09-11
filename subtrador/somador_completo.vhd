library ieee;
use ieee.std_logic_1164.all;

entity somador_completo is
	port(
		a,b,cin : in std_logic;
		s, cout : out std_logic
	);
end somador_completo;

architecture somador of somador_completo is
	begin 
		s <= a xor b xor cin;
		cout <= ((A xor B) and cin) or (a and b);
end somador;