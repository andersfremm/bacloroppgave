-- Clause 22
-- gDivCnt and gDivCnt with controls the clock frequency of the serial interface.
-- It is the division factor of the main clock.

-- Example:
-- Main clock 50 MHz.
-- MDIO clock 1 MHz.
-- gDivCnt = 50 and gDivCntW = 6.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MDIO is
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
end entity;

architecture RTL of MDIO is

   type tState is (sIdle, sWrSync, sRdSync, sWr, sRd, sAck);
   signal State          : tState;
   signal StateVector    : std_logic_vector(1 downto 0);

   -- Easy to use odd values like 5 or 7.
   signal DivCnt         : unsigned(gDivCntW - 1 downto 0);
   signal DivCntFull     : std_logic;

   -- Phase counter
   signal PhaCnt         : unsigned(1 downto 0);
   signal PhaCntFull     : std_logic;

   signal PhaCntDone     : std_logic;

   -- The number of bits are:
   -- 16 data +
   --  2 turn around +
   --  5 register address +
   --  5 phy address +
   --  2 OP +
   --  2 ST +
   -- 32 Preamble =
   -- 64
   constant cBitCnt      : natural := 64;
   constant cBitCntW     : natural :=  6;
   signal BitCnt         : unsigned(cBitCntW - 1 downto 0);
   signal BitCntEmpty    : std_logic;

   signal AllCntDone     : std_logic;

   signal ShiftVector    : std_logic_vector(cBitCnt - 1 downto 0);
   signal WrEnableVector : std_logic_vector(cBitCnt - 1 downto 0);
   signal RdEnableVector : std_logic_vector(cBitCnt - 1 downto 0);

   signal PhyData        : std_logic_vector(16 downto 0);

begin

   -- DivCnt divides the clock down to 4 times the SerialClk / mdc speeds
   -- PhaCnt divides 1 bit into 4 phases.
   pClkCnt: process(Clk)
   begin
      if rising_edge(Clk) then
         if Rst = '1' then
            DivCnt <= (others => '0');
            PhaCnt <= (others => '0');
         else
            if DivCntFull /= '1' then
               DivCnt <= DivCnt + 1;
            else
               DivCnt <= (others => '0');
               case PhaCnt is
                  when "00" =>
                     PhaCnt <= "10";
                  when "10" =>
                     PhaCnt <= "11";
                  when "11" =>
                     PhaCnt <= "01";
                  when others =>
                     PhaCnt <= "00";
               end case;
            end if;
         end if;
     end if;
   end process;

   DivCntFull  <= '1' when DivCnt = gDivCnt - 1 else '0';
   PhaCntFull  <= '1' when PhaCnt = 1 else '0';
   PhaCntDone  <= DivCntFull and PhaCntFull;

   -- State machine.
   -- Triggers by a write or a read.
   -- Must synchronize the start with the div and phase counters.
   -- Must synchronize the stop with the div, phase and bit counters.
   pState: process(Clk)
   begin
      if rising_edge(Clk) then
         if Rst = '1' then
            State <= sIdle;
         else
            AckO  <= '0';
            case State is
               when sIdle =>
                  if WrI = '1' then
                     State <= sWrSync;
                  elsif RdI = '1' then
                     State <= sRdSync;
                  end if;
               when sWrSync =>
                  if PhaCntDone = '1' then
                     State <= sWr;
                  end if;
               when sRdSync =>
                  if PhaCntDone = '1' then
                     State <= sRd;
                  end if;
               when sWr =>
                  if AllCntDone = '1' then
                     State <= sAck;
                  end if;
               when sRd =>
                  if AllCntDone = '1' then
                     State <= sAck;
                  end if;
               when sAck =>
                  State <= sIdle;
                  AckO  <= '1';
            end case;
        end if;
     end if;
   end process;

   -- Decode state for use in data vector
   pStateVector: process(State)
   begin
      case State is
         when sWr =>
            StateVector <= "01";
         when sRd =>
            StateVector <= "10";
         when others =>
            StateVector <= "00";
      end case;
   end process;

   -- BitCnt counts the number of bits in one transaction.
   pCnt: process(Clk)
   begin
      if rising_edge(Clk) then
         if State = sIdle or State = sWrSync or State = sRdSync then
            BitCnt <= (others => '1');
         else
            if PhaCntDone = '1' then
              if BitCntEmpty /= '1' then
                  BitCnt <= BitCnt - 1;
               else
                  BitCnt <= to_unsigned(cBitCnt - 1, cBitCntW);
               end if;
            end if;
         end if;
     end if;
   end process;

   BitCntEmpty <= '1' when BitCnt = 0 else '0';
   AllCntDone  <= DivCntFull and PhaCntFull and BitCntEmpty;


   --                             Preamble                 ST        OP                               TA
   ShiftVector    <= "11111111111111111111111111111111" & "01" & StateVector & PhyAddrI & RegAddrI & "10" & DataI;
   WrEnableVector <= "11111111111111111111111111111111" & "11" & "11"        & "11111"  & "11111"  & "11" & "1111111111111111";
   RdEnableVector <= "11111111111111111111111111111111" & "11" & "11"        & "11111"  & "11111"  & "00" & "0000000000000000";

   pOut: process(Clk)
   begin
      if rising_edge(Clk) then
         if Rst = '1' then
            SerialClkO  <= '0';
            SerialDataO <= '0';
            SerialEnO   <= '0';
            PhyData     <= (others => '0');
            DataO       <= (others => '0');
         else
            SerialClkO  <= PhaCnt(1);
            SerialDataO <= ShiftVector(to_integer(BitCnt));
            if State = sWr then
               SerialEnO <= WrEnableVector(to_integer(BitCnt));
            elsif State = sRd then
               SerialEnO <= RdEnableVector(to_integer(BitCnt));
            else
               SerialEnO <= '0';
            end if;

            if State = sRd then
               if BitCnt < 17 then
                  if PhaCntDone = '1' then
                     PhyData <= PhyData(15 downto 0) & SerialDataI;
                  end if;
               end if;
            end if;

            if State = sAck then
               DataO <= PhyData(16 downto 1);
            end if;
         end if;
     end if;
   end process;

end RTL;
