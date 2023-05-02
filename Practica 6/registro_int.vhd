library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity registro_int is
   port (
      clk      : in std_logic;
      rst      : in std_logic;
      VECT     : in std_logic;
      entrada  : in std_logic_vector(3 downto 0);
      salida   : out std_logic_vector(3 downto 0)
   );
end registro_int;

architecture rtl of registro_int is
   signal internal_value : std_logic_vector(3 downto 0) := b"0000";
begin
   process(clk, rst, entrada)
   begin
      if rst = '0' then
         internal_value <= b"0000";
      elsif rising_edge(clk) then
         internal_value <= entrada;
      end if;
   end process;

   process(internal_value, VECT)
   begin
      if VECT = '1' then
         salida <= internal_value;
      end if;
   end process;
end architecture;