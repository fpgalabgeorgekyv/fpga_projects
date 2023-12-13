library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
library lpm;
use lpm.lpm_components.all;
use work.hardwiredlib.all;

entity decoder4bit is
port( din            	  : in std_logic_vector(3 downto 0);
           dout             : out std_logic_vector(15 downto 0));
end decoder4bit;
architecture arc of decoder3bit is
begin
process (din)
begin
case din is
when "0000" => dout <="0000000000000001";
when "0001" => dout <="0000000000000010";
when "0010" => dout <="0000000000000100";
when "0011" => dout <="0000000000001000";
when "0100" => dout <="0000000000010000";
when "0101" => dout <="0000000000100000";
when "0110" => dout <="0000000001000000";
when "0111" => dout <="0000000010000000";
when "1000" => dout <="0000000100000000";
when "1001" => dout <="0000001000000000";
when "1010" => dout <="0000010000000000";
when "1011" => dout <="0000100000000000";
when "1100" => dout <="0001000000000000";
when "1101" => dout <="0010000000000000";
when "1110" => dout <="0100000000000000";
when "1111" => dout <="1000000000000000";
when others => dout <="0000000000000000";
end case;
end process;
end arc;
