----------------- COPYRIGHT © ProgBit AS 2015 ------------------------------
--
-- File:          dp_mem_altera.vhd
-- Project:       AutoReg
-- Description:   Implements a (2 ** gAddrSize)-1 x gDataSize memory with
--                independent read/write clocks. The module is written for 
--                FGPA devices. The target memory may be BLOCK RAM or LUT RAM. 
--
---------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dp_mem_altera is
   generic (
      gAddrSize     : integer := 12;
      gDataSize     : integer := 8;
      gUseBRAM      : string  := "M512";
      gRegIniVal    : integer := 0   
   );
   port (
      RstRd        : in  std_logic;   -- Synchronous Read Reset
      ClkRd        : in  std_logic;   -- Read Clock
      ClkWr        : in  std_logic;   -- Write Clock
      WriteEn      : in  std_logic;   -- Write Enable, synchronized to ClkWr
      -- Write Address In, synchronized to ClkWr
      WriteAddr    : in  std_logic_vector(gAddrSize - 1 downto 0);
      -- Write Data In, synchronized to ClkWr
      WriteData    : in  std_logic_vector(gDataSize - 1 downto 0);
      -- Read Address In, synchronized to ClkRd
      ReadAddr     : in  std_logic_vector(gAddrSize - 1 downto 0);
      -- Read Data Out, synchronized to ClkRd
      ReadData     : out std_logic_vector(gDataSize - 1 downto 0)
   );
end dp_mem_altera;

architecture RTL of dp_mem_altera is
   
-------------------------------------------------------------------------------
-- Types, constants and signals declarations
--------------------------------------------------------------------------------
   
   type tMemory is array ((2 ** gAddrSize) - 1 downto 0) of
      std_logic_vector(gDataSize - 1 downto 0);
   signal Mem          : tMemory;
   signal ReadAddrR    : std_logic_vector(gAddrSize - 1 downto 0);

   attribute ramstyle : string; 
   attribute ramstyle of Mem : signal is gUseBRAM;

begin

   -- This is the memory store. This can be targetted for LUT RAM or 
   -- BLOCK RAM depending on the generic gUseBRAM
   pWriteMemory : process(ClkWr)
   begin
      if rising_edge(ClkWr) then
         if (WriteEn = '1') then
            Mem(to_integer(unsigned(WriteAddr))) <= WriteData;
         end if;
      end if;
   end process pWriteMemory;

      pReadMemory : process(ClkRd)
      begin
         if rising_edge(ClkRd) then
            -- Synchronous reset
            if RstRd = '1' then
               ReadData <= 
                  std_logic_vector(to_unsigned(gRegIniVal, gDataSize));
            else
               ReadData <= 
                  Mem(to_integer(unsigned(ReadAddr)));
            end if;
         end if;
      end process pReadMemory;


end RTL;  
