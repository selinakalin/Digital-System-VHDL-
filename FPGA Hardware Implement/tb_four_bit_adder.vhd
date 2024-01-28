--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:46:12 12/24/2023
-- Design Name:   
-- Module Name:   C:/ise-vhdl/lab2/tb_four_bit_adder.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_four_bit_adder IS
END tb_four_bit_adder;
 
ARCHITECTURE behavior OF tb_four_bit_adder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_adder
    PORT(
         in1 : IN  std_logic_vector(4 downto 0);
         in2 : IN  std_logic_vector(4 downto 0);
         sout : OUT  std_logic_vector(4 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in1 : std_logic_vector(4 downto 0) := (others => '0');
   signal in2 : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal sout : std_logic_vector(4 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_adder PORT MAP (
          in1 => in1,
          in2 => in2,
          sout => sout,
          cout => cout
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		in1 <= "00000";
		in2 <= "00101";
      wait for 10 ns;
		
		in1 <= "00001";
		in2 <= "00111";
      wait for 10 ns;

		in1 <= "01111";
		in2 <= "01111";
      wait for 10 ns;
      -- insert stimulus here 

      wait;
   end process;

END;
