----------------- COPYRIGHT © ProgBit AS 2017 ----------------------------------
-- This file has been generated using ProgBit autoreg tools
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mac_ip_addressdecoder is
   generic (
      gAddSz                             : integer   := 16;
      gDatSz                             : integer   := 16
   );
   port (
      -- Clk and command bus ports
      ClkCpu                             : in  std_logic;
      CmdBI                              : in  std_logic_vector(gAddSz+gDatSz+2 downto 0);
      RdBBO                              : out std_logic_vector(gDatSz+1 downto 0);
      -- Ports towards submodules and register banks
      i0rb_macCmdBO                      : out std_logic_vector(gAddSz+gDatSz+2 downto 0);
      i0rb_macRdBBI                      : in  std_logic_vector(gDatSz+1 downto 0);
      i0rb_mdioCmdBO                     : out std_logic_vector(gAddSz+gDatSz+2 downto 0);
      i0rb_mdioRdBBI                     : in  std_logic_vector(gDatSz+1 downto 0)
   );
end;

architecture RTL of mac_ip_addressdecoder is

component reg_addr_decoder is
   generic (
      gAddSz                             : integer   := 8;
      gDatSz                             : integer   := 8;
      gAddLow                            : integer   := 0;
      gAddHigh                           : integer   := 35;
      gAsync                             : boolean   := false;
      gRtCmdB                            : integer   := 0;
      gRtRdBB                            : integer   := 0
   );
   port (
      ClkCpu                             : in  std_logic;
      CmdBI                              : in  std_logic_vector(gAddSz+gDatSz+2 downto 0);
      RdBBO                              : out std_logic_vector(gDatSz+1 downto 0);
      CmdBO                              : out std_logic_vector(gAddSz+gDatSz+2 downto 0);
      RdBBI                              : in  std_logic_vector(gDatSz+1 downto 0)
   );
end component;


signal i0rb_macRdBB                       : std_logic_vector(gDatSz+1 downto 0);
signal i0rb_mdioRdBB                      : std_logic_vector(gDatSz+1 downto 0);

begin

   i0rb_mac_reg_addr_decoder : reg_addr_decoder
      generic map (
         gAddSz                             => gAddSz,                         -- integer
         gDatSz                             => gDatSz,                         -- integer
         gAddLow                            => 4,                              -- integer
         gAddHigh                           => 9,                              -- integer
         gAsync                             => true,                           -- boolean
         gRtCmdB                            => 0,                              -- integer
         gRtRdBB                            => 0                               -- integer
      )
      port map (
         ClkCpu                             => ClkCpu,                         -- in   std_logic
         CmdBI                              => CmdBI,                          -- in   std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBO                              => i0rb_macRdBB,                   -- out  std_logic_vector(gDatSz+1 downto 0)
         CmdBO                              => i0rb_macCmdBO,                  -- out  std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBI                              => i0rb_macRdBBI                   -- in   std_logic_vector(gDatSz+1 downto 0)
      );

   i0rb_mdio_reg_addr_decoder : reg_addr_decoder
      generic map (
         gAddSz                             => gAddSz,                         -- integer
         gDatSz                             => gDatSz,                         -- integer
         gAddLow                            => 0,                              -- integer
         gAddHigh                           => 3,                              -- integer
         gAsync                             => true,                           -- boolean
         gRtCmdB                            => 0,                              -- integer
         gRtRdBB                            => 0                               -- integer
      )
      port map (
         ClkCpu                             => ClkCpu,                         -- in   std_logic
         CmdBI                              => CmdBI,                          -- in   std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBO                              => i0rb_mdioRdBB,                  -- out  std_logic_vector(gDatSz+1 downto 0)
         CmdBO                              => i0rb_mdioCmdBO,                 -- out  std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBI                              => i0rb_mdioRdBBI                  -- in   std_logic_vector(gDatSz+1 downto 0)
      );

   pRdBBO                          : RdBBO                         <= i0rb_macRdBB or i0rb_mdioRdBB;

end RTL;
