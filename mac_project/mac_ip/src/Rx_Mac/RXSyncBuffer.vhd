----------------- COPYRIGHT © ProgBit AS 2016 ----------------------------------
-- This file has been generated using ProgBit autoreg tools
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RxSyncBuffer is
   generic (
      gDatSz                         : integer   := 4
   );
   port (
      Clk                            : in  std_logic;
      RstL                            : in  std_logic;
      RXdataI                        : in  std_logic_vector(gDatSz-1 downto 0);
      RXdataO                        : out std_logic_vector(gDatSz+gDatSz-1 downto 0);
      RXWr                           : out std_logic;
      RXdv                           : in std_logic
   );
end entity;

architecture RTL of RxSyncBuffer is

begin

pRxSyncBuffer:
process(Clk)
   variable vCounter    : std_logic := '0';
   variable vRXdata1T   : std_logic_vector(gDatSz+gDatSz-1 downto 0) := "00000000";
begin
   if rising_edge(Clk) then
      if RstL ='0' then
         vCounter := '0';
         RXWr <= '0';
         vRXdata1T := "00000000";
      elsif RxDv = '0' then
         vCounter := '0';
         RXWr <= '0';
         vRXdata1T := "00000000";
      else
         if vCounter = '0' then
            vRXdata1T(gDatSz-1 downto 0) := RXdataI;
            vCounter := '1';
            RXWr <= '0';
         elsif vCounter = '1' then
            vRXdata1T(gDatSz+gDatSz-1 downto gDatSz) := RXdataI;
            RXdataO <= vRXdata1T;
            vCounter := '0';
            RXWr <= '1';
         else
            vCounter := '0';
            RXWr <= '0';
         end if;
      end if;
   end if;
end process;
end RTL;
