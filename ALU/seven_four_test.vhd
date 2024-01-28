
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY seven_four_test IS
END seven_four_test;
 
ARCHITECTURE behavior OF seven_four_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT seven_four
    PORT(
         in1 : IN  std_logic_vector(3 downto 0);
         in2 : IN  std_logic_vector(3 downto 0);
         in3 : IN  std_logic_vector(3 downto 0);
         in4 : IN  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         dp : OUT  std_logic;
         sel : OUT  std_logic_vector(3 downto 0);
         segment : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in1 : std_logic_vector(3 downto 0) := (others => '0');
   signal in2 : std_logic_vector(3 downto 0) := (others => '0');
   signal in3 : std_logic_vector(3 downto 0) := (others => '0');
   signal in4 : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal dp : std_logic;
   signal sel : std_logic_vector(3 downto 0);
   signal segment : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: seven_four PORT MAP (
          in1 => in1,
          in2 => in2,
          in3 => in3,
          in4 => in4,
          clk => clk,
          dp => dp,
          sel => sel,
          segment => segment
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

      wait for clk_period*10;
		in1 <= "0000";
      in2 <= "0000";
      in3 <= "0000";
      in4 <= "0000";
		wait for clk_period*10;
		
		in1 <= "0000";
      in2 <= "0010";
      in3 <= "0110";
      in4 <= "0001";
		wait for clk_period*10;
		
		in1 <= "0110";
      in2 <= "0010";
      in3 <= "0100";
      in4 <= "0100";
		wait for clk_period*10;
		
		in1 <= "0010";
      in2 <= "0010";
      in3 <= "0010";
      in4 <= "0010";
		wait for clk_period*10;
		
		in1 <= "1111";
      in2 <= "1111";
      in3 <= "1111";
      in4 <= "1111";
		wait for clk_period*10;
		
 

      wait;
   end process;

END;
