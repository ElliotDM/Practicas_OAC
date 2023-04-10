library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity concatenador_datos is
   port (
      entradaA : in std_logic_vector(2 downto 0); -- Entrada
      entradaB : in std_logic_vector(2 downto 0); -- Edo Sig
      salida   : out std_logic_vector(5 downto 0)
   );
end concatenador_datos;

architecture rtl of concatenador_datos is
begin
   process(entradaA, entradaB)
   begin
      salida <= entradaB & entradaA; -- Liga + Entradas
   end process;
end architecture;