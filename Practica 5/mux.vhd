library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity mux is
   port (
      sel : in std_logic;
      e0  : in std_logic_vector(2 downto 0);
      e1  : in std_logic_vector(2 downto 0);
      salida : out std_logic_vector(2 downto 0)
   );
end mux;

architecture rtl of mux is

begin
   process(sel, e0, e1)
   begin
      if sel = '0' then
         salida <= e0;
      elsif sel = '1' then
         salida <= e1;
      end if;        
   end process;
end architecture;