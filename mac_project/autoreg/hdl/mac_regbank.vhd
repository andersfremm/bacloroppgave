----------------- COPYRIGHT © ProgBit AS 2017 ----------------------------------
-- This file has been generated using ProgBit autoreg tools
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mac_regbank is
   generic (
      gAddSz                             : integer   := 16;
      gDatSz                             : integer   := 16
   );
   port (
      -- Clk, Rst and command bus ports
      Clk                                : in  std_logic;
      Rst                                : in  std_logic;
      CmdBI                              : in  std_logic_vector(gAddSz+gDatSz+2 downto 0);
      RdBBO                              : out std_logic_vector(gDatSz+1 downto 0);
      -- Regbank IO ports
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
end;

architecture RTL of mac_regbank is

   ---------------------------------------------------------------------------
   -- Constants defined based on address mapping and number of registers etc
   ---------------------------------------------------------------------------
   constant cLocalAddrSize                : integer := 3;
   -- Please notice that cReadLatency<latencyGroup> shall be 'value of -rl' + 1 when <latencyGroup> -t is FIFOR*
   -- This is because i<latencyGroup>Re is assigned in a clocked process
   -- Otherwise cReadLatency<latencyGroup> shall be equal to 'value of -rl'. This defaults to 0.
   constant cAddSzTxFifo                  : integer := 1;
   constant cReadLatencyTxFifo            : integer := 0;
   constant cAddSzRxFifo                  : integer := 1;
   constant cReadLatencyRxFifo            : integer := 1;
   constant cAddSzRegSpace                : integer := 2;
   constant cReadLatencyRegSpace          : integer := 0;

   ---------------------------------------------------------------------------
   -- Internal signals to map to the CmdBI into singel signals. Just aliases
   ---------------------------------------------------------------------------
   signal CmdBInit                        : std_logic;
   signal CmdBActive                      : std_logic;
   signal CmdBRead                        : std_logic;
   signal CmdBData                        : std_logic_vector(gDatSz-1 downto 0);
   signal CmdBAddr                        : std_logic_vector(gAddSz-1 downto 0);

   ---------------------------------------------------------------------------
   -- Command bus processing and state signals
   ---------------------------------------------------------------------------
   signal LocalReset                      : std_logic;
   signal RdBAck                          : std_logic;
   signal ActiveEdge                      : std_logic;
   -- ActiveRead length reflects maximum regbank read latency
   signal ActiveRead                      : std_logic_vector(cReadLatencyRxFifo downto 0);
   -- ValidRead length reflects number of regbank groups
   type tValidRead is array (2 downto 0) of std_logic;
   signal ValidRead                       : tValidRead := (others => '0');
   signal ActiveWrite                     : std_logic;
   signal CmdBActiveShift                 : std_logic_vector(3 downto 0) := (others => '0');
   signal CmdBInitShift                   : std_logic_vector(1 downto 0) := (others => '0');
   signal RdBData                         : std_logic_vector(gDatSz-1 downto 0) := (others => '0');

   ---------------------------------------------------------------------------
   -- Address decoding related signals
   ---------------------------------------------------------------------------
   signal TxFifoDec                      : std_logic:= '0';
   signal RxFifoDec                      : std_logic:= '0';
   signal RegSpaceDec                    : std_logic:= '0';

   ---------------------------------------------------------------------------
   -- Register related signals
   ---------------------------------------------------------------------------
   signal iFifoRst                       : std_logic;
   signal iLoopEn                        : std_logic;
   signal iRxCnt                         : std_logic_vector(9 downto 0);
   signal iRxFifoRe                      : std_logic;
   signal iRxFifoDataI                   : std_logic_vector(7 downto 0);
   signal iRxFifoEmpty                   : std_logic;
   signal iRxFifoFull                    : std_logic;
   signal iTxCnt                         : std_logic_vector(9 downto 0);
   signal iTxFifoWe                      : std_logic;
   signal iTxFifoDataO                   : std_logic_vector(7 downto 0);
   signal iTxFifoEmpty                   : std_logic;
   signal iTxFifoFull                    : std_logic;
   signal iTxStart                       : std_logic;

   ---------------------------------------------------------------------------
   -- Read Array and local address
   ---------------------------------------------------------------------------
   type tRxFifoReadArray is array (0 to 1) of std_logic_vector(gDatSz-1 downto 0);
   signal RxFifoReadArray                : tRxFifoReadArray := (others => (others => '0'));
   signal RxFifoRead                     : std_logic_vector(gDatSz-1 downto 0) := (others => '0');
   type tRegSpaceReadArray is array (0 to 3) of std_logic_vector(gDatSz-1 downto 0);
   signal RegSpaceReadArray              : tRegSpaceReadArray := (others => (others => '0'));
   signal RegSpaceRead                   : std_logic_vector(gDatSz-1 downto 0) := (others => '0');
   signal LocalAddr                      : std_logic_vector(cLocalAddrSize-1 downto 0);
   signal Irq                            : std_logic;

begin
   ---------------------------------------------------------------------------
   -- Mapping the Command Bus into its components
   --     ACTIVE, Read(=1)/Write(=0), DATA and AddrR 
   ---------------------------------------------------------------------------
   CmdBInit      <= CmdBI(CmdBI'left);
   CmdBActive    <= CmdBI(CmdBI'left-1);
   CmdBRead      <= CmdBI(CmdBI'left-2);
   CmdBData      <= CmdBI(CmdBI'left-3 downto gAddSz);
   CmdBAddr      <= CmdBI(gAddSz-1 downto 0);
   ---------------------------------------------------------------------------
   -- Init logic for async regbank
   -- '0' at init (MSB at CmdBI) (or power on) and shift '1' into shift reg to disable clear
   ---------------------------------------------------------------------------
   pCmdBInitShift: process(Clk, CmdBInit)
   begin
      if CmdBInit = '1' then
         CmdBInitShift <= (others => '0');
      elsif rising_edge(Clk) then
         CmdBInitShift <= CmdBInitShift(0) & '1';
      end if;
   end process;
   LocalReset    <= not CmdBInitShift(1) or Rst;
   
   ---------------------------------------------------------------------------
   -- Add extra FFs to CmdBActive as CmdBI is asynchronous to Clk
   ---------------------------------------------------------------------------
   pCmdBActiveShift: process(Clk)
   begin
      if rising_edge(Clk) then
         CmdBActiveShift(CmdBActiveShift'left downto 1) <=             CmdBActiveShift(CmdBActiveShift'left-1 downto 0);
      end if;
   end process;
   CmdBActiveShift(0) <= CmdBActive;
   ---------------------------------------------------------------------------
   -- Command bus processing
   --  Detect the positive edge at ACTIVE signal
   --  Then generate the control signals so that the read or write cycles can proceed
   ---------------------------------------------------------------------------
   -- Positive edge detection at CmdBActive
   ActiveEdge  <= '1' when 
      CmdBActiveShift(CmdBActiveShift'left) = '0' and CmdBActiveShift(CmdBActiveShift'left-1) = '1'
         else '0';
   ActiveRead(0)  <= ActiveEdge and CmdBRead ;
   ValidRead(0)   <= CmdBRead and ActiveRead(cReadLatencyTxFifo) and TxFifoDec;
   ValidRead(1)   <= CmdBRead and ActiveRead(cReadLatencyRxFifo) and RxFifoDec;
   ValidRead(2)   <= CmdBRead and ActiveRead(cReadLatencyRegSpace) and RegSpaceDec;
   ActiveWrite    <= ActiveEdge and (not CmdBRead);

   pRdBAck: process(Clk)
   begin
      if rising_edge(Clk) then
         -- Answer with a RdBAck as soon as possible
         -- (and reset it when the cycle is over)
         if CmdBActiveShift(CmdBActiveShift'left-1) = '0' then -- not active
            RdBAck <= '0';
         elsif ActiveWrite = '1' or ValidRead /= (ValidRead'range => '0') then
            RdBAck <= '1';
         end if;
         ActiveRead(cReadLatencyRxFifo downto 1) <= ActiveRead(cReadLatencyRxFifo-1 downto 0);
     end if;
   end process;

   ---------------------------------------------------------------------------
   -- Since the local address has a reduced range, we pick here only the
   -- LSBS of the CmdBAddr
   LocalAddr <= CmdBAddr(LocalAddr'range);

   ---------------------------------------------------------------------------
   -- Address decoding
   ---------------------------------------------------------------------------
   pDecodeAddress: process(LocalAddr)
   begin
      -- Default all signals are inactive
      TxFifoDec                      <= '0';
      RxFifoDec                      <= '0';
      RegSpaceDec                    <= '0';
      case to_integer(unsigned(LocalAddr)) is
         when 0 to 0 =>
            TxFifoDec                      <= '1';
         when 1 to 1 =>
            RxFifoDec                      <= '1';
         when 2 to 5 =>
            RegSpaceDec                    <= '1';
         when others =>
            null;
      end case;
   end process;

   ---------------------------------------------------------------------------
   -- Connect inputs to internal signals
   ---------------------------------------------------------------------------
   iRxCnt                              <= RxCntI;
   iRxFifoDataI                        <= RxFifoDataI;
   iRxFifoEmpty                        <= RxFifoEmptyI;
   iRxFifoFull                         <= RxFifoFullI;
   iTxCnt                              <= TxCntI;
   iTxFifoEmpty                        <= TxFifoEmptyI;
   iTxFifoFull                         <= TxFifoFullI;

   ---------------------------------------------------------------------------
   -- Connect outputs to internal register signals
   ---------------------------------------------------------------------------
   FifoRstO                           <= iFifoRst;
   LoopEnO                            <= iLoopEn;
   RxFifoReO                          <= iRxFifoRe;
   TxFifoWeO                          <= iTxFifoWe;
   TxFifoDataO                        <= iTxFifoDataO;
   TxStartO                           <= iTxStart;

   ---------------------------------------------------------------------------
   -- The TxFifo control signal process
   ---------------------------------------------------------------------------
   pTxFifoControlSignal: process(Clk)
   begin
      if rising_edge(Clk) then
         -- Control signals are default assigned low
         iTxFifoWe                          <= '0';
         if ActiveWrite = '1' and TxFifoDec = '1' then
            -- Write access
            case to_integer(unsigned(LocalAddr(cAddSzTxFifo-1 downto 0))) is
               when 0 =>
                  iTxFifoWe                          <= '1';
               when others =>
                  null;
            end case;
         end if;
      end if;
   end process;

   ---------------------------------------------------------------------------
   -- The RxFifo control signal process
   ---------------------------------------------------------------------------
   pRxFifoControlSignal: process(Clk)
   begin
      if rising_edge(Clk) then
         -- Control signals are default assigned low
         iRxFifoRe                          <= '0';
         if ActiveRead(0) = '1' and RxFifoDec = '1' then
            -- Read access
            case to_integer(unsigned(LocalAddr(cAddSzRxFifo-1 downto 0))) is
               when 1 =>
                  iRxFifoRe                          <= '1';
               when others =>
                  null;
            end case;
         end if;
      end if;
   end process;

   ---------------------------------------------------------------------------
   -- The TxFifo write process
   ---------------------------------------------------------------------------
   pTxFifoWriteReg: process(Clk)
   begin
      if rising_edge(Clk) then
         if LocalReset = '1' then
            -- Load default configuration
            iTxFifoDataO                       <= x"00";
         else
            if ActiveWrite = '1' and TxFifoDec = '1' then
               -- Write bank: only the required addresses are decoded
               case to_integer(unsigned(LocalAddr(cAddSzTxFifo-1 downto 0))) is
                  when 0 =>
                     iTxFifoDataO(7 downto 0)           <= CmdBData(7 downto 0);
--                     iTxFifoDataO(7 downto 0)           <= CmdBData(15 downto 0);
                  when others =>
                     null;
               end case;
            end if;
         end if;
      end if;
   end process;

   ---------------------------------------------------------------------------
   -- The RegSpace write process
   ---------------------------------------------------------------------------
   pRegSpaceWriteReg: process(Clk)
   begin
      if rising_edge(Clk) then
         if LocalReset = '1' then
            -- Load default configuration
            iFifoRst                           <= '0';
            iLoopEn                            <= '0';
            iTxStart                           <= '0';
         else
            -- One cycle signals are default assigned low
            iFifoRst                           <= '0';
            iTxStart                           <= '0';
            if ActiveWrite = '1' and RegSpaceDec = '1' then
               -- Write bank: only the required addresses are decoded
               case to_integer(unsigned(LocalAddr(cAddSzRegSpace-1 downto 0))) is
                  when 1 =>
                     iFifoRst                           <= CmdBData(2);
                     iLoopEn                            <= CmdBData(0);
                     iTxStart                           <= CmdBData(1);
                  when others =>
                     null;
               end case;
            end if;
         end if;
      end if;
   end process;

   ---------------------------------------------------------------------------
   -- Constant assignments
   ---------------------------------------------------------------------------

   ---------------------------------------------------------------------------
   -- Assigning the unused interrupt
   ---------------------------------------------------------------------------
   pInterrupt:  Irq <= '0';

   ---------------------------------------------------------------------------
   -- The read back mechanism
   ---------------------------------------------------------------------------
   -- Map multi location signals to internal "get" signals. 

   -- Map RegSpace signals to the Read Array(s). 
   RegSpaceReadArray(2)(9 downto 0)   <= iTxCnt;
   RegSpaceReadArray(3)(9 downto 0)   <= iRxCnt;
   RegSpaceReadArray(0)(3)            <= iRxFifoEmpty;
   RegSpaceReadArray(0)(2)            <= iRxFifoFull;
   RegSpaceReadArray(0)(1)            <= iTxFifoEmpty;
   RegSpaceReadArray(0)(0)            <= iTxFifoFull;
   RegSpaceReadArray(1)(0)            <= iLoopEn;
   RegSpaceRead                       <= RegSpaceReadArray(to_integer(unsigned(LocalAddr(cAddSzRegSpace-1 downto 0))))when ValidRead(2) = '1' else (others => '0');

   -- Map RxFifo memory signals to the Read Array(s). 
   RxFifoReadArray(1)(7 downto 0)     <= iRxFifoDataI;
   RxFifoRead                         <= RxFifoReadArray(to_integer(unsigned(LocalAddr(cAddSzRxFifo-1 downto 0)))) when ValidRead(1) = '1' else (others => '0');

   -- Mux from Read Array(s) to RdBData
   pRdBData : process(Clk)                               
   begin                                      
      if rising_edge(Clk) then                 
         if CmdBActive = '0' then -- not active                      
            RdBData <= (others => '0');
         elsif ValidRead /= (ValidRead'range => '0') then
            RdBData <= RegSpaceRead or RxFifoRead;
         end if;
      end if;
   end process;
   -- Combine RdBAck and RdBData into the Read back bus
   RdBBO <= Irq & RdBAck & RdBData;

end RTL;
