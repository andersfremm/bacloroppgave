----------------- COPYRIGHT © ProgBit AS 2016 ------------------------------
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity demo_test_RAM is
   generic (
      gVendor       : string(1 to 6) := "Xilinx";
      gAddrSize     : integer := 12;
      gDataSize     : integer := 8;
      gUseBRAM      : boolean := true;
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
end demo_test_RAM;

architecture RTL of demo_test_RAM is
   
   component dp_mem_altera is
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
   end component dp_mem_altera;

   component dp_mem_xilinx is
      generic (
         gAddrSize     : integer := 12;
         gDataSize     : integer := 8;
         gUseBRAM      : boolean := true;
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
   end component dp_mem_xilinx;

begin

   gXilinxMemory : if gVendor = "Xilinx" or gVendor = "sim___" generate
      idp_mem_xilinx : dp_mem_xilinx
         generic map (
            gAddrSize     => gAddrSize,
            gDataSize     => gDataSize,
            gUseBRAM      => gUseBRAM,
            gRegIniVal    => gRegIniVal   
         )
         port map (
            RstRd        => RstRd,
            ClkRd        => ClkRd,
            ClkWr        => ClkWr,
            WriteEn      => WriteEn,
            -- Write Address In, synchronized to ClkWr
            WriteAddr    => WriteAddr,
            -- Write Data In, synchronized to ClkWr
            WriteData    => WriteData,
            -- Read Address In, synchronized to ClkRd
            ReadAddr     => ReadAddr,
            -- Read Data Out, synchronized to ClkRd
            ReadData     => ReadData
         );
   end generate; 

   gAlteraMemory : if gVendor = "Altera" generate
      idp_mem_altera : dp_mem_altera
         generic map (
            gAddrSize     => gAddrSize,
            gDataSize     => gDataSize,
            gUseBRAM      => "M512",
            gRegIniVal    => gRegIniVal   
         )
         port map (
            RstRd        => RstRd,
            ClkRd        => ClkRd,
            ClkWr        => ClkWr,
            WriteEn      => WriteEn,
            -- Write Address In, synchronized to ClkWr
            WriteAddr    => WriteAddr,
            -- Write Data In, synchronized to ClkWr
            WriteData    => WriteData,
            -- Read Address In, synchronized to ClkRd
            ReadAddr     => ReadAddr,
            -- Read Data Out, synchronized to ClkRd
            ReadData     => ReadData
         );
   end generate; 

end RTL;
