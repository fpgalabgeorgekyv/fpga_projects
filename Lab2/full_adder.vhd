library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder1bit is
    Port ( a,b,cin : in  STD_LOGIC;
           s,cout : out  STD_LOGIC);
end adder1bit;

architecture Behavioral of adder1bit is

begin

s<= a XOR b XOR cin;
cout<= (a AND b) OR (cin AND a) OR (cin AND b);

end Behavioral;
