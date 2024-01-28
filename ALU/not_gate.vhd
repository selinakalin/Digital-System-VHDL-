library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity not_a is
    Port (
        a      : in std_logic_vector (3 downto 0);
        output : out std_logic_vector (3 downto 0)
    );
end not_a;

architecture arch of  not_a is
begin

    output <= not a; 
	
end architecture arch;
