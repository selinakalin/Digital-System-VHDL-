--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:35:18 11/27/2023
-- Design Name:   
-- Module Name:   /home/ayberk/Downloads/Digital_Clock/test_digital.vhd
-- Project Name:  Digital_Clock
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: digital_clock
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
 
ENTITY test_digital IS
END test_digital;
 
ARCHITECTURE behavior OF test_digital IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT digital_clock
    PORT(
         reset : IN  std_logic;
         enable : IN  std_logic;
         upperlimit : IN  std_logic_vector(3 downto 0);
         up_down : IN  std_logic;
         clk : IN  std_logic;
         enable_out : OUT  std_logic;
         result : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal enable : std_logic := '0';
   signal upperlimit : std_logic_vector(3 downto 0) := (others => '0');
   signal up_down : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal enable_out : std_logic;
   signal result : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: digital_clock PORT MAP (
          reset => reset,
          enable => enable,
          upperlimit => upperlimit,
          up_down => up_down,
          clk => clk,
          enable_out => enable_out,
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

       reset <= '0';
		 enable <= '1';
		 upperlimit <= "1001";
		 up_down <= '0';

      wait;
   end process;

END;
