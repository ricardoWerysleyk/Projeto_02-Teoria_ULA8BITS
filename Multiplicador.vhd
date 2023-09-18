library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplicador is
   Port ( A : in STD_LOGIC_VECTOR(7 downto 0);
          B : in STD_LOGIC_VECTOR(7 downto 0);
			 S : out STD_LOGIC_VECTOR(7 downto 0));
end Multiplicador;

architecture ckt of Multiplicador is

	signal S1, S2, S3, S4, S5, S6, S7, CO : STD_LOGIC_VECTOR(7 downto 0);
	signal SD1, SD2, SD3, SD4, SD5, SD6, SD7 : STD_LOGIC_VECTOR(7 downto 0);
	signal B0andA, B1andA, B2andA, B3andA, B4andA, B5andA, B6andA, B7andA : STD_LOGIC_VECTOR(7 downto 0);
	signal d1, d2, d3, d4, d5, d6, d7: STD_LOGIC_VECTOR(2 downto 0);
	signal CI : STD_LOGIC;
	
	component SHL8bitsBarrel is
		Port ( A : in STD_LOGIC_VECTOR(7 downto 0);
          B : in STD_LOGIC_VECTOR(2 downto 0);
			 S : out STD_LOGIC_VECTOR(7 downto 0));
	end component;
	
	component halfAdder is
		Port ( A, B : in STD_LOGIC;
           Sum, CarryOut : out STD_LOGIC);
	end component;
	
	component FullAdder8Bit is
		Port ( A, B : in STD_LOGIC_VECTOR(7 downto 0);
				 Cin : in STD_LOGIC;
				 Sum : out STD_LOGIC_VECTOR(7 downto 0);
				 Cout : out STD_LOGIC);
	end component;

begin
	
	B0andA <= (B(0) AND A(7)) & (B(0) AND A(6)) & (B(0) AND A(5)) & (B(0) AND A(4)) & (B(0) AND A(3)) & (B(0) AND A(2)) & (B(0) AND A(1)) & (B(0) AND A(0));
	B1andA <= (B(1) AND A(7)) & (B(1) AND A(6)) & (B(1) AND A(5)) & (B(1) AND A(4)) & (B(1) AND A(3)) & (B(1) AND A(2)) & (B(1) AND A(1)) & (B(1) AND A(0));
	B2andA <= (B(2) AND A(7)) & (B(2) AND A(6)) & (B(2) AND A(5)) & (B(2) AND A(4)) & (B(2) AND A(3)) & (B(2) AND A(2)) & (B(2) AND A(1)) & (B(2) AND A(0));
	B3andA <= (B(3) AND A(7)) & (B(3) AND A(6)) & (B(3) AND A(5)) & (B(3) AND A(4)) & (B(3) AND A(3)) & (B(3) AND A(2)) & (B(3) AND A(1)) & (B(3) AND A(0));
	B4andA <= (B(4) AND A(7)) & (B(4) AND A(6)) & (B(4) AND A(5)) & (B(4) AND A(4)) & (B(4) AND A(3)) & (B(4) AND A(2)) & (B(4) AND A(1)) & (B(4) AND A(0));
	B5andA <= (B(5) AND A(7)) & (B(5) AND A(6)) & (B(5) AND A(5)) & (B(5) AND A(4)) & (B(5) AND A(3)) & (B(5) AND A(2)) & (B(5) AND A(1)) & (B(5) AND A(0));
	B6andA <= (B(6) AND A(7)) & (B(6) AND A(6)) & (B(6) AND A(5)) & (B(6) AND A(4)) & (B(6) AND A(3)) & (B(6) AND A(2)) & (B(6) AND A(1)) & (B(6) AND A(0));
	B7andA <= (B(7) AND A(7)) & (B(7) AND A(6)) & (B(7) AND A(5)) & (B(7) AND A(4)) & (B(7) AND A(3)) & (B(7) AND A(2)) & (B(7) AND A(1)) & (B(7) AND A(0));
	
	d1 <= '0' & '0' & '1';
	d2 <= '0' & '1' & '0';
	d3 <= '0' & '1' & '1';
	d4 <= '1' & '0' & '0';
	d5 <= '1' & '0' & '1';
	d6 <= '1' & '1' & '0';
	d7 <= '1' & '1' & '1';
	
	CI <= '0';

	SHL1: SHL8bitsBarrel port map (B1andA, d1, SD1);
	ADD1: FullAdder8Bit port map (B0andA, SD1, CI, S1, CO(0));
	SHL2: SHL8bitsBarrel port map (B2andA, d2, SD2);
	ADD2: FullAdder8Bit port map (S1, SD2, CO(0), S2, CO(1));
	SHL3: SHL8bitsBarrel port map (B3andA, d3, SD3);
	ADD3: FullAdder8Bit port map (S2, SD3, CO(1), S3, CO(2));
	SHL4: SHL8bitsBarrel port map (B4andA, d4, SD4);
	ADD4: FullAdder8Bit port map (S3, SD4, CO(2), S4, CO(3));
	SHL5: SHL8bitsBarrel port map (B5andA, d5, SD5);
	ADD5: FullAdder8Bit port map (S4, SD5, CO(3), S5, CO(4));
	SHL6: SHL8bitsBarrel port map (B6andA, d6, SD6);
	ADD6: FullAdder8Bit port map (S5, SD6, CO(4), S6, CO(5));
	SHL7: SHL8bitsBarrel port map (B7andA, d7, SD7);
	ADD7: FullAdder8Bit port map (S6, SD7, CO(5), S7, CO(6));
	
	S <= S7;
end ckt;
