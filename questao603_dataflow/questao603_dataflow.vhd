library ieee;
use ieee.std_logic_1164.all;

ENTITY questao603_dataflow is
    PORT(
			a, b, c, d: IN std_logic;
         s: OUT std_logic
	);
END ENTITY;

ARCHITECTURE dataflow of questao603_dataflow is
	BEGIN
		s <= a OR (NOT b) OR (NOT c) OR (b AND (NOT c) and (NOT d));  

END ARCHITECTURE;