library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
library lpm;
use lpm.lpm_components.all;
use work.hardwiredlib.all;

entity decoder3bit is
port( din            	  : in std_logic_vector(2 downto 0);
           dout             : out std_logic_vector(7 downto 0));
end decoder3bit;
architecture arc of decoder3bit is
begin
process (din)
begin
case din is
when "000" => dout <="00000001";
when "001" => dout <="00000010";
when "010" => dout <="00000100";
when "011" => dout <="00001000";
when "100" => dout <="00010000";
when "101" => dout <="00100000";
when "110" => dout <="01000000";
when "111" => dout <="10000000";
when others => dout <="00000000";
end case;
end process;
end arc;
