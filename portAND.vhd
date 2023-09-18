library ieee;
use ieee.std_logic_1164.all;

entity portAND is
    port (a,b: in  std_logic_vector (7 downto 0);
            w: out std_logic_vector (7 downto 0));
end portAND;

architecture log of portAND is


begin

w(7) <= a(7) and b(7);
w(6) <= a(6) and b(6);
w(5) <= a(5) and b(5);
w(4) <= a(4) and b(4);
w(3) <= a(3) and b(3);
w(2) <= a(2) and b(2);
w(1) <= a(1) and b(1);
w(0) <= a(0) and b(0);
  
end log;