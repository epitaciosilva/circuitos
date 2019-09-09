library ieee;
use ieee.std_logic_1164.all;
entity exercicio802 is
  port(
        b1,b2,b3,b4,b5,b6,b7,b8: in std_logic;
        saidasCod: inout std_logic_vector(2 downto 0);
        cafe: out character
  );
end exercicio802;

architecture codificador of exercicio802 is
    begin
        process(saidasCod,b1,b2,b3,b4,b5,b6,b7,b8)
            begin
                if(b1 = '1') then
                    saidasCod <= "001";
                elsif(b2 = '1') then
                    saidasCod <= "010";
                elsif(b3 = '1') then
                    saidasCod <= "011";
                elsif(b4 = '1') then
                    saidasCod <= "100";
                elsif(b5 = '1') then
                    saidasCod <= "101";
                elsif(b6 = '1') then
                    saidasCod <= "110";
                elsif(b7 = '1') then
                    saidasCod <= "111";
                else
                    saidasCod <= "000";
                end if;
        end process;
end codificador;
