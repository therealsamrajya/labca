library ieee;
use ieee.std_logic_1164.all;

entity fa_tb is
end fa_tb;
architecture test of fa_tb is
	component fa
	port
	(
	    a: in std_ulogic;
		b: in std_ulogic;
		cin:in std_ulogic;
		cout: out std_ulogic;
		s: out std_ulogic
	);
	end component;
	signal a,b,cin,cout,s:std_ulogic;
	begin
	full_adder:fa port map(a=>a,b=>b,cin=>cin,cout=>cout,s=>s);
	process begin
	
			a<= 'X';
			b<= 'X';
			cin<='X';
			wait for 1 ns;
		
		a<= '0';
		b<= '0';
		cin<='0';
		wait for 1 ns;
		
		a<= '0';
		b<= '0';
		cin<='1';
		wait for 1 ns;
		
		a<= '0';
		b<= '1';
		cin<='0';	
		wait for 1 ns;
		
		a<= '0';
		b<= '1';
		cin<='1';
		wait for 1 ns;
		
		assert false report "Reached the end";
		wait;
		
		end process;
	end test;
	