library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity four_bit_and is
port(
	a : in std_logic_vector(3 downto 0);
	b : in std_logic_vector(3 downto 0);
	output : out std_logic_vector(3 downto 0)
);
end four_bit_and;
	
architecture arch of four_bit_and is
begin

output(0) <= a(0) and b(0);
output(1) <= a(1) and b(1);
output(2) <= a(2) and b(2);
output(3) <= a(3) and b(3);

end arch;