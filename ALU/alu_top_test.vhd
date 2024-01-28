LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY alu_top_test IS
END alu_top_test;
 
ARCHITECTURE behavior OF alu_top_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu_top
    PORT(
         clk : IN  std_logic;
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         s : IN  std_logic_vector(2 downto 0);
         flag : OUT  std_logic_vector(2 downto 0);
         seg_out : OUT  std_logic_vector(7 downto 0);
         seg_sel : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal s : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal flag : std_logic_vector(2 downto 0);
   signal seg_out : std_logic_vector(7 downto 0);
   signal seg_sel : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu_top PORT MAP (
          clk => clk,
          a => a,
          b => b,
          s => s,
          flag => flag,
          seg_out => seg_out,
          seg_sel => seg_sel
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		a <= "0001";
      b <= "0011";
      s <= "000";
		wait for clk_period*10;	
		
		a <= "0011";
      b <= "0100";
      s <= "001";
		wait for clk_period*10;	
		
		a <= "0001";
      b <= "0000";
      s <= "010"; 
		wait for clk_period*10;	
		
		a <= "0011";
      b <= "0000";
      s <= "011"; 
		wait for clk_period*10;

		a <= "0011";
      b <= "0001";
      s <= "100"; 
		wait for clk_period*10;

		a <= "0011";
      b <= "0001";
      s <= "101"; 
		wait for clk_period*10;	
		
		a <= "0011";
      b <= "0000";
      s <= "110"; 
		wait for clk_period*10;
		
		a <= "0011";
      b <= "0001";
      s <= "111"; 
		wait for clk_period*10;
		
		
		
		wait;
   end process;

END;
