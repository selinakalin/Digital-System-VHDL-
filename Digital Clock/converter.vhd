LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL; -- Add this line

entity converter is
port(
		clk     : in std_logic;
		reset : in std_logic;
		clk_out : out std_logic
);
end converter;

architecture Behavioral of converter is
    signal counter : integer := 0;
begin
    process(clk)
    begin
		if(reset = '1') then 
		clk_out <= '0';
			if rising_edge(clk) then
				if(counter < 49999999) then
						counter <= counter + 1;
						clk_out <= '0';
					elsif(counter < 99999999) then
						counter <= counter + 1;
						clk_out <= '1';
					else
						counter <= 0;
						clk_out <= '0';
				end if; 
			end if;
        end if;
    end process;
end Behavioral;
