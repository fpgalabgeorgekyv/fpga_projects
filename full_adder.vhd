library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_adder is
    Port ( i_bit1,i_bit2,i_carry : in  STD_LOGIC;
           o_sum,o_carry : out  STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is

begin

o_sum<= i_bit1 XOR i_bit2 XOR i_carry;
o_carry<= (i_bit1 AND i_bit2) OR (i_carry AND i_bit1) OR (i_carry AND i_bit2);

end Behavioral;