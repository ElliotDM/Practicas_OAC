library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity divisor_datos is
   port (
      entrada  : in std_logic_vector(12 downto 0);
      PL       : in std_logic;
      prueba   : out std_logic_vector(1 downto 0);
      VF       : out std_logic;
      MI       : out std_logic_vector(1 downto 0);
      Liga     : out std_logic_vector(3 downto 0);
      salidas  : out std_logic_vector(3 downto 0)
   );
end divisor_datos;

architecture rtl of divisor_datos is
begin
   process(entrada)
   begin
      prueba   <= entrada(12 downto 11);
      VF       <= entrada(10);
      MI       <= entrada(9 downto 8);
      Liga     <= entrada(7 downto 4);
      salidas  <= entrada(3 downto 0);
   end process;
end architecture;