library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity four_bit_adder is
port(
	a     : in std_logic_vector(3 downto 0);
	b     : in std_logic_vector(3 downto 0);
	c_in  : in std_logic := '0';
	sum   : out std_logic_vector(3 downto 0);
	c_out : out std_logic
);
end four_bit_adder;

architecture arch of four_bit_adder is

signal c0, c1, c2: std_logic;

component full_adder  
port(
	a     : in std_logic;
	b     : in std_logic;
	c_in  : in std_logic;
	sum   : out std_logic;
	c_out : out std_logic
);
end component;

begin

fa1: full_adder port map (a => a(0), b => b(0), c_in => c_in, sum => sum(0), c_out => c0);
fa2: full_adder port map (a => a(1), b => b(1), c_in => c0  , sum => sum(1), c_out => c1);
fa3: full_adder port map (a => a(2), b => b(2), c_in => c1  , sum => sum(2), c_out => c2);
fa4: full_adder port map (a => a(3), b => b(3), c_in => c2  , sum => sum(3), c_out => c_out);

end arch;