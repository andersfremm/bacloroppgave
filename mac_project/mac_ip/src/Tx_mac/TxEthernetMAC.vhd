----------------- COPYRIGHT © ProgBit AS 2017 ----------------------------------
-- This file has been generated using ProgBit autoreg tools
--skrevet av anders Fremmings
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TxEthernetMAC is
   port (
      Clk      : in  std_logic;
      Rst      : in  std_logic;

      CpuTxDataO                         : in std_logic_vector(63 downto 0);
      CpuTxEnO                           : in std_logic;
      CpuTxFullI                         : out  std_logic;
      TransmittEnO                       : in std_logic;
      TxStatusI                          : out  std_logic_vector(6 downto 0);
      TxStatusValidI                     : out  std_logic;

      --TxPhy
      TxD   : out std_logic_vector(3 downto 0);
      TxEn  : out std_logic;
      TxEr  : out std_logic;
      TxClk : in  std_logic;
      
      --test line
      TestData : out std_logic_vector(3 downto 0);
	   TestTransmitEnable : out std_logic;
	   TestTransmitError  : out std_logic
      
   );
end entity;

architecture RTL of TxEthernetMAC is

component TXStateMachine is
generic (DataSize : integer := 4);
Port (--port decleration
      CLK_50     : in  std_logic;
      reset      : in  std_logic;
      --mac side
      TxSof         : in  std_logic;
      TxEof         : in  std_logic;
      TxUnderrun    : in  std_logic;
      TxDataUsed    : out std_logic;
      TxDone        : out std_logic;
      TxAbort       : out std_logic;
      TxRetransmit  : out std_logic;
      TxStatus      : out std_logic_vector(6 downto 0);
      TxStatusValid : out std_logic;
      --phy side
      TransmitNewPulse      : out std_logic;
      TransmitEnable        : out std_logic;
      TransmitError         : out std_logic;
      DataSelect            : out std_logic_vector(1 downto 0);
      TransmitPreamble      : out std_logic;
      TransmitSfd           : out std_logic;
      TransmitFcs           : out std_logic;
      ClrCrc                : out std_logic;
      ComputeCrc            : out std_logic;
      StartBackoff          : out std_logic;
      TransmitAvilablePulse : in  std_logic;
      ExcessDeferral        : in  std_logic;
      CollEventPulse        : in  std_logic;
      LateColl              : in  std_logic;
      ExcessiveColl         : in  std_logic;
      BackoffPulse          : in  std_logic;
      CountLength           : in  std_logic_vector(11 downto 0);
      ExcessiveLength       : in  std_logic;
      CountJam              : in  std_logic_vector(3 downto 0)     
      );
end component;

component TXFifoInterface is
generic (FifoSize : integer := 16);
Port (--port decleration
        --cpu interface
        Cputxdata   : in std_logic_vector(63 downto 0);
        CpuTxEn  : in std_logic;
        CpuTxFull   : out std_logic;
	--cPU INTERFACE END
        DataO : out std_logic_vector(3 downto 0);
        --TxSm Interface
	TxSof  : out std_logic;
        TxUnderrun : out std_logic;
	TxEof  : out std_logic;
        TxDataUsed : in std_logic;
        TxDone  : in std_logic;
        TxAbort : in std_logic;
        --TxRetransmit : in std_logic;
        --TxSm interface end
	Clk_50         : in std_logic;
        Reset          : in std_logic
	);
end component;

component TXFrameLengthCounter is
Port (--port decleration
	Clk_50          : in std_logic;
        Reset           : in std_logic;
        TransmitEnable  : in std_logic;
        TransmitFcs     : in std_logic;
        CountLength     : out std_logic_vector(11 downto 0);
        CountFcs        : out Std_logic_vector(3 downto 0);
        excessiveLength : out std_logic;
        Transmit64Byte  : out std_logic
	);
end component;

component TXFifoSynk is
generic (FifoSize : integer := 32);

Port (--port decleration
        --phy interface
        TxD   : out std_logic_vector(3 downto 0);
        TxEn  : out std_logic;
        TxEr  : out std_logic;
        TxClk : in  std_logic;
	--phy interface end
        --mac MacInterface
	Data : in std_logic_vector(3 downto 0);
	TransmitEnable : in std_logic;
	TransmitError  : in std_logic;
        --mac interface end
	Clk_50         : in std_logic;
        Reset            : in std_logic
	);
end component;

component TXDataMux is
generic (DataSize : integer := 4);
Port (--port decleration
      Crc        : in std_logic_vector((DataSize - 1) downto 0);
      TxData     : in std_logic_vector((DataSize - 1) downto 0);
      Data       : out std_logic_vector((DataSize - 1) downto 0);
      DataSelect : in std_logic_vector(1 downto 0)
	);
end component;

component TXCrcGen is
generic(TxDataSize : integer := 4);
Port (--port decleration
      Clk_50     : in std_logic;
      reset      : in std_logic;
      crc        : out std_logic_vector(TxDataSize-1 downto 0);
      TxData     : in std_logic_vector(TxDataSize-1 downto 0);
      ComputeCrc : in std_logic;
      ClrCrc     : in std_logic
      );
end component;

signal TxSof : std_logic;
signal TxEof : std_logic;
signal TxData : std_logic_vector(3 downto 0);
signal TxUnderrun : std_logic;
signal TxDataUsed : std_logic;
signal TxDone : std_logic;
signal TxAbort : std_logic;
signal TxStatus : std_logic_vector(6 downto 0);
signal TxStatusValid : std_logic;
signal TransmitEnable : std_logic;
signal CountLength : std_logic_vector(11 downto 0);
signal ExcessiveLength : std_logic;
signal DataSelect : std_logic_vector(1 downto 0);
signal TransmitFcs : std_logic;
signal Data : std_logic_vector(3 downto 0);
signal TransmitError : std_logic;
signal crc : std_logic_vector(3 downto 0);
signal ComputeCrc : std_logic;
signal ClrCrc     : std_logic;
begin

i0TXStateMachine : TXStateMachine
generic map (DataSize => 4)
Port map (--port decleration
      CLK_50     =>  Clk,
      reset      =>  rst,
      --mac side
      TxSof         => TxSof,
      TxEof         => TxEof,
      TxUnderrun    => TxUnderrun,
      TxDataUsed    => TxDataUsed,
      TxDone        => TxDone,
      TxAbort       => TxAbort,
      TxRetransmit  => open,
      TxStatus      => TxStatus,
      TxStatusValid => TxStatusValid,
      --phy side
      TransmitNewPulse      => open,
      TransmitEnable        => TransmitEnable,
      TransmitError         => TransmitError,
      DataSelect            => DataSelect,
      TransmitPreamble      => open,
      TransmitSfd           => open,
      TransmitFcs           => TransmitFcs,
      ComputeCrc            => ComputeCrc,
      StartBackoff          => open,
      TransmitAvilablePulse => '0',
      ExcessDeferral        => '0',
      CollEventPulse        => '0',
      LateColl              => '0',
      ExcessiveColl         => '0',
      BackoffPulse          => '0',
      CountLength           => CountLength,
      ExcessiveLength       => ExcessiveLength,
      CountJam              => "0000",
      ClrCrc                => clrCrc
      );

i0TxFifoInterface : TXFifoInterface
generic map (FifoSize => 16)
Port map (--port decleration
        --cpu interface
        Cputxdata   => CpuTxDataO,
        CpuTxEn     => CpuTxEnO,
        CpuTxFull   => CpuTxFullI,
	--cPU INTERFACE END
        DataO => TxData,
        --TxSm Interface
	TxSof  => TxSof,
        TxUnderrun => TxUnderrun,
	TxEof  => TxEof,
        TxDataUsed => TxDataUsed,
        TxDone  => TxDone,
        TxAbort => TxAbort,
        --TxRetransmit : in std_logic;
        --TxSm interface end
	Clk_50         => Clk,
        Reset          => Rst
	);

i0TxFrameLengthCounter : TXFrameLengthCounter
Port map (--port decleration
	Clk_50          => Clk,
        Reset           => Rst,
        TransmitEnable  => TransmitEnable,
        TransmitFcs     => TransmitFcs,
        CountLength     => CountLength,
        CountFcs        => open,
        excessiveLength => excessiveLength,
        Transmit64Byte  => open
	);

i0TxFifoSynk : TXFifoSynk
generic map (FifoSize => 32)
Port map (--port decleration
        --phy interface
        TxD   => TxD,
        TxEn  => TxEn,
        TxEr  => TxEr,
        TxClk => TxClk,
	--phy interface end
        --mac MacInterface
	Data => Data,
	TransmitEnable => TransmitEnable,
	TransmitError  => TransmitError,
        --mac interface end
	Clk_50         => Clk,
        Reset          => Rst
	);
   
	TestData <= Data;
	TestTransmitEnable <= TransmitEnable;
	TestTransmitError  <= TransmitError;
 
i0TXCrcGen : TXCrcGen
generic map(TxDataSize => 4)
Port map (--port decleration
      Clk_50      => Clk,
      reset       => rst,
      crc         => crc,
      TxData      => TxData,
      ComputeCrc  => ComputeCrc,
      ClrCrc      => clrCrc
      );

i0TxDataMux : TXDataMux
generic map (DataSize => 4)
Port map (--port decleration
      Crc        => crc,
      TxData     => TxData,
      Data       => Data,
      DataSelect => DataSelect
	);

end RTL;
