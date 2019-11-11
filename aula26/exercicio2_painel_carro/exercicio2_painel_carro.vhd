library ieee;
use ieee.std_logic_1164.all;

entity exercicio2_painel_carro is
	port(
		clk, bt: in std_logic;
		km_parcial, km_restante, consumo: out std_logic := '0';
		km_total: out std_logic := '1'
	);
end entity;

architecture arq_painel of exercicio2_painel_carro is
	constant e1: std_logic_vector(1 downto 0) := "01";
	constant e2: std_logic_vector(1 downto 0) := "10";
	constant e3: std_logic_vector(1 downto 0) := "11";
	constant e4: std_logic_vector(1 downto 0) := "00";
	signal s: std_logic_vector(1 downto 0) := "01";
	begin
		process (clk, bt, s)
			variable prev_bt: std_logic;
		begin
			if(clk'event and clk = '1') then
				if(bt = '1' and bt /= prev_bt) then
					case s is
						when e1 =>
							s <= e2;
							km_parcial <= '0';
							km_total <= '0';
							km_restante <= '0';
							consumo <= '1';
						when e2 =>
							s <= e3;
							km_parcial <= '0';
							km_total <= '0';
							km_restante <= '1';
							consumo <= '0';
						when e3 =>
							s <= e4;
							km_parcial <= '1';
							km_total <= '0';
							km_restante <= '0';
							consumo <= '0';
						when others =>
							s <= e1;
							km_parcial <= '0';
							km_total <= '1';
							km_restante <= '0';
							consumo <= '0';
					end case;
				end if;
				prev_bt := bt;
			end if;
		end process;
end architecture;