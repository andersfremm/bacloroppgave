if {[namespace exist ::autoreg] == 0} {
   namespace eval ::autoreg {
      variable vRegArray
   }
}
set ::autoreg::vRegArray(/.-ch) {i0jtag}
set ::autoreg::vRegArray(/.-n) {/}
set ::autoreg::vRegArray(/i0jtag.-ba) {0x0000}
set ::autoreg::vRegArray(/i0jtag.-ch) {i0demo i0jtag_conf}
set ::autoreg::vRegArray(/i0jtag.-en) {big}
set ::autoreg::vRegArray(/i0jtag.-n) {i0jtag}
set ::autoreg::vRegArray(/i0jtag.-o) {inst}
set ::autoreg::vRegArray(/i0jtag.-sg) {jtag}
set ::autoreg::vRegArray(/i0jtag/i0demo.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo.-ba) {0x0000}
set ::autoreg::vRegArray(/i0jtag/i0demo.-ch) {i0core}
set ::autoreg::vRegArray(/i0jtag/i0demo.-constantList) {gClkFreq 50_000_000 gStretchSize 5_000_000 gBaudRate 115_200 gActivity_invert true gJTAG_CHAIN 3}
set ::autoreg::vRegArray(/i0jtag/i0demo.-cpu0) {jtag}
set ::autoreg::vRegArray(/i0jtag/i0demo.-cpu1) {serial}
set ::autoreg::vRegArray(/i0jtag/i0demo.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo.-l) {::autoreg::myTree2}
set ::autoreg::vRegArray(/i0jtag/i0demo.-n) {i0demo}
set ::autoreg::vRegArray(/i0jtag/i0demo.-o) {inst}
set ::autoreg::vRegArray(/i0jtag/i0demo.-sg) {demo}
set ::autoreg::vRegArray(/i0jtag/i0demo.-tool) {quartus}
set ::autoreg::vRegArray(/i0jtag/i0demo.-vendor) {Altera}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core.-ba) {0x0000}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core.-ch) {i0mac i0rb_led i0rb_mem i0rb_revision}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core.-l) {::autoreg::myTree7}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core.-n) {i0core}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core.-o) {inst}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core.-sg) {core}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac.-ba) {256}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac.-ch) {i0rb_mac i0rb_mdio}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac.-l) {::autoreg::myTree9}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac.-n) {i0mac}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac.-o) {inst}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac.-sg) {mac_ip}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac.-ba) {4}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac.-ch) {FifoRst LoopEn RxCnt RxFifo RxFifoEmpty RxFifoFull TxCnt TxFifo TxFifoEmpty TxFifoFull TxStart}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac.-l) {::autoreg::myTree16 ::autoreg::myTree17}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac.-n) {i0rb_mac}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac.-o) {inst}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac.-rtb) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac.-rtc) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac.-sg) {mac}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac.-sy) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/FifoRst.-a) {265}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/FifoRst.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/FifoRst.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/FifoRst.-c) {Reset fifo logic}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/FifoRst.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/FifoRst.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/FifoRst.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/FifoRst.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/FifoRst.-gloc) {0 10}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/FifoRst.-gtype) {button}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/FifoRst.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/FifoRst.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/FifoRst.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/FifoRst.-n) {FifoRst}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/FifoRst.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/FifoRst.-p) {2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/FifoRst.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/FifoRst.-t) {WI}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/FifoRst.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/LoopEn.-a) {265}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/LoopEn.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/LoopEn.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/LoopEn.-c) {Enable looping}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/LoopEn.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/LoopEn.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/LoopEn.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/LoopEn.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/LoopEn.-gloc) {0  8}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/LoopEn.-gtype) {checkbutton}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/LoopEn.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/LoopEn.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/LoopEn.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/LoopEn.-n) {LoopEn}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/LoopEn.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/LoopEn.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/LoopEn.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/LoopEn.-t) {RW}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/LoopEn.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxCnt.-a) {263}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxCnt.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxCnt.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxCnt.-c) {RxFifo fill}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxCnt.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxCnt.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxCnt.-ex) {1024}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxCnt.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxCnt.-gloc) {0  3}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxCnt.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxCnt.-hi) {1023}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxCnt.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxCnt.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxCnt.-n) {RxCnt}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxCnt.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxCnt.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxCnt.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxCnt.-t) {R}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxCnt.-w) {10}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifo.-a) {261}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifo.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifo.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifo.-c) {Receive fifo}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifo.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifo.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifo.-ex) {256}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifo.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifo.-gloc) {0  1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifo.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifo.-hi) {255}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifo.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifo.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifo.-n) {RxFifo}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifo.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifo.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifo.-rmw) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifo.-t) {FIFOR}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifo.-w) {8}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoEmpty.-a) {264}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoEmpty.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoEmpty.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoEmpty.-c) {Receive fifo empty}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoEmpty.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoEmpty.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoEmpty.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoEmpty.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoEmpty.-gloc) {0  7}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoEmpty.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoEmpty.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoEmpty.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoEmpty.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoEmpty.-n) {RxFifoEmpty}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoEmpty.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoEmpty.-p) {3}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoEmpty.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoEmpty.-t) {R}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoEmpty.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoFull.-a) {264}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoFull.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoFull.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoFull.-c) {Receive fifo full}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoFull.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoFull.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoFull.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoFull.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoFull.-gloc) {0  6}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoFull.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoFull.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoFull.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoFull.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoFull.-n) {RxFifoFull}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoFull.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoFull.-p) {2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoFull.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoFull.-t) {R}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoFull.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxCnt.-a) {262}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxCnt.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxCnt.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxCnt.-c) {TxFifo fill}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxCnt.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxCnt.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxCnt.-ex) {1024}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxCnt.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxCnt.-gloc) {0  2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxCnt.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxCnt.-hi) {1023}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxCnt.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxCnt.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxCnt.-n) {TxCnt}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxCnt.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxCnt.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxCnt.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxCnt.-t) {R}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxCnt.-w) {10}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifo.-a) {260}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifo.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifo.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifo.-c) {Transmit fifo}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifo.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifo.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifo.-ex) {256}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifo.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifo.-gloc) {0  0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifo.-gtype) {entry}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifo.-hi) {255}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifo.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifo.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifo.-n) {TxFifo}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifo.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifo.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifo.-rmw) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifo.-t) {FIFOW}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifo.-w) {8}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoEmpty.-a) {264}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoEmpty.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoEmpty.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoEmpty.-c) {Transmit fifo empty}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoEmpty.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoEmpty.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoEmpty.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoEmpty.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoEmpty.-gloc) {0  5}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoEmpty.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoEmpty.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoEmpty.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoEmpty.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoEmpty.-n) {TxFifoEmpty}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoEmpty.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoEmpty.-p) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoEmpty.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoEmpty.-t) {R}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoEmpty.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoFull.-a) {264}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoFull.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoFull.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoFull.-c) {Transmit fifo full}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoFull.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoFull.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoFull.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoFull.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoFull.-gloc) {0  4}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoFull.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoFull.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoFull.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoFull.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoFull.-n) {TxFifoFull}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoFull.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoFull.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoFull.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoFull.-t) {R}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoFull.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxStart.-a) {265}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxStart.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxStart.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxStart.-c) {Start transmitting}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxStart.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxStart.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxStart.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxStart.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxStart.-gloc) {0  9}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxStart.-gtype) {button}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxStart.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxStart.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxStart.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxStart.-n) {TxStart}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxStart.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxStart.-p) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxStart.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxStart.-t) {WI}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxStart.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio.-ba) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio.-ch) {Ack DataI DataO PhyAddr Rd RegAddr Wr}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio.-l) {::autoreg::myTree14 ::autoreg::myTree15}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio.-n) {i0rb_mdio}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio.-o) {inst}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio.-rtb) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio.-rtc) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio.-sg) {mdio}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio.-sy) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Ack.-a) {256}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Ack.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Ack.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Ack.-c) {Ack when done}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Ack.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Ack.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Ack.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Ack.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Ack.-gloc) {0 3}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Ack.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Ack.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Ack.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Ack.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Ack.-n) {Ack}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Ack.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Ack.-p) {7}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Ack.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Ack.-t) {R}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Ack.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataI.-a) {259}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataI.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataI.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataI.-c) {Data in from phy}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataI.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataI.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataI.-ex) {65536}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataI.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataI.-gloc) {0 6}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataI.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataI.-hi) {65535}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataI.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataI.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataI.-n) {DataI}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataI.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataI.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataI.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataI.-t) {R}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataI.-w) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataO.-a) {258}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataO.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataO.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataO.-c) {Data out to phy}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataO.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataO.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataO.-ex) {65536}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataO.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataO.-gloc) {0 5}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataO.-gtype) {entry}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataO.-hi) {65535}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataO.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataO.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataO.-n) {DataO}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataO.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataO.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataO.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataO.-t) {RW}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataO.-w) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/PhyAddr.-a) {256}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/PhyAddr.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/PhyAddr.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/PhyAddr.-c) {Phy address}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/PhyAddr.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/PhyAddr.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/PhyAddr.-ex) {32}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/PhyAddr.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/PhyAddr.-gloc) {0 0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/PhyAddr.-gtype) {entry}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/PhyAddr.-hi) {31}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/PhyAddr.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/PhyAddr.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/PhyAddr.-n) {PhyAddr}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/PhyAddr.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/PhyAddr.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/PhyAddr.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/PhyAddr.-t) {RW}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/PhyAddr.-w) {5}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Rd.-a) {256}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Rd.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Rd.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Rd.-c) {Read}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Rd.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Rd.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Rd.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Rd.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Rd.-gloc) {0 2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Rd.-gtype) {button}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Rd.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Rd.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Rd.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Rd.-n) {Rd}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Rd.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Rd.-p) {6}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Rd.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Rd.-t) {WI}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Rd.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/RegAddr.-a) {257}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/RegAddr.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/RegAddr.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/RegAddr.-c) {Register address}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/RegAddr.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/RegAddr.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/RegAddr.-ex) {32}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/RegAddr.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/RegAddr.-gloc) {0 4}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/RegAddr.-gtype) {entry}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/RegAddr.-hi) {31}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/RegAddr.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/RegAddr.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/RegAddr.-n) {RegAddr}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/RegAddr.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/RegAddr.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/RegAddr.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/RegAddr.-t) {RW}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/RegAddr.-w) {5}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Wr.-a) {256}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Wr.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Wr.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Wr.-c) {Write}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Wr.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Wr.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Wr.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Wr.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Wr.-gloc) {0 1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Wr.-gtype) {button}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Wr.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Wr.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Wr.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Wr.-n) {Wr}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Wr.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Wr.-p) {5}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Wr.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Wr.-t) {WI}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Wr.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led.-ba) {63}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led.-ch) {led0 led1 led2 led3}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led.-n) {i0rb_led}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led.-o) {inst}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led.-rtb) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led.-rtc) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led.-sg) {led}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led.-sy) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led0.-a) {63}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led0.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led0.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led0.-c) {led 0 control, 1 ~ light}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led0.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led0.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led0.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led0.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led0.-gloc) {0 0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led0.-gtype) {checkbutton}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led0.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led0.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led0.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led0.-n) {led0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led0.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led0.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led0.-port) {external}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led0.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led0.-t) {RW}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led0.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led1.-a) {63}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led1.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led1.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led1.-c) {led 1 control, 1 ~ light}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led1.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led1.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led1.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led1.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led1.-gloc) {0 1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led1.-gtype) {checkbutton}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led1.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led1.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led1.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led1.-n) {led1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led1.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led1.-p) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led1.-port) {external}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led1.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led1.-t) {RW}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led1.-v) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led1.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led2.-a) {63}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led2.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led2.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led2.-c) {led 2 control, 1 ~ light}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led2.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led2.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led2.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led2.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led2.-gloc) {0 2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led2.-gtype) {checkbutton}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led2.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led2.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led2.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led2.-n) {led2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led2.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led2.-p) {2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led2.-port) {external}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led2.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led2.-t) {RW}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led2.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led3.-a) {63}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led3.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led3.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led3.-c) {led 3 control, 1 ~ light}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led3.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led3.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led3.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led3.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led3.-gloc) {0 3}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led3.-gtype) {checkbutton}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led3.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led3.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led3.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led3.-n) {led3}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led3.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led3.-p) {3}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led3.-port) {external}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led3.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led3.-t) {RW}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_led/led3.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem.-ba) {1024}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem.-ch) {Ram RamAddr}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem.-l) {::autoreg::myTree8}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem.-n) {i0rb_mem}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem.-o) {inst}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem.-rtb) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem.-rtc) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem.-sg) {mem}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem.-sy) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/Ram.-a) {1032}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/Ram.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/Ram.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/Ram.-c) {Ram data}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/Ram.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/Ram.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/Ram.-ex) {68719476736}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/Ram.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/Ram.-hi) {68719476735}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/Ram.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/Ram.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/Ram.-n) {Ram}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/Ram.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/Ram.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/Ram.-rmw) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/Ram.-t) {RAMIFRW}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/Ram.-v) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/Ram.-w) {36}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/RamAddr.-a) {1024}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/RamAddr.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/RamAddr.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/RamAddr.-c) {Ram address register}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/RamAddr.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/RamAddr.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/RamAddr.-ex) {256}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/RamAddr.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/RamAddr.-hi) {255}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/RamAddr.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/RamAddr.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/RamAddr.-n) {RamAddr}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/RamAddr.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/RamAddr.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/RamAddr.-r) {Ram}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/RamAddr.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/RamAddr.-t) {RAMIFADDR}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/RamAddr.-v) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_mem/RamAddr.-w) {8}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision.-ba) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision.-ch) {branchesrev day hour latch minute month rctest rtest rwtest trunkrev year}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision.-l) {::autoreg::myTree10 ::autoreg::myTree11 ::autoreg::myTree12 ::autoreg::myTree13}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision.-n) {i0rb_revision}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision.-o) {inst}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision.-rtb) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision.-rtc) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision.-sg) {revision}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision.-sy) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/branchesrev.-a) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/branchesrev.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/branchesrev.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/branchesrev.-c) {Branches revision.}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/branchesrev.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/branchesrev.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/branchesrev.-ex) {256}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/branchesrev.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/branchesrev.-gloc) {0 1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/branchesrev.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/branchesrev.-hi) {255}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/branchesrev.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/branchesrev.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/branchesrev.-n) {branchesrev}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/branchesrev.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/branchesrev.-other) {Nice to have!}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/branchesrev.-p) {8}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/branchesrev.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/branchesrev.-t) {RC}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/branchesrev.-v) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/branchesrev.-w) {8}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/day.-a) {3}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/day.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/day.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/day.-c) {Day of build}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/day.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/day.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/day.-ex) {65536}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/day.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/day.-gloc) {0 4}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/day.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/day.-hi) {65535}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/day.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/day.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/day.-n) {day}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/day.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/day.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/day.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/day.-t) {RC}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/day.-v) {08}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/day.-w) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/hour.-a) {4}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/hour.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/hour.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/hour.-c) {Hour of build}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/hour.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/hour.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/hour.-ex) {65536}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/hour.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/hour.-gloc) {0 5}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/hour.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/hour.-hi) {65535}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/hour.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/hour.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/hour.-n) {hour}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/hour.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/hour.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/hour.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/hour.-t) {RC}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/hour.-v) {14}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/hour.-w) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/latch.-a) {9}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/latch.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/latch.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/latch.-c) {Global latch}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/latch.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/latch.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/latch.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/latch.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/latch.-gloc) {2 3}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/latch.-gtype) {button}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/latch.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/latch.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/latch.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/latch.-n) {latch}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/latch.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/latch.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/latch.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/latch.-t) {WI}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/latch.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/minute.-a) {5}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/minute.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/minute.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/minute.-c) {Minute of build}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/minute.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/minute.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/minute.-ex) {65536}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/minute.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/minute.-gloc) {0 6}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/minute.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/minute.-hi) {65535}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/minute.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/minute.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/minute.-n) {minute}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/minute.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/minute.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/minute.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/minute.-t) {RC}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/minute.-v) {48}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/minute.-w) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/month.-a) {2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/month.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/month.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/month.-c) {Month of build}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/month.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/month.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/month.-ex) {65536}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/month.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/month.-gloc) {0 3}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/month.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/month.-hi) {65535}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/month.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/month.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/month.-n) {month}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/month.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/month.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/month.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/month.-t) {RC}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/month.-v) {04}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/month.-w) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rctest.-a) {12}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rctest.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rctest.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rctest.-c) {Test register}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rctest.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rctest.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rctest.-ex) {1099511627776}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rctest.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rctest.-gloc) {2 2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rctest.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rctest.-hi) {1099511627775}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rctest.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rctest.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rctest.-n) {rctest}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rctest.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rctest.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rctest.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rctest.-t) {RC}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rctest.-v) {0xabc}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rctest.-w) {40}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rtest.-a) {9}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rtest.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rtest.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rtest.-c) {Test register}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rtest.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rtest.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rtest.-ex) {1099511627776}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rtest.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rtest.-gloc) {2 1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rtest.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rtest.-hi) {1099511627775}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rtest.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rtest.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rtest.-n) {rtest}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rtest.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rtest.-p) {3}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rtest.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rtest.-t) {R}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rtest.-w) {40}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rwtest.-a) {6}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rwtest.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rwtest.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rwtest.-c) {Test register}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rwtest.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rwtest.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rwtest.-ex) {1099511627776}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rwtest.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rwtest.-gloc) {2 0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rwtest.-gtype) {entry}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rwtest.-hi) {1099511627775}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rwtest.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rwtest.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rwtest.-n) {rwtest}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rwtest.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rwtest.-p) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rwtest.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rwtest.-t) {RW}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/rwtest.-w) {40}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/trunkrev.-a) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/trunkrev.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/trunkrev.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/trunkrev.-c) {Trunk revision.}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/trunkrev.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/trunkrev.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/trunkrev.-ex) {256}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/trunkrev.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/trunkrev.-gloc) {0 0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/trunkrev.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/trunkrev.-gui) {Fun}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/trunkrev.-hi) {255}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/trunkrev.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/trunkrev.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/trunkrev.-n) {trunkrev}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/trunkrev.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/trunkrev.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/trunkrev.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/trunkrev.-t) {RC}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/trunkrev.-v) {20}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/trunkrev.-w) {8}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/year.-a) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/year.-as) {user}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/year.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/year.-c) {Year of build}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/year.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/year.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/year.-ex) {65536}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/year.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/year.-gloc) {0 2}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/year.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/year.-hi) {65535}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/year.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/year.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/year.-n) {year}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/year.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/year.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/year.-rmw) {1}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/year.-t) {RC}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/year.-v) {17}
set ::autoreg::vRegArray(/i0jtag/i0demo/i0core/i0rb_revision/year.-w) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf.-ba) {0x0000}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf.-c) {JTAG config and status}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf.-ch) {r0 rmw0 status0 w0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf.-l) {::autoreg::myTree1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf.-n) {i0jtag_conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf.-o) {inst}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf.-sg) {jtag_conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0.-ba) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0.-c) {Read channel}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0.-ch) {LoopEn Reset X Y Z}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0.-l) {::autoreg::myTree6}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0.-n) {r0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0.-o) {inst}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0.-sg) {r_channel_reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/LoopEn.-a) {3}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/LoopEn.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/LoopEn.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/LoopEn.-c) {Loop enable}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/LoopEn.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/LoopEn.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/LoopEn.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/LoopEn.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/LoopEn.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/LoopEn.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/LoopEn.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/LoopEn.-n) {LoopEn}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/LoopEn.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/LoopEn.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/LoopEn.-t) {rw}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/LoopEn.-v) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/LoopEn.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Reset.-a) {3}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Reset.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Reset.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Reset.-c) {FIFO A and B reset}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Reset.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Reset.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Reset.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Reset.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Reset.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Reset.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Reset.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Reset.-n) {Reset}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Reset.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Reset.-p) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Reset.-t) {wi}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Reset.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/X.-a) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/X.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/X.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/X.-c) {Write phase length - 1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/X.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/X.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/X.-ex) {256}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/X.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/X.-hi) {255}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/X.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/X.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/X.-n) {X}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/X.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/X.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/X.-t) {rw}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/X.-v) {3}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/X.-w) {8}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Y.-a) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Y.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Y.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Y.-c) {Dummy phase length - 1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Y.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Y.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Y.-ex) {256}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Y.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Y.-hi) {255}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Y.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Y.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Y.-n) {Y}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Y.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Y.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Y.-t) {rw}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Y.-v) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Y.-w) {8}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Z.-a) {2}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Z.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Z.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Z.-c) {Read phase length - 1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Z.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Z.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Z.-ex) {256}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Z.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Z.-hi) {255}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Z.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Z.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Z.-n) {Z}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Z.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Z.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Z.-t) {rw}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Z.-v) {6}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/r0/Z.-w) {8}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0.-ba) {8}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0.-c) {RMW channel}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0.-ch) {LoopEn Reset X Y Z}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0.-l) {::autoreg::myTree4}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0.-n) {rmw0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0.-o) {inst}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0.-sg) {rmw_channel_reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/LoopEn.-a) {11}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/LoopEn.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/LoopEn.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/LoopEn.-c) {Loop enable}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/LoopEn.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/LoopEn.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/LoopEn.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/LoopEn.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/LoopEn.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/LoopEn.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/LoopEn.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/LoopEn.-n) {LoopEn}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/LoopEn.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/LoopEn.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/LoopEn.-t) {rw}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/LoopEn.-v) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/LoopEn.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Reset.-a) {11}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Reset.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Reset.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Reset.-c) {FIFO A and B reset}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Reset.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Reset.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Reset.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Reset.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Reset.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Reset.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Reset.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Reset.-n) {Reset}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Reset.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Reset.-p) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Reset.-t) {wi}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Reset.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/X.-a) {8}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/X.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/X.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/X.-c) {Write phase length - 1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/X.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/X.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/X.-ex) {256}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/X.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/X.-hi) {255}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/X.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/X.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/X.-n) {X}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/X.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/X.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/X.-t) {rw}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/X.-v) {6}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/X.-w) {8}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Y.-a) {9}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Y.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Y.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Y.-c) {Dummy phase length - 1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Y.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Y.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Y.-ex) {256}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Y.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Y.-hi) {255}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Y.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Y.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Y.-n) {Y}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Y.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Y.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Y.-t) {rw}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Y.-v) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Y.-w) {8}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Z.-a) {10}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Z.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Z.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Z.-c) {Read phase length - 1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Z.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Z.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Z.-ex) {256}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Z.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Z.-hi) {255}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Z.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Z.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Z.-n) {Z}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Z.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Z.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Z.-t) {rw}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Z.-v) {7}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/rmw0/Z.-w) {8}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0.-ba) {56}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0.-c) {Status registers}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0.-ch) {AEmpty AWrOnFull BEmpty BRdOnEmpty ExtError ExtStatus Version X Y Z}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0.-l) {::autoreg::myTree3}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0.-n) {status0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0.-o) {inst}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0.-sg) {status}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AEmpty.-a) {59}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AEmpty.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AEmpty.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AEmpty.-c) {FIFO A Empty}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AEmpty.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AEmpty.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AEmpty.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AEmpty.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AEmpty.-gloc) {0 1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AEmpty.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AEmpty.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AEmpty.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AEmpty.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AEmpty.-n) {AEmpty}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AEmpty.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AEmpty.-p) {8}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AEmpty.-t) {RO}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AEmpty.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AWrOnFull.-a) {59}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AWrOnFull.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AWrOnFull.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AWrOnFull.-c) {FIFO A write on full}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AWrOnFull.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AWrOnFull.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AWrOnFull.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AWrOnFull.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AWrOnFull.-gloc) {0 3}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AWrOnFull.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AWrOnFull.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AWrOnFull.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AWrOnFull.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AWrOnFull.-n) {AWrOnFull}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AWrOnFull.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AWrOnFull.-p) {10}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AWrOnFull.-t) {RO}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/AWrOnFull.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BEmpty.-a) {59}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BEmpty.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BEmpty.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BEmpty.-c) {FIFO B Empty}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BEmpty.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BEmpty.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BEmpty.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BEmpty.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BEmpty.-gloc) {0 2}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BEmpty.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BEmpty.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BEmpty.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BEmpty.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BEmpty.-n) {BEmpty}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BEmpty.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BEmpty.-p) {9}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BEmpty.-t) {RO}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BEmpty.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BRdOnEmpty.-a) {59}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BRdOnEmpty.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BRdOnEmpty.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BRdOnEmpty.-c) {FIFO B read on empty}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BRdOnEmpty.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BRdOnEmpty.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BRdOnEmpty.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BRdOnEmpty.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BRdOnEmpty.-gloc) {0 4}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BRdOnEmpty.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BRdOnEmpty.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BRdOnEmpty.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BRdOnEmpty.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BRdOnEmpty.-n) {BRdOnEmpty}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BRdOnEmpty.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BRdOnEmpty.-p) {11}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BRdOnEmpty.-t) {RO}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/BRdOnEmpty.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtError.-a) {59}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtError.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtError.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtError.-c) {External error}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtError.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtError.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtError.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtError.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtError.-gloc) {0 5}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtError.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtError.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtError.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtError.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtError.-n) {ExtError}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtError.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtError.-p) {12}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtError.-t) {RO}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtError.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtStatus.-a) {59}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtStatus.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtStatus.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtStatus.-c) {External status}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtStatus.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtStatus.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtStatus.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtStatus.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtStatus.-gloc) {0 6}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtStatus.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtStatus.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtStatus.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtStatus.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtStatus.-n) {ExtStatus}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtStatus.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtStatus.-p) {13}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtStatus.-t) {RO}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/ExtStatus.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Version.-a) {59}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Version.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Version.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Version.-c) {HW version}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Version.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Version.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Version.-ex) {256}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Version.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Version.-gloc) {0 0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Version.-gtype) {label}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Version.-hi) {255}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Version.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Version.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Version.-n) {Version}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Version.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Version.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Version.-t) {RO}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Version.-w) {8}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/X.-a) {56}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/X.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/X.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/X.-c) {Write phase length - 1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/X.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/X.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/X.-ex) {256}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/X.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/X.-hi) {255}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/X.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/X.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/X.-n) {X}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/X.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/X.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/X.-t) {RO}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/X.-w) {8}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Y.-a) {57}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Y.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Y.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Y.-c) {Dummy phase length - 1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Y.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Y.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Y.-ex) {256}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Y.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Y.-hi) {255}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Y.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Y.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Y.-n) {Y}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Y.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Y.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Y.-t) {RO}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Y.-w) {8}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Z.-a) {58}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Z.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Z.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Z.-c) {Read phase length - 1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Z.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Z.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Z.-ex) {256}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Z.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Z.-hi) {255}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Z.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Z.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Z.-n) {Z}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Z.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Z.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Z.-t) {RO}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/status0/Z.-w) {8}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0.-ba) {4}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0.-c) {Write channel}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0.-ch) {LoopEn Reset X Y Z}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0.-l) {::autoreg::myTree5}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0.-n) {w0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0.-o) {inst}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0.-sg) {w_channel_reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/LoopEn.-a) {7}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/LoopEn.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/LoopEn.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/LoopEn.-c) {Loop enable}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/LoopEn.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/LoopEn.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/LoopEn.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/LoopEn.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/LoopEn.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/LoopEn.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/LoopEn.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/LoopEn.-n) {LoopEn}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/LoopEn.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/LoopEn.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/LoopEn.-t) {rw}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/LoopEn.-v) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/LoopEn.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Reset.-a) {7}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Reset.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Reset.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Reset.-c) {FIFO A and B reset}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Reset.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Reset.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Reset.-ex) {2}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Reset.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Reset.-hi) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Reset.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Reset.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Reset.-n) {Reset}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Reset.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Reset.-p) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Reset.-t) {wi}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Reset.-w) {1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/X.-a) {4}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/X.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/X.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/X.-c) {Write phase length - 1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/X.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/X.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/X.-ex) {256}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/X.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/X.-hi) {255}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/X.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/X.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/X.-n) {X}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/X.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/X.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/X.-t) {rw}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/X.-v) {5}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/X.-w) {8}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Y.-a) {5}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Y.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Y.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Y.-c) {Dummy phase length - 1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Y.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Y.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Y.-ex) {256}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Y.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Y.-hi) {255}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Y.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Y.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Y.-n) {Y}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Y.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Y.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Y.-t) {rw}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Y.-v) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Y.-w) {8}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Z.-a) {6}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Z.-as) {conf}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Z.-aw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Z.-c) {Read phase length - 1}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Z.-dw) {16}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Z.-en) {big}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Z.-ex) {256}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Z.-f) {U}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Z.-hi) {255}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Z.-i) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Z.-lo) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Z.-n) {Z}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Z.-o) {reg}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Z.-p) {0}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Z.-t) {rw}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Z.-v) {6}
set ::autoreg::vRegArray(/i0jtag/i0jtag_conf/w0/Z.-w) {8}

