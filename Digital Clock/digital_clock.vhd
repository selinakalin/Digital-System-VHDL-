library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity digital_clock is
	port( 
			reset : in std_logic;
			enable : in std_logic;
			upperlimit : in std_logic_vector(3 downto 0);
			up_down : in std_logic;
			clk : in std_logic;
			enable_out : out std_logic;
			result : out std_logic_vector(3 downto 0)
	);
end digital_clock;

architecture Behavioral of digital_clock is
component counter is
	Port ( 
			 clk : in STD_LOGIC;
			 rst : in STD_LOGIC;
			 up_down : in STD_LOGIC;
			 enable : in STD_LOGIC;
			 upperlimit : in STD_LOGIC_VECTOR(3 downto 0);
			 result : out STD_LOGIC_VECTOR(3 downto 0));
end component;

signal count : std_logic_vector(3 downto 0);
begin
	A1: counter port map (clk, reset, up_down, enable, upperlimit, count);
	process(count,up_down,upperlimit)
	begin
		if (up_down = '1') then
			if (count = upperlimit) then
				enable_out <= '1';
			else
				enable_out <= '0';
			end if;
		else
			if (count = "0000") then
				enable_out <= '1';
			else
				enable_out <= '0';
			end if;
		end if;
	end process;
	result <= count;
end Behavioral;

