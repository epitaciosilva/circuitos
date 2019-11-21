library ieee;
use ieee.std_logic_1164.all;

entity flipflop is
	port(
		j,k, clk: in std_logic;
		q, qba : out std_logic);
end flipflop;

architecture arq of flipflop is
	begin
		process(clk)
			begin
				if rising_edge(clk) then
					if reset='1' then
						tmp <= '0';
					elsif clock_enable = '1' then
						if(j = '0' and k = '0') then
							tmp <= tmp;
						elsif(j = '0' and k = '1') then
							tmp <= '0';
						elsif(j = '1' and k = '0') then
							tmp <= '1';
						end if;
					end if;
				end if;
		end process;
	saida <= tmp;
end architecture;