library ieee;
use ieee.std_logic_1164.all;

entity latch_RS is 
	port(
		R,S : in std_logic;
		q1,q2 : out std_logic
	);
end latch_RS;

architecture arq of latch_RS is
	begin 
	process(R,S)
		begin
			if (R = '1' and S = '0') then
				q1 <= '1';
				q2 <= '0';
			elsif (R = '0' and S = '1') then
				q1 <= '0';
				q2 <= '1';
			elsif (R = '0' and S = '0') then
				q1 <= '1';
				q2 <= '0';
			end if;
		end process;
end architecture;