library ieee;
use ieee.std_logic_1164.all;

entity portXOR is
    port (a,b: in  std_logic_vector (7 downto 0);
            w: out std_logic_vector (7 downto 0));
end portXOR;

architecture log of portXOR is


begin

w(7) <= a(7) XOR b(7);
w(6) <= a(6) XOR b(6);
w(5) <= a(5) XOR b(5);
w(4) <= a(4) XOR b(4);
w(3) <= a(3) XOR b(3);
w(2) <= a(2) XOR b(2);
w(1) <= a(1) XOR b(1);
w(0) <= a(0) XOR b(0);
  
end log;