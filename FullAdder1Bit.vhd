library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder1Bit is
   Port ( A, B, Cin : in STD_LOGIC;
           Sum, Cout : out STD_LOGIC);
end FullAdder1Bit;

architecture Main of FullAdder1Bit is
   signal S1, C1, C2 : STD_LOGIC;
	
	component halfAdder is
		Port ( A, B : in STD_LOGIC;
           Sum, CarryOut : out STD_LOGIC);
	end component;
		
begin
	HalfAdder1: halfAdder port map(A, B, S1, C1);
	HalfAdder2: halfAdder port map(S1, Cin, Sum, C2);
  
	Cout <= C1 OR C2;
end Main;