--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:38:32 10/29/2023
-- Design Name:   
-- Module Name:   C:/ise-vhdl/combinational_circuit/test_top.vhd
-- Project Name:  combinational_circuit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top
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
 
ENTITY test_top IS
END test_top;
 
ARCHITECTURE behavior OF test_top IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         D : IN  std_logic;
         S0 : IN  std_logic;
         S1 : IN  std_logic;
         F : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';
   signal D : std_logic := '0';
   signal S0 : std_logic := '0';
   signal S1 : std_logic := '0';

 	--Outputs
   signal F : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top PORT MAP (
          A => A,
          B => B,
          C => C,
          D => D,
          S0 => S0,
          S1 => S1,
          F => F
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
        A <= '0';
        B <= '0';
        C <= '0';
        D <= '0';
		  S1 <= '0';
		  S0 <= '0';
        wait for 100ns;
		  
		  A <= '0';
        B <= '0';
        C <= '0';
        D <= '0';
		  S1 <= '1';
		  S0 <= '0';
        wait for 100ns;


		  A <= '0';
        B <= '1';
        C <= '0';
        D <= '1';
		  S1 <= '0';
		  S0 <= '0';
        wait for 100ns;


		  A <= '0';
        B <= '0';
        C <= '0';
        D <= '1';
		  S1 <= '0';
		  S0 <= '1';
        wait for 100ns;


		  A <= '0';
        B <= '0';
        C <= '0';
        D <= '0';
		  S1 <= '0';
		  S0 <= '1';
        wait for 100ns;

      -- insert stimulus here 

      wait;
   end process;

END;
