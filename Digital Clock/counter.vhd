library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity counter is
Port ( 
	clk : in STD_LOGIC;
	rst : in STD_LOGIC;
	up_down : in STD_LOGIC;
	enable : in STD_LOGIC;
	upperlimit : in STD_LOGIC_VECTOR(3 downto 0);
	result : out STD_LOGIC_VECTOR (3 downto 0)
);
end counter;

architecture Behavioral of counter is
	signal count : unsigned(3 downto 0):= "0000";
begin
	process(clk, rst, enable, up_down)
	begin
		if (clk = '1' and clk'event) then
			if (rst = '1') then
				if(up_down = '1') then
					count <= (others => '0');
				elsif (up_down = '0') then
					count <= unsigned(upperlimit) ;				
				end if;
			elsif (enable = '1') then
				if (up_down = '1') then
					if (count=unsigned(upperlimit)) then
						count <= (others=> '0');	
					else
						count <= count + 1;
					end if;
				else
					if (count="0000") then
						count <= unsigned(upperlimit);	
					else
						count <= count - 1;
					end if ;
				end if;
			end if ;
		end if;
	end process;
result <= std_logic_vector(count);
end Behavioral;