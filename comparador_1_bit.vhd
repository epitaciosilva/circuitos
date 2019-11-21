library ieee;
use ieee.std_logic_1164.all;

entity comparador_1_bit is
	port(
		A0, B0 : in std_logic;
		X, Y, Z : out std_logic);
end comparador_1_bit;

architecture comparar of comparador_1_bit is
	begin 
		X <= A0 xor B0;
		Y <= A0 and (not B0);
		Z <= (not A0) and B0;
end comparar;