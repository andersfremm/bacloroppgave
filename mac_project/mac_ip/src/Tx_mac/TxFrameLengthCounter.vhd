library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity TXFrameLengthCounter is
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
end;

Architecture rtl of TXFrameLengthCounter is
   signal CountLengthInt : integer range 0 to 65; 
   signal CountFcsInt : integer range 0 to 17; 
begin  
CountLength <= std_logic_vector(to_unsigned(CountLengthInt,12));
CountFcs <= std_logic_vector(to_unsigned(CountFcsInt,4));
process(CLK_50, Reset)
begin
    if reset = '1' then
      CountLengthInt <= 0;
      Transmit64Byte <= '0';
    elsif rising_edge(CLK_50) then
      if TransmitEnable = '1' then
        CountLengthInt <= CountLengthInt+1;
        if CountLengthInt = 64 then
           Transmit64Byte <= '1';
        end if;
        if CountLengthInt = 65 then
           ExcessiveLength <= '1';
           CountLengthInt <= 0;
        end if;
      else
        CountLengthInt <= 0;
        Transmit64Byte <= '0';
      end if;
      if TransmitFcs = '1' then
        CountFcsInt <= CountFcsInt+1;
        if CountFcsInt = 16 then
        end if;
        if CountLengthInt = 17 then
           ExcessiveLength <= '1';
           CountFcsInt <= 0;
        end if;
      else
        CountFcsInt <= 0;
      end if;
    end if;
end process; 
End;
