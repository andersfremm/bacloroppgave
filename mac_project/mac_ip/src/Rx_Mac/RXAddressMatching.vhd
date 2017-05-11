library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RXAddressMatching is  --AML - Address Matching Logic
   generic (
      gDatSz                         : integer   := 8
   );
   port (
      Clk                            : in  std_logic;                              --Clock
      RstL                           : in  std_logic;                              --Reset
      RXEn                           : in  std_logic;                             --enable signal to rest of code to start operations after Data has been sampled
      SFDDetected                    : in  std_logic;                              --data received from SFDdetector indicating that Start of frame are received
      DataTap                        : in  std_logic_vector(gDatSz-1 downto 0);    --data from RXbuffer
      EthAddr					          : in  std_logic_vector(47 downto 0);          --Ethernet address to be checked against
      AddressMatch                   : out std_logic;                              --True if address of the package is matching the ethernet address, else false
      Multicast                      : out std_logic;                              --True if the received package is a multicast package
      Broadcast                      : out std_logic                               --True if the received package is a broadcast package
   );
end entity;

architecture RTL of RXAddressMatching is

   type   tState IS (sIdle, sReadAddress);
   signal state: tState;
   signal ReceivedAddress            : std_logic_vector(47 downto 0);
   type   ReceivedAddressInNibbles is array(0 to 7) of std_logic_vector(gDatSZ-1 downto 0);
   signal ram : ReceivedAddressInNibbles;

begin
   pRXAddressMatching:
   process(Clk)
      variable vCounter    : integer range 0 to 5;
   begin
      if rising_edge(Clk) then
         if RstL ='0' then
            AddressMatch <= '0';
            Multicast <= '0';
            Broadcast <= '0';
            state <= sIdle;
         else

            --Ventar på ok signal for å holde takten, samt startsignal fra RXSM
            if RXEn = '1' then
               if SFDDetected = '1' then

                  --Sjekk om datapakkens addresse matchar einheitens addresse
                  if vCounter = 5 then
                     if ReceivedAddress = EthAddr then
                        AddressMatch <= '1';
                        vCounter := 0;
                     else
                        AddressMatch <= '0';
                        vCounter := 0;
                     end if;
                  end if;

                  --Les addresse med skiftregister
                  ReceivedAddress <= ReceivedAddress(48 downto gDatSz) & DataTap;
                  vCounter := vCounter +1;
               end if;
            end if;
         end if;
      end if;
   end process;
end RTL;

--halvere klokka? Evt bruke RXClk?
-- shiftreg <= dinRR & shiftreg(9 downto 1);
-- if shiftreg(0) = '1' then
   -- if shiftreg(9) = '1' then
	-- state <= s_offload;
	 -- shiftreg <= shiftreg;
  -- elsif shiftreg(9) = '0' then
	 -- state <= s_error;
	-- end if;
-- end if;
