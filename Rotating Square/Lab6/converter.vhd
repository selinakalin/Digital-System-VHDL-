----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:05:52 11/27/2023 
-- Design Name: 
-- Module Name:    converter - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

entity converter is
port(   Clk : in std_logic;
        Clk_mod : out std_logic;
        divide_value : in integer
        );
end converter;

architecture Behavioral of converter is

signal counter,divide : integer := 0;

begin

divide <= divide_value;

process(Clk)
begin
    if( rising_edge(Clk) ) then
        if(counter < divide/2-1) then
            counter <= counter + 1;
            Clk_mod <= '0';
        elsif(counter < divide-1) then
            counter <= counter + 1;
            Clk_mod <= '1';
        else
            Clk_mod <= '0';
            counter <= 0;
        end if;
    end if;
end process;   

end Behavioral;
