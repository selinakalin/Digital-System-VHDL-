LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY four_bit_and_test IS
END four_bit_and_test;
 
ARCHITECTURE behavior OF four_bit_and_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_and
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_and PORT MAP (
          a => a,
          b => b,
          output => output
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		a <= "0000";
		b <= "0001";
		wait for 100 ns;
		
		a <= "0001";
		b <= "0001";
		wait for 100 ns;
		
		a <= "0010";
		b <= "0001";
		wait for 100 ns;
		
		a <= "0011";
		b <= "0001";
		wait for 100 ns;
		
		a <= "0100";
		b <= "0100";
		wait for 100 ns;
		
		a <= "0101";
		b <= "0011";
		wait for 100 ns;
		
		a <= "0110";
		b <= "0100";
		wait for 100 ns;
		
		a <= "0111";
		b <= "0011";
		wait for 100 ns;
		
		a <= "1000";
		b <= "0111";
		wait for 100 ns;
		
		a <= "1001";
		b <= "0011";
		wait for 100 ns;
		
		a <= "1010";
		b <= "0000";
		wait for 100 ns;
		
		a <= "1011";
		b <= "0000";
		wait for 100 ns;
		
		a <= "1100";
		b <= "0000";
		wait for 100 ns;
		
		a <= "1101";
		b <= "0000";
		wait for 100 ns;
		
		a <= "1110";
		b <= "0000";
		wait for 100 ns;
		
		a <= "1111";
		b <= "0000";
		wait for 100 ns;

 

      -- insert stimulus here 

      wait;
   end process;

END;
