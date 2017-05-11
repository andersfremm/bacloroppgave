library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity TXCrcGen is
generic(TxDataSize : integer := 4);
Port (--port decleration
      Clk_50     : in std_logic;
      reset      : in std_logic;
      crc        : out std_logic_vector(TxDataSize-1 downto 0);
      TxData     : in std_logic_vector(TxDataSize-1 downto 0);
      ComputeCrc : in std_logic;
      ClrCrc     : in std_logic
      );
end;

Architecture rtl of TXCrcGen is

 SIGNAL CrcBuff          : STD_LOGIC_VECTOR(31 DOWNTO 0) := (others => '1');
 SIGNAL CrcComp          : STD_LOGIC_VECTOR(31 DOWNTO 0);
 SIGNAL CrcVecTest          : STD_LOGIC_VECTOR(63 DOWNTO 0);
 SIGNAL CrcCnt           : integer range 0 to 7; 
 SIGNAL CrcTest           : integer range 0 to 15;
 SIGNAL Crcfin          : STD_LOGIC_VECTOR(31 DOWNTO 0) := (others => '1');
 SIGNAL CrcfinN          : STD_LOGIC_VECTOR(31 DOWNTO 0) := (others => '1');   
 begin  
 

crc <= Crcfin((CrcCnt*4)+3)&Crcfin((CrcCnt*4)+2)&Crcfin((CrcCnt*4)+1)&Crcfin(CrcCnt*4);
CrcVecTest((CrcTest*4)+3 downto Crctest*4) <= TxData;
 
CrcBuff(0) <= '0'  when reset = '1' else TxData(0) XOR CrcComp(28); 
CrcBuff(1) <= '0'  when reset = '1' else TxData(0) XOR TxData(1) XOR CrcComp(29) XOR CrcComp(28); 
CrcBuff(2) <= '0'  when reset = '1' else TxData(0) XOR TxData(1) XOR TxData(2) XOR CrcComp(30) XOR CrcComp(29) XOR CrcComp(28); 
CrcBuff(3) <= '0'  when reset = '1' else TxData(1) XOR TxData(2) XOR TxData(3) XOR CrcComp(31) XOR CrcComp(30) XOR CrcComp(29); 
CrcBuff(4) <= '0'  when reset = '1' else TxData(0) XOR TxData(2) XOR TxData(3) XOR CrcComp(0) XOR CrcComp(31) XOR CrcComp(30) XOR CrcComp(28); 
CrcBuff(5) <= '0'  when reset = '1' else TxData(0) XOR TxData(1) XOR TxData(3) XOR CrcComp(1) XOR CrcComp(31) XOR CrcComp(29) XOR CrcComp(28); 
CrcBuff(6) <= '0'  when reset = '1' else TxData(1) XOR TxData(2) XOR CrcComp(2) XOR CrcComp(30) XOR CrcComp(29); 
CrcBuff(7) <= '0'  when reset = '1' else TxData(0) XOR TxData(2) XOR TxData(3) XOR CrcComp(3) XOR CrcComp(31) XOR CrcComp(30) XOR CrcComp(28); 
CrcBuff(8) <= '0'  when reset = '1' else TxData(0) XOR TxData(1) XOR TxData(3) XOR CrcComp(4) XOR CrcComp(31) XOR CrcComp(29) XOR CrcComp(28); 
CrcBuff(9) <= '0'  when reset = '1' else TxData(1) XOR TxData(2) XOR CrcComp(5) XOR CrcComp(30) XOR CrcComp(29); 
CrcBuff(10) <= '0' when reset = '1' else TxData(0) XOR TxData(2) XOR TxData(3) XOR CrcComp(6) XOR CrcComp(31) XOR CrcComp(30) XOR CrcComp(28); 
CrcBuff(11) <= '0' when reset = '1' else TxData(0) XOR TxData(1) XOR TxData(3) XOR CrcComp(7) XOR CrcComp(31) XOR CrcComp(29) XOR CrcComp(28); 
CrcBuff(12) <= '0' when reset = '1' else TxData(0) XOR TxData(1) XOR TxData(2) XOR CrcComp(8) XOR CrcComp(30) XOR CrcComp(29) XOR CrcComp(28); 
CrcBuff(13) <= '0' when reset = '1' else TxData(1) XOR TxData(2) XOR TxData(3) XOR CrcComp(9) XOR CrcComp(31) XOR CrcComp(30) XOR CrcComp(29); 
CrcBuff(14) <= '0' when reset = '1' else TxData(2) XOR TxData(3) XOR CrcComp(10) XOR CrcComp(31) XOR CrcComp(30); 
CrcBuff(15) <= '0' when reset = '1' else TxData(3) XOR CrcComp(11) XOR CrcComp(31); 
CrcBuff(16) <= '0' when reset = '1' else TxData(0) XOR CrcComp(12) XOR CrcComp(28); 
CrcBuff(17) <= '0' when reset = '1' else TxData(1) XOR CrcComp(13) XOR CrcComp(29); 
CrcBuff(18) <= '0' when reset = '1' else TxData(2) XOR CrcComp(14) XOR CrcComp(30); 
CrcBuff(19) <= '0' when reset = '1' else TxData(3) XOR CrcComp(15) XOR CrcComp(31); 
CrcBuff(20) <= '0' when reset = '1' else CrcComp(16); 
CrcBuff(21) <= '0' when reset = '1' else CrcComp(17); 
CrcBuff(22) <= '0' when reset = '1' else TxData(0) XOR CrcComp(18) XOR CrcComp(28); 
CrcBuff(23) <= '0' when reset = '1' else TxData(0) XOR TxData(1) XOR CrcComp(19) XOR CrcComp(29) XOR CrcComp(28); 
CrcBuff(24) <= '0' when reset = '1' else TxData(1) XOR TxData(2) XOR CrcComp(20) XOR CrcComp(30) XOR CrcComp(29); 
CrcBuff(25) <= '0' when reset = '1' else TxData(2) XOR TxData(3) XOR CrcComp(21) XOR CrcComp(31) XOR CrcComp(30); 
CrcBuff(26) <= '0' when reset = '1' else TxData(0) XOR TxData(3) XOR CrcComp(22) XOR CrcComp(31) XOR CrcComp(28); 
CrcBuff(27) <= '0' when reset = '1' else TxData(1) XOR CrcComp(23) XOR CrcComp(29); 
CrcBuff(28) <= '0' when reset = '1' else TxData(2) XOR CrcComp(24) XOR CrcComp(30); 
CrcBuff(29) <= '0' when reset = '1' else TxData(3) XOR CrcComp(25) XOR CrcComp(31); 
CrcBuff(30) <= '0' when reset = '1' else CrcComp(26); 
CrcBuff(31) <= '0' when reset = '1' else CrcComp(27); 

   CrcComp_clk : process(Clk_50)
   begin
      if rising_edge(Clk_50) then
         if reset = '1' then
            CrcComp <= (others => '1');
         elsif ClrCrc = '1' then
            CrcComp <= (others => '1');
         elsif ComputeCrc = '1' then
            CrcComp <= CrcBuff;
         end if;
      end if;
   end process CrcComp_clk; 

   pCrcDataCheck: process(Clk_50)
   begin
      if rising_edge(Clk_50) then
         if ComputeCrc = '0' then
            CrcTest <= 0;
         else
            if Crctest = (15) then
               Crctest <= 0;
            else
               Crctest <= Crctest + 1;
            end if;
         end if;
      end if;
   end process pCrcDataCheck;    

   pCrcCnt: process(Clk_50)
   begin
      if rising_edge(Clk_50) then
         if ComputeCrc = '1' then
            CrcCnt <= 7;
            Crcfin <= not(CrcBuff);
         else
            if CrcCnt = (0) then
               CrcCnt <= 7;
            else
               CrcCnt <= CrcCnt - 1;
            end if;
         end if;
      end if;
   end process pCrcCnt; 

crcfinN <= crcFin;
End;
