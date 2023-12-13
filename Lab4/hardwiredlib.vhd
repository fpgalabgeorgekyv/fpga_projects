library ieee;
use ieee.std_logic_1164.all;

package hardwiredlib is

component decoder4bit is
port( din            	  : in std_logic_vector(3 downto 0);
           dout             : out std_logic_vector(15 downto 0));
end component;

component decoder3bit is
port( din            	  : in std_logic_vector(3 downto 0);
           dout             : out std_logic_vector(15 downto 0));
end component;

component counter is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           incr : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR(3 downto 0));
end component;
	
end package hardwiredlib;
