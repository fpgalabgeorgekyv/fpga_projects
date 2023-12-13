library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Counter is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           incr : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR(3 downto 0));
end Counter;

architecture Behavioral of Counter is
    signal counter_value : STD_LOGIC_VECTOR(3 downto 0) := "0000";
begin
    process(clk, rst)
    begin
        if rst = '1' then
            counter_value <= "0000";
        elsif rising_edge(clk) then
            if incr = '1' then
                counter_value <= counter_value + 1;
            end if;
        end if;
    end process;

    count <= counter_value;
end Behavioral;
