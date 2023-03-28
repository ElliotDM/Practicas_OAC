library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity practica2_vhdl is
   port (
      clk : in  std_logic;
      rst : in  std_logic;
      -- Entradas
      e1  : in  std_logic;
      e2  : in  std_logic;
      -- Salidas
      s0  : out std_logic;
      s1  : out std_logic
   );
end practica2_vhdl;

architecture rtl of practica2_vhdl is

   type estado is (sm0, sm1, sm2, sm3);
   signal pres_s, next_s : estado;

begin
   process(clk, rst)
   begin
      if rst = '1' then
         pres_s <= sm0;
      elsif rising_edge(clk) then
         pres_s <= next_s;
      end if;
   end process;
   
   
   process(pres_s, e1, e2)
   begin 
      case pres_s is
         when sm0 =>
            s0 <= '1';
            s1 <= '1';
            next_s <= sm1;
         
         when sm1 =>
				s0 <= '0';
            s1 <= '1';
            
            if e1 = '0' then
               if e2 = '0' then
                  next_s <= sm2;
               else
                  next_s <= sm0;
               end if;
            else
               next_s <= sm1;
            end if;
         
         when sm2 =>
            s0 <= '1';
				s1 <= '0';
            next_s <= sm3;
         
         when sm3 =>
				s0 <= '0';
				s1 <= '0';
				
            if e2 = '1' then
                  if e1 = '1' then
                     next_s <= sm0;
                  else
                     next_s <= sm2;
                  end if;
               else
                  next_s <= sm3;
               end if;
         
         when others => null;
      end case;
   end process;
end rtl;