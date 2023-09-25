library ieee;
use ieee.std_logic_1164.all;

entity seg7 is
	port(X: in std_logic_vector (3 downto 0);
		  H: out std_logic_vector (6 downto 0));
end seg7;

architecture ckt of seg7 is

signal a, b, c, d: std_logic;

begin

a<=X(3);
b<=X(2);
c<=X(1);
d<=X(0);

H(6) <= not(a or (not(b) and c) or (c and not(d)) or (b and not(c)));
H(5) <= not(a or (not(c) and not(d)) or (b and not(c)) or (b and not(d)));
H(4) <= not(not(b) and not(d)) or (c and not(d));
H(3) <= not(a or (not(b) and d) or (not(b) and c) or (c and not(d)) or (b and not(c) and d));
H(2) <= not(not(c) or d or b);
H(1) <= not(not(b) or (not(c) and not(d)) or (c and d));
H(0) <= not(c or a or (not(b) and not (d)) or (b and d));

end ckt;