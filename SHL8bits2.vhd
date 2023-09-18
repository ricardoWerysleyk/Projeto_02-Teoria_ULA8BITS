library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SHL8bits2 is
   Port ( A : in STD_LOGIC_VECTOR(7 downto 0);
          B : in STD_LOGIC;
			 S : out STD_LOGIC_VECTOR(7 downto 0));
end SHL8bits2;

architecture ckt of SHL8bits2 is

	signal S0 : STD_LOGIC_VECTOR(7 downto 0);
	
	component SHL8bits1 is
		Port ( A : in STD_LOGIC_VECTOR(7 downto 0);
          B : in STD_LOGIC;
			 S : out STD_LOGIC_VECTOR(7 downto 0));
	end component;

begin
	SHL00: SHL8bits1 port map (A, B, S0);
	
	SHL10: SHL8bits1 port map (S0, B, S);
end ckt;
