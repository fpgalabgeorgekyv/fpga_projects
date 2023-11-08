library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity adder8bit is
  port (
    dina  : in std_logic_vector(7 downto 0);
    dinb  : in std_logic_vector(7 downto 0);
    cin : in std_logic;
    --
    dout : out std_logic_vector(7 downto 0));
end adder8bit;
 
 
architecture rtl of adder8bit is

component adder1bit
  port (a,b,cin:in std_logic; s,cout: out std_logic);
end component;
signal cary : std_logic_vector(7 downto 0);
begin
     FA1:adder1bit port map (dina(0),dinb(0),cin,dout(0),cary(0));
     FA2:adder1bit port map (dina(1),dinb(1),cary(0),dout(1),cary(1));
     FA3:adder1bit port map (dina(2),dinb(2),cary(1),dout(2),cary(2));
     FA4:adder1bit port map (dina(3),dinb(3),cary(2),dout(3),cary(3));
     FA5:adder1bit port map (dina(4),dinb(4),cary(3),dout(4),cary(4));
     FA6:adder1bit port map (dina(5),dinb(5),cary(4),dout(5),cary(5));
     FA7:adder1bit port map (dina(6),dinb(6),cary(5),dout(6),cary(6));
     FA8:adder1bit port map (dina(7),dinb(7),cary(6),dout(7),cary(7));
end rtl;
