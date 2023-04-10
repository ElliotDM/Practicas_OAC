library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity mux_ligas is
   port (
      liga_f   : in  std_logic_vector(2 downto 0); 
      liga_v   : in  std_logic_vector(2 downto 0); 
      selector : in  std_logic;
      salida   : out std_logic_vector(2 downto 0)
   );
end mux_ligas;

architecture rtl of mux_ligas is

begin

   process(liga_f, liga_v, selector)
   begin
      if selector = '1' then
         salida <= liga_f;
      else
         salida <= liga_v;
      end if;
   end process;

end architecture;