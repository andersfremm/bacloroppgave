----------------- COPYRIGHT © ProgBit AS 2017 ----------------------------------
-- This file has been generated using ProgBit autoreg tools
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity demo is
   port (
      ClkCpu                             : in  std_logic;
      Cpu0ActiveO                        : out std_logic;
      Cpu1ActiveO                        : out std_logic;
      serial0RxI                         : in  std_logic;
      serial0TxO                         : out std_logic;
      serial0TxEnO                       : out std_logic;
      i0rb_ledled0O                      : out std_logic;
      i0rb_ledled1O                      : out std_logic;
      i0rb_ledled2O                      : out std_logic;
      i0rb_ledled3O                      : out std_logic;
      
      --mdio
      mdioIO                             : inout std_logic; 
      mdc                                : out std_logic
   );
end entity;

architecture RTL of demo is

-- NB! Please beware that template clock and reset connections have to be 
-- NB! manually edited when more than one clock shall be used in the design!

component serial_wrapper is
   generic (
      gActivity_invert                   : boolean   := false;
      gAccuCntSize                       : integer   := 24;
      gClkFreq                           : integer   := 50000000;
      gBaudRate                          : integer   := 115200
   );
   port (
      Clk                                : in  std_logic;
      Rst                                : in  std_logic;
      RxI                                : in  std_logic;
      TxO                                : out std_logic;
      RxEnO                              : out std_logic;
      TxEnO                              : out std_logic;
      ActiveO                            : out std_logic;
      AlO                                : out std_logic;
      WrO                                : out std_logic;
      RdO                                : out std_logic;
      AddrO                              : out std_logic_vector(15 downto 0);
      DataO                              : out std_logic_vector(15 downto 0);
      AckI                               : in  std_logic;
      DataI                              : in  std_logic_vector(15 downto 0);
      IrqI                               : in  std_logic
   );
end component;

component jtag_wrapper is
   generic (
      gActivity_invert                   : boolean   := false;
      gVendor                            : string    := "Xilinx";
      gJTAG_CHAIN                        : integer   := 1;
      gByteCntSz                         : integer   := 8;
      gClkFreq                           : integer   := 50000000
   );
   port (
      Clk                                : in  std_logic;
      Rst                                : in  std_logic;
      DebugO                             : out std_logic_vector(7 downto 0);
      ActiveO                            : out std_logic;
      AlO                                : out std_logic;
      WrO                                : out std_logic;
      RdO                                : out std_logic;
      AddrO                              : out std_logic_vector(15 downto 0);
      DataO                              : out std_logic_vector(15 downto 0);
      AckI                               : in  std_logic;
      DataI                              : in  std_logic_vector(15 downto 0);
      IrqI                               : in  std_logic
   );
end component;

component reg_main is
   generic (
      gDatSz                             : integer   := 8;
      gAddSz                             : integer   := 8;
      gClkFreq                           : integer   := 50000000;
      gActivity_invert                   : boolean   := false;
      gTimeoutThreshold                  : integer   := 15
   );
   port (
      Clk                                : in  std_logic;
      ARst                               : in  std_logic;
      Cpu0RdI                            : in  std_logic;
      Cpu0WrI                            : in  std_logic;
      Cpu0AddrI                          : in  std_logic_vector(gAddSz-1 downto 0);
      Cpu0DataI                          : in  std_logic_vector(gDatSz-1 downto 0);
      Cpu0DataO                          : out std_logic_vector(gDatSz-1 downto 0);
      Cpu0AckO                           : out std_logic;
      Cpu0IrqO                           : out std_logic;
      Cpu0TimeoutO                       : out std_logic;
      Cpu0ActiveO                        : out std_logic;
      Cpu1RdI                            : in  std_logic;
      Cpu1WrI                            : in  std_logic;
      Cpu1AddrI                          : in  std_logic_vector(gAddSz-1 downto 0);
      Cpu1DataI                          : in  std_logic_vector(gDatSz-1 downto 0);
      Cpu1DataO                          : out std_logic_vector(gDatSz-1 downto 0);
      Cpu1AckO                           : out std_logic;
      Cpu1IrqO                           : out std_logic;
      Cpu1TimeoutO                       : out std_logic;
      Cpu1ActiveO                        : out std_logic;
      CmdBO                              : out std_logic_vector(gAddSz+gDatSz+2 downto 0);
      RdBBI                              : in  std_logic_vector(gDatSz+1 downto 0)
   );
end component;

component core is
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
end component;

   constant cAddSz                       : integer := 16;
   constant cDatSz                       : integer := 16;
   constant cClkFreq                     : integer := 50_000_000;
   constant cActivity_invert             : boolean := true;
   constant cTimeoutThreshold            : integer := 15;
   constant cVendor                      : string(1 to 6) := "Altera";
   constant cJTAG_CHAIN                  : integer := 1;
   constant cByteCntSz                   : integer := 8;
   constant cAccuCntSize                 : integer := 24;
   constant cBaudRate                    : integer := 115_200;

   signal RstCpu                             : std_logic := '0';
   signal RstLogic                           : std_logic := '0';
   signal i0serial_wrapperAl                 : std_logic;
   signal i0serial_wrapperWr                 : std_logic;
   signal i0serial_wrapperRd                 : std_logic;
   signal i0serial_wrapperAddr               : std_logic_vector(15 downto 0);
   signal i0serial_wrapperData               : std_logic_vector(15 downto 0);
   signal i0jtag_wrapperAl                   : std_logic;
   signal i0jtag_wrapperWr                   : std_logic;
   signal i0jtag_wrapperRd                   : std_logic;
   signal i0jtag_wrapperAddr                 : std_logic_vector(15 downto 0);
   signal i0jtag_wrapperData                 : std_logic_vector(15 downto 0);
   signal i0reg_mainCpu0Data                 : std_logic_vector(cDatSz-1 downto 0);
   signal i0reg_mainCpu0Ack                  : std_logic;
   signal i0reg_mainCpu0Irq                  : std_logic;
   signal i0reg_mainCpu0Timeout              : std_logic;
   signal i0reg_mainCpu1Data                 : std_logic_vector(cDatSz-1 downto 0);
   signal i0reg_mainCpu1Ack                  : std_logic;
   signal i0reg_mainCpu1Irq                  : std_logic;
   signal i0reg_mainCpu1Timeout              : std_logic;
   signal i0reg_mainCmdB                     : std_logic_vector(cAddSz+cDatSz+2 downto 0);
   signal i0reg_mainRdBBI                    : std_logic_vector(cDatSz+1 downto 0);
   signal i0coreRdBB                         : std_logic_vector(cDatSz+1 downto 0);


begin

   i0serial_wrapper : serial_wrapper
      generic map (
         gActivity_invert                   => cActivity_invert,               -- boolean
         gAccuCntSize                       => cAccuCntSize,                   -- integer
         gClkFreq                           => cClkFreq,                       -- integer
         gBaudRate                          => cBaudRate                       -- integer
      )
      port map (
         Clk                                => ClkCpu,                         -- in   std_logic
         Rst                                => RstCpu,                         -- in   std_logic
         RxI                                => serial0RxI,                     -- in   std_logic
         TxO                                => serial0TxO,                     -- out  std_logic
         RxEnO                              => open,                           -- out  std_logic
         TxEnO                              => serial0TxEnO,                   -- out  std_logic
         ActiveO                            => open,                           -- out  std_logic
         AlO                                => i0serial_wrapperAl,             -- out  std_logic
         WrO                                => i0serial_wrapperWr,             -- out  std_logic
         RdO                                => i0serial_wrapperRd,             -- out  std_logic
         AddrO                              => i0serial_wrapperAddr,           -- out  std_logic_vector(15 downto 0)
         DataO                              => i0serial_wrapperData,           -- out  std_logic_vector(15 downto 0)
         AckI                               => i0reg_mainCpu1Ack,              -- in   std_logic
         DataI                              => i0reg_mainCpu1Data,             -- in   std_logic_vector(15 downto 0)
         IrqI                               => i0reg_mainCpu1Irq               -- in   std_logic
      );

   i0reg_main : reg_main
      generic map (
         gDatSz                             => cDatSz,                         -- integer
         gAddSz                             => cAddSz,                         -- integer
         gClkFreq                           => cClkFreq,                       -- integer
         gActivity_invert                   => cActivity_invert,               -- boolean
         gTimeoutThreshold                  => cTimeoutThreshold               -- integer
      )
      port map (
         Clk                                => ClkCpu,                         -- in   std_logic
         ARst                               => RstCpu,                         -- in   std_logic
         Cpu0RdI                            => i0jtag_wrapperRd,               -- in   std_logic
         Cpu0WrI                            => i0jtag_wrapperWr,               -- in   std_logic
         Cpu0AddrI                          => i0jtag_wrapperAddr,             -- in   std_logic_vector(gAddSz-1 downto 0)
         Cpu0DataI                          => i0jtag_wrapperData,             -- in   std_logic_vector(gDatSz-1 downto 0)
         Cpu0DataO                          => i0reg_mainCpu0Data,             -- out  std_logic_vector(gDatSz-1 downto 0)
         Cpu0AckO                           => i0reg_mainCpu0Ack,              -- out  std_logic
         Cpu0IrqO                           => i0reg_mainCpu0Irq,              -- out  std_logic
         Cpu0TimeoutO                       => i0reg_mainCpu0Timeout,          -- out  std_logic
         Cpu0ActiveO                        => Cpu0ActiveO,                    -- out  std_logic
         Cpu1RdI                            => i0serial_wrapperRd,             -- in   std_logic
         Cpu1WrI                            => i0serial_wrapperWr,             -- in   std_logic
         Cpu1AddrI                          => i0serial_wrapperAddr,           -- in   std_logic_vector(gAddSz-1 downto 0)
         Cpu1DataI                          => i0serial_wrapperData,           -- in   std_logic_vector(gDatSz-1 downto 0)
         Cpu1DataO                          => i0reg_mainCpu1Data,             -- out  std_logic_vector(gDatSz-1 downto 0)
         Cpu1AckO                           => i0reg_mainCpu1Ack,              -- out  std_logic
         Cpu1IrqO                           => i0reg_mainCpu1Irq,              -- out  std_logic
         Cpu1TimeoutO                       => i0reg_mainCpu1Timeout,          -- out  std_logic
         Cpu1ActiveO                        => Cpu1ActiveO,                    -- out  std_logic
         CmdBO                              => i0reg_mainCmdB,                 -- out  std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBI                              => i0coreRdBB                      -- in   std_logic_vector(gDatSz+1 downto 0)
      );

   i0jtag_wrapper : jtag_wrapper
      generic map (
         gActivity_invert                   => cActivity_invert,               -- boolean
         gVendor                            => cVendor,                        -- string(1 to 6)
         gJTAG_CHAIN                        => cJTAG_CHAIN,                    -- integer
         gByteCntSz                         => cByteCntSz,                     -- integer
         gClkFreq                           => cClkFreq                        -- integer
      )
      port map (
         Clk                                => ClkCpu,                         -- in   std_logic
         Rst                                => RstCpu,                         -- in   std_logic
         DebugO                             => open,                           -- out  std_logic_vector(7 downto 0)
         ActiveO                            => open,                           -- out  std_logic
         AlO                                => i0jtag_wrapperAl,               -- out  std_logic
         WrO                                => i0jtag_wrapperWr,               -- out  std_logic
         RdO                                => i0jtag_wrapperRd,               -- out  std_logic
         AddrO                              => i0jtag_wrapperAddr,             -- out  std_logic_vector(15 downto 0)
         DataO                              => i0jtag_wrapperData,             -- out  std_logic_vector(15 downto 0)
         AckI                               => i0reg_mainCpu0Ack,              -- in   std_logic
         DataI                              => i0reg_mainCpu0Data,             -- in   std_logic_vector(15 downto 0)
         IrqI                               => i0reg_mainCpu0Irq               -- in   std_logic
      );

   i0core : core
      generic map (
         gAddSz                             => cAddSz,                         -- integer
         gDatSz                             => cDatSz,                         -- integer
         gVendor                            => cVendor                         -- string(1 to 6)
      )
      port map (
         Clk                                => ClkCpu,                         -- in   std_logic
         Rst                                => RstLogic,                       -- in   std_logic
         ClkCpu                             => ClkCpu,                         -- in   std_logic
         CmdBI                              => i0reg_mainCmdB,                 -- in   std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBO                              => i0coreRdBB,                     -- out  std_logic_vector(gDatSz+1 downto 0)
         i0rb_ledled0O                      => i0rb_ledled0O,                  -- out  std_logic
         i0rb_ledled1O                      => i0rb_ledled1O,                  -- out  std_logic
         i0rb_ledled2O                      => i0rb_ledled2O,                  -- out  std_logic
         i0rb_ledled3O                      => i0rb_ledled3O                   -- out  std_logic
      );


end RTL;
