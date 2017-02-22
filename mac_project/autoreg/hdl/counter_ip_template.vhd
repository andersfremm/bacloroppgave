----------------- COPYRIGHT © ProgBit AS 2017 ----------------------------------
-- This file has been generated using ProgBit autoreg tools
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_ip is
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

architecture RTL of counter_ip is

component counter_ip_addressdecoder is
   generic (
      gAddSz                             : integer   := 16;
      gDatSz                             : integer   := 16
   );
   port (
      ClkCpu                             : in  std_logic;
      CmdBI                              : in  std_logic_vector(gAddSz+gDatSz+2 downto 0);
      RdBBO                              : out std_logic_vector(gDatSz+1 downto 0);
      i0rb_counterCmdBO                  : out std_logic_vector(gAddSz+gDatSz+2 downto 0);
      i0rb_counterRdBBI                  : in  std_logic_vector(gDatSz+1 downto 0)
   );
end component;

component counter_regbank is
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

   signal i0rb_counterdown                   : std_logic;
   signal i0rb_countermax                    : std_logic_vector(15 downto 0);
   signal i0rb_counterprescale               : std_logic_vector(11 downto 0);
   signal i0rb_counterpreset                 : std_logic;
   signal i0rb_counterreadcnt                : std_logic_vector(15 downto 0) := x"0000";
   signal i0rb_countersetcnt                 : std_logic_vector(15 downto 0);
   signal i0rb_counterstepdown               : std_logic;
   signal i0rb_counterstepup                 : std_logic;
   signal i0rb_counterup                     : std_logic;
   signal i0rb_counterCmdB                   : std_logic_vector(gAddSz+gDatSz+2 downto 0);
   signal i0rb_counterRdBB                   : std_logic_vector(gDatSz+1 downto 0);


begin

   i0counter_ip_addressdecoder : counter_ip_addressdecoder
      generic map (
         gAddSz                             => gAddSz,                         -- integer
         gDatSz                             => gDatSz                          -- integer
      )
      port map (
         ClkCpu                             => ClkCpu,                         -- in   std_logic
         CmdBI                              => CmdBI,                          -- in   std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBO                              => RdBBO,                          -- out  std_logic_vector(gDatSz+1 downto 0)
         i0rb_counterCmdBO                  => i0rb_counterCmdB,               -- out  std_logic_vector(gAddSz+gDatSz+2 downto 0)
         i0rb_counterRdBBI                  => i0rb_counterRdBB                -- in   std_logic_vector(gDatSz+1 downto 0)
      );

   i0rb_counter : counter_regbank
      generic map (
         gAddSz                             => gAddSz,                         -- integer
         gDatSz                             => gDatSz                          -- integer
      )
      port map (
         Clk                                => Clk,                            -- in   std_logic
         Rst                                => Rst,                            -- in   std_logic
         CmdBI                              => i0rb_counterCmdB,               -- in   std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBO                              => i0rb_counterRdBB,               -- out  std_logic_vector(gDatSz+1 downto 0)
         downO                              => i0rb_counterdown,               -- out  std_logic
         maxO                               => i0rb_countermax,                -- out  std_logic_vector(15 downto 0)
         prescaleO                          => i0rb_counterprescale,           -- out  std_logic_vector(11 downto 0)
         presetO                            => i0rb_counterpreset,             -- out  std_logic
         readcntI                           => i0rb_counterreadcnt,            -- in   std_logic_vector(15 downto 0)
         setcntO                            => i0rb_countersetcnt,             -- out  std_logic_vector(15 downto 0)
         stepdownO                          => i0rb_counterstepdown,           -- out  std_logic
         stepupO                            => i0rb_counterstepup,             -- out  std_logic
         upO                                => i0rb_counterup                  -- out  std_logic
      );


end RTL;
