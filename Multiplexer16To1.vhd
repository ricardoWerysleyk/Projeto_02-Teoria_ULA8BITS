library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer16To1 is
    Port (
        I : in STD_LOGIC_VECTOR(15 downto 0);
        S : in STD_LOGIC_VECTOR(3 downto 0);
        O : out STD_LOGIC
    );
end Multiplexer16To1;

architecture Main of Multiplexer16To1 is

	signal sMux : STD_LOGIC_VECTOR(7 downto 0);
	signal selectorMux : STD_LOGIC_VECTOR(2 downto 0);

	component MUX8 is
		Port (
        I : in STD_LOGIC_VECTOR(7 downto 0);
        S : in STD_LOGIC_VECTOR(2 downto 0);
        O : out STD_LOGIC
		);
	end component;

begin
	MUX1 : MUX8 port map (I(7 downto 0), S(2 downto 0), sMux(0));
	MUX2 : MUX8 port map (I(15 downto 8), S(2 downto 0), sMux(7));
	sMux(1) <= '0';
	sMux(2) <= '0';
	sMux(3) <= '0';
	sMux(4) <= '0';
	sMux(5) <= '0';
	sMux(6) <= '0';
	selectorMux(0) <= S(3);
	selectorMux(1) <= S(3);
	selectorMux(2) <= S(3);
	MUXoutput : MUX8 port map (sMux, selectorMux, O);
end Main;
