library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder8Bit is
   Port ( A, B : in STD_LOGIC_VECTOR(7 downto 0);
          Cin : in STD_LOGIC;
          Sum : out STD_LOGIC_VECTOR(7 downto 0);
          Cout : out STD_LOGIC);
end FullAdder8Bit;

architecture ckt of FullAdder8Bit is
   signal SumLow, SumHigh : STD_LOGIC_VECTOR(3 downto 0);
   signal CoutLow, CoutHigh : STD_LOGIC;

   component FullAdder4Bit is
      Port ( A, B : in STD_LOGIC_VECTOR(3 downto 0);
             Cin : in STD_LOGIC;
             Sum : out STD_LOGIC_VECTOR(3 downto 0);
             Cout : out STD_LOGIC);
   end component;

begin
   U1: FullAdder4Bit port map (A(3 downto 0), B(3 downto 0), Cin, SumLow, CoutLow);
   U2: FullAdder4Bit port map (A(7 downto 4), B(7 downto 4), CoutLow, SumHigh, CoutHigh);

   Sum <= SumHigh & SumLow;

   Cout <= CoutHigh;

end ckt;
