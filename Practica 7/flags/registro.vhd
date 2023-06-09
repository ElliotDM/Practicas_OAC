library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registro is
	Port (  clk : in STD_LOGIC;
			  RESET : in STD_LOGIC;
			  ENA : in STD_LOGIC;
			  ENTRADA  : in STD_LOGIC;
			  SALIDA : out STD_LOGIC;
			  SALIDA2 : out STD_LOGIC);
end registro;

architecture Behavioral of registro is
signal valor_interno : std_logic := '0';
constant alta_impedancia : std_logic := 'Z';
begin
	SALIDA2 <= valor_interno;
	
	process (clk, RESET, ENTRADA)
	begin		
		if RESET = '0' then 
			valor_interno <= '0';
		elsif rising_edge (clk) then
			valor_interno <= ENTRADA;
		end if;
	end process;
	
	process (valor_interno, ENA)
	begin
		if ENA = '1' then
			SALIDA <= alta_impedancia;
		else
			SALIDA <= valor_interno;
		end if;
	end process;
end Behavioral;