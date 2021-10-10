--se implementa la maquina de estados FSM-D
-- estados inicial de reset S0 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--  Entity Declaration
entity controlador is
	port (clock		: in  std_logic;
		  resetn	: in  std_logic;
		  go		: in  std_logic;
		  i, j		: out std_logic_vector (2 downto 0);
		  control	: out std_logic_vector (2 downto 0);
		  done		: out std_logic
		 );
end controlador;

--  Architecture Body
architecture behav of controlador is
-- you may need to define state type signals and other signals
	type STATE_TYPE is (S0,S1,S2,S3,S4);
	--initial state
	signal state: STATE_TYPE := S0;

begin
-- use the two process model for the FSM
-- outputs to the datapath should be Moore type to avoid timing issues

	process(clock,resetn)
	begin
	-- reset asincrono
	-- reset asincrono 2
		if (resetn = '1') then
			state <= S0;
		end if;
	end process;

--process 2
	process(state)
	begin
		
	end process;
end behav;
