--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:17:39 12/12/2023
-- Design Name:   
-- Module Name:   C:/ise-vhdl/lab_7_3/tb_top.vhd
-- Project Name:  lab_7_3
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
 
ENTITY tb_top IS
END tb_top;
 
ARCHITECTURE behavior OF tb_top IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         inp : IN  std_logic;
         en : IN  std_logic;
         seg_out : OUT  std_logic_vector(7 downto 0);
         seg_sel : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal inp : std_logic := '0';
   signal en : std_logic := '0';

 	--Outputs
   signal seg_out : std_logic_vector(7 downto 0);
   signal seg_sel : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top PORT MAP (
          clk => clk,
          reset => reset,
          inp => inp,
          en => en,
          seg_out => seg_out,
          seg_sel => seg_sel
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
      -- insert stimulus here 
		en <= '1';
		inp <= '1';
		wait for 11 ns;
		inp <= '1';
		wait for 11 ns;
		inp <= '0';
		wait for 11 ns;
		inp <= '1';
		wait for 11 ns;
		inp <= '1';
		wait for 11 ns;
		inp <= '0';
		wait for 11 ns;
		inp <= '1';
      wait;
   end process;

END;
