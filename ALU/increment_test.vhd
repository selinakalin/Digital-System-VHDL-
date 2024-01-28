
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY increment_test IS
END increment_test;
 
ARCHITECTURE behavior OF increment_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT increment
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         output : OUT  std_logic_vector(3 downto 0);
         carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(3 downto 0);
   signal carry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: increment PORT MAP (
          a => a,
          output => output,
          carry => carry
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		a <= "0000";
		wait for 100 ns;
		
		a <= "0001";
		wait for 100 ns;
		
		a <= "0010";
		wait for 100 ns;
		
		a <= "0011";
		wait for 100 ns;
		
		a <= "0100";
		wait for 100 ns;
		
		a <= "0101";
		wait for 100 ns;
		
		a <= "0110";
		wait for 100 ns;
		
		a <= "0111";
		wait for 100 ns;
		
		a <= "1000";
		wait for 100 ns;
		
		a <= "1001";
		wait for 100 ns;
		
		a <= "1010";
		wait for 100 ns;
		
		a <= "1011";
		wait for 100 ns;
		
		a <= "1100";
		wait for 100 ns;
		
		a <= "1101";
		wait for 100 ns;
		
		a <= "1110";
		wait for 100 ns;
		
		a <= "1111";
		wait for 100 ns;

      wait;
   end process;

END;
