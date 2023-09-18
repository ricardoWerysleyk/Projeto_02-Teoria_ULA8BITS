library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SeletorAritmetico is
   Port ( B, S1, S0 : in STD_LOGIC;
          S : out STD_LOGIC);
end SeletorAritmetico;

architecture ckt of SeletorAritmetico is

begin

	S <= (B AND NOT(S1) AND NOT(S0)) OR (NOT(B) AND NOT(S1) AND S0) OR ((B OR NOT(B)) AND S1 AND NOT(S0));

end ckt;
