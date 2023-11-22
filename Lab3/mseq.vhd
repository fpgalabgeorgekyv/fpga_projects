library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
library lpm;
use lpm.lpm_components.all;
use work.mseqlib.all;

entity mseq is
port( ir            	  : in std_logic_vector(3 downto 0);
           clock, reset  : in std_logic ;
           z             	  : in std_logic ;
           code               : out std_logic_vector(35 downto 0);
           mOPs             : out std_logic_vector(26 downto 0));
end mseq;
architecture arc of mseq is

end arc;
