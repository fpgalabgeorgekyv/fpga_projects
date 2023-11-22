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
signal addr: std_logic_vector (5 downto 0);
signal muxout, muxreg: std_logic_vector (5 downto 0);
signal mux0, mux1: std_logic_vector (5 downto 0);
signal s1,s0: std_logic 
signal irmap: in std_logic_vector(3 downto 0);
signal bt : std_logic 
signal cond,control,selmux: std_logic_vector(1 downto 0);
signal microcode: std_logic_vector(35 downto 0);
signal sel, sel0: STD_LOGIC
begin
	irmap <= ir && 00;
	pl: process(REGOUT,addr,sel1,sel0,reset);
	begin
	if reset='1' then
		mux0 <= "000000";
		mux1 <= "000000";
		s1 <= 0;
		s0 <= 0;
	else
		mux0 <= REGOUT+1;
		mux1 <= addr;
		s1 <= sel1;
		s0 <= sel0;
		end if
	end process
	mux4 port map (mux0,mux1,irmap,ZERO,s1&s0,muxout)
	mux4 port map (sel,z,not(z),sel0,cond,muxout)
	regnbit port map (muxout,clock,reset,control,muxreg)
	mseq_logic
end arc;
