library ieee;
use ieee.std_logic_1164.all;

package mseqlib is

component mux4 is
generic (n:integer:=8);
port(dina,dinb : in std_logic_vector (n-1 downto 0);
	dinc,dind : in std_logic_vector (n-1 downto 0);
	sel : in std_logic_vector(1 downto 0);
	dout : out std_logic_vector (n-1 downto 0));
end component;

component regnbit is
generic (n: integer :=8);
	port( din : in std_logic_vector(n-1 downto 0);
		clk,rst,ld : in std_logic;
		inc : in std_logic;
		dout : out std_logic_vector(n-1 downto 0));
end component;


end package mseqlib;
