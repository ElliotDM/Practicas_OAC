library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity divisor_datos is
   port (
      entrada  : in std_logic_vector(17 downto 0);
      prueba   : out std_logic_vector(1 downto 0);
      liga_f   : out std_logic_vector(2 downto 0);
      liga_v   : out std_logic_vector(2 downto 0);
      salida_f : out std_logic_vector(4 downto 0);
      salida_v : out std_logic_vector(4 downto 0)
   );
end divisor_datos;

architecture rtl of divisor_datos is
begin
   process(entrada)
   begin
      prueba   <= entrada (17 downto 16);
      liga_f   <= entrada (15 downto 13);
      liga_v   <= entrada (12 downto 10);
      salida_f <= entrada (9 downto 5);
      salida_v <= entrada (4 downto 0);
   end process;
end architecture;