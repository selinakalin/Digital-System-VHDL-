----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:02:46 10/27/2023 
-- Design Name: 
-- Module Name:    top - Behavioral 
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



entity top is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           F : out  STD_LOGIC);
end top;

architecture Behavioral of top is

component Find_X
	Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           X : out  STD_LOGIC
	);
end component;


component Find_Y is
    Port ( in_yz : in  STD_LOGIC_VECTOR (3 downto 0);
           Y	  : out  STD_LOGIC);
end component;


component Find_Z is
    Port ( in_yz : in  STD_LOGIC_VECTOR (3 downto 0);
           Z : out  STD_LOGIC);
end component;

signal in_yz : STD_LOGIC_VECTOR (3 downto 0);
signal X,Y,Z : STD_LOGIC;
signal s : STD_LOGIC_VECTOR (1 downto 0);

begin

in_yz <= (A & B & C & D);
s <= (S1 & S0);

A1: Find_X port map (A,B,C,D,X);
A2: Find_Y port map (in_yz, Y);
A3: Find_Z port map (in_yz, Z);


with s select
	F <= X when "00",
		  Y when "01",
		  Z when "10",
		  '0' when others;

end Behavioral;



