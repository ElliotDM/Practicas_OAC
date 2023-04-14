library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity registro is
   port (
      clk : in std_logic;
      rst : in std_logic;
      entrada : in std_logic_vector(2 downto 0);
      salida : out std_logic_vector(2 downto 0)
   );
end registro;

architecture rtl of registro is
   signal internal_value : std_logic_vector(2 downto 0) := b"000";
begin
   process(clk, rst, entrada)
   begin
      if rst = '0' then
         internal_value <= b"000";
      elsif rising_edge(clk) then
         internal_value <= entrada;
      end if;
   end process;

   process(internal_value)
   begin
      salida <= internal_value;
   end process;
end architecture;