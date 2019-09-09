library ieee;
use ieee.std_logic_1164.all;
entity questao603_estrutural is
    port(a, b, c, d: IN std_logic;
         s: OUT std_logic);
end entity;
ARCHITECTURE estrutural OF questao603_estrutural is
	COMPONENT circ_and
		PORT(
			a,b,c: in std_logic;
			s: out std_logic
		);
	END COMPONENT;
	COMPONENT circ_or
		PORT(
			a,b,c,d: in std_logic;
			s: out std_logic
		);
	END COMPONENT;
	COMPONENT circ_not
		PORT(
			a: in std_logic;
			s: out std_logic
		);
	END COMPONENT;
SIGNAL aux: std_logic_vector(3 downto 0);
	BEGIN
		s1: circ_not port map (b, aux(0));
		s2: circ_not port map (c, aux(1));
		s3: circ_not port map (d, aux(2));
		s4: circ_and port map (b, aux(1), aux(2), aux(3));
		sf: circ_or port map (a, aux(0), aux(1), aux(3), s);
END ARCHITECTURE;