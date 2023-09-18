library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ExtensorAtitmetico is
   Port ( A, B : in STD_LOGIC_VECTOR(7 downto 0);
          Ci1 : in STD_LOGIC;
			 Ci0 : in STD_LOGIC;
          Sum : out STD_LOGIC_VECTOR(7 downto 0);
          Cout : out STD_LOGIC);
end ExtensorAtitmetico;

architecture ckt of ExtensorAtitmetico is
   signal S: STD_LOGIC_VECTOR(7 downto 0);

   component FullAdder8Bit is
      Port ( A, B : in STD_LOGIC_VECTOR(7 downto 0);
          Cin : in STD_LOGIC;
          Sum : out STD_LOGIC_VECTOR(7 downto 0);
          Cout : out STD_LOGIC);
   end component;
	
	component SeletorAritmetico is
		Port ( B, S1, S0 : in STD_LOGIC;
				 S : out STD_LOGIC);
	end component;

begin
   U1: FullAdder8Bit port map (A(7 downto 0), S(7 downto 0), Ci0, Sum, Cout);
	Selector0 : SeletorAritmetico port map (B(0), Ci1, Ci0, S(0));
	Selector1 : SeletorAritmetico port map (B(1), Ci1, Ci0, S(1));
	Selector2 : SeletorAritmetico port map (B(2), Ci1, Ci0, S(2));
	Selector3 : SeletorAritmetico port map (B(3), Ci1, Ci0, S(3));
	Selector4 : SeletorAritmetico port map (B(4), Ci1, Ci0, S(4));
	Selector5 : SeletorAritmetico port map (B(5), Ci1, Ci0, S(5));
	Selector6 : SeletorAritmetico port map (B(6), Ci1, Ci0, S(6));
	Selector7 : SeletorAritmetico port map (B(7), Ci1, Ci0, S(7));
end ckt;
