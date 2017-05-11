library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--Tar imot data fra PHY, lar RXSFD få sjekke for SFD
--Med å ikkje starte DataFlow før SFD, blir preamble og SFD fjerna fra frame.

entity RXbuffer is
   generic (
      gDatSz                         : integer   := 8
   );
   port (
      Clk                            : in  std_logic;                                     --Clock
      RstL                           : in  std_logic;                                     --Reset
      DataEn                         : in  std_logic;                                     --Opneing signal from RXSM to allow data into FIFO
      RXdata                         : in  std_logic_vector(gDatSz-1  downto 0);    --data recieved from MII
      RXWr                           : in  std_logic;                                     --write signal from RXSyncBuffer, tells new data has appeared
      RXEn1T                         : out std_logic;                                     --enable signal to rest of code to start operations after Data has been sampled
      Data                           : out std_logic_vector(gDatSz-1 downto 0);           --data sent to FIFO
      DataTap                        : out std_logic_vector(gDatSz-1 downto 0)            --data sent to AML and SFD checker
   );
end entity;

architecture RTL of RXbuffer is

   signal RXData1T         : std_logic_vector(gDatSz-1 downto 0);
   signal RXWr1T           : std_logic;
   signal RXEn     : std_logic;

begin

pRX_buffer:
process(Clk)
   variable vCounter      : std_logic := '0';
   variable vRXdata1T     : std_logic_vector(gDatSz-1 downto 0) := "00000000";
begin
   if rising_edge(Clk) then
      if RstL ='0' then
         Data <= "00000000";
         DataTap <= "00000000";
         RXWr1T   <= '0';
         vCounter := '0';
         vRXdata1T := "00000000";
      else
         if RXEn = '1' then
            DataTap <= RXdata;
            if DataEn = '1' then
               Data <= RXdata;
            end if;
         end if;
         RXWr1T <= RXWr;
         RXEn <= (not RXWr1T) and RXWr;
         RXEn1T <= RXEn;
         --RXEn2T <= RXEn1T;
      end if;
   end if;
end process;

RXData1T <= RXdata;

end RTL;
