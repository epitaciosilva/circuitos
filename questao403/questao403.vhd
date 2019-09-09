library ieee;
use ieee.std_logic_1164.all;

ENTITY questao403 IS
	PORT(
		a: IN std_logic;
		b: IN std_logic;
		s: OUT std_logic
	);
END ENTITY;

ARCHITECTURE arq OF questao403 IS
	BEGIN 
		s <= a NAND b;
end arq;