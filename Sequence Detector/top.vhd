library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity top is
    Port ( 
        clk : in  STD_LOGIC;
        reset : in  STD_LOGIC;
        inp : in  STD_LOGIC;
        en : in  STD_LOGIC;
		  count: out  STD_LOGIC_VECTOR (3 downto 0);
		  sequence: out  STD_LOGIC_VECTOR (7 downto 0);
        seg_out : out  STD_LOGIC_VECTOR (7 downto 0);
        seg_sel : out  STD_LOGIC_VECTOR (7 downto 0)
    );
end top;

architecture Behavioral of top is
    --signal sequence : std_logic_vector(7 downto 0);
    --signal count : std_logic_vector(3 downto 0);

    component fsm is
        port(
            clk : in std_logic;
            reset : in std_logic;
            en : in std_logic;
            inp : in std_logic;
            sequence : out std_logic_vector(7 downto 0);
            count : out std_logic_vector(3 downto 0)
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
	 
	 component converter is
		port(
				clk     : in std_logic;
				reset : in std_logic;
				clk_out : out std_logic
		     );
	 end component;



signal w4, clk_1hz : STD_LOGIC;
signal w5 : STD_LOGIC_VECTOR (6 downto 0);
signal seg_sel_4 : STD_LOGIC_VECTOR (3 downto 0);
signal temp_count : STD_LOGIC_VECTOR(3 downto 0):="0000";


begin
	hzclk: converter port map(clk,reset,clk_1hz);
	
   uut_fsm: fsm port map (clk_1hz, reset, en, inp, sequence, temp_count);
	
	count <= temp_count; 
   uut_seven_segment: seven_segment port map (temp_count, "0000", "0000", "0000", clk_1hz, w4, seg_sel_4, w5);
	
	seg_out <= (w5 & w4);
	seg_sel <= "1111" & seg_sel_4;

end Behavioral;