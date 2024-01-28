library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm is
    port(
        clk : in std_logic;
        reset : in std_logic;
        en : in std_logic;
        inp : in std_logic;
        sequence : out std_logic_vector(7 downto 0);
        count : out std_logic_vector(3 downto 0)
    );
end entity fsm;

architecture behavior of fsm is
    type state_type is (s0, s1, s2, s3);
    signal state : state_type;
    signal seq : std_logic_vector(7 downto 0);
    signal cnt : unsigned(3 downto 0);
begin
    process(clk, reset)
    begin
        if reset = '1' then
            state <= s0;
            seq <= (others => '0');
            cnt <= (others => '0');
        elsif rising_edge(clk) then
            if en = '1' then
                seq <= seq(seq'high-1 downto 0) & inp;
                case state is
                    when s0 =>
                        if inp = '1' then state <= s1; else state <= s0; end if;
                    when s1 =>
                        if inp = '1' then state <= s2; else state <= s0; end if;
                    when s2 =>
                        if inp = '0' then state <= s3; else state <= s2; end if;
                    when s3 =>
                        if inp = '1' then
                            state <= s1;
                            cnt <= cnt + 1;
                        else
                            state <= s0;
                        end if;
                end case;
            end if;
        end if;
    end process;
    sequence <= std_logic_vector(seq);
    count <= std_logic_vector(cnt);
end architecture behavior;
