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
      FifoRstO                           : out std_logic;
      LoopEnO                            : out std_logic;
      RxCntI                             : in  std_logic_vector(9 downto 0);
      RxFifoReO                          : out std_logic;
      RxFifoDataI                        : in  std_logic_vector(7 downto 0);
      RxFifoEmptyI                       : in  std_logic;
      RxFifoFullI                        : in  std_logic;
      TxCntI                             : in  std_logic_vector(9 downto 0);
      TxFifoWeO                          : out std_logic;
      TxFifoDataO                        : out std_logic_vector(7 downto 0);
      TxFifoEmptyI                       : in  std_logic;
      TxFifoFullI                        : in  std_logic;
      TxStartO                           : out std_logic
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

   signal i0rb_macFifoRst                    : std_logic;
   signal i0rb_macLoopEn                     : std_logic;
   signal i0rb_macRxCnt                      : std_logic_vector(9 downto 0) := "0000000000";
   signal i0rb_macRxFifoRe                   : std_logic;
   signal i0rb_macRxFifoDataI                : std_logic_vector(7 downto 0);
   signal i0rb_macRxFifoEmpty                : std_logic := '0';
   signal i0rb_macRxFifoFull                 : std_logic := '0';
   signal i0rb_macTxCnt                      : std_logic_vector(9 downto 0) := "0000000000";
   signal i0rb_macTxFifoWe                   : std_logic;
   signal i0rb_macTxFifoDataO                : std_logic_vector(7 downto 0);
   signal i0rb_macTxFifoEmpty                : std_logic := '0';
   signal i0rb_macTxFifoFull                 : std_logic := '0';
   signal i0rb_macTxStart                    : std_logic;
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
         FifoRstO                           => i0rb_macFifoRst,                -- out  std_logic
         LoopEnO                            => i0rb_macLoopEn,                 -- out  std_logic
         RxCntI                             => i0rb_macRxCnt,                  -- in   std_logic_vector(9 downto 0)
         RxFifoReO                          => i0rb_macRxFifoRe,               -- out  std_logic
         RxFifoDataI                        => i0rb_macRxFifoDataI,            -- in   std_logic_vector(7 downto 0)
         RxFifoEmptyI                       => i0rb_macRxFifoEmpty,            -- in   std_logic
         RxFifoFullI                        => i0rb_macRxFifoFull,             -- in   std_logic
         TxCntI                             => i0rb_macTxCnt,                  -- in   std_logic_vector(9 downto 0)
         TxFifoWeO                          => i0rb_macTxFifoWe,               -- out  std_logic
         TxFifoDataO                        => i0rb_macTxFifoDataO,            -- out  std_logic_vector(7 downto 0)
         TxFifoEmptyI                       => i0rb_macTxFifoEmpty,            -- in   std_logic
         TxFifoFullI                        => i0rb_macTxFifoFull,             -- in   std_logic
         TxStartO                           => i0rb_macTxStart                 -- out  std_logic
      );


end RTL;
