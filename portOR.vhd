library ieee;
use ieee.std_logic_1164.all;

entity portOR is
    port (a,b: in  std_logic_vector (7 downto 0);
            w: out std_logic_vector (7 downto 0));
end portOR;

architecture log of portOR is


begin

w(7) <= a(7) OR b(7);
w(6) <= a(6) OR b(6);
w(5) <= a(5) OR b(5);
w(4) <= a(4) OR b(4);
w(3) <= a(3) OR b(3);
w(2) <= a(2) OR b(2);
w(1) <= a(1) OR b(1);
w(0) <= a(0) OR b(0);
  
end log;