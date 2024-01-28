
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY four_bit_subtract_test IS
END four_bit_subtract_test;
 
ARCHITECTURE behavior OF four_bit_subtract_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_subtract
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         c_in : IN  std_logic;
         sum : OUT  std_logic_vector(3 downto 0);
         c_out : OUT  std_logic;
         overflow : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal c_in : std_logic := '0';

 	--Outputs
   signal sum : std_logic_vector(3 downto 0);
   signal c_out : std_logic;
   signal overflow : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_subtract PORT MAP (
          a => a,
          b => b,
          c_in => c_in,
          sum => sum,
          c_out => c_out,
          overflow => overflow
        );

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;	
		  a <= "0000";
        b <= "0000";
        c_in <= '0';
        wait for 100 ns;

        a <= "0001";
        b <= "0001";
        c_in <= '0';
        wait for 100 ns;

        a <= "0010";
        b <= "0011";
        c_in <= '1';
        wait for 100 ns;

        a <= "0100";
        b <= "1100";
        c_in <= '0';
        wait for 100 ns;

        a <= "1111";
        b <= "1111";
        c_in <= '1';
        wait for 100 ns;

        a <= "1010";
        b <= "0101";
        c_in <= '0';
        wait for 100 ns;

        a <= "0110";
        b <= "1001";
        c_in <= '1';
        wait for 100 ns;

        a <= "1110";
        b <= "0000";
        c_in <= '0';
        wait for 100 ns;

        a <= "0001";
        b <= "1111";
        c_in <= '0';
        wait for 100 ns;

        a <= "1101";
        b <= "0010";
        c_in <= '1';
        wait for 100 ns;

        a <= "1000";
        b <= "1000";
        c_in <= '0';
        wait for 100 ns;

        a <= "0101";
        b <= "1111";
        c_in <= '1';
        wait for 100 ns;

        a <= "1111";
        b <= "0001";
        c_in <= '0';
        wait for 100 ns;

        a <= "1011";
        b <= "0011";
        c_in <= '1';
        wait for 100 ns;

        a <= "0111";
        b <= "1110";
        c_in <= '0';
        wait for 100 ns;
      wait;
   end process;

END;
