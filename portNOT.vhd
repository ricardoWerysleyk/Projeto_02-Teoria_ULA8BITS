library ieee;
use ieee.std_logic_1164.all;

entity portNOT is
    port (a: in  std_logic_vector (7 downto 0);
            w: out std_logic_vector (7 downto 0));
end portNOT;

architecture log of portNOT is


begin

w(7) <= not a(7);
w(6) <= not a(6);
w(5) <= not a(5);
w(4) <= not a(4);
w(3) <= not a(3);
w(2) <= not a(2);
w(1) <= not a(1);
w(0) <= not a(0);  
end log;