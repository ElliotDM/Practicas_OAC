library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity incrementador is
   port (
      entrada : in std_logic_vector(2 downto 0);
      salida : out std_logic_vector(2 downto 0)
   );
end incrementador;

architecture rtl of incrementador is

begin
   process(entrada)
   begin
      salida <= entrada + 1;
   end process;
end architecture;