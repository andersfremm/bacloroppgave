----------------- COPYRIGHT � ProgBit AS 2017 ----------------------------------
-- This file has been generated using ProgBit autoreg tools
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mac_ip is
   generic (
      gAddSz                         : integer   := 16;
      gDatSz                         : integer   := 16;
      gVendor                        : string    := "Xilinx"
   );
   port (
      Clk                            : in  std_logic;
      Rst                            : in  std_logic;
      ClkCpu                         : in  std_logic;
      CmdBI                          : in  std_logic_vector(gAddSz+gDatSz+2 downto 0);
      RdBBO                          : out std_logic_vector(gDatSz+1 downto 0);

      -- MDIO
      mdi                            : in  std_logic;
      mdo                            : out std_logic;
      mden                           : out std_logic;
      mdc                            : out std_logic;
      -- phy
      TxD                            : out std_logic_vector(3 downto 0);
      TxEn                           : out std_logic;
      TxEr                           : out std_logic;
      TxClk                          : in  std_logic;

      RXdv      : in  std_logic;
      RXErr     : in  std_logic;
      RXdata    : in  std_logic_vector(3 downto 0);
      RXClk     : in std_logic
   );
end entity;

architecture RTL of mac_ip is

component mac_ip_addressdecoder is
   generic (
      gAddSz                             : integer   := 16;
      gDatSz                             : integer   := 16
   );
   port (
      ClkCpu                             : in  std_logic;
      CmdBI                              : in  std_logic_vector(gAddSz+gDatSz+2 downto 0);
      RdBBO                              : out std_logic_vector(gDatSz+1 downto 0);
      i0rb_macCmdBO                      : out std_logic_vector(gAddSz+gDatSz+2 downto 0);
      i0rb_macRdBBI                      : in  std_logic_vector(gDatSz+1 downto 0);
      i0rb_mdioCmdBO                     : out std_logic_vector(gAddSz+gDatSz+2 downto 0);
      i0rb_mdioRdBBI                     : in  std_logic_vector(gDatSz+1 downto 0)
   );
end component;

component mac_regbank is
   generic (
      gAddSz                             : integer   := 16;
      gDatSz                             : integer   := 16
   );
   port (
      Clk                                : in  std_logic;
      Rst                                : in  std_logic;
      CmdBI                              : in  std_logic_vector(gAddSz+gDatSz+2 downto 0);
      RdBBO                              : out std_logic_vector(gDatSz+1 downto 0);
      CpuTxDataO                         : out std_logic_vector(63 downto 0);
      CpuTxEnO                           : out std_logic;
      CpuTxFullI                         : in  std_logic;
      DataI                              : in  std_logic_vector(7 downto 0);
      DataValidI                         : in  std_logic;
      FifoEnI                            : in  std_logic;
      LastDataI                          : in  std_logic;
      RXStatusI                          : in  std_logic_vector(3 downto 0);
      ReceiveEnO                         : out std_logic;
      TransmittEnO                       : out std_logic;
      TxStatusI                          : in  std_logic_vector(6 downto 0);
      TxStatusValidI                     : in  std_logic;
      downO                              : out std_logic;
      maxO                               : out std_logic_vector(15 downto 0);
      prescaleO                          : out std_logic_vector(11 downto 0);
      presetO                            : out std_logic;
      readcntI                           : in  std_logic_vector(15 downto 0);
      setcntO                            : out std_logic_vector(15 downto 0);
      stepdownO                          : out std_logic;
      stepupO                            : out std_logic;
      upO                                : out std_logic
   );
   end component;

component mdio_regbank is
   generic (
      gAddSz                             : integer   := 16;
      gDatSz                             : integer   := 16
   );
   port (
      Clk                                : in  std_logic;
      Rst                                : in  std_logic;
      CmdBI                              : in  std_logic_vector(gAddSz+gDatSz+2 downto 0);
      RdBBO                              : out std_logic_vector(gDatSz+1 downto 0);
      AckI                               : in  std_logic;
      DataII                             : in  std_logic_vector(15 downto 0);
      DataOO                             : out std_logic_vector(15 downto 0);
      PhyAddrO                           : out std_logic_vector(4 downto 0);
      RdO                                : out std_logic;
      RegAddrO                           : out std_logic_vector(4 downto 0);
      WrO                                : out std_logic
   );
end component;

component MDIO is
generic (
   gDivCnt     : integer := 8;
   gDivCntW    : integer := 3
);
port (
   Clk         : in  std_logic;
   Rst         : in  std_logic;

   PhyAddrI    : in  std_logic_vector(4 downto 0);
   RegAddrI    : in  std_logic_vector(4 downto 0);
   WrI         : in  std_logic;
   RdI         : in  std_logic;
   DataI       : in  std_logic_vector(15 downto 0);
   AckO        : out std_logic;
   DataO       : out std_logic_vector(15 downto 0);

   SerialClkO  : out std_logic;
   SerialDataI : in  std_logic;
   SerialDataO : out std_logic;
   SerialEnO   : out std_logic
);
end component;

component TxEthernetMAC is
port (
  Clk                : in  std_logic;
  Rst                : in  std_logic;
  CpuTxDataO         : in  std_logic_vector(63 downto 0);
  CpuTxEnO           : in  std_logic;
  CpuTxFullI         : out std_logic;
  TransmittEnO       : in  std_logic;
  TxStatusI          : out std_logic_vector(6 downto 0);
  TxStatusValidI     : out std_logic;
  TxD                : out std_logic_vector(3 downto 0);
  TxEn               : out std_logic;
  TxEr               : out std_logic;
  TxClk              : in  std_logic;
  TestData           : out std_logic_vector(3 downto 0);
  TestTransmitEnable : out std_logic;
  TestTransmitError  : out std_logic
);
end component TxEthernetMAC;

component Receiver
generic (
  gDatSz : integer := 8
);
port (
  Clk       : in  std_logic;
  Clk25     : in  std_logic;
  nRstO     : in  std_logic;
  RXdv      : in  std_logic;
  RXErr     : in  std_logic;
  FifoEn    : out std_logic;
  RXdata    : in  std_logic_vector(3 downto 0);
  Data      : out std_logic_vector(gDatSz-1 downto 0);
  DataValid : out std_logic;
  LastData  : out std_logic;
  RXStatus  : out std_logic_vector(3 downto 0)     --See design spec
);
end component Receiver;




signal nRstO   : std_logic;

signal DataI                       : std_logic_vector(7 downto 0);
signal FifoEnI                       : std_logic;
signal DataValidI                       : std_logic;
signal LastDataI                       : std_logic;
signal RXStatusI                       : std_logic_vector(3 downto 0);

   signal i0rb_macdown                       : std_logic;
   signal i0rb_macmax                        : std_logic_vector(15 downto 0);
   signal i0rb_macprescale                   : std_logic_vector(11 downto 0);
   signal i0rb_macpreset                     : std_logic;
   signal i0rb_macreadcnt                    : std_logic_vector(15 downto 0) := x"0000";
   signal i0rb_macsetcnt                     : std_logic_vector(15 downto 0);
   signal i0rb_macstepdown                   : std_logic;
   signal i0rb_macstepup                     : std_logic;
   signal i0rb_macup                         : std_logic;
   signal i0rb_mdioAck                       : std_logic := '0';
   signal i0rb_mdioDataI                     : std_logic_vector(15 downto 0) := x"0000";
   signal i0rb_mdioDataO                     : std_logic_vector(15 downto 0);
   signal i0rb_mdioPhyAddr                   : std_logic_vector(4 downto 0);
   signal i0rb_mdioRd                        : std_logic;
   signal i0rb_mdioRegAddr                   : std_logic_vector(4 downto 0);
   signal i0rb_mdioWr                        : std_logic;
   signal i0rb_macCmdB                       : std_logic_vector(gAddSz+gDatSz+2 downto 0);
   signal i0rb_macRdBB                       : std_logic_vector(gDatSz+1 downto 0);
   signal i0rb_mdioCmdB                      : std_logic_vector(gAddSz+gDatSz+2 downto 0);
   signal i0rb_mdioRdBB                      : std_logic_vector(gDatSz+1 downto 0);

   signal MdioDataI                          : std_logic;
   signal MdioDataO                          : std_logic;
   signal MdioEnO                            : std_logic;

   signal i0rb_CpuTxDataO                    : std_logic_vector(63 downto 0);
   signal i0rb_CpuTxEnO                      : std_logic;
   signal i0rb_CpuTxFullI                    : std_logic;
   signal i0rb_TransmittEnO                  : std_logic;
   signal i0rb_TxStatusI                     : std_logic_vector(6 downto 0);
   signal i0rb_TxStatusValidI                : std_logic;

begin

   i0mac_ip_addressdecoder : mac_ip_addressdecoder
      generic map (
         gAddSz                             => gAddSz,                         -- integer
         gDatSz                             => gDatSz                          -- integer
      )
      port map (
         ClkCpu                             => ClkCpu,                         -- in   std_logic
         CmdBI                              => CmdBI,                          -- in   std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBO                              => RdBBO,                          -- out  std_logic_vector(gDatSz+1 downto 0)
         i0rb_macCmdBO                      => i0rb_macCmdB,                   -- out  std_logic_vector(gAddSz+gDatSz+2 downto 0)
         i0rb_macRdBBI                      => i0rb_macRdBB,                   -- in   std_logic_vector(gDatSz+1 downto 0)
         i0rb_mdioCmdBO                     => i0rb_mdioCmdB,                  -- out  std_logic_vector(gAddSz+gDatSz+2 downto 0)
         i0rb_mdioRdBBI                     => i0rb_mdioRdBB                   -- in   std_logic_vector(gDatSz+1 downto 0)
      );

   i0MDIO : MDIO
      generic map (
         gDivCnt     => 50,
         gDivCntW    => 6
      )
      port map (
         Clk                                => Clk,
         Rst                                => Rst,

         PhyAddrI                           => i0rb_mdioPhyAddr,
         RegAddrI                           => i0rb_mdioRegAddr,
         WrI                                => i0rb_mdioWr,
         RdI                                => i0rb_mdioRd,
         DataI                              => i0rb_mdioDataO,
         AckO                               => i0rb_mdioAck,
         DataO                              => i0rb_mdioDataI,

         -- MDIO interface
         SerialClkO                         => mdc,
         SerialDataI                        => mdi,
         SerialDataO                        => mdo,
         SerialEnO                          => mden
      );

   i0rb_mdio : mdio_regbank
      generic map (
         gAddSz                             => gAddSz,                         -- integer
         gDatSz                             => gDatSz                          -- integer
      )
      port map (
         Clk                                => Clk,                            -- in   std_logic
         Rst                                => Rst,                            -- in   std_logic
         CmdBI                              => i0rb_mdioCmdB,                  -- in   std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBO                              => i0rb_mdioRdBB,                  -- out  std_logic_vector(gDatSz+1 downto 0)
         AckI                               => i0rb_mdioAck,                   -- in   std_logic
         DataII                             => i0rb_mdioDataI,                 -- in   std_logic_vector(15 downto 0)
         DataOO                             => i0rb_mdioDataO,                 -- out  std_logic_vector(15 downto 0)
         PhyAddrO                           => i0rb_mdioPhyAddr,               -- out  std_logic_vector(4 downto 0)
         RdO                                => i0rb_mdioRd,                    -- out  std_logic
         RegAddrO                           => i0rb_mdioRegAddr,               -- out  std_logic_vector(4 downto 0)
         WrO                                => i0rb_mdioWr                     -- out  std_logic
      );

   i0rb_mac : mac_regbank
      generic map (
         gAddSz                             => gAddSz,                         -- integer
         gDatSz                             => gDatSz                          -- integer
      )
      port map (
         Clk                                => Clk,                            -- in   std_logic
         Rst                                => Rst,                            -- in   std_logic
         CmdBI                              => i0rb_macCmdB,                   -- in   std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBO                              => i0rb_macRdBB,                   -- out  std_logic_vector(gDatSz+1 downto 0)
         CpuTxDataO                         => i0rb_CpuTxDataO,
         CpuTxEnO                           => i0rb_CpuTxEnO,
         ReceiveEnO                         => open,
         TransmittEnO                       => i0rb_TransmittEnO,
         CpuTxFullI                         => i0rb_CpuTxFullI,              -- in   std_logic
         DataI                              => DataI,                   -- in   std_logic_vector(7 downto 0)
         DataValidI                         => DataValidI,              -- in   std_logic
         FifoEnI                            => FifoEnI,                 -- in   std_logic
         LastDataI                          => LastDataI,               -- in   std_logic
         RXStatusI                          => RXStatusI,
         TxStatusI                          => i0rb_TxStatusI,
         TxStatusValidI                     => i0rb_TxStatusValidI,
         downO                              => i0rb_macdown,                   -- out  std_logic
         maxO                               => i0rb_macmax,                    -- out  std_logic_vector(15 downto 0)
         prescaleO                          => i0rb_macprescale,               -- out  std_logic_vector(11 downto 0)
         presetO                            => i0rb_macpreset,                 -- out  std_logic
         readcntI                           => i0rb_macreadcnt,                -- in   std_logic_vector(15 downto 0)
         setcntO                            => i0rb_macsetcnt,                 -- out  std_logic_vector(15 downto 0)
         stepdownO                          => i0rb_macstepdown,               -- out  std_logic
         stepupO                            => i0rb_macstepup,                 -- out  std_logic
         upO                                => i0rb_macup                      -- out  std_logic
      );

   i0rb_TxEthernetMAC : TxEthernetMAC
   port map (
      Clk                                => Clk,
      Rst                                => Rst,
     CpuTxDataO                          => i0rb_CpuTxDataO,
     CpuTxEnO                            => i0rb_CpuTxEnO,
     CpuTxFullI                          => i0rb_CpuTxFullI,
     TransmittEnO                        => i0rb_TransmittEnO,
     TxStatusI                           => i0rb_TxStatusI,
     TxStatusValidI                      => i0rb_TxStatusValidI,
     --phy interface
     TxD                                 => TxD,
     TxEn                                => TxEn,
     TxEr                                => TxEr,
     TxClk                               => TxClk,
     --phy interface end
     TestData                            => open,
     TestTransmitEnable                  => open,
     TestTransmitError                   => open
   );

nRstO <= not(rst);

Receiver_i : Receiver
generic map (
  gDatSz => 8
)
port map (
  Clk       => Clk,
  Clk25     => RXClk,
  nRstO     => nRstO,
  RXdv      => RXdv,
  RXErr     => RXErr,
  RXdata    => RXdata,
  Data      => DataI,
  FifoEn    => FifoEnI,
  DataValid => DataValidI,
  LastData  => LastDataI,
  RXStatus  => RXStatusI
);



end RTL;
