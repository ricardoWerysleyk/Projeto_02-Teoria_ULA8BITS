library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SHL8bitsBarrel is
   Port ( A : in STD_LOGIC_VECTOR(7 downto 0);
          B : in STD_LOGIC_VECTOR(2 downto 0);
			 S : out STD_LOGIC_VECTOR(7 downto 0));
end SHL8bitsBarrel;

architecture ckt of SHL8bitsBarrel is

	signal S0 : STD_LOGIC_VECTOR(7 downto 0);
	signal S1 : STD_LOGIC_VECTOR(7 downto 0);
	
	component SHL8bits1 is
		Port ( A : in STD_LOGIC_VECTOR(7 downto 0);
          B : in STD_LOGIC;
			 S : out STD_LOGIC_VECTOR(7 downto 0));
	end component;
	
	component SHL8bits2 is
		Port ( A : in STD_LOGIC_VECTOR(7 downto 0);
          B : in STD_LOGIC;
			 S : out STD_LOGIC_VECTOR(7 downto 0));
	end component;
	
	component SHL8bits4 is
		Port ( A : in STD_LOGIC_VECTOR(7 downto 0);
          B : in STD_LOGIC;
			 S : out STD_LOGIC_VECTOR(7 downto 0));
	end component;

begin
	SHL1: SHL8bits1 port map (A, B(0), S0);	
	SHL2: SHL8bits2 port map (S0, B(1), S1);	
	SHL4: SHL8bits4 port map (S1, B(2), S);
end ckt;
