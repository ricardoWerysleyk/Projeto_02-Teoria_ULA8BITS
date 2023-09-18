library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SHR8bitsBarrel is
   Port ( A : in STD_LOGIC_VECTOR(7 downto 0);
          B : in STD_LOGIC_VECTOR(2 downto 0);
			 S : out STD_LOGIC_VECTOR(7 downto 0));
end SHR8bitsBarrel;

architecture ckt of SHR8bitsBarrel is

	signal S0 : STD_LOGIC_VECTOR(7 downto 0);
	signal S1 : STD_LOGIC_VECTOR(7 downto 0);
	
	component SWA is
		 port (a: in  std_logic_vector(0 to 7);
					x: out std_logic_vector(0 to 7));
	end component;
	
	component SHL8bitsBarrel is
		Port ( A : in STD_LOGIC_VECTOR(7 downto 0);
          B : in STD_LOGIC_VECTOR(2 downto 0);
			 S : out STD_LOGIC_VECTOR(7 downto 0));
	end component;

begin
	inv1: SWA port map (A, S0);
	SHL: SHL8bitsBarrel port map (S0, B, S1);	
	inv2: SWA port map (S1, S);
end ckt;
