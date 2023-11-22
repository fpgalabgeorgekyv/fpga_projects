library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4 is
generic (n:integer:=8);
    Port (sel : in  STD_LOGIC_vector(1 downto 0);
				dina,dinb : in std_logic_vector (n-1 downto 0);
				dinc,dind : in std_logic_vector (n-1 downto 0);
				dout   : out std_logic_vector (n-1 downto 0));
end mux4;

architecture Behavioral of mux4 is
begin
with sel select
    dout <= dina when "00",
				dinb when "01",
				dinc when "10",
				dind when others;
end Behavioral;