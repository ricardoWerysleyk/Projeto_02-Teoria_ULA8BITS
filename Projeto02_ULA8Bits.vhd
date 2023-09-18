library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Projeto02_ULA8Bits is
		Port (
		  A, B : in STD_LOGIC_VECTOR(7 downto 0);
		  KEY : in STD_LOGIC_VECTOR(3 downto 0);
		  HEX0,HEX1,HEX2: out std_logic_vector (6 downto 0)
		);
end Projeto02_ULA8Bits;

architecture ckt of Projeto02_ULA8Bits is

	signal s : STD_LOGIC_VECTOR(7 downto 0);
	signal Co : STD_LOGIC_VECTOR(4 downto 0);
	
	component ULA8Bits is
		Port (
		  A, B : in STD_LOGIC_VECTOR(7 downto 0);
		  KEY : in STD_LOGIC_VECTOR(3 downto 0);
		  S : out STD_LOGIC_VECTOR(7 downto 0);
		  Co : out STD_LOGIC_VECTOR(4 downto 0)
		);
	end component;
	
	component bbcd is
		port(SW: in std_logic_vector (7 downto 0);
			  HEX0,HEX1,HEX2: out std_logic_vector (6 downto 0));
	end component;

begin
    U1: ULA8Bits	port map (A, B, KEY, s, Co);
	 U2: bbcd port map (s, HEX0, HEX1, HEX2);
end ckt;
