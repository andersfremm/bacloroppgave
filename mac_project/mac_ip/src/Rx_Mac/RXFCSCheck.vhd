library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RXFCSCheck is  --Check of CRC
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
end entity;

architecture RTL of RXFCSCheck is

   signal   crcNext, crc : std_logic_vector(31 downto 0);

begin

pRXFCSCheck:
process(Clk)
begin
   if rising_edge(Clk) then
      if RstL ='0' then
         crc <= x"FFFFFFFF";
      else
         if FCSStartCheck = '1' then
            crc <= x"FFFFFFFF";
         elsif RXEn = '1' then
               crc <= crcNext;
         end if;
      end if;
   end if;
end process;

crcNext(0)  <= data(0) XOR data(6) XOR crc(24) XOR crc(30);
crcNext(1)  <= data(0) XOR data(1) XOR data(7) XOR crc(25) XOR crc(31) XOR data(6) XOR crc(24) XOR crc(30);
crcNext(2)  <= data(0) XOR data(1) XOR data(2) XOR crc(26) XOR data(7) XOR crc(25) XOR crc(31) XOR data(6) XOR crc(24) XOR crc(30);
crcNext(3)  <= data(1) XOR data(2) XOR data(3) XOR crc(27) XOR crc(26) XOR data(7) XOR crc(25) XOR crc(31);
crcNext(4)  <= data(0) XOR data(2) XOR data(3) XOR data(4) XOR crc(28) XOR crc(27) XOR crc(26) XOR data(6) XOR crc(24) XOR crc(30);
crcNext(5)  <= data(0) XOR data(1) XOR data(3) XOR data(4) XOR data(5) XOR crc(29) XOR crc(28) XOR crc(27) XOR data(7) XOR crc(25) XOR crc(31) XOR data(6) XOR crc(24) XOR crc(30);
crcNext(6)  <= data(1) XOR data(2) XOR data(4) XOR data(5) XOR data(6) XOR crc(30) XOR crc(29) XOR crc(28) XOR crc(26) XOR data(7) XOR crc(25) XOR crc(31);
crcNext(7)  <= data(0) XOR data(2) XOR data(3) XOR data(5) XOR data(7) XOR crc(31) XOR crc(29) XOR crc(27) XOR crc(26) XOR crc(24);
crcNext(8)  <= data(0) XOR data(1) XOR data(3) XOR data(4) XOR crc(0) XOR crc(28) XOR crc(27) XOR crc(25) XOR crc(24);
crcNext(9)  <= data(1) XOR data(2) XOR data(4) XOR data(5) XOR crc(1) XOR crc(29) XOR crc(28) XOR crc(26) XOR crc(25);
crcNext(10) <= data(0) XOR data(2) XOR data(3) XOR data(5) XOR crc(2) XOR crc(29) XOR crc(27) XOR crc(26) XOR crc(24);
crcNext(11) <= data(0) XOR data(1) XOR data(3) XOR data(4) XOR crc(3) XOR crc(28) XOR crc(27) XOR crc(25) XOR crc(24);
crcNext(12) <= data(0) XOR data(1) XOR data(2) XOR data(4) XOR data(5) XOR crc(4) XOR crc(29) XOR crc(28) XOR crc(26) XOR crc(25) XOR data(6) XOR crc(24) XOR crc(30);
crcNext(13) <= data(1) XOR data(2) XOR data(3) XOR data(5) XOR data(6) XOR crc(5) XOR crc(30) XOR crc(29) XOR crc(27) XOR crc(26) XOR data(7) XOR crc(25) XOR crc(31);
crcNext(14) <= data(2) XOR data(3) XOR data(4) XOR data(6) XOR data(7) XOR crc(6) XOR crc(31) XOR crc(30) XOR crc(28) XOR crc(27) XOR crc(26);
crcNext(15) <= data(3) XOR data(4) XOR data(5) XOR data(7) XOR crc(7) XOR crc(31) XOR crc(29) XOR crc(28) XOR crc(27);
crcNext(16) <= data(0) XOR data(4) XOR data(5) XOR crc(8) XOR crc(29) XOR crc(28) XOR crc(24);
crcNext(17) <= data(1) XOR data(5) XOR data(6) XOR crc(9) XOR crc(30) XOR crc(29) XOR crc(25);
crcNext(18) <= data(2) XOR data(6) XOR data(7) XOR crc(10) XOR crc(31) XOR crc(30) XOR crc(26);
crcNext(19) <= data(3) XOR data(7) XOR crc(11) XOR crc(31) XOR crc(27);
crcNext(20) <= data(4) XOR crc(12) XOR crc(28);
crcNext(21) <= data(5) XOR crc(13) XOR crc(29);
crcNext(22) <= data(0) XOR crc(14) XOR crc(24);
crcNext(23) <= data(0) XOR data(1) XOR crc(15) XOR crc(25) XOR data(6) XOR crc(24) XOR crc(30);
crcNext(24) <= data(1) XOR data(2) XOR crc(16) XOR crc(26) XOR data(7) XOR crc(25) XOR crc(31);
crcNext(25) <= data(2) XOR data(3) XOR crc(17) XOR crc(27) XOR crc(26);
crcNext(26) <= data(0) XOR data(3) XOR data(4) XOR crc(18) XOR crc(28) XOR crc(27) XOR data(6) XOR crc(24) XOR crc(30);
crcNext(27) <= data(1) XOR data(4) XOR data(5) XOR crc(19) XOR crc(29) XOR crc(28) XOR data(7) XOR crc(25) XOR crc(31);
crcNext(28) <= data(2) XOR data(5) XOR data(6) XOR crc(20) XOR crc(30) XOR crc(29) XOR crc(26);
crcNext(29) <= data(3) XOR data(6) XOR data(7) XOR crc(21) XOR crc(31) XOR crc(30) XOR crc(27);
crcNext(30) <= data(4) XOR data(7) XOR crc(22) XOR crc(31) XOR crc(28);
crcNext(31) <= data(5) XOR crc(23) XOR crc(29);


CRCOk <= '1' when (Crc = x"c704dd7b") else '0';

end RTL;
