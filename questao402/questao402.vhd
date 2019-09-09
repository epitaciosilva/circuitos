library ieee;
use ieee.std_logic_1164.all;

ENTITY questao402 IS
	PORT(
		-- Entradas
		a: IN bit_vector(0 TO 3);
		b: IN bit_vector(3 DOWNTO 0);
		
		-- Saida
		c: OUT bit_vector(7 DOWNTO 0)
	);
end ENTITY;

ARCHITECTURE arq OF questao402 IS
	BEGIN
		c(7) <= a(3);
		c(6) <= a(2);
		c(5) <= a(1);
		c(4) <= a(0);
		c(3) <= b(3);
		c(2) <= b(2);
		c(1) <= b(1);
		c(0) <= b(0);
END ARCHITECTURE;	