library ieee;
use ieee.std_logic_1164.all;

entity exercicio1_fsm2 is
	port(
		clk, a : in std_logic;
		x,y : out std_logic
	);
end entity;

architecture arq_fsm2 of exercicio1_fsm2 is
	constant e1: std_logic_vector(1 downto 0) := "00";
	constant e2: std_logic_vector(1 downto 0) := "01";
	constant e3: std_logic_vector(1 downto 0) := "10";
	constant e4: std_logic_vector(1 downto 0) := "11";	
	signal s: std_logic_vector(1 downto 0) := "00";
	
	begin 
		process(a, s)
			begin
				if(clk'event and clk='1') then
					case s is
						when e1 =>
							s <= e2;
							x <= '0';
							y <= '0';
						when e2 =>
							s <= e3;
							x <= '0';
							y <= '1';
						when e3 =>
							if(a = '1') then -- verificando se a esta barrad,entao segue para e4
								s <= e2;
								x <= '1';
								y <= '0';
							else
								s <= e4;
								x <= '1';
								y <= '1';
							end if;
						when others =>
							if(a = '1') then -- verificando a barrado
								s <= e4;
								x <= '1';
								y <= '1';
							else
								s <= e1;
								x <= '0';
								y <= '0';
							end if;
					end case;
				end if;	
		end process;
end architecture;