----------------- COPYRIGHT © ProgBit AS 2017 ----------------------------------
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
      mdc                            : out std_logic
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

   signal i0rb_macFifoRst                    : std_logic;
   signal i0rb_macLoopEn                     : std_logic;
--   signal i0rb_macRxCnt                      : std_logic_vector(9 downto 0) := "0000000000";
   signal i0rb_macRxFifoRe                   : std_logic;
--   signal i0rb_macRxFifoDataI                : std_logic_vector(7 downto 0);
--   signal i0rb_macRxFifoEmpty                : std_logic := '0';
--   signal i0rb_macRxFifoFull                 : std_logic := '0';
--   signal i0rb_macTxCnt                      : std_logic_vector(9 downto 0) := "0000000000";
   signal i0rb_macTxFifoWe                   : std_logic;
   signal i0rb_macTxFifoDataO                : std_logic_vector(7 downto 0);
--   signal i0rb_macTxFifoEmpty                : std_logic := '0';
--   signal i0rb_macTxFifoFull                 : std_logic := '0';
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

   signal MdioDataI                          : std_logic;
   signal MdioDataO                          : std_logic;
   signal MdioEnO                            : std_logic;
   
   -- Synchronous fifos
   constant cRamSize                         : natural := 1024;
   type tRam is array (cRamSize - 1 downto 0) of std_logic_vector(7 downto 0);

   -- Tx
   signal TxRam                              : tRam := (others => (others => '0'));
   signal TxWCnt                             : signed(9 downto 0);
   signal TxRCnt                             : signed(9 downto 0);
   signal TxDiff                             : signed(9 downto 0);
   signal TxEmpty                            : std_logic;
   signal TxFull                             : std_logic;
   signal TxData                             : std_logic_vector(7 downto 0);

   -- Phy emulator state machine. Used when looping
   type tPhyEmuState is (sIdle, sRdWr, sWait0, sWait1);
   signal PhyEmuState                        : tPhyEmuState;
   signal PhyEmuRdWr                         : std_logic;

   -- Loop
   signal LoopWr                             : std_logic;
   signal LoopData                           : std_logic_vector(7 downto 0);

   -- Rx
   signal RxRam                              : tRam := (others => (others => '0'));
   signal RxWCnt                             : signed(9 downto 0);
   signal RxRCnt                             : signed(9 downto 0);
   signal RxDiff                             : signed(9 downto 0);
   signal RxEmpty                            : std_logic;
   signal RxFull                             : std_logic;
   signal RxData                             : std_logic_vector(7 downto 0);

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
         FifoRstO                           => i0rb_macFifoRst,                -- out  std_logic
         LoopEnO                            => i0rb_macLoopEn,                 -- out  std_logic
         RxCntI                             => std_logic_vector(RxDiff),       -- in   std_logic_vector(9 downto 0)
         RxFifoReO                          => i0rb_macRxFifoRe,               -- out  std_logic
         RxFifoDataI                        => RxData,                         -- in   std_logic_vector(7 downto 0)
         RxFifoFullI                        => RxFull,                         -- in   std_logic
         RxFifoEmptyI                       => RxEmpty,                        -- in   std_logic
         TxCntI                             => std_logic_vector(TxDiff),       -- in   std_logic_vector(9 downto 0)
         TxFifoWeO                          => i0rb_macTxFifoWe,               -- out  std_logic
         TxFifoDataO                        => i0rb_macTxFifoDataO,            -- out  std_logic_vector(7 downto 0)
         TxFifoEmptyI                       => TxEmpty,                        -- in   std_logic
         TxFifoFullI                        => TxFull,                         -- in   std_logic
         TxStartO                           => i0rb_macTxStart                 -- out  std_logic
      );

   pTxCnt: process(Clk)
   begin
      if rising_edge(Clk) then
         if Rst = '1' or i0rb_macFifoRst = '1' then
            TxWCnt <= (others => '0');
            TxRCnt <= (others => '0');
         else
            if i0rb_macTxFifoWe = '1' then
               TxWCnt <= TxWCnt + 1;
            end if;
            if PhyEmuRdWr = '1' then
               if TxEmpty = '0' then
                  TxRCnt <= TxRCnt + 1;
               end if;
            end if;
         end if;
      end if;
   end process;

   TxDiff <= TxWCnt - TxRCnt;
   TxEmpty <= '1' when TxDiff = 0 else '0';
   TxFull  <= '1' when TxDiff = 0 else '0';

   pTxRam: process(Clk)
   begin
      if rising_edge(Clk) then
         if i0rb_macTxFifoWe = '1' then
            TxRam(to_integer(TxWCnt)) <= i0rb_macTxFifoDataO;
         end if;
         TxData <= TxRam(to_integer(TxRCnt));
      end if;
   end process;


   pPhyEmuState: process(Clk)
   begin
      if rising_edge(Clk) then
         if Rst = '1' or i0rb_macFifoRst = '1' then
            PhyEmuState <= sIdle;
            PhyEmuRdWr  <= '0';
         else
            -- Default
            PhyEmuRdWr <= '0';

            case PhyEmuState is
               when sIdle =>
                  if i0rb_macTxStart = '1' then
                     PhyEmuState <= sRdWr;
                  end if;
               when sRdWr =>
                  if TxEmpty = '0' then
                     PhyEmuState <= sWait0;
                     PhyEmuRdWr  <= '1';
                  else
                     PhyEmuState <= sIdle;
                  end if;
               when sWait0 =>
                  PhyEmuState <= sWait1;
               when sWait1 =>
                  if TxEmpty = '0' then
                     PhyEmuState <= sRdWr;
                  else
                     PhyEmuState <= sIdle;
                  end if;
            end case;
         end if;
      end if;
   end process;


   -- Loop
   LoopWr   <= PhyEmuRdWr when i0rb_macLoopEn = '1' else '0';
   LoopData <= TxData     when i0rb_macLoopEn = '1' else "00000000";


   pRxCnt: process(Clk)
   begin
      if rising_edge(Clk) then
         if Rst = '1' or i0rb_macFifoRst = '1' then
            RxWCnt <= (others => '0');
            RxRCnt <= (others => '0');
         else
            if LoopWr = '1' then
               RxWCnt <= RxWCnt + 1;
            end if;
            if i0rb_macRxFifoRe = '1' then
               if RxEmpty = '0' then
                  RxRCnt <= RxRCnt + 1;
               end if;
            end if;
         end if;
      end if;
   end process;

   RxDiff <= RxWCnt - RxRCnt;
   RxEmpty <= '1' when RxDiff = 0 else '0';
   RxFull  <= '1' when RxDiff = 0 else '0';

   pRxRam: process(Clk)
   begin
      if rising_edge(Clk) then
         if LoopWr = '1' then
            RxRam(to_integer(RxWCnt)) <= LoopData;
         end if;
         RxData <= RxRam(to_integer(RxRCnt));
      end if;
   end process;

end RTL;
