library ieee;
use ieee.std_logic_1164.all;

entity jogadores is
	port(
		j1,j2,j3,j4 : in std_logic;
		vd, vm: out std_logic
	);
end jogadores;

architecture verificador of jogadores is 
 begin
	vd <= (j4 and j3) or (j2 and j1) or (j3 and j1) or (j3  and j2) or (j4 and j1) or (j4 and j2);
	vm <= ((not j2) and (not j1)) or ((not j4) and (not j3) ) or
	((not j4) and (not j2)) or (j4 and (not j3) and (not j2)) or ((not j4) and j2 and j1) or (j4 and (not j3) and j2 and (not j1));
end verificador;
		