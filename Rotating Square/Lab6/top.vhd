library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
	port(   clk,reset,enable,direction : in std_logic;
			  seg_out,seg_sel :out std_logic_vector(7 downto 0));
end top;

architecture Behavioral of top is

component converter 
	port (  Clk : in std_logic;
			  Clk_mod : out std_logic;
           divide_value : in integer);
end component;

component seven_four
    port ( inp : std_logic_vector(7 downto 0);
           clk : in  STD_LOGIC;
			  dp  : out  STD_LOGIC;
           sel : out  STD_LOGIC_VECTOR (3 downto 0);
           segment : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

signal clock_out, w2 : std_logic;
signal reg_next : std_logic_vector(7 downto 0);
signal reg : std_logic_vector(7 downto 0) := "00000001";
signal seg_sel_4 : std_logic_vector(3 downto 0);
signal w1 : std_logic_vector(6 downto 0);
--100000000
begin
	clockDivider: converter port map (clk, clock_out, 100000000);
	
	--memory
	process(clock_out, reset, enable)
		begin
			if(reset = '1') then
				reg <= "00000001";
			else
				if(enable = '1') then
					if(clock_out'event and clock_out = '1') then
						reg <= reg_next;
					end if;
				end if;
			end if;
	end process;
	
	--next state logic
	with direction select
	reg_next <= (reg(6 downto 0) & reg(7)) when '0',
					(reg(0) & reg(7 downto 1)) when others;
	
	--seven_segmet	
	seven_segment : seven_four port map (reg, clk, w2, seg_sel_4, w1);

	seg_out <= (w1 & w2);
	seg_sel <= "1111" & seg_sel_4;

end Behavioral;

