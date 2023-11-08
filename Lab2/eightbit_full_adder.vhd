library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity eightbit_full_adder is
  port (
    i_bit1  : in std_logic_vector(7 downto 0);
    i_bit2  : in std_logic_vector(7 downto 0);
    i_carry : in std_logic;
    --
    o_sum   : out std_logic_vector(7 downto 0);
    o_carry : out std_logic
    );
end eightbit_full_adder;
 
 
architecture rtl of eightbit_full_adder is

component full_adder
  port (i_bit1,i_bit2,i_carry:in std_logic; o_sum,o_carry: out std_logic);
end component;
signal cary : std_logic_vector(6 downto 0);
begin
     FA1:full_adder port map (i_bit1(0),i_bit2(0),i_carry,o_sum(0),cary(0));
     FA2:full_adder port map (i_bit1(1),i_bit2(1),cary(0),o_sum(1),cary(1));
     FA3:full_adder port map (i_bit1(2),i_bit2(2),cary(1),o_sum(2),cary(2));
     FA4:full_adder port map (i_bit1(3),i_bit2(3),cary(2),o_sum(3),cary(3));
     FA5:full_adder port map (i_bit1(4),i_bit2(4),cary(3),o_sum(4),cary(4));
     FA6:full_adder port map (i_bit1(5),i_bit2(5),cary(4),o_sum(5),cary(5));
     FA7:full_adder port map (i_bit1(6),i_bit2(6),cary(5),o_sum(6),cary(6));
     FA8:full_adder port map (i_bit1(7),i_bit2(7),cary(6),o_sum(7),o_carry);
end rtl;
