library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity decrement is
    Port (
        a      : in std_logic_vector(3 downto 0);
        output : out std_logic_vector(3 downto 0)
    );
end decrement;

architecture arch of decrement is
begin

    output <= std_logic_vector(unsigned(a) - 1); 
	
end architecture arch;
