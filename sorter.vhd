library ieee;
use ieee.std_logic_1164.all;

--  Entity Declaration
entity sorter is
	port (clock		: in  std_logic;
		  resetn	: in  std_logic;
		  go		: in  std_logic;
		  wrinit	: in  std_logic;
		  datain 	: in  std_logic_vector (3 downto 0);
		  radd		: in  std_logic_vector (2 downto 0);
		  dataout	: out std_logic_vector (3 downto 0);
		  done		: out std_logic
		 );
end sorter;

--  Architecture Body, no need to change anything
architecture estruct of sorter is

	component datapath
		port (clock		: in  std_logic;
			  wrinit	: in  std_logic;
			  control	: in  std_logic_vector (2 downto 0);
			  i,j		: in  std_logic_vector (2 downto 0);
			  datain 	: in  std_logic_vector (3 downto 0);
			  radd		: in  std_logic_vector (2 downto 0);
			  dataout	: out std_logic_vector (3 downto 0)
			  );
	end component;
	
	component controlador
		port (clock		: in  std_logic;
			  resetn	: in  std_logic;
			  go		: in  std_logic;
			  i, j		: out std_logic_vector (2 downto 0);
			  control	: out std_logic_vector (2 downto 0);
			  done		: out std_logic
		 	  );	
	end component;

	signal control_int	: std_logic_vector (2 downto 0);
	signal vali, valj	: std_logic_vector (2 downto 0);
	
begin

	datos: datapath
	port map (clock		=> clock,
			  wrinit	=> wrinit,
			  control	=> control_int,
			  i			=> vali,
			  j			=> valj,
			  datain 	=> datain,
			  radd		=> radd,
			  dataout	=> dataout
			  );

	control: controlador
	port map (clock		=> clock,
			  resetn	=> resetn,
			  go		=> go,
			  i			=> vali,
			  j			=> valj,
			  control	=> control_int,
			  done		=> done
			  );

end estruct;