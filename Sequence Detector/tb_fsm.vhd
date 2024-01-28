library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_fsm is
end entity tb_fsm;

architecture behavior of tb_fsm is
    signal clk : std_logic := '0';
    signal reset : std_logic := '1';
    signal en : std_logic := '0';
    signal inp : std_logic := '0';
    signal sequence : std_logic_vector(7 downto 0);
    signal count : std_logic_vector(3 downto 0);

    component fsm is
        port(
            clk : in std_logic;
            reset : in std_logic;
            en : in std_logic;
            inp : in std_logic;
            sequence : out std_logic_vector(7 downto 0);
            count : out std_logic_vector(3 downto 0)
        );
    end component fsm;

begin
    uut: fsm port map (
        clk => clk,
        reset => reset,
        en => en,
        inp => inp,
        sequence => sequence,
        count => count
    );

    clk_process :process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

    stim_proc: process
    begin
        -- hold reset state for 100 ns.
        wait for 100 ns;  
        reset <= '0'; 
        wait for 100 ns;
        en <= '1';
        inp <= '1'; wait for 20 ns;
        inp <= '1'; wait for 20 ns;
        inp <= '0'; wait for 20 ns;
        inp <= '1'; wait for 20 ns;
        inp <= '1'; wait for 20 ns;
        inp <= '1'; wait for 20 ns;
        inp <= '0'; wait for 20 ns;
        inp <= '1'; wait for 20 ns;
        wait;
    end process;
end architecture behavior;
