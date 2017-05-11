LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity RXStateMachine is
   generic (
      gDatSz                         : integer   := 4
   );
   port (
      --PHY side and Clock
      Clk                            : in  std_logic;                              --Clock
      RstL                           : in  std_logic;                              --Reset
      RXdv                           : in  std_logic;
      RXErr                          : in  std_logic;

      --Address Matching
      --AddressMatch                   : in  std_logic;                            --True if address of the package is matching the ethernet address, else false
      --Multicast                      : in  std_logic;                            --True if the received package is a multicast package
      --Broadcast                      : in  std_logic                             --True if the received package is a broadcast package

      --SFDdetector
      SFDStartDetect                 : out  std_logic;                              --Opneing signal from RXSM to detect SFD after rxdv
      SFDDetected                    : in  std_logic;

      --FCSCheck
      FCSStartCheck                  : out std_logic;                              --data received from RXSM to start FCS checking
      CRCOk                          : in  std_logic;                              --True if CRC is correct, false if there is errors

      --Send data to FIFO, and status signal to FIFO and Autoreg
      DataEn                         : out std_logic;                              --Opneing signal from RXSM to allow data into FIFO from RXBuffer
      DataValid                      : out std_logic;                              --Signal to FIFO telling it to accept or reject frame
      LastData                       : out std_logic;                              --Signal to FIFO telling it last bit of data have been received
      RXStatus                       : out std_logic_vector(3 downto 0)     --See design spec
   );
end entity;

architecture RTL of RXStateMachine is

   type   tState IS (sIdle, sDetectSFD, sValidation);
   signal state : tState;
   signal Counter : std_logic_vector(1 downto 0) := "00";

begin

pRXStateMachine:
process(Clk)
begin
   if rising_edge(Clk) then
      if RstL ='0' then
         SFDStartDetect <= '0';
         Counter <= "00";
         DataEn <= '0';
         DataValid <= '0';
         LastData <= '0';
         RXStatus <= "0000";
         state <= sIdle;
      else
         case state is
            when sIdle =>
               SFDStartDetect <= '0';
               Counter <= "00";
               DataEn <= '0';
               DataValid <= '0';
               LastData <= '0';
               FCSStartCheck <= '0';
               if RXdv = '1' then
                  SFDStartDetect <= '1';
                  state <= sDetectSFD;
               end if;

            when sDetectSFD =>
               if SFDDetected = '1' then
                  FCSStartCheck <= '1';
                  state <= sValidation;
               end if;

            when sValidation =>
            DataEn <= '1';
            FCSStartCheck <= '0';
               if RXdv = '0' then
                  Counter <= "01";
                  if Counter = "01" then
                    Counter <= "11";
                 end if;
              end if;
               if Counter = "11" then
                  if CRCOk = '1' then
                     Counter <= "00";
                     DataValid <= '1';
                     LastData <= '1';
                     state <= sIdle;
                  elsif CRCOk = '0' then
                     Counter <= "00";
                     DataValid <= '0';
                     LastData <= '1';
                     state <= sIdle;
                  end if;
                  RXStatus <= CRCOk & "010";
               end if;
         end case;
      end if;
   end if;
end process;

end RTL;



-- tilstandsmaskin:
-- process(clock_50, reset) IS
-- begin
-- if reset = '0' then
  -- state <= s_idle;
  -- error <= '0';
  -- word <= 0;
  -- nullstill_ram: for i in 0 to 2 loop
    -- klokkeram(i) <= x"00";
  -- end loop;
-- elsif rising_edge(cloCK_50) then
  -- Case state is
	 -- when s_idle =>
	   -- error <= '0';
		-- shiftreg <= (9 => '1', others => '0');
		-- if csRRR = '0' then
		  -- state <= s_cs;
		-- end if;

	 -- when s_cs =>
	   -- if dinRRR = '0' then
		  -- state <= s_shift_in;
		  -- start_delay <= '1';
	   -- end if;

    -- when s_shift_in =>
		-- if sampling = '1' then
		-- start_delay <= '0';
		  -- if start_delay = '0' then
		  -- shiftreg <= dinRR & shiftreg(9 downto 1);
		    -- if shiftreg(0) = '1' then
			   -- if shiftreg(9) = '1' then
		        -- state <= s_offload;
			     -- shiftreg <= shiftreg;
		      -- elsif shiftreg(9) = '0' then
			     -- state <= s_error;
				-- end if;
		    -- end if;
		  -- end if;
		-- end if;

	 -- when s_offload =>
	   -- if (word = 2) then
		  -- word <= 0;
		-- else
		  -- word <= word +1;
		-- end if;
	   -- Data_reg(9 downto 0) <= shiftreg;
		-- klokkeram(word) <= shiftreg(7 downto 1);
		-- state <= s_idle;

    -- when s_error =>
		-- ledg(8) <= gpio(0);
		-- error <= '1';
  -- end case;
-- end if;
-- end process;

-- LCD_1: LCD_Display PORT MAP (
  -- reset => reset, clk_48Mhz => clock_50  ,
  -- Hex_Display_Data  => bcd  ,
  -- LCD_RS => LCD_RS, LCD_E => LCD_EN,
  -- LCD_RW  => LCD_RW,
  -- DATA_BUS => LCD_DATA);

-- END persona;
