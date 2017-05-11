library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RXSFDdetector is
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
end entity;


architecture RTL of RXSFDdetector is

signal DataTapBuff : std_logic_vector(7 downto 0);
signal SFDVector   : std_logic_vector(15 downto 0);

begin
SFDDetected <= '1' when SFDVector = "0101010111010101" and SFDStartDetect = '1' else '0';

SFDVector <= DataTapBuff & DataTap;

   pRXSFDdetector:
   process(Clk)
   begin
      if rising_edge(Clk) then
         if RstL ='0' then
            DataTapBuff <= "00000000";
         else
            DataTapBuff <= DataTap;
         end if;
       end if;
   end process;


--   pRXSFDdetector:
--   process(Clk)
--   begin
--      if rising_edge(Clk) then
--         if RstL ='0' then
--            SFDDetected <= '0';
--         else
--			if SFDStartDetect = '1' then
--			   if DataTap = "0101" then
--			      SFDDetected <= '0';
--			   elsif DataTap = "1101" then
--			      SFDDetected <= '1';
--			   end if;
--			else
--			   SFDDetected <= '0';
--			end if;
--        end if;
--     end if;
--  end process;
end RTL;
