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
	constant A: std_logic_vector(1 downto 0) := "01";
	constant B: std_logic_vector(1 downto 0) := "10";
	constant C: std_logic_vector(1 downto 0) := "11";
	constant D: std_logic_vector(1 downto 0) := "00";
	signal s: std_logic_vector(1 downto 0) := "01";
	begin
		process (clk, bt, s)
		variable prev_bt: std_logic; -- utilizada para verificar se o botao sofreu alguma alteracao
		begin
			if(clk'event and clk = '1') then
				if(bt = '1' and prev_bt /= bt) then
					case s is
						when A =>
							s <= B;
							km_parcial <= '0';
							km_total <= '0';
							km_restante <= '0';
							consumo <= '1';
						when B =>
							s <= C;
							km_parcial <= '0';
							km_total <= '0';
							km_restante <= '1';
							consumo <= '0';
						when C =>
							s <= D;
							km_parcial <= '1';
							km_total <= '0';
							km_restante <= '0';
							consumo <= '0';
						when others =>
							s <= A;
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