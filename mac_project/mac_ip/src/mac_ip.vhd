----------------- COPYRIGHT © ProgBit AS 2016 ----------------------------------
-- This file has been generated using ProgBit autoreg tools
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mac is
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
-- Manually added      
      CounterO                       : out std_logic_vector(15 downto 0); -- Counter
      CounterMsbO                    : out std_logic -- Pseudo MSB. 50% duty cycle and periode based on value for max
   );
end entity;

architecture RTL of mac is

component mac_addressdecoder is
   generic (
      gAddSz                         : integer   := 16;
      gDatSz                         : integer   := 16
   );
   port (
      ClkCpu                         : in  std_logic;
      CmdBI                          : in  std_logic_vector(gAddSz+gDatSz+2 downto 0);
      RdBBO                          : out std_logic_vector(gDatSz+1 downto 0);
      i0rb_counterCmdBO              : out std_logic_vector(gAddSz+gDatSz+2 downto 0);
      i0rb_counterRdBBI              : in  std_logic_vector(gDatSz+1 downto 0)
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
   -- ********************************************
   -- Signals manually added to the template from AutoReg
   -- ********************************************
   signal PrescaleCnt         : std_logic_vector(11 downto 0); -- Prescale counter
   signal PrescaleTc          : std_logic;                     -- Terminal count from prescale counter    
   signal Counter             : std_logic_vector(15 downto 0); -- Counter
   signal MaxModified         : std_logic_vector(15 downto 0); -- Modified value if Max = 0
 
begin

   i0mac_addressdecoder : mac_addressdecoder
      generic map (
         gAddSz                         => gAddSz,
         gDatSz                         => gDatSz
      )
      port map (
         ClkCpu                         => ClkCpu,
         CmdBI                          => CmdBI,
         RdBBO                          => RdBBO,
         i0rb_counterCmdBO              => i0rb_counterCmdB,
         i0rb_counterRdBBI              => i0rb_counterRdBB
      );

   i0rb_mac : mac_regbank
      generic map (
         gAddSz                             => gAddSz,                         -- integer
         gDatSz                             => gDatSz                          -- integer
      )
      port map (
         Clk                                => Clk,                            -- in std_logic
         Rst                                => Rst,                            -- in std_logic
         CmdBI                              => i0rb_counterCmdB,              -- in std_logic_vector(gAddSz+gDatSz+2 downto 0)
         RdBBO                              => i0rb_counterRdBB,              -- out std_logic_vector(gDatSz+1 downto 0)
         downO                              => i0rb_counterdown,              -- out std_logic
         maxO                               => i0rb_countermax,               -- out std_logic_vector(15 downto 0)
         prescaleO                          => i0rb_counterprescale,          -- out std_logic_vector(11 downto 0)
         presetO                            => i0rb_counterpreset,            -- out std_logic
         readcntI                           => i0rb_counterreadcnt,           -- in std_logic_vector(15 downto 0)
         setcntO                            => i0rb_countersetcnt,            -- out std_logic_vector(15 downto 0)
         stepdownO                          => i0rb_counterstepdown,          -- out std_logic
         stepupO                            => i0rb_counterstepup,            -- out std_logic
         upO                                => i0rb_counterup                 -- out std_logic
      );

-- ********************************************
-- Logic manually added to the template from AutoReg
-- ********************************************
   -- Prescale counter.
  pPrescale:
  process(Clk)
  begin
     if rising_edge(Clk) then
        if Rst ='1' then
           PrescaleCnt <= (others => '0');
        elsif PrescaleCnt >= i0rb_counterprescale and unsigned(i0rb_counterprescale) /= 0 then
           PrescaleCnt <= (others => '0');
        else
           PrescaleCnt <= std_logic_vector(unsigned(PrescaleCnt) + 1);
        end if;
        
        if unsigned(PrescaleCnt) = 0 then
           PrescaleTc <= '1';
        else
           PrescaleTc <= '0';
        end if;
     end if;
  end process;

  -- To avoid that the counter is not running with max=0, it is modified to FFFF if it max=0
  MaxModified <= (others => '1') when unsigned(i0rb_countermax) = 0 else i0rb_countermax; --
  
   -- Counter.
  pCounter:
  process(Clk)
  begin
     if rising_edge(Clk) then
        
        if Rst ='1' then
           Counter <= (others => '0');
        elsif i0rb_counterstepup= '1' then
           if Counter >= MaxModified then
              Counter <= (others => '0');
           else
              Counter <= std_logic_vector(unsigned(Counter) + 1);
           end if;
        elsif i0rb_counterstepdown= '1' then
           if unsigned(Counter) = 0 or Counter > MaxModified then
              Counter <= MaxModified;
           else
              Counter <= std_logic_vector(unsigned(Counter) - 1);
           end if;
        elsif i0rb_counterpreset = '1' then
           Counter <= i0rb_countersetcnt;
        elsif PrescaleTc = '1' then
           if unsigned(Counter) = 0  then 
           end if;
           
           if i0rb_counterup = '1' then
              if Counter >= MaxModified then
                 Counter <= (others => '0');
              else
                 Counter <= std_logic_vector(unsigned(Counter) + 1);
              end if;
           elsif i0rb_counterdown= '1' then
              if unsigned(Counter) = 0 or Counter > MaxModified then
                Counter <= MaxModified;
              else
                Counter <= std_logic_vector(unsigned(Counter) - 1);
              end if;
           end if;
        end if;
        
        -- Map to outputs
        CounterO <= Counter;
        -- Make pseudo MSB based on value for max
        if unsigned(Counter) <= (unsigned(MaxModified))/2 then
           CounterMsbO<= '0';
        else
           CounterMsbO<= '1';
        end if;
        
     end if;
  end process;
 
  i0rb_counterreadcnt <= Counter;
 
end RTL;
