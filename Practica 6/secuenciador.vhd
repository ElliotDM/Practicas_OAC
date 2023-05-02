library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity secuenciador is
   port (
      clk  : in std_logic;
      sel  : in std_logic_vector(1 downto 0);
      liga : in std_logic_vector(3 downto 0);
      tran : in std_logic_vector(3 downto 0);
      int  : in std_logic_vector(3 downto 0);
      Y    : out std_logic_vector(3 downto 0)
   );
end secuenciador;

architecture rtl of secuenciador is

   signal mPC : std_logic_vector(3 downto 0) := "0000";
   signal aux : std_logic_vector(3 downto 0);

begin
   process(clk, sel, liga, tran, int)
   begin
      if rising_edge(clk) then
         case sel is
            when "00" =>
               Y <= mPC;
               aux <= mPC;
               
            when "01" =>
               Y <= liga;
               aux <= liga;

            when "10" =>
               Y <= tran;
               aux <= tran;

            when "11" =>
               Y <= int;
               aux <= int;
            
         end case;
      end if;

      mPC <= aux + 1;

   end process;
end architecture;