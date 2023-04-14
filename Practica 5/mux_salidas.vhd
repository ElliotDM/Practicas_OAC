library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity mux_salidas is
   port (
      salida_F : in std_logic_vector(3 downto 0);
      salida_V : in std_logic_vector(3 downto 0);
      selector : in std_logic;
      salida   : out std_logic_vector(3 downto 0)
   );
end mux_salidas;

architecture rtl of mux_salidas is

begin
   process(salida_F, salida_V, selector)
   begin
      if selector = '0' then
         salida <= salida_F;
      else
         salida <= salida_V;
      end if;
   end process;

end architecture;