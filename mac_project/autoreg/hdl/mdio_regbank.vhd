----------------- COPYRIGHT © ProgBit AS 2017 ----------------------------------
-- This file has been generated using ProgBit autoreg tools
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mdio_regbank is
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
      AckI                               : in  std_logic;
      DataII                             : in  std_logic_vector(15 downto 0);
      DataOO                             : out std_logic_vector(15 downto 0);
      PhyAddrO                           : out std_logic_vector(4 downto 0);
      RdO                                : out std_logic;
      RegAddrO                           : out std_logic_vector(4 downto 0);
      WrO                                : out std_logic
   );
end;

architecture RTL of mdio_regbank is

   ---------------------------------------------------------------------------
   -- Constants defined based on address mapping and number of registers etc
   ---------------------------------------------------------------------------
   constant cLocalAddrSize                : integer := 2;
   -- Please notice that cReadLatency<latencyGroup> shall be 'value of -rl' + 1 when <latencyGroup> -t is FIFOR*
   -- This is because i<latencyGroup>Re is assigned in a clocked process
   -- Otherwise cReadLatency<latencyGroup> shall be equal to 'value of -rl'. This defaults to 0.
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
   signal ActiveRead                      : std_logic_vector(cReadLatencyRegSpace downto 0);
   -- ValidRead length reflects number of regbank groups
   type tValidRead is array (0 downto 0) of std_logic;
   signal ValidRead                       : tValidRead := (others => '0');
   signal ActiveWrite                     : std_logic;
   signal CmdBActiveShift                 : std_logic_vector(3 downto 0) := (others => '0');
   signal CmdBInitShift                   : std_logic_vector(1 downto 0) := (others => '0');
   signal RdBData                         : std_logic_vector(gDatSz-1 downto 0) := (others => '0');

   ---------------------------------------------------------------------------
   -- Register related signals
   ---------------------------------------------------------------------------
   signal iAck                           : std_logic;
   signal iDataI                         : std_logic_vector(15 downto 0);
   signal iDataO                         : std_logic_vector(15 downto 0);
   signal iPhyAddr                       : std_logic_vector(4 downto 0);
   signal iRd                            : std_logic;
   signal iRegAddr                       : std_logic_vector(4 downto 0);
   signal iWr                            : std_logic;

   ---------------------------------------------------------------------------
   -- Read Array and local address
   ---------------------------------------------------------------------------
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
   iAck                                <= AckI;
   iDataI                              <= DataII;

   ---------------------------------------------------------------------------
   -- Connect outputs to internal register signals
   ---------------------------------------------------------------------------
   DataOO                             <= iDataO;
   PhyAddrO                           <= iPhyAddr;
   RdO                                <= iRd;
   RegAddrO                           <= iRegAddr;
   WrO                                <= iWr;

   ---------------------------------------------------------------------------
   -- The RegSpace write process
   ---------------------------------------------------------------------------
   pRegSpaceWriteReg: process(Clk)
   begin
      if rising_edge(Clk) then
         if LocalReset = '1' then
            -- Load default configuration
            iPhyAddr                           <= "00000";
            iRd                                <= '0';
            iWr                                <= '0';
            iRegAddr                           <= "00000";
            iDataO                             <= x"0000";
         else
            -- One cycle signals are default assigned low
            iRd                                <= '0';
            iWr                                <= '0';
            if ActiveWrite = '1' then
               -- Write bank: only the required addresses are decoded
               case to_integer(unsigned(LocalAddr(cAddSzRegSpace-1 downto 0))) is
                  when 0 =>
                     iPhyAddr                           <= CmdBData(4 downto 0);
                     iRd                                <= CmdBData(6);
                     iWr                                <= CmdBData(5);
                  when 1 =>
                     iRegAddr                           <= CmdBData(4 downto 0);
                  when 2 =>
                     iDataO                             <= CmdBData(15 downto 0);
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
   RegSpaceReadArray(0)(7)            <= iAck;
   RegSpaceReadArray(0)(4 downto 0)   <= iPhyAddr;
   RegSpaceReadArray(1)(4 downto 0)   <= iRegAddr;
   RegSpaceReadArray(2)(15 downto 0)  <= iDataO;
   RegSpaceReadArray(3)(15 downto 0)  <= iDataI;
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
      end if;
   end process;
   -- Combine RdBAck and RdBData into the Read back bus
   RdBBO <= Irq & RdBAck & RdBData;

end RTL;
