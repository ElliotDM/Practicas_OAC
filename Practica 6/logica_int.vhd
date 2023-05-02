library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity logica_int is
   port (
      CC   : in std_logic;
      MI   : in std_logic_vector(1 downto 0);
      Sel  : out std_logic_vector(1 downto 0);
      PL   : out std_logic;
      NMAP : out std_logic;
      VECT : out std_logic
   );
end logica_int;

architecture rtl of logica_int is

begin
process(MI, CC)
begin
   case MI is
      -- Paso contiguo
      when "00" =>
         sel   <= "00";
         PL    <= '0';
         NMAP  <= '0';
         VECT  <= '0';

      -- Salto
      when "01" =>
         if CC = '1' then
            sel   <= "00";
            PL    <= '0';
            NMAP  <= '0';
            VECT  <= '0';
         else
            sel   <= "01";
            PL    <= '1';
            NMAP  <= '0';
            VECT  <= '0';
         end if;
      
      -- Salto de Transformacion
      when "10" =>
         sel   <= "10";
         PL    <= '0';
         NMAP  <= '1';
         VECT  <= '0';

      -- Salto de interrupcion
      when "11" =>
         if CC = '1' then
            sel   <= "00";
            PL    <= '0';
            NMAP  <= '0';
            VECT  <= '0';
         else
            sel   <= "11";
            PL    <= '0';
            NMAP  <= '0';
            VECT  <= '1';
         end if;
   end case;
end process;


end architecture;