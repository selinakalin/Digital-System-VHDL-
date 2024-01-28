--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:14:14 11/28/2023
-- Design Name:   
-- Module Name:   C:/ise-vhdl/Lab_4/test_counter.vhd
-- Project Name:  Lab_4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter
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
 
ENTITY test_counter IS
END test_counter;
 
ARCHITECTURE behavior OF test_counter IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         up_down : IN  std_logic;
         enable : IN  std_logic;
         upperlimit : IN  std_logic_vector(3 downto 0);
         result : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal up_down : std_logic := '0';
   signal enable : std_logic := '0';
   signal upperlimit : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal result : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter PORT MAP (
          clk => clk,
          rst => rst,
          up_down => up_down,
          enable => enable,
          upperlimit => upperlimit,
          result => result
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

	-- Stimulus process
   stim_proc: process
   begin		
      
      wait for 100 ns;		
      upperlimit <= "1001";
      rst <= '0';
      up_down <= '1';
      enable <= '1';
			
      wait;
   end process;

END;
