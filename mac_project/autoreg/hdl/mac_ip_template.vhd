----------------- COPYRIGHT © ProgBit AS 2017 ----------------------------------
-- This file has been generated using ProgBit autoreg tools
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mac_ip is
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
      RdBBO                              : out std_logic_vector(gDatSz+1 downto 0)
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

   signal i0rb_macCpuTxData                  : std_logic_vector(63 downto 0);
   signal i0rb_macCpuTxEn                    : std_logic;
   signal i0rb_macCpuTxFull                  : std_logic := '0';
   signal i0rb_macData                       : std_logic_vector(7 downto 0) := x"00";
   signal i0rb_macDataValid                  : std_logic := '0';
   signal i0rb_macFifoEn                     : std_logic := '0';
   signal i0rb_macLastData                   : std_logic := '0';
   signal i0rb_macRXStatus                   : std_logic_vector(3 downto 0) := x"0";
   signal i0rb_macReceiveEn                  : std_logic;
   signal i0rb_macTransmittEn                : std_logic;
   signal i0rb_macTxStatus                   : std_logic_vector(6 downto 0) := "0000000";
   signal i0rb_macTxStatusValid              : std_logic := '0';
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
         CpuTxDataO                         => i0rb_macCpuTxData,              -- out  std_logic_vector(63 downto 0)
         CpuTxEnO                           => i0rb_macCpuTxEn,                -- out  std_logic
         CpuTxFullI                         => i0rb_macCpuTxFull,              -- in   std_logic
         DataI                              => i0rb_macData,                   -- in   std_logic_vector(7 downto 0)
         DataValidI                         => i0rb_macDataValid,              -- in   std_logic
         FifoEnI                            => i0rb_macFifoEn,                 -- in   std_logic
         LastDataI                          => i0rb_macLastData,               -- in   std_logic
         RXStatusI                          => i0rb_macRXStatus,               -- in   std_logic_vector(3 downto 0)
         ReceiveEnO                         => i0rb_macReceiveEn,              -- out  std_logic
         TransmittEnO                       => i0rb_macTransmittEn,            -- out  std_logic
         TxStatusI                          => i0rb_macTxStatus,               -- in   std_logic_vector(6 downto 0)
         TxStatusValidI                     => i0rb_macTxStatusValid,          -- in   std_logic
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


end RTL;
