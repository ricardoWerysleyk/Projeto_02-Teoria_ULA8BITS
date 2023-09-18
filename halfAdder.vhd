library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity halfAdder is
    Port ( A, B : in STD_LOGIC;
           Sum, CarryOut : out STD_LOGIC);
end HalfAdder;

architecture main of halfAdder is
begin
    Sum <= A XOR B;
    CarryOut <= A AND B;
end main;