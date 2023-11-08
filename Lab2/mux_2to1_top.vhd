library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2 is
generic (n:integer:=8);
    Port ( sel : in  STD_LOGIC;
           dina   : in  STD_LOGIC_VECTOR (n-1 downto 0);
           dinb   : in  STD_LOGIC_VECTOR (n-1 downto 0);
           dout   : out STD_LOGIC_VECTOR (n-1 downto 0));
end mux2;

architecture Behavioral of mux2 is
begin
    dout <= dina when (sel = '1') else dinb;
end Behavioral;
