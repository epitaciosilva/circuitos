library ieee;
use ieee.std_logic_1164.all;

entity somador is 
	port(
		numeroA, numeroB: IN std_logic_vector(3 downto 0);
		query : inout std_logic_vector(3 downto 0);
		resultado : out std_logic_vector(4 downto 0)
	);
end somador;

architecture soma of somador is 
begin 
	resultado(0) <= numeroA(0) xor numeroB(0);
	query(0) <= numeroA(0) and numeroB(0);
	
	resultado(1) <= (numeroA(1) xor numeroB(1) xor query(0));
	query(1) <= numeroA(1) and numeroB(1);
	
	resultado(2) <= (numeroA(2) xor numeroB(2) xor query(1));
	query(2) <= numeroA(2) and numeroB(2);
	
	resultado(3) <= (numeroA(3) xor numeroB(3) xor query(2));
	query(3) <= numeroA(3) and numeroB(3);

	resultado(4) <= query(2) xor query(3);
end soma;

