library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoria is
   port (
      dir  : in std_logic_vector(3 downto 0);
      data : out std_logic_vector(12 downto 0)
   );
end memoria;

architecture rtl of memoria is
   type mem is array (0 to 15) of std_logic_vector(12 downto 0);
   signal internal_mem : mem;

begin
   -- Direccion       Prueba   VF    MI     Liga    Salidas
   internal_mem(0)  <= "00" & "0" & "00" & "0000" & "0101";
   internal_mem(1)  <= "00" & "0" & "10" & "0000" & "1000";
   internal_mem(2)  <= "00" & "0" & "01" & "0010" & "0010";
   internal_mem(3)  <= "10" & "1" & "11" & "0000" & "0001";
   internal_mem(4)  <= "00" & "0" & "00" & "0000" & "0011";
   internal_mem(5)  <= "11" & "0" & "01" & "0000" & "1000";
   internal_mem(6)  <= "00" & "0" & "00" & "0000" & "1101";
   internal_mem(7)  <= "11" & "0" & "01" & "0000" & "0010";
   internal_mem(8)  <= "00" & "0" & "00" & "0000" & "0001";
   internal_mem(9)  <= "01" & "1" & "01" & "1011" & "0000";
   internal_mem(10) <= "11" & "0" & "01" & "0110" & "0011";
   internal_mem(11) <= "00" & "0" & "10" & "0000" & "1010";
   internal_mem(12) <= "11" & "0" & "01" & "1101" & "0000";
   internal_mem(13) <= "10" & "1" & "11" & "0000" & "0100";
   internal_mem(14) <= "11" & "0" & "01" & "1011" & "1000";
   internal_mem(15) <= "11" & "0" & "01" & "0000" & "0000";

       
   process(dir)
   begin
      data <= internal_mem(to_integer(unsigned(dir)));
   end process;
end architecture;