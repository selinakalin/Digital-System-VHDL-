----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:20:54 10/27/2023 
-- Design Name: 
-- Module Name:    Find_Z - Behavioral 
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


entity Find_Z is
    Port ( in_yz : in  STD_LOGIC_VECTOR (3 downto 0);
           Z : out  STD_LOGIC);
end Find_Z;

architecture Behavioral of Find_Z is

begin

with in_yz select

Z <= '1' when "0000",
	  '1' when "0010",
	  '1' when "0011",
	  '1' when "0111",
	  '1' when "1100",
	  '1' when "1110",
	  '0' when others;


end Behavioral;

