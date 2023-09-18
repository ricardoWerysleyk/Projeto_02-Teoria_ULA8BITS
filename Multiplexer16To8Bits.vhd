library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer16To8Bits is
    Port (
        I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15 : in STD_LOGIC_VECTOR(7 downto 0);
        S : in STD_LOGIC_VECTOR(3 downto 0);
        O : out STD_LOGIC_VECTOR(7 downto 0)
    );
end Multiplexer16To8Bits;

architecture Main of Multiplexer16To8Bits is

	signal sMux, iMux0, iMux1, iMux2, iMux3, iMux4, iMux5, iMux6, iMux7: STD_LOGIC_VECTOR(15 downto 0);

	component Multiplexer16To1 is
		Port (
        I : in STD_LOGIC_VECTOR(15 downto 0);
        S : in STD_LOGIC_VECTOR(3 downto 0);
        O : out STD_LOGIC
		);
	end component;

begin
	iMux0(0) <= I0(0);
	iMux1(0) <= I0(1);
	iMux2(0) <= I0(2);
	iMux3(0) <= I0(3);
	iMux4(0) <= I0(4);
	iMux5(0) <= I0(5);
	iMux6(0) <= I0(6);
	iMux7(0) <= I0(7);
	
	iMux0(1) <= I1(0);
	iMux1(1) <= I1(1);
	iMux2(1) <= I1(2);
	iMux3(1) <= I1(3);
	iMux4(1) <= I1(4);
	iMux5(1) <= I1(5);
	iMux6(1) <= I1(6);
	iMux7(1) <= I1(7);
	
	iMux0(2) <= I2(0);
	iMux1(2) <= I2(1);
	iMux2(2) <= I2(2);
	iMux3(2) <= I2(3);
	iMux4(2) <= I2(4);
	iMux5(2) <= I2(5);
	iMux6(2) <= I2(6);
	iMux7(2) <= I2(7);
	
	iMux0(3) <= I3(0);
	iMux1(3) <= I3(1);
	iMux2(3) <= I3(2);
	iMux3(3) <= I3(3);
	iMux4(3) <= I3(4);
	iMux5(3) <= I3(5);
	iMux6(3) <= I3(6);
	iMux7(3) <= I3(7);
	
	iMux0(4) <= I4(0);
	iMux1(4) <= I4(1);
	iMux2(4) <= I4(2);
	iMux3(4) <= I4(3);
	iMux4(4) <= I4(4);
	iMux5(4) <= I4(5);
	iMux6(4) <= I4(6);
	iMux7(4) <= I4(7);
	
	iMux0(5) <= I5(0);
	iMux1(5) <= I5(1);
	iMux2(5) <= I5(2);
	iMux3(5) <= I5(3);
	iMux4(5) <= I5(4);
	iMux5(5) <= I5(5);
	iMux6(5) <= I5(6);
	iMux7(5) <= I5(7);
	
	iMux0(6) <= I6(0);
	iMux1(6) <= I6(1);
	iMux2(6) <= I6(2);
	iMux3(6) <= I6(3);
	iMux4(6) <= I6(4);
	iMux5(6) <= I6(5);
	iMux6(6) <= I6(6);
	iMux7(6) <= I6(7);
	
	iMux0(7) <= I7(0);
	iMux1(7) <= I7(1);
	iMux2(7) <= I7(2);
	iMux3(7) <= I7(3);
	iMux4(7) <= I7(4);
	iMux5(7) <= I7(5);
	iMux6(7) <= I7(6);
	iMux7(7) <= I7(7);
	
	iMux0(8) <= I8(0);
	iMux1(8) <= I8(1);
	iMux2(8) <= I8(2);
	iMux3(8) <= I8(3);
	iMux4(8) <= I8(4);
	iMux5(8) <= I8(5);
	iMux6(8) <= I8(6);
	iMux7(8) <= I8(7);
	
	iMux0(9) <= I9(0);
	iMux1(9) <= I9(1);
	iMux2(9) <= I9(2);
	iMux3(9) <= I9(3);
	iMux4(9) <= I9(4);
	iMux5(9) <= I9(5);
	iMux6(9) <= I9(6);
	iMux7(9) <= I9(7);

	iMux0(10) <= I10(0);
	iMux1(10) <= I10(1);
	iMux2(10) <= I10(2);
	iMux3(10) <= I10(3);
	iMux4(10) <= I10(4);
	iMux5(10) <= I10(5);
	iMux6(10) <= I10(6);
	iMux7(10) <= I10(7);
	
	iMux0(11) <= I11(0);
	iMux1(11) <= I11(1);
	iMux2(11) <= I11(2);
	iMux3(11) <= I11(3);
	iMux4(11) <= I11(4);
	iMux5(11) <= I11(5);
	iMux6(11) <= I11(6);
	iMux7(11) <= I11(7);

	iMux0(12) <= I12(0);
	iMux1(12) <= I12(1);
	iMux2(12) <= I12(2);
	iMux3(12) <= I12(3);
	iMux4(12) <= I12(4);
	iMux5(12) <= I12(5);
	iMux6(12) <= I12(6);
	iMux7(12) <= I12(7);

	iMux0(13) <= I13(0);
	iMux1(13) <= I13(1);
	iMux2(13) <= I13(2);
	iMux3(13) <= I13(3);
	iMux4(13) <= I13(4);
	iMux5(13) <= I13(5);
	iMux6(13) <= I13(6);
	iMux7(13) <= I13(7);
	
	iMux0(14) <= I14(0);
	iMux1(14) <= I14(1);
	iMux2(14) <= I14(2);
	iMux3(14) <= I14(3);
	iMux4(14) <= I14(4);
	iMux5(14) <= I14(5);
	iMux6(14) <= I14(6);
	iMux7(14) <= I14(7);
	
	iMux0(15) <= I15(0);
	iMux1(15) <= I15(1);
	iMux2(15) <= I15(2);
	iMux3(15) <= I15(3);
	iMux4(15) <= I15(4);
	iMux5(15) <= I15(5);
	iMux6(15) <= I15(6);
	iMux7(15) <= I15(7);

	MUX0 : Multiplexer16To1 port map (iMux0, S, O(0));
	MUX1 : Multiplexer16To1 port map (iMux1, S, O(1));
	MUX2 : Multiplexer16To1 port map (iMux2, S, O(2));
	MUX3 : Multiplexer16To1 port map (iMux3, S, O(3));
	MUX4 : Multiplexer16To1 port map (iMux4, S, O(4));
	MUX5 : Multiplexer16To1 port map (iMux5, S, O(5));
	MUX6 : Multiplexer16To1 port map (iMux6, S, O(6));
	MUX7 : Multiplexer16To1 port map (iMux7, S, O(7));
end Main;
