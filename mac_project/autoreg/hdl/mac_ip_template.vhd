----------------- COPYRIGHT � ProgBit AS 2017 ----------------------------------
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
      i0rb_macRdBBI                      : in  std_logic_vector(gDatSz+1 downto 0)
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

   signal i0rb_macdown                       : std_logic;
   signal i0rb_macmax                        : std_logic_vector(15 downto 0);
   signal i0rb_macprescale                   : std_logic_vector(11 downto 0);
   signal i0rb_macpreset                     : std_logic;
   signal i0rb_macreadcnt                    : std_logic_vector(15 downto 0) := x"0000";
   signal i0rb_macsetcnt                     : std_logic_vector(15 downto 0);
   signal i0rb_macstepdown                   : std_logic;
   signal i0rb_macstepup                     : std_logic;
   signal i0rb_macup                         : std_logic;
   signal i0rb_macCmdB                       : std_logic_vector(gAddSz+gDatSz+2 downto 0);
   signal i0rb_macRdBB                       : std_logic_vector(gDatSz+1 downto 0);


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
         i0rb_macRdBBI                      => i0rb_macRdBB                    -- in   std_logic_vector(gDatSz+1 downto 0)
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
