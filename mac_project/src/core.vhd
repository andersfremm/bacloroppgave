----------------- COPYRIGHT � ProgBit AS 2016 ----------------------------------
-- This file has been generated using ProgBit autoreg tools
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity core is
   generic (
      gAddSz                             : integer   := 16;
      gDatSz                             : integer   := 16;
      gVendor                            : string    := "Xilinx"
   );
   port (
      Clk                                : in  std_logic;
      Rst                                : in  std_logic;
      ClkCpu                             : in  std_logic;
      CmdBI                              : in  std_logic_vector(gAddSz+gDatSz+2 downto 0);
      RdBBO                              : out std_logic_vector(gDatSz+1 downto 0);
      i0rb_ledled0O                      : out std_logic;
      i0rb_ledled1O                      : out std_logic;
      i0rb_ledled2O                      : out std_logic;
      i0rb_ledled3O                      : out std_logic
   );
end entity;

architecture RTL of core is

component core_addressdecoder is
   generic (
      gAddSz                             : integer   := 16;
      gDatSz                             : integer   := 16
   );
   port (
      ClkCpu                             : in  std_logic;
      CmdBI                              : in  std_logic_vector(gAddSz+gDatSz+2 downto 0);
      RdBBO                              : out std_logic_vector(gDatSz+1 downto 0);
      i0countCmdBO                       : out std_logic_vector(gAddSz+gDatSz+2 downto 0);
      i0countRdBBI                       : in  std_logic_vector(gDatSz+1 downto 0);
      i0rb_memCmdBO                      : out std_logic_vector(gAddSz+gDatSz+2 downto 0);
      i0rb_memRdBBI                      : in  std_logic_vector(gDatSz+1 downto 0);
      i0rb_ledCmdBO                      : out std_logic_vector(gAddSz+gDatSz+2 downto 0);
      i0rb_ledRdBBI                      : in  std_logic_vector(gDatSz+1 downto 0);
      i0rb_revisionCmdBO                 : out std_logic_vector(gAddSz+gDatSz+2 downto 0);
      i0rb_revisionRdBBI                 : in  std_logic_vector(gDatSz+1 downto 0)
   );
end component;

component counter_ip is
   generic (
      gAddSz                             : integer   := 16;
      gDatSz                             : integer   := 16;
      gVendor                            : string    := "Xilinx"
   );
   port (
      Clk                                : in  std_logic;
      Rst                                : in  std_logic;
      ClkCpu                             : in  std_logic;
      CmdBI                              : in  std_logic_vector(gAddSz+gDatSz+2 downto 0);
      RdBBO                              : out std_logic_vector(gDatSz+1 downto 0);
-- Manually added      
      CounterO                           : out std_logic_vector(15 downto 0); -- Counter
      CounterMsbO                        : out std_logic -- Pseudo MSB. 50% duty cycle and periode based on value for max 
   );
end component;

component led_regbank is
   generic (
      gAddSz                             : integer   := 16;
      gDatSz                             : integer   := 16
   );
   port (
      Clk                                : in  std_logic;
      Rst                                : in  std_logic;
      CmdBI                              : in  std_logic_vector(gAddSz+gDatSz+2 downto 0);
      RdBBO                              : out std_logic_vector(gDatSz+1 downto 0);
      led0O                              : out std_logic;
      led1O                              : out std_logic;
      led2O                              : out std_logic;
      led3O                              : out std_logic
   );
end component;

component mem_regbank is
   generic (
      gAddSz                             : integer   := 16;
      gDatSz                             : integer   := 16
   );
   port (
      Clk                                : in  std_logic;
      Rst                                : in  std_logic;
      CmdBI                              : in  std_logic_vector(gAddSz+gDatSz+2 downto 0);
      RdBBO                              : out std_logic_vector(gDatSz+1 downto 0);
      RamWeO                             : out std_logic;
      RamCeO                             : out std_logic;
      RamAddrO                           : out std_logic_vector(7 downto 0);
      RamDataI                           : in  std_logic_vector(35 downto 0);
      RamDataO                           : out std_logic_vector(35 downto 0)
   );
end component;

component revision_regbank is
   generic (
      gAddSz                             : integer   := 16;
      gDatSz                             : integer   := 16
   );
   port (
      Clk                                : in  std_logic;
      Rst                                : in  std_logic;
      CmdBI                              : in  std_logic_vector(gAddSz+gDatSz+2 downto 0);
      RdBBO                              : out std_logic_vector(gDatSz+1 downto 0);
      latchO                             : out std_logic;
      rtestI                             : in  std_logic_vector(39 downto 0);
      rwtestO                            : out std_logic_vector(39 downto 0)
   );
end component;

-- Manually added demo_test_RAM
component demo_test_RAM is
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
end component;

component ASYNCH_FIFO is
   generic (
      gVendor       : string(1 to 6) := "Xilinx";
      gAddrSize     : integer := 12;
      gDataSize     : integer := 8;
      gStatusSize   : integer := 4;
      gUseBRAM      : boolean := true;
      gRegIniVal    : integer := 0   
   );
   port (
      RstRd        : in  std_logic;   -- Synchronous Read Reset
      RstWr        : in  std_logic;   -- Synchronous Write Reset
      ClkRd        : in  std_logic;   -- Read Clock
      ClkWr        : in  std_logic;   -- Write Clock
      ReadEn       : in  std_logic;   -- Read Enable, synchronized to ClkRd
      WriteEn      : in  std_logic;   -- Write Enable, synchronized to ClkWr
      -- Write Data In, synchronized to ClkWr
      WriteData    : in  std_logic_vector(gDataSize - 1 downto 0);
      -- Read Data Out, synchronized to ClkRd
      ReadData     : out std_logic_vector(gDataSize - 1 downto 0);
      -- Full Out, synchronized to ClkWr
      Full         : out std_logic;
      -- Empty Out, synchronized to ClkRd
      Empty        : out std_logic;
      -- Status Out, i.e. FIFO filling - synchronized to ClkWr
      -- This signal has a latency of 3 ClkWr periods compared to Full
      StatusWrite  : out std_logic_vector(gStatusSize - 1 downto 0);
      -- Status Out, i.e. FIFO filling - synchronized to ClkRd
      -- This signal has a latency of 3 ClkRd periods compared to Empty
      StatusRead   : out std_logic_vector(gStatusSize - 1 downto 0)
   );
end component;

   signal i0rb_memRamWe                      : std_logic;
   signal i0rb_memRamCe                      : std_logic;
   signal i0rb_memRamAddr                    : std_logic_vector(7 downto 0);
   signal i0rb_memRamDataI                   : std_logic_vector(35 downto 0);
   signal i0rb_memRamDataO                   : std_logic_vector(35 downto 0);
   signal i0rb_revisionlatch                 : std_logic;
   signal i0rb_revisionrtest                 : std_logic_vector(39 downto 0) := x"0000000000";
   signal i0rb_revisionrwtest                : std_logic_vector(39 downto 0);
   signal i0countCmdB                        : std_logic_vector(gAddSz+gDatSz+2 downto 0);
   signal i0countRdBB                        : std_logic_vector(gDatSz+1 downto 0);
   signal i0rb_memCmdB                       : std_logic_vector(gAddSz+gDatSz+2 downto 0);
   signal i0rb_memRdBB                       : std_logic_vector(gDatSz+1 downto 0);
   signal i0rb_ledCmdB                       : std_logic_vector(gAddSz+gDatSz+2 downto 0);
   signal i0rb_ledRdBB                       : std_logic_vector(gDatSz+1 downto 0);
   signal i0rb_revisionCmdB                  : std_logic_vector(gAddSz+gDatSz+2 downto 0);
   signal i0rb_revisionRdBB                  : std_logic_vector(gDatSz+1 downto 0);


begin

   i0core_addressdecoder : core_addressdecoder
      generic map (
         gAddSz                             => gAddSz,                        
         gDatSz                             => gDatSz                         
      )
      port map (
         ClkCpu                             => ClkCpu,                        
         CmdBI                              => CmdBI,                         
         RdBBO                              => RdBBO,                         
         i0countCmdBO                       => i0countCmdB,                   
         i0countRdBBI                       => i0countRdBB,                   
         i0rb_memCmdBO                      => i0rb_memCmdB,                  
         i0rb_memRdBBI                      => i0rb_memRdBB,                  
         i0rb_ledCmdBO                      => i0rb_ledCmdB,                  
         i0rb_ledRdBBI                      => i0rb_ledRdBB,                  
         i0rb_revisionCmdBO                 => i0rb_revisionCmdB,             
         i0rb_revisionRdBBI                 => i0rb_revisionRdBB              
      );

   i0rb_led : led_regbank
      generic map (
         gAddSz                             => gAddSz,                        
         gDatSz                             => gDatSz                         
      )
      port map (
         Clk                                => ClkCpu,                        
         Rst                                => Rst,                           
         CmdBI                              => i0rb_ledCmdB,                  
         RdBBO                              => i0rb_ledRdBB,                  
         led0O                              => open,                 
         led1O                              => i0rb_ledled1O,                 
         led2O                              => i0rb_ledled2O,                 
         led3O                              => i0rb_ledled3O                  
      );

   i0rb_revision : revision_regbank
      generic map (
         gAddSz                             => gAddSz,                        
         gDatSz                             => gDatSz                         
      )
      port map (
         Clk                                => ClkCpu,                        
         Rst                                => Rst,                           
         CmdBI                              => i0rb_revisionCmdB,             
         RdBBO                              => i0rb_revisionRdBB,             
         latchO                             => i0rb_revisionlatch,            
         rtestI                             => i0rb_revisionrtest,            
         rwtestO                            => i0rb_revisionrwtest            
      );

   i0rb_mem : mem_regbank
      generic map (
         gAddSz                             => gAddSz,                        
         gDatSz                             => gDatSz                         
      )
      port map (
         Clk                                => ClkCpu,                        
         Rst                                => Rst,                           
         CmdBI                              => i0rb_memCmdB,                  
         RdBBO                              => i0rb_memRdBB,                  
         RamWeO                             => i0rb_memRamWe,                 
         RamCeO                             => i0rb_memRamCe,                 
         RamAddrO                           => i0rb_memRamAddr,               
         RamDataI                           => i0rb_memRamDataI,              
         RamDataO                           => i0rb_memRamDataO               
      );

-- Manually added demo_test_RAM
   i0demo_test_RAM: demo_test_RAM 
      generic map (
         gVendor       => gVendor,
         gAddrSize     => 8,
         gDataSize     => 36,
         gUseBRAM      => true,
         gRegIniVal    => 19088743
      )
      port map (
         RstRd        => Rst,
         ClkRd        => ClkCpu,
         ClkWr        => ClkCpu,
         WriteEn      => i0rb_memRamWe,
         -- Write Address In, synchronized to ClkWr
         WriteAddr    => i0rb_memRamAddr,
         -- Write Data In, synchronized to ClkWr
         WriteData    => i0rb_memRamDataO,
         -- Read Address In, synchronized to ClkRd
         ReadAddr     => i0rb_memRamAddr,
         -- Read Data Out, synchronized to ClkRd
         ReadData     => i0rb_memRamDataI
      );
   

   i0count : counter_ip
      generic map (
         gAddSz                             => gAddSz,                        
         gDatSz                             => gDatSz,                        
         gVendor                            => gVendor                        
      )
      port map (
         Clk                                => Clk,                           
         Rst                                => Rst,                           
         ClkCpu                             => ClkCpu,                        
         CmdBI                              => i0countCmdB,                   
         RdBBO                              => i0countRdBB,
-- Manually added      
         CounterO                           => open,
         CounterMsbO                        => i0rb_ledled0O  
      );

   pConnect: process(i0rb_revisionrwtest)
   begin
      for i in 0 to 39 loop
         i0rb_revisionrtest(39 - i) <= i0rb_revisionrwtest(i);
      end loop;
   end process;

end RTL;