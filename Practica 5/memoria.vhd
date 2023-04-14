library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoria is
   port (
      dir  : in std_logic_vector(2 downto 0);
      data : out std_logic_vector(14 downto 0)
   );
end memoria;

architecture rtl of memoria is
   type mem is array (0 to 7) of std_logic_vector(14 downto 0);
   signal internal_mem : mem;

begin
    -- Direccion     Prueba VF Liga Salida_F Salida_V
    internal_mem(0)<="000"&"1"&"110"&"0011"&"0101";
    internal_mem(1)<="010"&"0"&"111"&"1011"&"1000";
    internal_mem(2)<="011"&"0"&"101"&"1010"&"1111";
    internal_mem(3)<="100"&"1"&"100"&"0101"&"0101";
    internal_mem(4)<="001"&"1"&"010"&"1111"&"1111";
    internal_mem(5)<="100"&"0"&"011"&"1011"&"1011";
    internal_mem(6)<="100"&"0"&"100"&"0101"&"0101";
    internal_mem(7)<="100"&"0"&"001"&"0000"&"0000";    

   process(dir)
   begin
      data <= internal_mem(to_integer(unsigned(dir)));
   end process;
end architecture;