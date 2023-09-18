library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX4 is
    Port (
        I : in STD_LOGIC_VECTOR(3 downto 0);
        S : in STD_LOGIC_VECTOR(1 downto 0);
        O : out STD_LOGIC
    );
end MUX4;

architecture Main of MUX4 is
begin
    O <= (I(0) AND NOT(S(1)) AND NOT(S(0))) OR (I(1) AND NOT(S(1)) AND S(0)) OR (I(2) AND S(1) AND NOT(S(0))) OR (I(3) AND S(1) AND S(0));
end Main;
