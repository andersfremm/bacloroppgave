library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- phy'en leser på positiv flanke så signalet må endres på negativ flanke

Entity TXFifoSynk is
generic(FifoSize : integer := 32);

Port (--port decleration
        --phy interface
        TxD   : out std_logic_vector(3 downto 0);
        TxEn  : out std_logic;
        TxEr  : out std_logic;
        TxClk : in  std_logic;
	--phy interface end
        --mac MacInterface
	Data : in std_logic_vector(3 downto 0);
	TransmitEnable : in std_logic;
	TransmitError  : in std_logic;
        --mac interface end
	Clk_50         : in std_logic;
        Reset            : in std_logic
	);
end;

Architecture rtl of TXFifoSynk is

   type tFIFO_MEM is array (0 to (FifoSize-1)) of std_logic_vector(3 downto 0);

   signal FIFO_MEM : tFIFO_MEM;
   signal WR_CNT : integer range 0 to (FifoSize-1);
   signal RD_CNT : integer range 0 to (FifoSize-1);
   signal FIFO_CNT_INT : integer range 0 to FifoSize;
   signal FULL_I : std_logic;
   signal EMPTY_I : std_logic;
   signal WR_OK : std_logic;
   signal RD_OK : std_logic;
   signal FIFO_RD_INT : integer range 0 to 1500;
   signal FIFO_WR_INT : integer range 0 to 1500;

 begin

 WR_OK <= TransmitEnable and not FULL_I;
 RD_OK <= not(EMPTY_I);
 TxEn  <= RD_OK;

   -- Write pointer
   pWR_CNT: process(Clk_50)
   begin
      if rising_edge(Clk_50) then
         if Reset = '1' then
            WR_CNT <= 0;
            FIFO_WR_INT <= 0;
         elsif WR_OK = '1' then
           if FIFO_CNT_INT = 0 and FIFO_WR_INT /= 0 then
             FIFO_WR_INT <= 0;
          else
           FIFO_WR_INT <= FIFO_WR_INT +1;
          end if;
            if WR_CNT = (fifoSize-1) then
               WR_CNT <= 0;
            else
               WR_CNT <= WR_CNT + 1;
            end if;
         end if;
      end if;
   end process pWR_CNT;

   -- Read pointer
   pRD_CNT: process(TxClk)
   begin
      if falling_edge(TxClk) then
         if reset = '1' then
            RD_CNT <= 0;
            FIFO_RD_INT <= 0;
         elsif RD_OK = '1' then
           if FIFO_CNT_INT = 0 and FIFO_RD_INT /= 0 then
             FIFO_RD_INT <= 0;
           elsif FIFO_RD_INT /= FIFO_WR_INT then
             FIFO_RD_INT <= FIFO_RD_INT +1;
           end if;
            if RD_CNT = (fifoSize-1) then
               RD_CNT <= 0;
            else
               RD_CNT <= RD_CNT + 1;
            end if;
         end if;
      end if;
   end process pRD_CNT;

FIFO_CNT_INT <= FIFO_WR_INT - FIFO_RD_INT;

  --  -- FIFO Counter
  --  pFIFO_CNT_INT: process(clk_50, TxClk)
  --  begin
  --     if falling_edge(TxClk) then
  --        if Reset = '1' then
  --           FIFO_CNT_INT <= 0;
  --        elsif RD_OK = '1' then -- only read
  --           FIFO_CNT_INT <= FIFO_CNT_INT - 1;
  --        end if;
  --   elsif rising_edge(Clk_50) then
  --        if Reset = '1' then
  --           FIFO_CNT_INT <= 0;
  --        elsif WR_OK = '1' then -- only write
  --           FIFO_CNT_INT <= FIFO_CNT_INT + 1;
  --        end if;
  --     end if;
  --  end process pFIFO_CNT_INT;



   EMPTY_I <= '1' when FIFO_CNT_INT = 0 else '0';
   FULL_I <= '1' when FIFO_CNT_INT = FifoSize else '0';


   -- create FIFO register block with reset and write functionality
   pFIFO_MEM: process(CLK_50)
   begin
      if rising_edge(CLK_50) then
         for i in 0 to (fifoSize-1) loop
            if Reset = '1' then
               FIFO_MEM(i) <= (others => '0');
            elsif WR_OK = '1' and i = WR_CNT then
               FIFO_MEM(i) <= DATA;
            end if;
         end loop;
      end if;
   end process pFIFO_MEM;

   -- Create FIFO read Mux
   Txd <= FIFO_MEM(RD_CNT);

End;
