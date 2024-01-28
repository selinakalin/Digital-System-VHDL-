library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
port(
		clk : in std_logic;
		up_down : in std_logic;
		reset : in std_logic;
		enable : in std_logic;
		seg_sel : out std_logic_vector(7 downto 0);
		seg_out : out std_logic_vector(7 downto 0)
	
);
end top;

architecture Behavioral of top is

component converter is
port(
		clk     : in std_logic;
		reset   : in std_logic;
		clk_out : out std_logic
);
end component;

component digital_clock is
port(
		reset      : in std_logic;
		enable     : in std_logic;
		upperlimit : in std_logic_vector(3 downto 0);
		up_down    : in std_logic;
		clk        : in std_logic;
		enable_out : out std_logic;
		result     : out std_logic_vector(3 downto 0)
);
end component;

component seven_four
Port ( 
		in1 : in  STD_LOGIC_VECTOR (3 downto 0);
      in2 : in  STD_LOGIC_VECTOR (3 downto 0);
      in3 : in  STD_LOGIC_VECTOR (3 downto 0);
      in4 : in  STD_LOGIC_VECTOR (3 downto 0);
      clk : in  STD_LOGIC;
		dp  : out  STD_LOGIC;
      sel : out  STD_LOGIC_VECTOR (3 downto 0);
      segment : out  STD_LOGIC_VECTOR (6 downto 0)
);
end component;

signal w1,w2,w3,w4 : std_logic_vector(3 downto 0); 
signal w7,w6,w8,w9,w10, clk_out : std_logic;
signal w5 : std_logic_vector(6 downto 0);
signal seg_sel_4 : std_logic_vector(3 downto 0);

begin

one_hz_converter: converter port map (clk,clk_out);
sec_1:  digital_clock port map (reset, enable,"1001",up_down,clk_out,w6,w1);
sec_10: digital_clock port map (reset, w6,"0101",up_down,clk_out,w8,w2);
min_1:  digital_clock port map (reset, w6 and w8 ,"1001",up_down,clk_out,w9,w3);
min_10: digital_clock port map (reset, w6 and w8 and w9,"0101",up_down,clk_out,w10,w4);

seven_segment : seven_four port map (w1,w2,w3,w4,clk,w7,seg_sel_4,w5);
seg_out <= (w5 & w7);
seg_sel <= "1111" & seg_sel_4;


end Behavioral;

