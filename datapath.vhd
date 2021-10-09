library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--  Entity Declaration
entity datapath is
	port (clock		: in  std_logic;
		  wrinit	: in  std_logic;
		  control	: in  std_logic_vector (2 downto 0);
		  i,j		: in  std_logic_vector (2 downto 0);
		  datain 	: in  std_logic_vector (3 downto 0);
		  radd		: in  std_logic_vector (2 downto 0);
		  dataout	: out std_logic_vector (3 downto 0)
		 );
end datapath;

--  Architecture Body
architecture behav of datapath is
	type file_register is array(0 to 7) of std_logic_vector(3 downto 0);
	signal R: file_register; 
-- then, R contains 8 registers, each register has 4 bits
-- you may need additional signals here

begin
-- since there is no asynchronous reset, only one-process model applies here
-- be careful how you shows the output signals in the datapath
	process (clock)
	begin
		if (clock'event and clock = '1') then
-- complete
		end if;
	end process;

end behav;
