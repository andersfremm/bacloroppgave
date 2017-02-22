----------------- COPYRIGHT � ProgBit AS 2017 ----------------------------------
-- This file has been generated using ProgBit autoreg tools
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_ip_addressdecoder is
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
      i0rb_counterCmdBO                  : out std_logic_vector(gAddSz+gDatSz+2 downto 0);
      i0rb_counterRdBBI                  : in  std_logic_vector(gDatSz+1 downto 0)
   );
end;

architecture RTL of counter_ip_addressdecoder is

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


signal i0rb_counterRdBB                   : std_logic_vector(gDatSz+1 downto 0);

begin

   i0rb_counter_reg_addr_decoder : reg_addr_decoder
      generic map (
         gAddSz                             => gAddSz,                         -- integer
         gDatSz                             => gDatSz,                         -- integer
         gAddLow                            => 0,                              -- integer
         gAddHigh                           => 5,                              -- integer
         gAsync                             => true,                           -- boolean
         gRtCmdB                            => 0,                              -- integer
         gRtRdBB                            => 0                               -- integer
      )
      port map (
         ClkCpu                             => ClkCpu,                         -- in   std_logic
         CmdBI                              => CmdBI,                          -- in   std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBO                              => i0rb_counterRdBB,               -- out  std_logic_vector(gDatSz+1 downto 0)
         CmdBO                              => i0rb_counterCmdBO,              -- out  std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBI                              => i0rb_counterRdBBI               -- in   std_logic_vector(gDatSz+1 downto 0)
      );

   pRdBBO                          : RdBBO                         <= i0rb_counterRdBB;

end RTL;