library ieee;
use ieee.std_logic_1164.all;

entity latchrs is
	port(r,s: in std_logic;
		  q, qb: inout std_logic);
end entity;

architecture arq of latchrs is
	
	begin
		q <= r nor qb;
		qb <= s nor q;
end architecture;