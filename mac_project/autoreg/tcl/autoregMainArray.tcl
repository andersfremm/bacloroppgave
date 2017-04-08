if {[namespace exist ::autoreg] == 0} {
   namespace eval ::autoreg {
      variable vMainArray
   }
}
set ::autoreg::vMainArray(0.demo.-aw) {16}
set ::autoreg::vMainArray(0.demo.-clkcpu) {ClkCpu}
set ::autoreg::vMainArray(0.demo.-clkpl) {Clk}
set ::autoreg::vMainArray(0.demo.-company) {ProgBit AS}
set ::autoreg::vMainArray(0.demo.-constantList) {gClkFreq 50_000_000 gStretchSize 5_000_000 gBaudRate 115_200 gActivity_invert true gJTAG_CHAIN 3}
set ::autoreg::vMainArray(0.demo.-cpu0) {jtag}
set ::autoreg::vMainArray(0.demo.-cpu1) {serial}
set ::autoreg::vMainArray(0.demo.-dw) {16}
set ::autoreg::vMainArray(0.demo.-en) {big}
set ::autoreg::vMainArray(0.demo.-i) {i0core}
set ::autoreg::vMainArray(0.demo.-l) {::autoreg::myTree2 0}
set ::autoreg::vMainArray(0.demo.-n) {demo}
set ::autoreg::vMainArray(0.demo.-o) {group}
set ::autoreg::vMainArray(0.demo.-path) {/i0jtag/i0demo}
set ::autoreg::vMainArray(0.demo.-t) {main}
set ::autoreg::vMainArray(0.demo.-tool) {quartus}
set ::autoreg::vMainArray(0.demo.-vendor) {Altera}

