library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity TXFifoInterface is
generic(FifoSize : integer := 16);

Port (--port decleration
        --cpu interface
        Cputxdata   : in std_logic_vector(63 downto 0);
        CpuTxEn     : in std_logic;
        CpuTxFull   : out std_logic;
	--cPU INTERFACE END
        DataO : out std_logic_vector(3 downto 0);
        --TxSm Interface
	TxSof  : out std_logic;
        TxUnderrun : out std_logic;
	TxEof  : out std_logic;
        TxDataUsed : in std_logic;
        TxDone  : in std_logic;
        TxAbort : in std_logic;
        --TxRetransmit : in std_logic;
        --TxSm interface end
	Clk_50         : in std_logic;
        Reset          : in std_logic
	);
end;

Architecture rtl of TXFifoInterface is

   type tFIFO_MEM is array (0 to (FifoSize-1)) of std_logic_vector(3 downto 0);
   
   signal FIFO_MEM : tFIFO_MEM;
   signal WR_CNT : integer range 0 to (FifoSize-1);    
   signal RD_CNT : integer range 0 to (FifoSize-1);
   signal FIFO_CNT_INT : integer range 0 to FifoSize;
   signal FULL_I : std_logic;
   signal EMPTY_I : std_logic := '1';
   signal WR_OK : std_logic;
   signal RD_OK : std_logic;
   
   
 begin  
 
 WR_OK <= CpuTxEn and EMPTY_I;
 RD_OK <= TxDataUsed and not EMPTY_I;
 TxUnderrun  <= RD_OK;

   -- Write pointer
   pWR_CNT: process(Clk_50)
   begin
      if rising_edge(Clk_50) then
         if Reset = '1' then
            WR_CNT <= 0;
         elsif WR_OK = '1' then
            WR_CNT <= WR_CNT + 15;
         end if;
      end if;
   end process pWR_CNT; 

   -- Read pointer
   pRD_CNT: process(Clk_50)
   begin
      if rising_edge(Clk_50) then
         if reset = '1' then
            RD_CNT <= 0;
         elsif RD_OK = '1' then
            if RD_CNT = 15 then
              RD_CNT <= 0;
            else
              RD_CNT <= RD_CNT + 1;
            end if;
         end if;
      end if;
   end process pRD_CNT; 
   
   -- FIFO Counter
   pFIFO_CNT_INT: process(clk_50)
   begin
      if rising_edge(CLK_50) then
         if Reset = '1' then
            FIFO_CNT_INT <= 0;
         elsif RD_OK = '1' and WR_OK = '0' then -- only read
            FIFO_CNT_INT <= FIFO_CNT_INT - 1;
         elsif RD_OK = '0' and WR_OK = '1' then -- only write
            FIFO_CNT_INT <= FIFO_CNT_INT + 16;
         end if;
      end if;
   end process pFIFO_CNT_INT; 


   
   TxEof  <= '1' when (FIFO_CNT_INT = 0 or FIFO_CNT_INT = 1) else '0';
   CpuTxFull <= '1' when FIFO_CNT_INT = FifoSize else '0';
   TxSof  <= '0' when FIFO_CNT_INT = 0 else '1';
   Empty_I  <= '1' when FIFO_CNT_INT = 0 else '0';

   -- create FIFO register block with reset and write functionality
   pFIFO_MEM: process(CLK_50)
   begin
      if rising_edge(CLK_50) then
            if Reset = '1' then
               FIFO_MEM <= (others => "0000");
            elsif WR_OK = '1' then
               FIFO_MEM(0) <= CpuTxData(3 downto 0 );
               FIFO_MEM(1) <= CpuTxData(7 downto 4 );
               FIFO_MEM(2) <= CpuTxData(11 downto 8 );
               FIFO_MEM(3) <= CpuTxData(15 downto 12 );
               FIFO_MEM(4) <= CpuTxData(19 downto 16 );
               FIFO_MEM(5) <= CpuTxData(23 downto 20 );
               FIFO_MEM(6) <= CpuTxData(27 downto 24 );
               FIFO_MEM(7) <= CpuTxData(31 downto 28 );
               FIFO_MEM(8) <= CpuTxData(35 downto 32 );
               FIFO_MEM(9) <= CpuTxData(39 downto 36 );
               FIFO_MEM(10) <= CpuTxData(43 downto 40 );
               FIFO_MEM(11) <= CpuTxData(47 downto 44 );
               FIFO_MEM(12) <= CpuTxData(51 downto 48 );
               FIFO_MEM(13) <= CpuTxData(55 downto 52 );
               FIFO_MEM(14) <= CpuTxData(59 downto 56 );
               FIFO_MEM(15) <= CpuTxData(63 downto 60 );
            end if;
      end if;
   end process pFIFO_MEM;
   
   -- Create FIFO read Mux
   DataO <= FIFO_MEM(RD_CNT);

End;
