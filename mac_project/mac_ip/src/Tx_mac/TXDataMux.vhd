library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity TXDataMux is
generic(DataSize : integer := 4);
Port (--port decleration
      Crc        : in std_logic_vector((DataSize - 1) downto 0);
      TxData     : in std_logic_vector((DataSize - 1) downto 0);
      Data       : out std_logic_vector((DataSize - 1) downto 0);
      DataSelect : in std_logic_vector(1 downto 0)
	);
end;

Architecture rtl of TXDataMux is
   signal PreRamble : std_logic_vector(15 downto 0) := "0101010101010101";
   signal SFD       : std_logic_vector(15 downto 0) := "1101110111011101";
 begin  
 
 Data <= Crc when DataSelect = "11" else SFD((DataSize - 1) downto 0) when DataSelect = "10" else PreRamble((DataSize - 1) downto 0) when DataSelect = "01" else TxData;


End;
