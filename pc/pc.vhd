library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity pc is
	port(
			clk,bt, bt2: in std_logic;
			op : in std_logic_vector(1 downto 0);
			a, b, c : in std_logic_vector(3 downto 0);
			saida, saida1, saida2: out std_logic_vector (3 downto 0));	
end entity;

architecture control of pc is
constant f1: std_logic_vector(1 downto 0) := "00";
constant f2: std_logic_vector(1 downto 0) := "01";
constant f3: std_logic_vector(1 downto 0) := "10";

signal valor_a, valor_b, valor_c: std_logic_vector(3 downto 0);
begin 
	process(bt, op, a, b, c)
		begin 
			if(clk'event and clk='1') then
				case op is
					when f1 =>
						if(bt = '1') then
							valor_a <= a;
						end if;
					when f2 => 
						if(bt = '1') then
							valor_b <= b;
						end if;
					when f3 =>
						if(bt = '1') then
							valor_c <= c;
						end if;
					when others =>
						valor_c <= "0000";
				end case;
				if (bt2 = '1') then 
					saida <= valor_a + valor_b;
				end if;
			end if;
	end process;
	
	saida1 <= valor_a;
	saida2 <= valor_b;
	
end architecture;