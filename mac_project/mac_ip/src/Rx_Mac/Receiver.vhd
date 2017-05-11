LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Receiver is
   generic (
      gDatSz                         : integer   := 8
   );
   port (
      Clk                            : in  std_logic;                              --Clock 50MHz
      Clk25                          : in  std_logic;                              --Clock 25MHz
      nRstO                          : in  std_logic;                              --Reset
      RXdv                           : in  std_logic;
      RXErr                          : in  std_logic;
      FifoEn                         : out  std_logic;
      RXdata                         : in  std_logic_vector(3 downto 0);    --data recieved from MII
      Data                           : out std_logic_vector(gDatSz-1 downto 0);    --data sent to FIFO

      DataValid                      : out std_logic;                              --Signal to FIFO telling it to accept or reject frame
      LastData                       : out std_logic;                               --Signal to FIFO telling it last bit of data have been received
      RXStatus                       : out std_logic_vector(3 downto 0)     --See design spec
   );
end entity;

architecture RTL of Receiver is

component RXStateMachine is
   generic (
      gDatSz                         : integer   := 8
   );
   port (
      Clk                            : in  std_logic;                              --Clock
      RstL                           : in  std_logic;                              --Reset
      RXdv                           : in  std_logic;
      RXErr                          : in  std_logic;

      --AddressMatch                   : in  std_logic;                              --True if address of the package is matching the ethernet address, else false
      --Multicast                      : in  std_logic;                              --True if the received package is a multicast package
      --Broadcast                      : in  std_logic                               --True if the received package is a broadcast package

      SFDStartDetect                 : out  std_logic;                              --Opneing signal from RXSM to detect SFD after rxdv
      SFDDetected                    : in  std_logic;

	  FCSStartCheck                  : out std_logic;                              --data received from RXSM to start FCS checking
	  CRCOk                          : in  std_logic;                              --True if CRC is correct, false if there is errors
      DataEn                         : out std_logic;                              --Opneing signal from RXSM to allow data into FIFO from RXBuffer
	  DataValid                      : out std_logic;                              --Signal to FIFO telling it to accept or reject frame
	  LastData                       : out std_logic;                               --Signal to FIFO telling it last bit of data have been received
	  RXStatus                       : out std_logic_vector(3 downto 0)     --See design spec
   );
end component;

component RxSyncBuffer
generic (
  gDatSz : integer := 4
);
port (
  Clk     : in  std_logic;
  RstL    : in  std_logic;
  RXdataI : in  std_logic_vector(3 downto 0);
  RXdataO : out std_logic_vector(gDatSz+gDatSz-1 downto 0);
  RXWr    : out std_logic;
  RXdv    : in  std_logic
);
end component RxSyncBuffer;


component RXbuffer
   generic (
      gDatSz                         : integer   := 8
   );
   port (
      Clk                            : in  std_logic;                                     --Clock
      RstL                           : in  std_logic;                                     --Reset
      DataEn                         : in  std_logic;                                     --Opneing signal from RXSM to allow data into FIFO
      RXdata                         : in  std_logic_vector(gDatSz-1 downto 0);    --data recieved from MII
      RXWr                           : in  std_logic;                                     --write signal from RXSyncBuffer, tells new data has appeared
      RXEn1T                         : out std_logic;                                     --enable signal to rest of code to start operations after Data has been sampled
      Data                           : out std_logic_vector(gDatSz-1 downto 0);           --data sent to FIFO
      DataTap                        : out std_logic_vector(gDatSz-1 downto 0)            --data sent to AML and SFD checker
   );
end component;

component RXSFDdetector
   generic (
      gDatSz                         : integer   := 8
   );
   port (
      Clk                            : in  std_logic;                             --Clock
      RstL                           : in  std_logic;                             --Reset
      SFDStartDetect                 : in  std_logic;                             --Opneing signal from RXSM to detect SFD after rxdv
      DataTap                        : in  std_logic_vector(gDatSz-1 downto 0);   --data from RXbuffer
      SFDDetected                    : out std_logic                              --data sent to back to RXSM and to AML
   );
end component;

-- component RXAddressMatching  --AML - Address Matching Logic
   -- generic (
      -- gDatSz                        : integer   := 8
   -- );
   -- port (
      -- Clk                           : in  std_logic;                              --Clock
      -- RstL                          : in  std_logic;                              --Reset
      -- RXEn                           : in  std_logic;                             --enable signal to rest of code to start operations after Data has been sampled
      -- SFDDetected                      : in  std_logic;                              --data received from SFDdetector indicating that Start of frame are received
      -- DataTap                          : in  std_logic_vector(gDatSz-1 downto 0);    --data from RXbuffer
      -- EthAddr					            : in  std_logic_vector(47 downto 0)           --Ethernet address to be checked against
      -- AddressMatch                     : out std_logic;                              --True if address of the package is matching the ethernet address, else false
      -- Multicast                        : out std_logic;                              --True if the received package is a multicast package
      -- Broadcast                        : out std_logic                               --True if the received package is a broadcast package
   -- );
-- end component;

component RXFCSCheck
   generic (
      gDatSz                         : integer   := 8
   );
   port (
      Clk                            : in  std_logic;                              --Clock
      RstL                           : in  std_logic;                              --Reset
      RXEn                           : in  std_logic;                             --enable signal to rest of code to start operations after Data has been sampled
      FCSStartCheck                  : in  std_logic;                              --data received from RXSM to start FCS checking
      Data                           : in  std_logic_vector(gDatSz-1 downto 0);    --data to be checked
      CRCOk                          : out std_logic                               --True if CRC is correct, false if there is errors
   );
end component;

signal RXWr, RXEn : std_logic;
signal SFDStartDetect, SFDDetected, FCSStartCheck, CRCOk, DataEn : std_logic;
signal AddressMatch, Multicast, Broadcast : std_logic;
signal DataTap, DataBuff, Datafcs : std_logic_vector(gDatSz-1 downto 0);
signal SyncData : std_logic_vector(7 downto 0);
begin

FifoEn <= RXEn when DataEn = '1' else '0';

pRXStateMachine : RXStateMachine
   generic map(
      gDatSz => gDatSz
   )
   port map(
      Clk => Clk,
      RstL => nRstO,
      RXdv => RXdv,
      RXErr => RXErr,

      --AddressMatch => AddressMatch,
      --Multicast => Multicast,
      --Broadcast => Broadcast,

      SFDStartDetect => SFDStartDetect,
      SFDDetected => SFDDetected,

      FCSStartCheck => FCSStartCheck,
      CRCOk => CRCOk,
      DataEn => DataEn,

      DataValid => DataValid,
      LastData => LastData,
      RXStatus => RXStatus
   );

pRxSyncBuffer : RxSyncBuffer
   generic map(
      gDatSz => 4
   )
   port map(
      Clk => Clk25,
      RstL => nRstO,
      RXdataI => RXdata,
      RXdataO => SyncData,
      RXWr => RXWr,
      Rxdv => Rxdv
   );

pRXbuffer : RXBuffer
   generic map(
      gDatSz => gDatSz
   )
   port map(
      Clk => Clk,
      RstL => nRstO,
      DataEn => DataEn,
      RXdata => SyncData,
      RXWr => RXWr,
      RXEn1T => RXEn,
      Data => DataBuff,
      DataTap => DataTap
   );

pRXSFDdetector : RXSFDdetector
   generic map(
      gDatSz => gDatSz
   )
   port map(
      Clk => Clk,
      RstL => nRstO,
      SFDStartDetect => SFDStartDetect,
	  DataTap => DataTap,
      SFDDetected => SFDDetected
   );

-- pRXAddressMatching : RXAddressMatching
   -- generic map(
      -- gDatSz => gDatSz
	  -- )
   -- port (
      -- Clk => Clk,
      -- RstL => nRstO,
      -- RXEn => RXEn,
      -- SFDDetected => SFDDetected,
	  -- DataTap => DataTap,
	  -- EthAddr => EthAddr,
	  -- AddressMatch => AddressMatch,
	  -- Multicast => Multicast,
	  -- Broadcast => Broadcast
   -- );
   data <= DataBuff;
   DataFcs <= DataBuff(3 downto 0) & DataBuff(7 downto 4);
pRXFCSCheck : RXFCSCheck
   generic map(
      gDatSz => gDatSz
	  )
   port map(
      Clk => Clk,
      RstL => nRstO,
      RXEn => RXEn,
      FCSStartCheck => FCSStartCheck,
	  Data => DataFcs,
	  CRCOk => CRCOk
   );

end RTL;
