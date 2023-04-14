library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity divisor_datos is
   port (
      entrada   : in std_logic_vector(14 downto 0);
      prueba    : out std_logic_vector(2 downto 0);
      vf        : out std_logic;
      liga      : out std_logic_vector(2 downto 0);
      salida_F  : out std_logic_vector(3 downto 0);
      salida_V  : out std_logic_vector(3 downto 0)
   );
end divisor_datos;

architecture rtl of divisor_datos is
begin
   process(entrada)
   begin
      prueba   <= entrada(14 downto 12);
      vf       <= entrada(11);
      liga     <= entrada(10 downto 8);
      salida_F <= entrada(7 downto 4);
      salida_V <= entrada(3 downto 0);
   end process;
end architecture;