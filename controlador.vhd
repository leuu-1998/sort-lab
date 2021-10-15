-- se implementa la maquina de estados FSM-D
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
	type STATE_TYPE is (S0,S1,S2,S4,S5,S7);
	--initial state
	signal state, next_state : STATE_TYPE;
	signal cj, ci : unsigned(2 downto 0) := (others => '0'); 
	signal cj_n, ci_n : unsigned(2 downto 0) := (others => '0'); 
begin
-- use the two process model for the FSM
-- outputs to the datapath should be Moore type to avoid timing issues

	process(clock,resetn)
	begin
	-- reset asincrono
		if (resetn = '0') then
			state <= S0;
			-- cuando se usa el reset cj y ci se reinician en 0
			cj <= (others => '0');
			ci <= (others => '0');
		elsif (rising_edge(clock) ) then
			state <= next_state;
			ci<=ci_n;
			cj<=cj_n;
		end if ;
	end process;

--process 2
	process(state,go,ci,cj)
	begin

		ci_n <= ci;
		cj_n <= cj;
		control <= (others => '0'); 
		next_state <= state;
		-- control debe tener valor por defecto (otro de los estados ya asignados)
		case state is
			when S0 =>
				control <= (others => '0'); 
				done <= '0';
				ci_n <= "000";
				cj_n <= "000";
				if (go='0') then
					next_state <= S1;
				else 
					next_state <= S0;
				end if;
			
			when S1 =>
				control <= "001";
				done <= '0';
				ci_n <= "000";
				cj_n <= "000";
				if(go='1') then 
					next_state <= S2;
				else 
					next_state <= S1;
				end if;
			
			when S2 =>
				control <= "010";
				done <= '0';
				cj_n <= ci;
				ci_n <= ci;
				next_state <= S4;
			
			when S4 =>
				control <= "100";
				done <= '0';
				cj_n <= cj + 1;
				ci_n<= ci;
				if(cj="110")then
					next_state <= S5;
				else 
					next_state <= S4;
				end if;

			when S5 =>
				control <= "101";
				done <= '0';
				ci_n<=ci + 1;
				cj_n<=cj;
				--preguntamos si llegamos al tope de i
				if(ci = "110") then 
					next_state <= S7;
				else
					next_state <= S2;
				end if;

			when S7 =>
				control <= "111";
				done <= '1';
				ci_n <= "000";
				cj_n <= "000";
				next_state <= S7;
				
		end case;
		end process;
		-- se asigna las señales internas a las salidas i, j
		i <= std_logic_vector(ci_n);
		j <= std_logic_vector(cj_n);
end behav;