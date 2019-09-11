library ieee;
use ieee.std_logic_1164.all;

entity inversor is 
	port(
		B : in std_logic_vector(3 downto 0);
		cout : out std_logic_vector(3 downto 0)
	);
end inversor;

architecture inverter of inversor is
	begin 
		cout <= not B;
end inverter;