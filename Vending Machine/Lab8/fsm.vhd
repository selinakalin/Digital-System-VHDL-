library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm is
    Port ( 
        clk : in  STD_LOGIC;
        reset : in  STD_LOGIC;
		  item_select : in STD_LOGIC_VECTOR(1 downto 0);
		  request : in STD_LOGIC;
        one_tl : in  STD_LOGIC;
        take_item : in  STD_LOGIC;
		  ready: out  STD_LOGIC;
		  in1 : out std_logic_vector(1 downto 0);
		  in2 : out std_logic_vector(2 downto 0)
		  );
end entity fsm;

architecture behavior of fsm is
    type state_type is (idle,water,ready_water,chocolate,chocolate1,ready_chocolate,
									coke,coke1,coke2,ready_coke,cookies,cookies1,cookies2,cookies3,ready_cookies);
    signal state : state_type;
	 signal temp_ready : STD_LOGIC;
	 signal money : std_logic_vector(2 downto 0):= "000";
	 
    signal counter : integer := 0;
begin
    process(clk, reset)
    begin
        if reset = '1' then
            state <= idle;
        elsif rising_edge(clk) then
				 case state is
					  when idle =>
							temp_ready <= '0';
							money <= "000";
							if request = '1' then 
								case item_select is
									when "00" =>
										state <= water; 
									when "01" =>
										state <= chocolate; 
									when "10" =>
										state <= coke; 
									when "11" =>
										state <= cookies; 
									when others =>
										state <= idle;
								end case;
							else 
								state <= idle; 
							end if;
					  when water =>
							if one_tl = '1' then
								if(counter < 99999999) then
									counter <= counter + 1;
								else
									counter <= 0;
									state <= ready_water; 
								end if; 
							else 
								state <= water; 
							end if;
					  when ready_water =>
							money <= "001";
							temp_ready <= '1';
							if take_item = '1' then 
								state <= idle; 
							else 
								state <= ready_water; 
							end if;
					  when chocolate =>
							if one_tl = '1' then
								 if(counter < 99999999) then
									counter <= counter + 1;
								else
									counter <= 0;
									state <= chocolate1; 
								end if; 
								 
							else
								 state <= chocolate;
							end if;
						when chocolate1 =>
							money <= "001";
							if one_tl = '1' then
								 if(counter < 99999999) then
									counter <= counter + 1;
								else
									counter <= 0;
									state <= ready_chocolate;
								end if; 
							else
								 state <= chocolate1;
							end if;
						when ready_chocolate =>
							money <= "010";
							temp_ready <= '1';
							if take_item = '1' then
								 state <= idle;
								 
							else
								 state <= ready_chocolate;
							end if;
						when coke =>
							if one_tl = '1' then
								 if(counter < 99999999) then
									counter <= counter + 1;
								else
									counter <= 0;
									state <= coke1;
								end if;
							else
								 state <= coke;
							end if;
						when coke1 =>
							money <= "001";
							if one_tl = '1' then
								 if(counter < 99999999) then
									counter <= counter + 1;
								else
									counter <= 0;
									state <= coke2;
								end if;
							else
								 state <= coke1;
							end if;
						when coke2 =>
							money <= "010";
							if one_tl = '1' then
								 if(counter < 99999999) then
									counter <= counter + 1;
								else
									counter <= 0;
									state <= ready_coke;
								end if;
							else
								 state <= coke2;
							end if;
						when ready_coke =>
							money <= "011";
							temp_ready <= '1';
							if take_item = '1' then
								 state <= idle;
								 
							else
								 state <= ready_coke;
							end if;
						when cookies =>
							if one_tl = '1' then
								 if(counter < 99999999) then
									counter <= counter + 1;
								else
									counter <= 0;
									state <= cookies1;
								end if;
							else
								 state <= cookies;
							end if;
						when cookies1 =>
							money <= "001";
							if one_tl = '1' then
								 if(counter < 99999999) then
									counter <= counter + 1;
								else
									counter <= 0;
									state <= cookies2;
								end if;
							else
								 state <= cookies1;
							end if;
						when cookies2 =>
							money <= "010";
							if one_tl = '1' then
								 if(counter < 99999999) then
									counter <= counter + 1;
								else
									counter <= 0;
									state <= cookies3;
								end if;
							else
								 state <= cookies2;
							end if;
						when cookies3 =>
							money <= "011";
							if one_tl = '1' then
								 if(counter < 99999999) then
									counter <= counter + 1;
								else
									counter <= 0;
									state <= ready_cookies;
								end if;
							else
								 state <= cookies3;
							end if;
						when ready_cookies =>
							money <= "100";
							temp_ready <= '1';
							if take_item = '1' then
								 state <= idle;
							
							else
								 state <= ready_cookies;
							end if;
						when others =>
							state <= idle;
					end case;
        end if;
    end process;
	 ready <= temp_ready;
	 in1 <= item_select;
	 in2 <= money;
end architecture behavior;
