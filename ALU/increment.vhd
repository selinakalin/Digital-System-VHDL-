library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity increment is
    Port (
        a      : in std_logic_vector(3 downto 0);
        output : out std_logic_vector(3 downto 0);
		carry  : out std_logic
    );
end increment;

architecture arch of increment is
begin

    output <= std_logic_vector(unsigned(a) + 1); 
	 carry <= '1' when a = "1111" else '0';
	
end architecture arch;
