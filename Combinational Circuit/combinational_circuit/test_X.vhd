--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:31:17 10/27/2023
-- Design Name:   
-- Module Name:   C:/ise-vhdl/combinational_circuit/test_X.vhd
-- Project Name:  combinational_circuit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Find_X
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
 
 
ENTITY test_X IS
END test_X;
 
ARCHITECTURE behavior OF test_X IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Find_X
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         D : IN  std_logic;
         X : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';
   signal D : std_logic := '0';

 	--Outputs
   signal X : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Find_X PORT MAP (
          A => A,
          B => B,
          C => C,
          D => D,
          X => X
        );

   -- Stimulus process
   stim_proc: process
   begin		

  	     A <= '0';
        B <= '0';
        C <= '0';
        D <= '0';
        wait for 100ns;

        A <= '0';
        B <= '0';
        C <= '0';
        D <= '1';
        wait for 100ns;

        A <= '0';
        B <= '0';
        C <= '1';
        D <= '0';
        wait for 100ns;

        A <= '0';
        B <= '0';
        C <= '1';
        D <= '1';
        wait for 100ns;

        A <= '0';
        B <= '1';
        C <= '0';
        D <= '0';
        wait for 100ns;

        A <= '0';
        B <= '1';
        C <= '0';
        D <= '1';
        wait for 100ns;

        A <= '0';
        B <= '1';
        C <= '1';
        D <= '0';
        wait for 100ns;

        A <= '0';
        B <= '1';
        C <= '1';
        D <= '1';
        wait for 100ns;

        A <= '1';
        B <= '0';
        C <= '0';
        D <= '0';
        wait for 100ns;

        A <= '1';
        B <= '0';
        C <= '0';
        D <= '1';
        wait for 100ns;

        A <= '1';
        B <= '0';
        C <= '1';
        D <= '0';
        wait for 100ns;

        A <= '1';
        B <= '0';
        C <= '1';
        D <= '1';
        wait for 100ns;

        A <= '1';
        B <= '1';
        C <= '0';
        D <= '0';
        wait for 100ns;

        A <= '1';
        B <= '1';
        C <= '0';
        D <= '1';
        wait for 100ns;

        A <= '1';
        B <= '1';
        C <= '1';
        D <= '0';
        wait for 100ns;

        A <= '1';
        B <= '1';
        C <= '1';
        D <= '1';
		
      wait;
   end process;

END;
