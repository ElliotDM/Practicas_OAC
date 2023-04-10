library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity mux_entradas is
   port (
      entradas : in  std_logic_vector(3 downto 0);
      prueba   : in  std_logic_vector(1 downto 0);
      salida   : out std_logic
   );
end mux_entradas;

architecture rtl of mux_entradas is

begin

   process(prueba, entradas)
   begin
      case prueba is
         -- W
         when "00" =>
            if entradas(3) = '1' then
               salida <= '0';
            elsif entradas(3) = '0' then
               salida <= '1';
            end if;
         -- X
         when "01" =>
            if entradas(2) = '1' then
               salida <= '0';
            elsif entradas(2) = '0' then
               salida <= '1';
            end if;
         -- Y
         when "10" =>
            if entradas(1) = '1' then
               salida <= '0';
            elsif entradas(1) = '0' then
               salida <= '1';
            end if;
         -- Z
         when "11" =>
            if entradas(0) = '1' then
               salida <= '0';
            elsif entradas(0) = '0' then
               salida <= '1';
            end if;

      end case;
   end process;
end architecture;