library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity mux_entradas is
   port (
      entradas : in std_logic_vector(3 downto 0);
      prueba   : in std_logic_vector(2 downto 0);
      aux      : in std_logic;
      salida   : out std_logic
   );
end mux_entradas;

architecture rtl of mux_entradas is

begin
   process(entradas, aux, prueba)
   begin
      if prueba = "000" then
         salida <= entradas(3);
      elsif prueba = "001" then
         salida <= entradas(2);
      elsif prueba = "010" then
         salida <= entradas(1);
      elsif prueba = "011" then
         salida <= entradas(0);
      elsif prueba = "100" then
         salida <= aux;
      end if;
   end process;
end architecture;