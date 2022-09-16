library ieee;
use ieee.std_logic_1164.all;

entity fass is
	port
	(
		a: in std_ulogic;
		b: in std_ulogic;
		bin:in std_ulogic;
		bout: out std_ulogic;
		d: out std_ulogic
	);
end fass;

architecture behave of fass is
	begin
	d <= (a xor b) xor bin;
	bout<= (not a and bin)or(not a and b)or(b and bin);
end behave;
