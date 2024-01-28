--------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:05:36 02/13/2009 
-- Design Name: 
-- Module Name:    seven_four - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity seven_four is
    Port ( inp : in STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
			  dp  : out  STD_LOGIC;
           sel : out  STD_LOGIC_VECTOR (3 downto 0);
           segment : out  STD_LOGIC_VECTOR (6 downto 0)
			);
end seven_four;

architecture Behavioral of seven_four is

signal counter : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000000";
signal sev_in : STD_LOGIC_VECTOR (6 downto 0);
signal sel_temp : STD_LOGIC_VECTOR (3 downto 0);

begin
	dp <= '1';

	with inp select
		sev_in<=    "1111101" when "00000001",
						"0111100" when "00000010",
						"0111100" when "00000100",
						"0011101" when "00001000",
						
						"1111011" when "00010000",
						"0110011" when "00100000",
						"0100111" when "01000000",
						"1111011" when "10000000",
						
						"1111111" when others;
						
	with inp select
		sel_temp<=  "1110" when "00000001",
						"1101" when "00000010",
						"1011" when "00000100",
						"0111" when "00001000",
						"0111" when "00010000",
						"1011" when "00100000",
						"1101" when "01000000",
						"1110" when "10000000",
						"1111" when others;
						

	process (clk, sev_in)	
	begin
		if(clk'event and clk = '1') then
			segment <= sev_in;
			sel <= sel_temp;
		end if;
	end process;

end Behavioral;

