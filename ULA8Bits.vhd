library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ULA8Bits is
		Port (
		  A, B : in STD_LOGIC_VECTOR(7 downto 0);
		  KEY : in STD_LOGIC_VECTOR(3 downto 0);
		  S : out STD_LOGIC_VECTOR(7 downto 0);
		  Co : out STD_LOGIC_VECTOR(4 downto 0)
		);
end ULA8Bits;

architecture ckt of ULA8Bits is

	signal I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15 : STD_LOGIC_VECTOR(7 downto 0);

	component ExtensorAtitmetico is
		Port ( A, B : in STD_LOGIC_VECTOR(7 downto 0);
				 Ci1 : in STD_LOGIC;
				 Ci0 : in STD_LOGIC;
				 Sum : out STD_LOGIC_VECTOR(7 downto 0);
				 Cout : out STD_LOGIC
				 );
	end component;
	
	component Multiplicador is
		Port ( A : in STD_LOGIC_VECTOR(7 downto 0);
				 B : in STD_LOGIC_VECTOR(7 downto 0);
				 S : out STD_LOGIC_VECTOR(7 downto 0));
	end component;
	
	component SHL8bitsBarrel is
		Port ( A : in STD_LOGIC_VECTOR(7 downto 0);
				 B : in STD_LOGIC_VECTOR(2 downto 0);
				 S : out STD_LOGIC_VECTOR(7 downto 0));
	end component;
	
	component SHR8bitsBarrel is
		Port ( A : in STD_LOGIC_VECTOR(7 downto 0);
				 B : in STD_LOGIC_VECTOR(2 downto 0);
				 S : out STD_LOGIC_VECTOR(7 downto 0));
	end component;
	
	component SWP is
		 port (a: in  std_logic_vector(0 to 7);
					x: out std_logic_vector(0 to 7));
	end component;
	
	component SWA is
		 port (a: in  std_logic_vector(0 to 7);
					x: out std_logic_vector(0 to 7));
	end component;
	
	component portAND is
		 port (a,b: in  std_logic_vector (7 downto 0);
					w: out std_logic_vector (7 downto 0));
	end component;
	
	component portOR is
		 port (a,b: in  std_logic_vector (7 downto 0);
					w: out std_logic_vector (7 downto 0));
	end component;
	
	component portXOR is
		 port (a,b: in  std_logic_vector (7 downto 0);
					w: out std_logic_vector (7 downto 0));
	end component;
	
	component portNOT is
		 port (a: in  std_logic_vector (7 downto 0);
					w: out std_logic_vector (7 downto 0));
	end component;
	
	component Multiplexer16To8Bits is
		 Port (
			  I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15 : in STD_LOGIC_VECTOR(7 downto 0);
			  S : in STD_LOGIC_VECTOR(3 downto 0);
			  O : out STD_LOGIC_VECTOR(7 downto 0)
		 );
	end component;

begin
	U1: ExtensorAtitmetico	port map (A,B,KEY(1),KEY(0),I0,Co(0));
	U2: ExtensorAtitmetico	port map (A,B,KEY(1),KEY(0),I1,Co(1));
	U3: ExtensorAtitmetico	port map (A,B,KEY(1),KEY(0),I2,Co(2));
	U4: ExtensorAtitmetico	port map (A,B,KEY(1),KEY(0),I3,Co(3));
	
	U5: Multiplicador	port map (A,B,I4);
	U6: SHL8bitsBarrel	port map (A,B(2 downto 0),I5);
	U7: SHR8bitsBarrel	port map (A,B(2 downto 0),I6);
	U8: SWP	port map (A,I7);
	U9: SWA	port map (A,I8);
	U10: portAND	port map (A,B,I9);
	U11: portOR	port map (A,B,I10);
	U12: portXOR	port map (A,B,I11);
	U13: portNOT	port map (A,I12);
	
	I13 <= '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0';
	I14 <= '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0';
	I15 <= '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0';
	
   MUX8Bits16: Multiplexer16To8Bits	port map (I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15, KEY, S);
end ckt;
