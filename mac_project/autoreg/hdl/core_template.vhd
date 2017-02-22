----------------- COPYRIGHT © ProgBit AS 2017 ----------------------------------
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
      i0rb_ledCmdBO                      : out std_logic_vector(gAddSz+gDatSz+2 downto 0);
      i0rb_ledRdBBI                      : in  std_logic_vector(gDatSz+1 downto 0);
      i0rb_memCmdBO                      : out std_logic_vector(gAddSz+gDatSz+2 downto 0);
      i0rb_memRdBBI                      : in  std_logic_vector(gDatSz+1 downto 0);
      i0rb_revisionCmdBO                 : out std_logic_vector(gAddSz+gDatSz+2 downto 0);
      i0rb_revisionRdBBI                 : in  std_logic_vector(gDatSz+1 downto 0)
   );
end component;

component mac is
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
      RamDataI                           : in  std_logic_vector(35 downto 0);
      RamDataO                           : out std_logic_vector(35 downto 0);
      RamAddrO                           : out std_logic_vector(7 downto 0)
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

   signal i0rb_memRamWe                      : std_logic;
   signal i0rb_memRamCe                      : std_logic;
   signal i0rb_memRamDataI                   : std_logic_vector(35 downto 0);
   signal i0rb_memRamDataO                   : std_logic_vector(35 downto 0);
   signal i0rb_memRamAddr                    : std_logic_vector(7 downto 0);
   signal i0rb_revisionlatch                 : std_logic;
   signal i0rb_revisionrtest                 : std_logic_vector(39 downto 0) := x"0000000000";
   signal i0rb_revisionrwtest                : std_logic_vector(39 downto 0);
   signal i0countCmdB                        : std_logic_vector(gAddSz+gDatSz+2 downto 0);
   signal i0countRdBB                        : std_logic_vector(gDatSz+1 downto 0);
   signal i0rb_ledCmdB                       : std_logic_vector(gAddSz+gDatSz+2 downto 0);
   signal i0rb_ledRdBB                       : std_logic_vector(gDatSz+1 downto 0);
   signal i0rb_memCmdB                       : std_logic_vector(gAddSz+gDatSz+2 downto 0);
   signal i0rb_memRdBB                       : std_logic_vector(gDatSz+1 downto 0);
   signal i0rb_revisionCmdB                  : std_logic_vector(gAddSz+gDatSz+2 downto 0);
   signal i0rb_revisionRdBB                  : std_logic_vector(gDatSz+1 downto 0);


begin

   i0core_addressdecoder : core_addressdecoder
      generic map (
         gAddSz                             => gAddSz,                         -- integer
         gDatSz                             => gDatSz                          -- integer
      )
      port map (
         ClkCpu                             => ClkCpu,                         -- in   std_logic
         CmdBI                              => CmdBI,                          -- in   std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBO                              => RdBBO,                          -- out  std_logic_vector(gDatSz+1 downto 0)
         i0countCmdBO                       => i0countCmdB,                    -- out  std_logic_vector(gAddSz+gDatSz+2 downto 0)
         i0countRdBBI                       => i0countRdBB,                    -- in   std_logic_vector(gDatSz+1 downto 0)
         i0rb_ledCmdBO                      => i0rb_ledCmdB,                   -- out  std_logic_vector(gAddSz+gDatSz+2 downto 0)
         i0rb_ledRdBBI                      => i0rb_ledRdBB,                   -- in   std_logic_vector(gDatSz+1 downto 0)
         i0rb_memCmdBO                      => i0rb_memCmdB,                   -- out  std_logic_vector(gAddSz+gDatSz+2 downto 0)
         i0rb_memRdBBI                      => i0rb_memRdBB,                   -- in   std_logic_vector(gDatSz+1 downto 0)
         i0rb_revisionCmdBO                 => i0rb_revisionCmdB,              -- out  std_logic_vector(gAddSz+gDatSz+2 downto 0)
         i0rb_revisionRdBBI                 => i0rb_revisionRdBB               -- in   std_logic_vector(gDatSz+1 downto 0)
      );

   i0rb_led : led_regbank
      generic map (
         gAddSz                             => gAddSz,                         -- integer
         gDatSz                             => gDatSz                          -- integer
      )
      port map (
         Clk                                => ClkCpu,                         -- in   std_logic
         Rst                                => Rst,                            -- in   std_logic
         CmdBI                              => i0rb_ledCmdB,                   -- in   std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBO                              => i0rb_ledRdBB,                   -- out  std_logic_vector(gDatSz+1 downto 0)
         led0O                              => i0rb_ledled0O,                  -- out  std_logic
         led1O                              => i0rb_ledled1O,                  -- out  std_logic
         led2O                              => i0rb_ledled2O,                  -- out  std_logic
         led3O                              => i0rb_ledled3O                   -- out  std_logic
      );

   i0rb_revision : revision_regbank
      generic map (
         gAddSz                             => gAddSz,                         -- integer
         gDatSz                             => gDatSz                          -- integer
      )
      port map (
         Clk                                => ClkCpu,                         -- in   std_logic
         Rst                                => Rst,                            -- in   std_logic
         CmdBI                              => i0rb_revisionCmdB,              -- in   std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBO                              => i0rb_revisionRdBB,              -- out  std_logic_vector(gDatSz+1 downto 0)
         latchO                             => i0rb_revisionlatch,             -- out  std_logic
         rtestI                             => i0rb_revisionrtest,             -- in   std_logic_vector(39 downto 0)
         rwtestO                            => i0rb_revisionrwtest             -- out  std_logic_vector(39 downto 0)
      );

   i0count : mac
      generic map (
         gAddSz                             => gAddSz,                         -- integer
         gDatSz                             => gDatSz,                         -- integer
         gVendor                            => gVendor                         -- string(1 to 6)
      )
      port map (
         Clk                                => Clk,                            -- in   std_logic
         Rst                                => Rst,                            -- in   std_logic
         ClkCpu                             => ClkCpu,                         -- in   std_logic
         CmdBI                              => i0countCmdB,                    -- in   std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBO                              => i0countRdBB                     -- out  std_logic_vector(gDatSz+1 downto 0)
      );

   i0rb_mem : mem_regbank
      generic map (
         gAddSz                             => gAddSz,                         -- integer
         gDatSz                             => gDatSz                          -- integer
      )
      port map (
         Clk                                => ClkCpu,                         -- in   std_logic
         Rst                                => Rst,                            -- in   std_logic
         CmdBI                              => i0rb_memCmdB,                   -- in   std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBO                              => i0rb_memRdBB,                   -- out  std_logic_vector(gDatSz+1 downto 0)
         RamWeO                             => i0rb_memRamWe,                  -- out  std_logic
         RamCeO                             => i0rb_memRamCe,                  -- out  std_logic
         RamDataI                           => i0rb_memRamDataI,               -- in   std_logic_vector(35 downto 0)
         RamDataO                           => i0rb_memRamDataO,               -- out  std_logic_vector(35 downto 0)
         RamAddrO                           => i0rb_memRamAddr                 -- out  std_logic_vector(7 downto 0)
      );


end RTL;
