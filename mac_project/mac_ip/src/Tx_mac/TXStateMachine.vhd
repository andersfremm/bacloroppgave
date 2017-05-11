library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity TXStateMachine is
generic(DataSize : integer := 4);
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
      ComputeCrc            : out std_logic;
      ClrCrc                : out std_logic;
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
end;

Architecture rtl of TXStateMachine is

type state is (smStart, smPre, smSfd, smFrame, smCrc);
signal TxSm : state;
signal PreTimer : integer range 0 to 13;
signal CrcTimer : integer range 0 to 7;

Begin
process(CLK_50, reset)
begin
	if (reset='1') then
	TxSm <= smStart;
	-- reset
	elsif rising_edge(CLK_50) then
		case TxSm is
	   when smStart =>
			if TxSof = '1' then
				TxSm <= smPre;
			end if;
		when smPre =>
         if PreTimer = 0 then
            TxSm <= smSfd;
         end if;
		when smSfd =>
			TxSm <= smFrame;
         ComputeCrc <= '1';
		when smFrame =>
    if TxEof = '1' then
       TxSm <= SmCrc;
       ComputeCrc <= '0';
    end if;
			when smCrc =>
    if CrcTimer = 0 then
       TxSm <= smStart;
    end if;
		end case;
	end if;
end process;


DataSelect <= "01" when  TxSm = SmPre else "10" when TxSm = SmSfd else "11" when TxSm = SmCrc else "00";
TransmitEnable <= '1'when (TxSm = smPre or TxSm = smFrame or TxSm = smSfd or TxSm = smCrc) else '0';
TxDataUsed <= '1' when TxSm = SmFrame else '0';


process(CLK_50)
begin
    if rising_edge(CLK_50) then
	case TxSm is
	when smStart =>
          PreTimer <= 13;
          TxDone <= '1';
	when smPre =>

          TxDone <= '0';
          if PreTimer /= 0 then
            PreTimer <= PreTimer - 1;
          end if;
	when smSfd =>

	when smFrame =>
          CrcTimer <= 7;
	when smCrc =>
          if CrcTimer /= 0 then
             CrcTimer <= CrcTimer - 1;
          end if;
	end case;
    end if;
end process;
End;
