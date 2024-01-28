library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity top is
    Port ( 
        clk : in  STD_LOGIC;
        reset : in  STD_LOGIC;
		  item_select : in STD_LOGIC_VECTOR(1 downto 0);
		  request : in STD_LOGIC;
        one_tl : in  STD_LOGIC;
        take_item : in  STD_LOGIC;
		  ready: out  STD_LOGIC;
        seg_out : out  STD_LOGIC_VECTOR (7 downto 0);
        seg_sel : out  STD_LOGIC_VECTOR (7 downto 0)
    );
end top;

architecture Behavioral of top is

component fsm 
 Port ( 
	  clk : in  STD_LOGIC;
	  reset : in  STD_LOGIC;
	  item_select : in STD_LOGIC_VECTOR(1 downto 0);
	  request : in STD_LOGIC;
	  one_tl : in  STD_LOGIC;
	  take_item : in  STD_LOGIC;
	  ready: out  STD_LOGIC;
	  in1 : out std_logic_vector(1 downto 0);
	  in2 : out std_logic_vector(2 downto 0)
	  );
end component;

component seven_segment is
  Port ( in1 : in  STD_LOGIC_VECTOR (3 downto 0);
			in2 : in  STD_LOGIC_VECTOR (3 downto 0);
			in3 : in  STD_LOGIC_VECTOR (3 downto 0);
			in4 : in  STD_LOGIC_VECTOR (3 downto 0);
			clk : in  STD_LOGIC;
			dp  : out  STD_LOGIC;
			sel : out  STD_LOGIC_VECTOR (3 downto 0);
			segment : out  STD_LOGIC_VECTOR (6 downto 0)
		);
end component;

signal w4 : STD_LOGIC;
signal w5 : STD_LOGIC_VECTOR (6 downto 0);
signal seg_sel_4, w3, w6 : STD_LOGIC_VECTOR (3 downto 0);
signal w1 : STD_LOGIC_VECTOR (1 downto 0);
signal w2 : STD_LOGIC_VECTOR (2 downto 0);
begin
	
   fsm_chart: fsm port map (clk, reset, item_select, request, one_tl, take_item, ready, w1, w2);
	w3 <= ("00" & w1);
	w6 <= ('0' & w2);
   seven_segment_dp: seven_segment port map (w3, w6, "0000", "0000", clk, w4, seg_sel_4, w5);
	
	seg_out <= (w5 & w4);
	seg_sel <= "1111" & seg_sel_4;

end Behavioral;