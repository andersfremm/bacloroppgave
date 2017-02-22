----------------- COPYRIGHT © ProgBit AS 2017 ----------------------------------
-- This file has been generated using ProgBit autoreg tools
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity revision_regbank is
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
      latchO                             : out std_logic;
      rtestI                             : in  std_logic_vector(39 downto 0);
      rwtestO                            : out std_logic_vector(39 downto 0)
   );
end;

architecture RTL of revision_regbank is

   ---------------------------------------------------------------------------
   -- Constants defined based on address mapping and number of registers etc
   ---------------------------------------------------------------------------
   constant cLocalAddrSize                : integer := 4;
   -- Please notice that cReadLatency<latencyGroup> shall be 'value of -rl' + 1 when <latencyGroup> -t is FIFOR*
   -- This is because i<latencyGroup>Re is assigned in a clocked process
   -- Otherwise cReadLatency<latencyGroup> shall be equal to 'value of -rl'. This defaults to 0.
   constant cAddSzRegSpace                : integer := 4;
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
   signal ActiveRead                      : std_logic_vector(cReadLatencyRegSpace downto 0);
   -- ValidRead length reflects number of regbank groups
   type tValidRead is array (0 downto 0) of std_logic;
   signal ValidRead                       : tValidRead := (others => '0');
   signal ActiveWrite                     : std_logic;
   signal CmdBActiveShift                 : std_logic_vector(1 downto 0) := (others => '0');
   signal RdBData                         : std_logic_vector(gDatSz-1 downto 0) := (others => '0');

   ---------------------------------------------------------------------------
   -- Register related signals
   ---------------------------------------------------------------------------
   signal ibranchesrev                   : std_logic_vector(7 downto 0);
   signal iday                           : std_logic_vector(15 downto 0);
   signal ihour                          : std_logic_vector(15 downto 0);
   signal ilatch                         : std_logic;
   signal iminute                        : std_logic_vector(15 downto 0);
   signal imonth                         : std_logic_vector(15 downto 0);
   signal irctest                        : std_logic_vector(39 downto 0);
   signal irctestGet                     : std_logic_vector(23 downto 0);
   signal irtest                         : std_logic_vector(39 downto 0);
   signal irtestGet                      : std_logic_vector(26 downto 0);
   signal irwtest                        : std_logic_vector(39 downto 0);
   signal irwtestSet                     : std_logic_vector(30 downto 0);
   signal irwtestGet                     : std_logic_vector(24 downto 0);
   signal itrunkrev                      : std_logic_vector(7 downto 0);
   signal iyear                          : std_logic_vector(15 downto 0);

   ---------------------------------------------------------------------------
   -- Read Array and local address
   ---------------------------------------------------------------------------
   type tRegSpaceReadArray is array (0 to 15) of std_logic_vector(gDatSz-1 downto 0);
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
   ValidRead(0)     <= CmdBRead and ActiveRead(cReadLatencyRegSpace);
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
     end if;
   end process;

   ---------------------------------------------------------------------------
   -- Since the local address has a reduced range, we pick here only the
   -- LSBS of the CmdBAddr
   LocalAddr <= CmdBAddr(LocalAddr'range);


   ---------------------------------------------------------------------------
   -- Connect inputs to internal signals
   ---------------------------------------------------------------------------
   irtest                              <= rtestI;

   ---------------------------------------------------------------------------
   -- Connect outputs to internal register signals
   ---------------------------------------------------------------------------
   latchO                             <= ilatch;
   rwtestO                            <= irwtest;

   ---------------------------------------------------------------------------
   -- The RegSpace write process
   ---------------------------------------------------------------------------
   pRegSpaceWriteReg: process(Clk)
   begin
      if rising_edge(Clk) then
         if LocalReset = '1' then
            -- Load default configuration
            irwtestSet                         <= "0000000000000000000000000000000";
            irwtest                            <= x"0000000000";
            ilatch                             <= '0';
         else
            -- One cycle signals are default assigned low
            ilatch                             <= '0';
            if ActiveWrite = '1' then
               -- Write bank: only the required addresses are decoded
               case to_integer(unsigned(LocalAddr(cAddSzRegSpace-1 downto 0))) is
                  when 6 =>
                     irwtestSet(14 downto 0)            <= CmdBData(15 downto 1);
                  when 7 =>
                     irwtestSet(30 downto 15)           <= CmdBData(15 downto 0);
                  when 8 =>
                     irwtest                            <= CmdBData(8 downto 0) & irwtestSet;
                  when 9 =>
                     ilatch                             <= CmdBData(0);
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
   ibranchesrev                       <= x"00";
   iday                               <= x"0015";
   ihour                              <= x"0011";
   iminute                            <= x"0010";
   imonth                             <= x"0002";
   irctest                            <= x"0000000ABC";
   itrunkrev                          <= x"06";
   iyear                              <= x"0011";

   ---------------------------------------------------------------------------
   -- Assigning the unused interrupt
   ---------------------------------------------------------------------------
   pInterrupt:  Irq <= '0';

   ---------------------------------------------------------------------------
   -- The read back mechanism
   ---------------------------------------------------------------------------
   -- Map multi location signals to internal "get" signals. 
   irwtestGet                         <= irwtest(39 downto 15);
   irctestGet                         <= irctest(39 downto 16);

   -- Map RegSpace signals to the Read Array(s). 
   RegSpaceReadArray(0)(15 downto 8)  <= ibranchesrev;
   RegSpaceReadArray(0)(7 downto 0)   <= itrunkrev;
   RegSpaceReadArray(1)(15 downto 0)  <= iyear;
   RegSpaceReadArray(2)(15 downto 0)  <= imonth;
   RegSpaceReadArray(3)(15 downto 0)  <= iday;
   RegSpaceReadArray(4)(15 downto 0)  <= ihour;
   RegSpaceReadArray(5)(15 downto 0)  <= iminute;
   RegSpaceReadArray(6)(15 downto 1)  <= irwtest(14 downto 0);
   RegSpaceReadArray(7)(15 downto 0)  <= irwtestGet(15 downto 0);
   RegSpaceReadArray(8)(8 downto 0)   <= irwtestGet(24 downto 16);
   RegSpaceReadArray(9)(15 downto 3)  <= irtest(12 downto 0);
   RegSpaceReadArray(10)(15 downto 0) <= irtestGet(15 downto 0);
   RegSpaceReadArray(11)(10 downto 0) <= irtestGet(26 downto 16);
   RegSpaceReadArray(12)(15 downto 0) <= irctest(15 downto 0);
   RegSpaceReadArray(13)(15 downto 0) <= irctestGet(15 downto 0);
   RegSpaceReadArray(14)(7 downto 0)  <= irctestGet(23 downto 16);
   RegSpaceRead                       <= RegSpaceReadArray(to_integer(unsigned(LocalAddr(cAddSzRegSpace-1 downto 0))))when ValidRead(0) = '1' else (others => '0');

   -- Mux from Read Array(s) to RdBData
   pRdBData : process(Clk)                               
   begin                                      
      if rising_edge(Clk) then                 
         if CmdBActive = '0' then -- not active                      
            RdBData <= (others => '0');
         elsif ValidRead /= (ValidRead'range => '0') then
            RdBData <= RegSpaceRead;
         end if;
         if ValidRead(0) = '1' then
            if to_integer(unsigned(LocalAddr)) = 9 then
               irtestGet                          <= irtest(39 downto 13);
            end if;
         end if;
      end if;
   end process;
   -- Combine RdBAck and RdBData into the Read back bus
   RdBBO <= Irq & RdBAck & RdBData;

end RTL;
