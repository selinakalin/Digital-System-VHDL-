--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:49:04 10/27/2023
-- Design Name:   
-- Module Name:   C:/ise-vhdl/combinational_circuit/test_Y.vhd
-- Project Name:  combinational_circuit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Find_Y
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
 
 
ENTITY test_Y IS
END test_Y;
 
ARCHITECTURE behavior OF test_Y IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Find_Y
    PORT(
         in_yz : IN  std_logic_vector(3 downto 0);
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in_yz : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Find_Y PORT MAP (
          in_yz => in_yz,
          Y => Y
        );

   -- Stimulus process
   stim_proc: process
   begin		
		
        in_yz <= "0000";
        wait for 100 ns;

        in_yz <= "0001";
        wait for 100 ns;

        in_yz <= "0010";
        wait for 100 ns;

        in_yz <= "0011";
        wait for 100 ns;

        in_yz <= "0100";
        wait for 100 ns;

        in_yz <= "0101";
        wait for 100 ns;

        in_yz <= "0110";
        wait for 100 ns;

        in_yz <= "0111";
        wait for 100 ns;

        in_yz <= "1000";
        wait for 100 ns;

        in_yz <= "1001";
        wait for 100 ns;

        in_yz <= "1010";
        wait for 100 ns;

        in_yz <= "1011";
        wait for 100 ns;

        in_yz <= "1100";
        wait for 100 ns;

        in_yz <= "1101";
        wait for 100 ns;

        in_yz <= "1110";
        wait for 100 ns;

        in_yz <= "1111";		


      wait;
   end process;

END;
