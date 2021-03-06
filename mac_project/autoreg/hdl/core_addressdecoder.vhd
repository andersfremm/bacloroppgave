----------------- COPYRIGHT � ProgBit AS 2017 ----------------------------------
-- This file has been generated using ProgBit autoreg tools
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity core_addressdecoder is
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
      i0macCmdBO                         : out std_logic_vector(gAddSz+gDatSz+2 downto 0);
      i0macRdBBI                         : in  std_logic_vector(gDatSz+1 downto 0);
      i0rb_ledCmdBO                      : out std_logic_vector(gAddSz+gDatSz+2 downto 0);
      i0rb_ledRdBBI                      : in  std_logic_vector(gDatSz+1 downto 0);
      i0rb_memCmdBO                      : out std_logic_vector(gAddSz+gDatSz+2 downto 0);
      i0rb_memRdBBI                      : in  std_logic_vector(gDatSz+1 downto 0);
      i0rb_revisionCmdBO                 : out std_logic_vector(gAddSz+gDatSz+2 downto 0);
      i0rb_revisionRdBBI                 : in  std_logic_vector(gDatSz+1 downto 0)
   );
end;

architecture RTL of core_addressdecoder is

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


signal i0macRdBB                          : std_logic_vector(gDatSz+1 downto 0);
signal i0rb_ledRdBB                       : std_logic_vector(gDatSz+1 downto 0);
signal i0rb_memRdBB                       : std_logic_vector(gDatSz+1 downto 0);
signal i0rb_revisionRdBB                  : std_logic_vector(gDatSz+1 downto 0);

begin

   i0mac_reg_addr_decoder : reg_addr_decoder
      generic map (
         gAddSz                             => gAddSz,                         -- integer
         gDatSz                             => gDatSz,                         -- integer
         gAddLow                            => 256,                            -- integer
         gAddHigh                           => 275,                            -- integer
         gAsync                             => false,                          -- boolean
         gRtCmdB                            => 0,                              -- integer
         gRtRdBB                            => 0                               -- integer
      )
      port map (
         ClkCpu                             => ClkCpu,                         -- in   std_logic
         CmdBI                              => CmdBI,                          -- in   std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBO                              => i0macRdBB,                      -- out  std_logic_vector(gDatSz+1 downto 0)
         CmdBO                              => i0macCmdBO,                     -- out  std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBI                              => i0macRdBBI                      -- in   std_logic_vector(gDatSz+1 downto 0)
      );

   i0rb_mem_reg_addr_decoder : reg_addr_decoder
      generic map (
         gAddSz                             => gAddSz,                         -- integer
         gDatSz                             => gDatSz,                         -- integer
         gAddLow                            => 1024,                           -- integer
         gAddHigh                           => 1034,                           -- integer
         gAsync                             => false,                          -- boolean
         gRtCmdB                            => 0,                              -- integer
         gRtRdBB                            => 0                               -- integer
      )
      port map (
         ClkCpu                             => ClkCpu,                         -- in   std_logic
         CmdBI                              => CmdBI,                          -- in   std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBO                              => i0rb_memRdBB,                   -- out  std_logic_vector(gDatSz+1 downto 0)
         CmdBO                              => i0rb_memCmdBO,                  -- out  std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBI                              => i0rb_memRdBBI                   -- in   std_logic_vector(gDatSz+1 downto 0)
      );

   i0rb_led_reg_addr_decoder : reg_addr_decoder
      generic map (
         gAddSz                             => gAddSz,                         -- integer
         gDatSz                             => gDatSz,                         -- integer
         gAddLow                            => 63,                             -- integer
         gAddHigh                           => 63,                             -- integer
         gAsync                             => false,                          -- boolean
         gRtCmdB                            => 0,                              -- integer
         gRtRdBB                            => 0                               -- integer
      )
      port map (
         ClkCpu                             => ClkCpu,                         -- in   std_logic
         CmdBI                              => CmdBI,                          -- in   std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBO                              => i0rb_ledRdBB,                   -- out  std_logic_vector(gDatSz+1 downto 0)
         CmdBO                              => i0rb_ledCmdBO,                  -- out  std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBI                              => i0rb_ledRdBBI                   -- in   std_logic_vector(gDatSz+1 downto 0)
      );

   i0rb_revision_reg_addr_decoder : reg_addr_decoder
      generic map (
         gAddSz                             => gAddSz,                         -- integer
         gDatSz                             => gDatSz,                         -- integer
         gAddLow                            => 0,                              -- integer
         gAddHigh                           => 14,                             -- integer
         gAsync                             => false,                          -- boolean
         gRtCmdB                            => 0,                              -- integer
         gRtRdBB                            => 0                               -- integer
      )
      port map (
         ClkCpu                             => ClkCpu,                         -- in   std_logic
         CmdBI                              => CmdBI,                          -- in   std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBO                              => i0rb_revisionRdBB,              -- out  std_logic_vector(gDatSz+1 downto 0)
         CmdBO                              => i0rb_revisionCmdBO,             -- out  std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBI                              => i0rb_revisionRdBBI              -- in   std_logic_vector(gDatSz+1 downto 0)
      );

   pRdBBO                          : RdBBO                         <= i0macRdBB or i0rb_ledRdBB or i0rb_memRdBB or i0rb_revisionRdBB;

end RTL;
