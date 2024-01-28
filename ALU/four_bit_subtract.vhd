library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity four_bit_subtract is
	port( a1 : in STD_LOGIC_VECTOR(3 downto 0);
			a2 :in STD_LOGIC_VECTOR(3 downto 0);
			out1:out STD_LOGIC_VECTOR(3 downto 0));
end four_bit_subtract;

architecture arch of four_bit_subtract is


component full_adder  
port(
	a     : in std_logic;
	b     : in std_logic;
	c_in  : in std_logic;
	sum   : out std_logic;
	c_out : out std_logic
);
end component;

signal w1,w2,w3,cout : STD_LOGIC; 

begin

U1 : full_adder port map(a1(0),not a2(0), '1', w1, out1(0));
U2 : full_adder port map(a1(1),not a2(1), w1, w2, out1(1));
U3 : full_adder port map(a1(2),not a2(2), w2, w3, out1(2));
U4 : full_adder port map(a1(3),not a2(3), w3, cout, out1(3));

end arch;
		