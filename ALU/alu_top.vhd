library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity alu_top is 
port(
   clk   : in STD_LOGIC;
	a 		: in std_logic_vector (3 downto 0);
	b 		: in std_logic_vector (3 downto 0);
	s 		: in std_logic_vector (2 downto 0);
	flag    : out std_logic_vector (2 downto 0);
	seg_out : out std_logic_vector (7 downto 0);
	seg_sel : out std_logic_vector (7 downto 0)
);
end alu_top;
	
architecture arch of alu_top is

-- adder
component four_bit_adder is
port(
	a     : in std_logic_vector(3 downto 0);
	b     : in std_logic_vector(3 downto 0);
--	c_in  : in std_logic;
	sum   : out std_logic_vector(3 downto 0);
	c_out : out std_logic
);
end component;
-- subtract
component four_bit_subtract is
	port( a1 : in STD_LOGIC_VECTOR(3 downto 0);
			a2 :in STD_LOGIC_VECTOR(3 downto 0);
			out1:out STD_LOGIC_VECTOR(3 downto 0));
end component;
-- and
component four_bit_and is
port(
	a : in std_logic_vector(3 downto 0);
	b : in std_logic_vector(3 downto 0);
	output : out std_logic_vector(3 downto 0)
);
end component;
-- or
component four_bit_or is
port(
	a : in std_logic_vector(3 downto 0);
	b : in std_logic_vector(3 downto 0);
	output : out std_logic_vector(3 downto 0)
);
end component;
-- xor
component four_bit_xor is
port(
	a : in std_logic_vector(3 downto 0);
	b : in std_logic_vector(3 downto 0);
	output : out std_logic_vector(3 downto 0)
);
end component;
-- increment
component increment is
    Port (
        a      : in std_logic_vector(3 downto 0);
        output : out std_logic_vector(3 downto 0);
		  carry  : out std_logic
    );
end component;
--decrement
component decrement is
    Port (
        a      : in std_logic_vector(3 downto 0);
        output : out std_logic_vector(3 downto 0)
    );
end component;
-- not
component not_a is
    Port (
        a      : in std_logic_vector (3 downto 0);
        output : out std_logic_vector (3 downto 0)
    );
end component;
-- seven four
component seven_four
	Port ( 
		in1 : in STD_LOGIC_VECTOR (3 downto 0);
		in2 : in STD_LOGIC_VECTOR (3 downto 0);
		in3 : in STD_LOGIC_VECTOR (3 downto 0);
		in4 : in STD_LOGIC_VECTOR (3 downto 0);
		clk : in STD_LOGIC;
		dp : out STD_LOGIC;
		sel : out STD_LOGIC_VECTOR (3 downto 0);
		segment : out STD_LOGIC_VECTOR (6 downto 0));
end component;

signal add_out, sub_out, and_out, or_out : STD_LOGIC_VECTOR(3 downto 0);
signal xor_out, inc_out, dec_out, not_out, final_out, carry_show : STD_LOGIC_VECTOR(3 downto 0);
signal add_carry,inc_carry: STD_LOGIC;
signal Z, V, C : STD_LOGIC; -- Flag bits
signal dp : STD_LOGIC;
signal seg_out_7 : STD_LOGIC_VECTOR(6 downto 0);
signal seg_sel_4 : STD_LOGIC_VECTOR (3 downto 0);
signal temp1, temp3 : STD_LOGIC;
signal temp2: STD_LOGIC_VECTOR(4 downto 0);


begin
	carry_show<= "000" & C; 
	A0 : four_bit_adder    port map(a => a, b => b,
											  sum(0) => add_out(0), sum(1) => add_out(1),
											  sum(2) => add_out(2), sum(3) => add_out(3),
											  c_out => add_carry );
	A1 : four_bit_subtract port map(a, b, sub_out);
	A2 : four_bit_and      port map(a => a, b => b, output => and_out );
	A3 : four_bit_or       port map(a => a, b => b, output => or_out  );
	A4 : four_bit_xor      port map(a => a, b => b, output => xor_out );
	A5 : increment 		  port map(a => a, output => inc_out, carry => inc_carry );
	A6 : decrement 		  port map(a => a, output => dec_out );
	A7 : not_a 				  port map(a => a, output => not_out );
	A8 : seven_four 		  port map(final_out, carry_show, "0000", "0000", clk, dp, seg_sel_4, seg_out_7);
			
	
	-- Seven segment related part
	seg_out <= (seg_out_7 & dp);
	seg_sel <= "1111" & seg_sel_4;
	
	-- Finding the flag_out output
	temp1 <= '1' when b > a else '0';
	temp3 <= '1' when a = "0000" else '0';
	V <= temp1 when s = "001" else
		  temp3 when s = "010" else '0';
	C <= add_carry when s = "000" else
		  inc_carry when s = "011" else '0';
	temp2 <= final_out & C;
	Z <= '1' when temp2 = "00000" else '0';
	flag <= Z & C & V; -- concatenation flags.
	
	--mux
	with s select 
	final_out <= add_out when "000",
					 sub_out when "001",
					 dec_out when "010",
					 inc_out when "011",
					 and_out when "100",
					 or_out  when "101",
					 not_out when "110",
					 xor_out when others;

end arch;