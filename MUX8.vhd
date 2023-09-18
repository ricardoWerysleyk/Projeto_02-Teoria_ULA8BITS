library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX8 is
    Port (
        I : in STD_LOGIC_VECTOR(7 downto 0);
        S : in STD_LOGIC_VECTOR(2 downto 0);
        O : out STD_LOGIC
    );
end MUX8;

architecture Main of MUX8 is

	signal sMux : STD_LOGIC_VECTOR(3 downto 0);
	signal selectorMux : STD_LOGIC_VECTOR(1 downto 0);

	component MUX4 is
		 Port (
			  I : in STD_LOGIC_VECTOR(3 downto 0);
			  S : in STD_LOGIC_VECTOR(1 downto 0);
			  O : out STD_LOGIC
		 );
	end component;

begin
	MUX1 : MUX4 port map (I(3 downto 0), S(1 downto 0), sMux(0));
	MUX2 : MUX4 port map (I(7 downto 4), S(1 downto 0), sMux(3));
	sMux(1) <= '0';
	sMux(2) <= '0';
	selectorMux(0) <= S(2);
	selectorMux(1) <= S(2);
	MUXoutput : MUX4 port map (sMux, selectorMux, O);
end Main;
