library ieee;
use ieee.std_logic_1164.all;

entity flip_flop_jk is
	port(
		j,k, r, clk_e, clk: in std_logic;
		saida: out std_logic);
end entity;

architecture arq of flip_flop_jk is
	signal tmp: std_logic;
	begin
		process(clk,j,k,r)
			begin
				if (clk'event and clk = '1') then
					if r = '1' then
						tmp <= '0';
					elsif clk_e = '1' then
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