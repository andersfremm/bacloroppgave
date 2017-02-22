----------------- COPYRIGHT © ProgBit AS 2017 ----------------------------------
-- This file has been generated using ProgBit autoreg tools
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mem_regbank is
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
      RamWeO                             : out std_logic;
      RamCeO                             : out std_logic;
      RamDataI                           : in  std_logic_vector(35 downto 0);
      RamDataO                           : out std_logic_vector(35 downto 0);
      RamAddrO                           : out std_logic_vector(7 downto 0)
   );
end;

architecture RTL of mem_regbank is

   ---------------------------------------------------------------------------
   -- Constants defined based on address mapping and number of registers etc
   ---------------------------------------------------------------------------
   constant cLocalAddrSize                : integer := 4;
   -- Please notice that cReadLatency<latencyGroup> shall be 'value of -rl' + 1 when <latencyGroup> -t is FIFOR*
   -- This is because i<latencyGroup>Re is assigned in a clocked process
   -- Otherwise cReadLatency<latencyGroup> shall be equal to 'value of -rl'. This defaults to 0.
   constant cAddSzRegSpace                : integer := 1;
   constant cReadLatencyRegSpace          : integer := 0;
   constant cAddSzRam                     : integer := 2;
   constant cReadLatencyRam               : integer := 1;

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
   signal ActiveRead                      : std_logic_vector(cReadLatencyRam downto 0);
   -- ValidRead length reflects number of regbank groups
   type tValidRead is array (1 downto 0) of std_logic;
   signal ValidRead                       : tValidRead := (others => '0');
   signal ActiveWrite                     : std_logic;
   signal CmdBActiveShift                 : std_logic_vector(1 downto 0) := (others => '0');
   signal RdBData                         : std_logic_vector(gDatSz-1 downto 0) := (others => '0');

   ---------------------------------------------------------------------------
   -- Address decoding related signals
   ---------------------------------------------------------------------------
   signal RamDec                         : std_logic:= '0';
   signal RegSpaceDec                    : std_logic:= '0';

   ---------------------------------------------------------------------------
   -- Register related signals
   ---------------------------------------------------------------------------
   signal iRamWe                         : std_logic;
   signal iRamCe                         : std_logic;
   signal iRamDataI                      : std_logic_vector(35 downto 0);
   signal iRamDataIGet                   : std_logic_vector(19 downto 0);
   signal iRamDataO                      : std_logic_vector(35 downto 0);
   signal iRamAddr                       : std_logic_vector(7 downto 0);

   ---------------------------------------------------------------------------
   -- Read Array and local address
   ---------------------------------------------------------------------------
   type tRamReadArray is array (0 to 3) of std_logic_vector(gDatSz-1 downto 0);
   signal RamReadArray                   : tRamReadArray := (others => (others => '0'));
   signal RamRead                        : std_logic_vector(gDatSz-1 downto 0) := (others => '0');
   type tRegSpaceReadArray is array (0 to 1) of std_logic_vector(gDatSz-1 downto 0);
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
   LocalReset    <= CmdBInit or Rst;
   ---------------------------------------------------------------------------
   -- Add no extra FF when CmdBI is synchronous to Clk
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
   ValidRead(0)   <= CmdBRead and ActiveRead(cReadLatencyRegSpace) and RegSpaceDec;
   ValidRead(1)   <= CmdBRead and ActiveRead(cReadLatencyRam) and RamDec;
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
         ActiveRead(cReadLatencyRam downto 1) <= ActiveRead(cReadLatencyRam-1 downto 0);
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
      RegSpaceDec                    <= '0';
      RamDec                         <= '0';
      case to_integer(unsigned(LocalAddr)) is
         when 0 to 0 =>
            RegSpaceDec                    <= '1';
         when 8 to 10 =>
            RamDec                         <= '1';
         when others =>
            null;
      end case;
   end process;

   ---------------------------------------------------------------------------
   -- Connect inputs to internal signals
   ---------------------------------------------------------------------------
   iRamDataI                           <= RamDataI;

   ---------------------------------------------------------------------------
   -- Connect outputs to internal register signals
   ---------------------------------------------------------------------------
   RamWeO                             <= iRamWe;
   RamCeO                             <= iRamCe;
   RamDataO                           <= iRamDataO;
   RamAddrO                           <= iRamAddr;

   ---------------------------------------------------------------------------
   -- The Ram control signal process
   ---------------------------------------------------------------------------
   pRamControlSignal: process(Clk)
   begin
      if rising_edge(Clk) then
         -- Control signals are default assigned low
         iRamWe                             <= '0';
         iRamCe                             <= '0';
         if ActiveWrite = '1' and RamDec = '1' then
            -- Write access
            case to_integer(unsigned(LocalAddr(cAddSzRam-1 downto 0))) is
               when 2 =>
                  iRamWe                             <= '1';
                  iRamCe                             <= '1';
               when others =>
                  null;
            end case;
         elsif ActiveRead(0) = '1' and RamDec = '1' then
            -- Read access
            case to_integer(unsigned(LocalAddr(cAddSzRam-1 downto 0))) is
               when 0 =>
                  iRamCe                             <= '1';
               when others =>
                  null;
            end case;
         end if;
      end if;
   end process;

   ---------------------------------------------------------------------------
   -- The Ram write process
   ---------------------------------------------------------------------------
   pRamWriteReg: process(Clk)
   begin
      if rising_edge(Clk) then
         if LocalReset = '1' then
            -- Load default configuration
            iRamDataO                          <= x"000000000";
         else
            if ActiveWrite = '1' and RamDec = '1' then
               -- Write bank: only the required addresses are decoded
               case to_integer(unsigned(LocalAddr(cAddSzRam-1 downto 0))) is
                  when 0 =>
                     iRamDataO(15 downto 0)             <= CmdBData(15 downto 0);
                  when 1 =>
                     iRamDataO(31 downto 16)            <= CmdBData(15 downto 0);
                  when 2 =>
                     iRamDataO(35 downto 32)            <= CmdBData(3 downto 0);
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
            iRamAddr                           <= x"00";
         else
            if ActiveWrite = '1' and RegSpaceDec = '1' then
               -- Write bank: only the required addresses are decoded
               case to_integer(unsigned(LocalAddr(cAddSzRegSpace-1 downto 0))) is
                  when 0 =>
                     iRamAddr                           <= CmdBData(7 downto 0);
                  when others =>
                     null;
               end case;
            end if;
            if iRamCe = '1' then
               iRamAddr                           <= std_logic_vector(unsigned(iRamAddr) + 1);
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
   RegSpaceReadArray(0)(7 downto 0)   <= iRamAddr;
   RegSpaceRead                       <= RegSpaceReadArray(to_integer(unsigned(LocalAddr(cAddSzRegSpace-1 downto 0))))when ValidRead(0) = '1' else (others => '0');

   -- Map Ram memory signals to the Read Array(s). 
   RamReadArray(0)(15 downto 0)       <= iRamDataI(15 downto 0);
   RamReadArray(1)(15 downto 0)       <= iRamDataIGet(15 downto 0);
   RamReadArray(2)(3 downto 0)        <= iRamDataIGet(19 downto 16);
   RamRead                            <= RamReadArray(to_integer(unsigned(LocalAddr(cAddSzRam-1 downto 0)))) when ValidRead(1) = '1' else (others => '0');

   -- Mux from Read Array(s) to RdBData
   pRdBData : process(Clk)                               
   begin                                      
      if rising_edge(Clk) then                 
         if CmdBActive = '0' then -- not active                      
            RdBData <= (others => '0');
         elsif ValidRead /= (ValidRead'range => '0') then
            RdBData <= RegSpaceRead or RamRead;
         end if;
         if ValidRead(0) = '1' then
         end if;
         if ValidRead(1) = '1' then
            if to_integer(unsigned(LocalAddr(cAddSzRam-1 downto 0))) = 0 then
               iRamDataIGet                       <= iRamDataI(35 downto 16);
            end if;
         end if;
      end if;
   end process;
   -- Combine RdBAck and RdBData into the Read back bus
   RdBBO <= Irq & RdBAck & RdBData;

end RTL;
