library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TB_DEMO is
end entity;
 
architecture BEHAVIOR of TB_DEMO is 

   component DEMO 
   port(
      ClkCpu           : in  std_logic;
      -- CPU bus activity indicators
      Cpu0ActiveO                        : out std_logic;
      Cpu1ActiveO                        : out std_logic;
      -- serial0 interface
      serial0RxI                         : in  std_logic; -- serial0 data in
      serial0TxO                         : out std_logic; -- serial0 data out
      serial0TxEnO                       : out std_logic; -- Enable tx interface on phy, active high
      -- IOs
      i0rb_ledled0O                      : out std_logic;
      i0rb_ledled1O                      : out std_logic;
      i0rb_ledled2O                      : out std_logic;
      i0rb_ledled3O                      : out std_logic
   );
   end component;
    
   -- Clock period definitions
   constant cFreq          : integer := 32000000;
   signal Freq             : real := real(cFreq);
   signal Period           : time := ( 1.0 / Freq ) * 1_000_000_000_000.0 ps;

   signal ClkCpu           : std_logic := '0';

   signal ledO             : std_logic_vector(5 downto 0);

begin

   -- Commented out this because it crashes ISIM.
   -- The initialization must be done compile time.
   --Period   <= ( 1.0 / Freq ) * 1_000_000_000_000.0 ps;
   ClkCpu   <= not ClkCpu after Period/2;

   iTOP: DEMO
   port map (
      ClkCpu          => ClkCpu,
      -- CPU bus activity indicators
      Cpu0ActiveO     => ledO(1),
      Cpu1ActiveO     => ledO(2),
      -- serial0 interface
      serial0RxI      => '1',
      serial0TxO      => open,
      serial0TxEnO    => open,
      -- IOs
      i0rb_ledled0O   => ledO(0),
      i0rb_ledled1O   => ledO(3),
      i0rb_ledled2O   => ledO(4),
      i0rb_ledled3O   => ledO(5)
   );

end;
