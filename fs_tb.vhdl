library ieee;
use ieee.std_logic_1164.all;

entity fs_tb is
end fs_tb;
architecture test of fs_tb is
	component fass
	port
	(
	    a: in std_ulogic;
		b: in std_ulogic;
		bin:in std_ulogic;
		bout: out std_ulogic;
		d: out std_ulogic
	);
	end component;
	signal a,b,bin,bout,d:std_ulogic;
	begin
	full_sub:fass port map(a=>a,b=>b,bin=>bin,bout=>bout,d=>d);
	process begin
	
			a<= 'X';
			b<= 'X';
			bin<='X';
			wait for 1 ns;
		
		a<= '0';
		b<= '0';
		bin<='0';
		wait for 1 ns;
		
		a<= '0';
		b<= '0';
		bin<='1';
		wait for 1 ns;
		
		a<= '0';
		b<= '1';
		bin<='0';	
		wait for 1 ns;
		
		a<= '0';
		b<= '1';
		bin<='1';
		wait for 1 ns;
		
		a<= '1';
		b<= '0';
		bin<='0';
		wait for 1 ns;
		
		a<= '1';
		b<= '0';
		bin<='1';
		wait for 1 ns;
		
		a<= '1';
		b<= '1';
		bin<='0';
		wait for 1 ns;
		
		a<= '1';
		b<= '1';
		bin<='1';
		wait for 1 ns;
		
		assert false report "Reached the end";
		wait;
		
		end process;
	end test;
	