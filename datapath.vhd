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
	--registro extra
	signal R8 : std_logic_vector(3 downto 0);
begin
-- since there is no asynchronous reset, only one-process model applies here
-- be careful how you shows the output signals in the datapath
	process (clock,i,j,radd,wrinit,control,R)

	variable raddi : integer := 0;
	variable ci,cj: integer;

	begin
	raddi := TO_INTEGER(unsigned(radd));
	ci := TO_INTEGER(unsigned(i));
	cj := TO_INTEGER(unsigned(j));
	R8 <= R(cj);

		if (clock'event and clock = '1') then
			-- en el estado de llenado de datos
			if (control = "000") then 
				-- reset en 0
				dataout <= "0000";
				
			elsif (wrinit = '1' and control = "001") then 
				-- radd 000 -> 111
				R(raddi) <= datain;
				dataout <= datain;
				
			-- inicia ordenamiento
			elsif (control = "100") then 
				-- inicio de algoritmo
				if( R(cj) < R(ci)) then 
					R(cj)<=R(ci);
					R(ci)<=R8;
				end if;
				dataout <= "0000";
				
			elsif (control = "111") then 
				dataout <= R(raddi);
			end if;
			
		end if;
	end process;
end behav;
