----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:00:52 10/27/2023 
-- Design Name: 
-- Module Name:    Find_Y - Behavioral 
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

entity Find_Y is
    Port ( in_yz : in  STD_LOGIC_VECTOR (3 downto 0);
           Y	  : out  STD_LOGIC);
end Find_Y;

architecture Behavioral of Find_Y is

begin
Y <=  '1' when (in_yz = "0001") else
		'1' when (in_yz = "0100") else
		'1' when (in_yz = "0101") else
		'1' when (in_yz = "1001") else
		'1' when (in_yz = "1011") else
		'1' when (in_yz = "1111") else
		'0';

end Behavioral;

