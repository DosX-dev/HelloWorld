library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;
entity HelloWorld is
end entity HelloWorld;
architecture behavior of HelloWorld is
begin
    write(output, string'("Hello, world!"));
end architecture behavior;
