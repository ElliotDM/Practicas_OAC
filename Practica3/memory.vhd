library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory is
   port (
      dir  : in std_logic_vector(5 downto 0); -- Entradas + Edo Presente
      data : out std_logic_vector(8 downto 0) -- Liga + Salidas
   );
end memory;

architecture behavioral of memory is
   type mem is array (0 to 63) of std_logic_vector(8 downto 0);
   signal internal_mem : mem;

   begin
      internal_mem(0)<="001"&"010011";
		internal_mem(1)<="001"&"010011";
		internal_mem(2)<="001"&"010011";
		internal_mem(3)<="001"&"010011";
		internal_mem(4)<="010"&"000111";
		internal_mem(5)<="010"&"000111";
		internal_mem(6)<="010"&"000111";
		internal_mem(7)<="010"&"000111";
		internal_mem(8)<="011"&"001000";
		internal_mem(9)<="011"&"001000";
		internal_mem(10)<="011"&"001000";
		internal_mem(11)<="011"&"001000";
		internal_mem(12)<="011"&"001000";
		internal_mem(13)<="011"&"001000";
		internal_mem(14)<="011"&"001000";
		internal_mem(15)<="011"&"001000";
		internal_mem(16)<="100"&"100001";
		internal_mem(17)<="100"&"100001";
		internal_mem(18)<="010"&"100001";
		internal_mem(19)<="010"&"100001";
		internal_mem(20)<="100"&"100001";
		internal_mem(21)<="100"&"100001";
		internal_mem(22)<="010"&"100001";
		internal_mem(23)<="010"&"100001";
		internal_mem(24)<="001"&"101000";
		internal_mem(25)<="001"&"101010";
		internal_mem(26)<="001"&"101000";
		internal_mem(27)<="001"&"101010";
		internal_mem(28)<="001"&"101000";
		internal_mem(29)<="001"&"101010";
		internal_mem(30)<="001"&"101000";
		internal_mem(31)<="001"&"101010";
		internal_mem(32)<="000"&"010000";
		internal_mem(33)<="000"&"010000";
		internal_mem(34)<="000"&"010000";
		internal_mem(35)<="000"&"010000";
		internal_mem(36)<="000"&"010000";
		internal_mem(37)<="000"&"010000";
		internal_mem(38)<="000"&"010000";
		internal_mem(39)<="000"&"010000";
		internal_mem(40)<="000"&"000000";
		internal_mem(41)<="000"&"000000";
		internal_mem(42)<="000"&"000000";
		internal_mem(43)<="000"&"000000";
		internal_mem(44)<="000"&"000000";
		internal_mem(45)<="000"&"000000";
		internal_mem(46)<="000"&"000000";
		internal_mem(47)<="000"&"000000";
		internal_mem(48)<="000"&"000000";
		internal_mem(49)<="000"&"000000";
		internal_mem(50)<="000"&"000000";
		internal_mem(51)<="000"&"000000";
		internal_mem(52)<="000"&"000000";
		internal_mem(53)<="000"&"000000";
		internal_mem(54)<="000"&"000000";
		internal_mem(55)<="000"&"000000";
		internal_mem(56)<="000"&"000000";
		internal_mem(57)<="000"&"000000";
		internal_mem(58)<="000"&"000000";
		internal_mem(59)<="000"&"000000";
		internal_mem(60)<="000"&"000000";
		internal_mem(61)<="000"&"000000";
		internal_mem(62)<="000"&"000000";
		internal_mem(63)<="000"&"000000";

   process(dir)
         begin
            data <= internal_mem(to_integer(unsigned(dir)));
   end process;
end architecture;