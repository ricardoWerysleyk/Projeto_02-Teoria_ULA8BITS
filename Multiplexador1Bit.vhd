library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexador1Bit is
   Port ( I0, I1 : in STD_LOGIC;
          S : in STD_LOGIC;
          O : out STD_LOGIC);
end Multiplexador1Bit;

architecture ckt of Multiplexador1Bit is

begin
   O <= (I0 AND NOT(S)) OR (I1 AND S);
end ckt;
