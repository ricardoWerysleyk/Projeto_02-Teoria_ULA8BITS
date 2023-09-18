library ieee;
use ieee.std_logic_1164.all;

entity SWP is
    port (a: in  std_logic_vector(0 to 7);
            x: out std_logic_vector(0 to 7));
end SWP;

architecture log of SWP is

begin
  x(4) <= a(0);
  x(5) <= a(1);
  x(6) <= a(2);
  x(7) <= a(3);
  x(0) <= a(4);
  x(1) <= a(5);
  x(2) <= a(6);
  x(3) <= a(7);
end log;
