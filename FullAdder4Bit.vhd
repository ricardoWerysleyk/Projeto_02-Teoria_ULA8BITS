library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder4Bit is
   Port ( A, B : in STD_LOGIC_VECTOR(3 downto 0);
          Cin : in STD_LOGIC;
          Sum : out STD_LOGIC_VECTOR(3 downto 0);
          Cout : out STD_LOGIC);
end FullAdder4Bit;

architecture ckt of FullAdder4Bit is
   signal Sum1, Sum2, Sum3, Sum4 : STD_LOGIC;
   signal C1, C2, C3 : STD_LOGIC;
   
   component FullAdder1Bit is
      Port ( A, B, Cin : in STD_LOGIC;
             Sum, Cout : out STD_LOGIC);
   end component;

begin
   U1: FullAdder1Bit port map(A(0), B(0), Cin, Sum1, C1);
   U2: FullAdder1Bit port map(A(1), B(1), C1, Sum2, C2);
   U3: FullAdder1Bit port map(A(2), B(2), C2, Sum3, C3);
   U4: FullAdder1Bit port map(A(3), B(3), C3, Sum4, Cout);

   Sum <= Sum4 & Sum3 & Sum2 & Sum1;

end ckt;
