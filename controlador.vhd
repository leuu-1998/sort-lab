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
	signal state, next_state : STATE_TYPE;
	signal cj, ci : std_logic_vector(2 downto 0) := (others => '0'); 
begin
-- use the two process model for the FSM
-- outputs to the datapath should be Moore type to avoid timing issues

	process(clock,resetn)
	begin
	-- reset asincrono
	-- reset asincrono 2
		if (resetn = '1') then
			state <= S0;
			-- cuando se usa el reset cj y ci se reinician en 0
			cj <= (others '0');
			ci <= (others '0');
			control <= '000';
			done <='0';
		elsif (rising_edge(clock) ) then
			state <= next_state;
		end if ;
	end process;

--process 2
	process(state)
	begin
		case state is
			when S0 =>
				control <='000';
				done <= '0';
				if (go='0') then
					next_state <= S1;
				end if;
			
			when S1 =>
				control <= '001';
				done <= '0';
				if(go='1') then 
					next_state <= S2;
				end if;
			
			when S2 =>
			-- se asgina que i y j son cero
				control <= '010';
				done <= '0';
				next_state <= S3;
			
			when S3 =>
				control <= '011';
				done <= '0';
				next_state <= S4;
				
			when S4 =>
				control <= '100';
				done <= '0';
				--preguntando j para pasar a otro estad
				if(cj='111') then 
					next_state <= S5;
				else 
					next_state <= S3;
				end if;
			when S5 =>
				control <= '101';
				done <= '0';
				--preguntamos para i
				-- 14
				if(ci = '110') then 
					next_state <= S7;
				else
					next_state <= S6;
				end if;

			when S6 =>
				control <= '110';
				done <= '0';
				next_state <= S2;

			when S7 =>
				control <= '111';
				done <= '1';
				--queda en duda si al S0 o al S1
				next_state <= S0;
		end case;
		-- aqui se agregan los outputs
		-- i , j , done
		-- i , j = 0 , S0 , S1 , S7
		-- cj, ci
		cj <= ci when state = S2 ;
		cj <= cj + 1  when state = S3;
		ci <= ci + 1 when state = S6;
		end process;
		-- se asigna las señales internas a las salidas i, j
		i <= ci;
		j <= cj;
end behav;
