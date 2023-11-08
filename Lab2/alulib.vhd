library ieee;
use ieee.std_logic_1164.all;

package alulib is

component mux2 is
generic (n:integer:=8);
port(dina,dinb : in std_logic_vector (n-1 downto 0);
	sel : in std_logic;
	dout : out std_logic_vector (n-1 downto 0));
end component;

component mux4 is
generic (n:integer:=8);
port(dina,dinb : in std_logic_vector (n-1 downto 0);
	dinc,dind : in std_logic_vector (n-1 downto 0);
	sel : in std_logic_vector(1 downto 0);
	dout : out std_logic_vector (n-1 downto 0));
end component;

component adder8bit is
port(dina,dinb : in std_logic_vector (7 downto 0);
	cin : in std_logic;
	dout : out std_logic_vector (7 downto 0));
end component;

end package alulib;
