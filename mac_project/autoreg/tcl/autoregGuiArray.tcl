if {[namespace exist ::autoreg] == 0} {
   namespace eval ::autoreg {
      variable vGuiArray
   }
}
set ::autoreg::vGuiArray(led.-gspan) {2 4}
set ::autoreg::vGuiArray(led.-gupdate) {0 4}
set ::autoreg::vGuiArray(led.-gw) {12 8}
set ::autoreg::vGuiArray(led.-i) {led0 led1 led2 led3}
set ::autoreg::vGuiArray(led.-n) {led}
set ::autoreg::vGuiArray(led.-o) {group}
set ::autoreg::vGuiArray(led.-path) {/i0jtag/i0demo/i0core/i0rb_led}
set ::autoreg::vGuiArray(led.-t) {bank}
set ::autoreg::vGuiArray(led.led0.-a) {63}
set ::autoreg::vGuiArray(led.led0.-as) {user}
set ::autoreg::vGuiArray(led.led0.-aw) {16}
set ::autoreg::vGuiArray(led.led0.-c) {led 0 control, 1 ~ light}
set ::autoreg::vGuiArray(led.led0.-dw) {16}
set ::autoreg::vGuiArray(led.led0.-en) {big}
set ::autoreg::vGuiArray(led.led0.-ex) {2}
set ::autoreg::vGuiArray(led.led0.-f) {U}
set ::autoreg::vGuiArray(led.led0.-gloc) {0 0}
set ::autoreg::vGuiArray(led.led0.-gtype) {checkbutton}
set ::autoreg::vGuiArray(led.led0.-hi) {1}
set ::autoreg::vGuiArray(led.led0.-i) {0}
set ::autoreg::vGuiArray(led.led0.-lo) {0}
set ::autoreg::vGuiArray(led.led0.-n) {led0}
set ::autoreg::vGuiArray(led.led0.-o) {reg}
set ::autoreg::vGuiArray(led.led0.-p) {0}
set ::autoreg::vGuiArray(led.led0.-port) {external}
set ::autoreg::vGuiArray(led.led0.-rmw) {1}
set ::autoreg::vGuiArray(led.led0.-t) {RW}
set ::autoreg::vGuiArray(led.led0.-w) {1}
set ::autoreg::vGuiArray(led.led1.-a) {63}
set ::autoreg::vGuiArray(led.led1.-as) {user}
set ::autoreg::vGuiArray(led.led1.-aw) {16}
set ::autoreg::vGuiArray(led.led1.-c) {led 1 control, 1 ~ light}
set ::autoreg::vGuiArray(led.led1.-dw) {16}
set ::autoreg::vGuiArray(led.led1.-en) {big}
set ::autoreg::vGuiArray(led.led1.-ex) {2}
set ::autoreg::vGuiArray(led.led1.-f) {U}
set ::autoreg::vGuiArray(led.led1.-gloc) {0 1}
set ::autoreg::vGuiArray(led.led1.-gtype) {checkbutton}
set ::autoreg::vGuiArray(led.led1.-hi) {1}
set ::autoreg::vGuiArray(led.led1.-i) {0}
set ::autoreg::vGuiArray(led.led1.-lo) {0}
set ::autoreg::vGuiArray(led.led1.-n) {led1}
set ::autoreg::vGuiArray(led.led1.-o) {reg}
set ::autoreg::vGuiArray(led.led1.-p) {1}
set ::autoreg::vGuiArray(led.led1.-port) {external}
set ::autoreg::vGuiArray(led.led1.-rmw) {1}
set ::autoreg::vGuiArray(led.led1.-t) {RW}
set ::autoreg::vGuiArray(led.led1.-v) {1}
set ::autoreg::vGuiArray(led.led1.-w) {1}
set ::autoreg::vGuiArray(led.led2.-a) {63}
set ::autoreg::vGuiArray(led.led2.-as) {user}
set ::autoreg::vGuiArray(led.led2.-aw) {16}
set ::autoreg::vGuiArray(led.led2.-c) {led 2 control, 1 ~ light}
set ::autoreg::vGuiArray(led.led2.-dw) {16}
set ::autoreg::vGuiArray(led.led2.-en) {big}
set ::autoreg::vGuiArray(led.led2.-ex) {2}
set ::autoreg::vGuiArray(led.led2.-f) {U}
set ::autoreg::vGuiArray(led.led2.-gloc) {0 2}
set ::autoreg::vGuiArray(led.led2.-gtype) {checkbutton}
set ::autoreg::vGuiArray(led.led2.-hi) {1}
set ::autoreg::vGuiArray(led.led2.-i) {0}
set ::autoreg::vGuiArray(led.led2.-lo) {0}
set ::autoreg::vGuiArray(led.led2.-n) {led2}
set ::autoreg::vGuiArray(led.led2.-o) {reg}
set ::autoreg::vGuiArray(led.led2.-p) {2}
set ::autoreg::vGuiArray(led.led2.-port) {external}
set ::autoreg::vGuiArray(led.led2.-rmw) {1}
set ::autoreg::vGuiArray(led.led2.-t) {RW}
set ::autoreg::vGuiArray(led.led2.-w) {1}
set ::autoreg::vGuiArray(led.led3.-a) {63}
set ::autoreg::vGuiArray(led.led3.-as) {user}
set ::autoreg::vGuiArray(led.led3.-aw) {16}
set ::autoreg::vGuiArray(led.led3.-c) {led 3 control, 1 ~ light}
set ::autoreg::vGuiArray(led.led3.-dw) {16}
set ::autoreg::vGuiArray(led.led3.-en) {big}
set ::autoreg::vGuiArray(led.led3.-ex) {2}
set ::autoreg::vGuiArray(led.led3.-f) {U}
set ::autoreg::vGuiArray(led.led3.-gloc) {0 3}
set ::autoreg::vGuiArray(led.led3.-gtype) {checkbutton}
set ::autoreg::vGuiArray(led.led3.-hi) {1}
set ::autoreg::vGuiArray(led.led3.-i) {0}
set ::autoreg::vGuiArray(led.led3.-lo) {0}
set ::autoreg::vGuiArray(led.led3.-n) {led3}
set ::autoreg::vGuiArray(led.led3.-o) {reg}
set ::autoreg::vGuiArray(led.led3.-p) {3}
set ::autoreg::vGuiArray(led.led3.-port) {external}
set ::autoreg::vGuiArray(led.led3.-rmw) {1}
set ::autoreg::vGuiArray(led.led3.-t) {RW}
set ::autoreg::vGuiArray(led.led3.-w) {1}
set ::autoreg::vGuiArray(mac.-gspan) {6 8}
set ::autoreg::vGuiArray(mac.-gupdate) {4 7}
set ::autoreg::vGuiArray(mac.-gw) {12 8}
set ::autoreg::vGuiArray(mac.-i) {TxFifo RxFifo TxCnt RxCnt TxFifoFull TxFifoEmpty RxFifoFull RxFifoEmpty LoopEn TxStart FifoRst}
set ::autoreg::vGuiArray(mac.-n) {mac}
set ::autoreg::vGuiArray(mac.-o) {group}
set ::autoreg::vGuiArray(mac.-path) {/i0jtag/i0demo/i0core/i0mac/i0rb_mac}
set ::autoreg::vGuiArray(mac.-t) {bank}
set ::autoreg::vGuiArray(mac.FifoRst.-a) {265}
set ::autoreg::vGuiArray(mac.FifoRst.-as) {user}
set ::autoreg::vGuiArray(mac.FifoRst.-aw) {16}
set ::autoreg::vGuiArray(mac.FifoRst.-c) {Reset fifo logic}
set ::autoreg::vGuiArray(mac.FifoRst.-dw) {16}
set ::autoreg::vGuiArray(mac.FifoRst.-en) {big}
set ::autoreg::vGuiArray(mac.FifoRst.-ex) {2}
set ::autoreg::vGuiArray(mac.FifoRst.-f) {U}
set ::autoreg::vGuiArray(mac.FifoRst.-gloc) {0 10}
set ::autoreg::vGuiArray(mac.FifoRst.-gtype) {button}
set ::autoreg::vGuiArray(mac.FifoRst.-hi) {1}
set ::autoreg::vGuiArray(mac.FifoRst.-i) {0}
set ::autoreg::vGuiArray(mac.FifoRst.-lo) {0}
set ::autoreg::vGuiArray(mac.FifoRst.-n) {FifoRst}
set ::autoreg::vGuiArray(mac.FifoRst.-o) {reg}
set ::autoreg::vGuiArray(mac.FifoRst.-p) {2}
set ::autoreg::vGuiArray(mac.FifoRst.-rmw) {1}
set ::autoreg::vGuiArray(mac.FifoRst.-t) {WI}
set ::autoreg::vGuiArray(mac.FifoRst.-w) {1}
set ::autoreg::vGuiArray(mac.LoopEn.-a) {265}
set ::autoreg::vGuiArray(mac.LoopEn.-as) {user}
set ::autoreg::vGuiArray(mac.LoopEn.-aw) {16}
set ::autoreg::vGuiArray(mac.LoopEn.-c) {Enable looping}
set ::autoreg::vGuiArray(mac.LoopEn.-dw) {16}
set ::autoreg::vGuiArray(mac.LoopEn.-en) {big}
set ::autoreg::vGuiArray(mac.LoopEn.-ex) {2}
set ::autoreg::vGuiArray(mac.LoopEn.-f) {U}
set ::autoreg::vGuiArray(mac.LoopEn.-gloc) {0  8}
set ::autoreg::vGuiArray(mac.LoopEn.-gtype) {checkbutton}
set ::autoreg::vGuiArray(mac.LoopEn.-hi) {1}
set ::autoreg::vGuiArray(mac.LoopEn.-i) {0}
set ::autoreg::vGuiArray(mac.LoopEn.-lo) {0}
set ::autoreg::vGuiArray(mac.LoopEn.-n) {LoopEn}
set ::autoreg::vGuiArray(mac.LoopEn.-o) {reg}
set ::autoreg::vGuiArray(mac.LoopEn.-p) {0}
set ::autoreg::vGuiArray(mac.LoopEn.-rmw) {1}
set ::autoreg::vGuiArray(mac.LoopEn.-t) {RW}
set ::autoreg::vGuiArray(mac.LoopEn.-w) {1}
set ::autoreg::vGuiArray(mac.RxCnt.-a) {263}
set ::autoreg::vGuiArray(mac.RxCnt.-as) {user}
set ::autoreg::vGuiArray(mac.RxCnt.-aw) {16}
set ::autoreg::vGuiArray(mac.RxCnt.-c) {RxFifo fill}
set ::autoreg::vGuiArray(mac.RxCnt.-dw) {16}
set ::autoreg::vGuiArray(mac.RxCnt.-en) {big}
set ::autoreg::vGuiArray(mac.RxCnt.-ex) {1024}
set ::autoreg::vGuiArray(mac.RxCnt.-f) {U}
set ::autoreg::vGuiArray(mac.RxCnt.-gloc) {0  3}
set ::autoreg::vGuiArray(mac.RxCnt.-gtype) {label}
set ::autoreg::vGuiArray(mac.RxCnt.-hi) {1023}
set ::autoreg::vGuiArray(mac.RxCnt.-i) {0}
set ::autoreg::vGuiArray(mac.RxCnt.-lo) {0}
set ::autoreg::vGuiArray(mac.RxCnt.-n) {RxCnt}
set ::autoreg::vGuiArray(mac.RxCnt.-o) {reg}
set ::autoreg::vGuiArray(mac.RxCnt.-p) {0}
set ::autoreg::vGuiArray(mac.RxCnt.-rmw) {1}
set ::autoreg::vGuiArray(mac.RxCnt.-t) {R}
set ::autoreg::vGuiArray(mac.RxCnt.-w) {10}
set ::autoreg::vGuiArray(mac.RxFifo.-a) {261}
set ::autoreg::vGuiArray(mac.RxFifo.-as) {user}
set ::autoreg::vGuiArray(mac.RxFifo.-aw) {16}
set ::autoreg::vGuiArray(mac.RxFifo.-c) {Receive fifo}
set ::autoreg::vGuiArray(mac.RxFifo.-dw) {16}
set ::autoreg::vGuiArray(mac.RxFifo.-en) {big}
set ::autoreg::vGuiArray(mac.RxFifo.-ex) {256}
set ::autoreg::vGuiArray(mac.RxFifo.-f) {U}
set ::autoreg::vGuiArray(mac.RxFifo.-gloc) {0  1}
set ::autoreg::vGuiArray(mac.RxFifo.-gtype) {label}
set ::autoreg::vGuiArray(mac.RxFifo.-hi) {255}
set ::autoreg::vGuiArray(mac.RxFifo.-i) {0}
set ::autoreg::vGuiArray(mac.RxFifo.-lo) {0}
set ::autoreg::vGuiArray(mac.RxFifo.-n) {RxFifo}
set ::autoreg::vGuiArray(mac.RxFifo.-o) {reg}
set ::autoreg::vGuiArray(mac.RxFifo.-p) {0}
set ::autoreg::vGuiArray(mac.RxFifo.-rmw) {0}
set ::autoreg::vGuiArray(mac.RxFifo.-t) {FIFOR}
set ::autoreg::vGuiArray(mac.RxFifo.-w) {8}
set ::autoreg::vGuiArray(mac.RxFifoEmpty.-a) {264}
set ::autoreg::vGuiArray(mac.RxFifoEmpty.-as) {user}
set ::autoreg::vGuiArray(mac.RxFifoEmpty.-aw) {16}
set ::autoreg::vGuiArray(mac.RxFifoEmpty.-c) {Receive fifo empty}
set ::autoreg::vGuiArray(mac.RxFifoEmpty.-dw) {16}
set ::autoreg::vGuiArray(mac.RxFifoEmpty.-en) {big}
set ::autoreg::vGuiArray(mac.RxFifoEmpty.-ex) {2}
set ::autoreg::vGuiArray(mac.RxFifoEmpty.-f) {U}
set ::autoreg::vGuiArray(mac.RxFifoEmpty.-gloc) {0  7}
set ::autoreg::vGuiArray(mac.RxFifoEmpty.-gtype) {label}
set ::autoreg::vGuiArray(mac.RxFifoEmpty.-hi) {1}
set ::autoreg::vGuiArray(mac.RxFifoEmpty.-i) {0}
set ::autoreg::vGuiArray(mac.RxFifoEmpty.-lo) {0}
set ::autoreg::vGuiArray(mac.RxFifoEmpty.-n) {RxFifoEmpty}
set ::autoreg::vGuiArray(mac.RxFifoEmpty.-o) {reg}
set ::autoreg::vGuiArray(mac.RxFifoEmpty.-p) {3}
set ::autoreg::vGuiArray(mac.RxFifoEmpty.-rmw) {1}
set ::autoreg::vGuiArray(mac.RxFifoEmpty.-t) {R}
set ::autoreg::vGuiArray(mac.RxFifoEmpty.-w) {1}
set ::autoreg::vGuiArray(mac.RxFifoFull.-a) {264}
set ::autoreg::vGuiArray(mac.RxFifoFull.-as) {user}
set ::autoreg::vGuiArray(mac.RxFifoFull.-aw) {16}
set ::autoreg::vGuiArray(mac.RxFifoFull.-c) {Receive fifo full}
set ::autoreg::vGuiArray(mac.RxFifoFull.-dw) {16}
set ::autoreg::vGuiArray(mac.RxFifoFull.-en) {big}
set ::autoreg::vGuiArray(mac.RxFifoFull.-ex) {2}
set ::autoreg::vGuiArray(mac.RxFifoFull.-f) {U}
set ::autoreg::vGuiArray(mac.RxFifoFull.-gloc) {0  6}
set ::autoreg::vGuiArray(mac.RxFifoFull.-gtype) {label}
set ::autoreg::vGuiArray(mac.RxFifoFull.-hi) {1}
set ::autoreg::vGuiArray(mac.RxFifoFull.-i) {0}
set ::autoreg::vGuiArray(mac.RxFifoFull.-lo) {0}
set ::autoreg::vGuiArray(mac.RxFifoFull.-n) {RxFifoFull}
set ::autoreg::vGuiArray(mac.RxFifoFull.-o) {reg}
set ::autoreg::vGuiArray(mac.RxFifoFull.-p) {2}
set ::autoreg::vGuiArray(mac.RxFifoFull.-rmw) {1}
set ::autoreg::vGuiArray(mac.RxFifoFull.-t) {R}
set ::autoreg::vGuiArray(mac.RxFifoFull.-w) {1}
set ::autoreg::vGuiArray(mac.TxCnt.-a) {262}
set ::autoreg::vGuiArray(mac.TxCnt.-as) {user}
set ::autoreg::vGuiArray(mac.TxCnt.-aw) {16}
set ::autoreg::vGuiArray(mac.TxCnt.-c) {TxFifo fill}
set ::autoreg::vGuiArray(mac.TxCnt.-dw) {16}
set ::autoreg::vGuiArray(mac.TxCnt.-en) {big}
set ::autoreg::vGuiArray(mac.TxCnt.-ex) {1024}
set ::autoreg::vGuiArray(mac.TxCnt.-f) {U}
set ::autoreg::vGuiArray(mac.TxCnt.-gloc) {0  2}
set ::autoreg::vGuiArray(mac.TxCnt.-gtype) {label}
set ::autoreg::vGuiArray(mac.TxCnt.-hi) {1023}
set ::autoreg::vGuiArray(mac.TxCnt.-i) {0}
set ::autoreg::vGuiArray(mac.TxCnt.-lo) {0}
set ::autoreg::vGuiArray(mac.TxCnt.-n) {TxCnt}
set ::autoreg::vGuiArray(mac.TxCnt.-o) {reg}
set ::autoreg::vGuiArray(mac.TxCnt.-p) {0}
set ::autoreg::vGuiArray(mac.TxCnt.-rmw) {1}
set ::autoreg::vGuiArray(mac.TxCnt.-t) {R}
set ::autoreg::vGuiArray(mac.TxCnt.-w) {10}
set ::autoreg::vGuiArray(mac.TxFifo.-a) {260}
set ::autoreg::vGuiArray(mac.TxFifo.-as) {user}
set ::autoreg::vGuiArray(mac.TxFifo.-aw) {16}
set ::autoreg::vGuiArray(mac.TxFifo.-c) {Transmit fifo}
set ::autoreg::vGuiArray(mac.TxFifo.-dw) {16}
set ::autoreg::vGuiArray(mac.TxFifo.-en) {big}
set ::autoreg::vGuiArray(mac.TxFifo.-ex) {256}
set ::autoreg::vGuiArray(mac.TxFifo.-f) {U}
set ::autoreg::vGuiArray(mac.TxFifo.-gloc) {0  0}
set ::autoreg::vGuiArray(mac.TxFifo.-gtype) {entry}
set ::autoreg::vGuiArray(mac.TxFifo.-hi) {255}
set ::autoreg::vGuiArray(mac.TxFifo.-i) {0}
set ::autoreg::vGuiArray(mac.TxFifo.-lo) {0}
set ::autoreg::vGuiArray(mac.TxFifo.-n) {TxFifo}
set ::autoreg::vGuiArray(mac.TxFifo.-o) {reg}
set ::autoreg::vGuiArray(mac.TxFifo.-p) {0}
set ::autoreg::vGuiArray(mac.TxFifo.-rmw) {0}
set ::autoreg::vGuiArray(mac.TxFifo.-t) {FIFOW}
set ::autoreg::vGuiArray(mac.TxFifo.-w) {8}
set ::autoreg::vGuiArray(mac.TxFifoEmpty.-a) {264}
set ::autoreg::vGuiArray(mac.TxFifoEmpty.-as) {user}
set ::autoreg::vGuiArray(mac.TxFifoEmpty.-aw) {16}
set ::autoreg::vGuiArray(mac.TxFifoEmpty.-c) {Transmit fifo empty}
set ::autoreg::vGuiArray(mac.TxFifoEmpty.-dw) {16}
set ::autoreg::vGuiArray(mac.TxFifoEmpty.-en) {big}
set ::autoreg::vGuiArray(mac.TxFifoEmpty.-ex) {2}
set ::autoreg::vGuiArray(mac.TxFifoEmpty.-f) {U}
set ::autoreg::vGuiArray(mac.TxFifoEmpty.-gloc) {0  5}
set ::autoreg::vGuiArray(mac.TxFifoEmpty.-gtype) {label}
set ::autoreg::vGuiArray(mac.TxFifoEmpty.-hi) {1}
set ::autoreg::vGuiArray(mac.TxFifoEmpty.-i) {0}
set ::autoreg::vGuiArray(mac.TxFifoEmpty.-lo) {0}
set ::autoreg::vGuiArray(mac.TxFifoEmpty.-n) {TxFifoEmpty}
set ::autoreg::vGuiArray(mac.TxFifoEmpty.-o) {reg}
set ::autoreg::vGuiArray(mac.TxFifoEmpty.-p) {1}
set ::autoreg::vGuiArray(mac.TxFifoEmpty.-rmw) {1}
set ::autoreg::vGuiArray(mac.TxFifoEmpty.-t) {R}
set ::autoreg::vGuiArray(mac.TxFifoEmpty.-w) {1}
set ::autoreg::vGuiArray(mac.TxFifoFull.-a) {264}
set ::autoreg::vGuiArray(mac.TxFifoFull.-as) {user}
set ::autoreg::vGuiArray(mac.TxFifoFull.-aw) {16}
set ::autoreg::vGuiArray(mac.TxFifoFull.-c) {Transmit fifo full}
set ::autoreg::vGuiArray(mac.TxFifoFull.-dw) {16}
set ::autoreg::vGuiArray(mac.TxFifoFull.-en) {big}
set ::autoreg::vGuiArray(mac.TxFifoFull.-ex) {2}
set ::autoreg::vGuiArray(mac.TxFifoFull.-f) {U}
set ::autoreg::vGuiArray(mac.TxFifoFull.-gloc) {0  4}
set ::autoreg::vGuiArray(mac.TxFifoFull.-gtype) {label}
set ::autoreg::vGuiArray(mac.TxFifoFull.-hi) {1}
set ::autoreg::vGuiArray(mac.TxFifoFull.-i) {0}
set ::autoreg::vGuiArray(mac.TxFifoFull.-lo) {0}
set ::autoreg::vGuiArray(mac.TxFifoFull.-n) {TxFifoFull}
set ::autoreg::vGuiArray(mac.TxFifoFull.-o) {reg}
set ::autoreg::vGuiArray(mac.TxFifoFull.-p) {0}
set ::autoreg::vGuiArray(mac.TxFifoFull.-rmw) {1}
set ::autoreg::vGuiArray(mac.TxFifoFull.-t) {R}
set ::autoreg::vGuiArray(mac.TxFifoFull.-w) {1}
set ::autoreg::vGuiArray(mac.TxStart.-a) {265}
set ::autoreg::vGuiArray(mac.TxStart.-as) {user}
set ::autoreg::vGuiArray(mac.TxStart.-aw) {16}
set ::autoreg::vGuiArray(mac.TxStart.-c) {Start transmitting}
set ::autoreg::vGuiArray(mac.TxStart.-dw) {16}
set ::autoreg::vGuiArray(mac.TxStart.-en) {big}
set ::autoreg::vGuiArray(mac.TxStart.-ex) {2}
set ::autoreg::vGuiArray(mac.TxStart.-f) {U}
set ::autoreg::vGuiArray(mac.TxStart.-gloc) {0  9}
set ::autoreg::vGuiArray(mac.TxStart.-gtype) {button}
set ::autoreg::vGuiArray(mac.TxStart.-hi) {1}
set ::autoreg::vGuiArray(mac.TxStart.-i) {0}
set ::autoreg::vGuiArray(mac.TxStart.-lo) {0}
set ::autoreg::vGuiArray(mac.TxStart.-n) {TxStart}
set ::autoreg::vGuiArray(mac.TxStart.-o) {reg}
set ::autoreg::vGuiArray(mac.TxStart.-p) {1}
set ::autoreg::vGuiArray(mac.TxStart.-rmw) {1}
set ::autoreg::vGuiArray(mac.TxStart.-t) {WI}
set ::autoreg::vGuiArray(mac.TxStart.-w) {1}
set ::autoreg::vGuiArray(mdio.-gspan) {6 8}
set ::autoreg::vGuiArray(mdio.-gupdate) {4 7}
set ::autoreg::vGuiArray(mdio.-gw) {12 8}
set ::autoreg::vGuiArray(mdio.-i) {PhyAddr Wr Rd Ack RegAddr DataO DataI}
set ::autoreg::vGuiArray(mdio.-n) {mdio}
set ::autoreg::vGuiArray(mdio.-o) {group}
set ::autoreg::vGuiArray(mdio.-path) {/i0jtag/i0demo/i0core/i0mac/i0rb_mdio}
set ::autoreg::vGuiArray(mdio.-t) {bank}
set ::autoreg::vGuiArray(mdio.Ack.-a) {256}
set ::autoreg::vGuiArray(mdio.Ack.-as) {user}
set ::autoreg::vGuiArray(mdio.Ack.-aw) {16}
set ::autoreg::vGuiArray(mdio.Ack.-c) {Ack when done}
set ::autoreg::vGuiArray(mdio.Ack.-dw) {16}
set ::autoreg::vGuiArray(mdio.Ack.-en) {big}
set ::autoreg::vGuiArray(mdio.Ack.-ex) {2}
set ::autoreg::vGuiArray(mdio.Ack.-f) {U}
set ::autoreg::vGuiArray(mdio.Ack.-gloc) {0 3}
set ::autoreg::vGuiArray(mdio.Ack.-gtype) {label}
set ::autoreg::vGuiArray(mdio.Ack.-hi) {1}
set ::autoreg::vGuiArray(mdio.Ack.-i) {0}
set ::autoreg::vGuiArray(mdio.Ack.-lo) {0}
set ::autoreg::vGuiArray(mdio.Ack.-n) {Ack}
set ::autoreg::vGuiArray(mdio.Ack.-o) {reg}
set ::autoreg::vGuiArray(mdio.Ack.-p) {7}
set ::autoreg::vGuiArray(mdio.Ack.-rmw) {1}
set ::autoreg::vGuiArray(mdio.Ack.-t) {R}
set ::autoreg::vGuiArray(mdio.Ack.-w) {1}
set ::autoreg::vGuiArray(mdio.DataI.-a) {259}
set ::autoreg::vGuiArray(mdio.DataI.-as) {user}
set ::autoreg::vGuiArray(mdio.DataI.-aw) {16}
set ::autoreg::vGuiArray(mdio.DataI.-c) {Data in from phy}
set ::autoreg::vGuiArray(mdio.DataI.-dw) {16}
set ::autoreg::vGuiArray(mdio.DataI.-en) {big}
set ::autoreg::vGuiArray(mdio.DataI.-ex) {65536}
set ::autoreg::vGuiArray(mdio.DataI.-f) {U}
set ::autoreg::vGuiArray(mdio.DataI.-gloc) {0 6}
set ::autoreg::vGuiArray(mdio.DataI.-gtype) {label}
set ::autoreg::vGuiArray(mdio.DataI.-hi) {65535}
set ::autoreg::vGuiArray(mdio.DataI.-i) {0}
set ::autoreg::vGuiArray(mdio.DataI.-lo) {0}
set ::autoreg::vGuiArray(mdio.DataI.-n) {DataI}
set ::autoreg::vGuiArray(mdio.DataI.-o) {reg}
set ::autoreg::vGuiArray(mdio.DataI.-p) {0}
set ::autoreg::vGuiArray(mdio.DataI.-rmw) {1}
set ::autoreg::vGuiArray(mdio.DataI.-t) {R}
set ::autoreg::vGuiArray(mdio.DataI.-w) {16}
set ::autoreg::vGuiArray(mdio.DataO.-a) {258}
set ::autoreg::vGuiArray(mdio.DataO.-as) {user}
set ::autoreg::vGuiArray(mdio.DataO.-aw) {16}
set ::autoreg::vGuiArray(mdio.DataO.-c) {Data out to phy}
set ::autoreg::vGuiArray(mdio.DataO.-dw) {16}
set ::autoreg::vGuiArray(mdio.DataO.-en) {big}
set ::autoreg::vGuiArray(mdio.DataO.-ex) {65536}
set ::autoreg::vGuiArray(mdio.DataO.-f) {U}
set ::autoreg::vGuiArray(mdio.DataO.-gloc) {0 5}
set ::autoreg::vGuiArray(mdio.DataO.-gtype) {entry}
set ::autoreg::vGuiArray(mdio.DataO.-hi) {65535}
set ::autoreg::vGuiArray(mdio.DataO.-i) {0}
set ::autoreg::vGuiArray(mdio.DataO.-lo) {0}
set ::autoreg::vGuiArray(mdio.DataO.-n) {DataO}
set ::autoreg::vGuiArray(mdio.DataO.-o) {reg}
set ::autoreg::vGuiArray(mdio.DataO.-p) {0}
set ::autoreg::vGuiArray(mdio.DataO.-rmw) {1}
set ::autoreg::vGuiArray(mdio.DataO.-t) {RW}
set ::autoreg::vGuiArray(mdio.DataO.-w) {16}
set ::autoreg::vGuiArray(mdio.PhyAddr.-a) {256}
set ::autoreg::vGuiArray(mdio.PhyAddr.-as) {user}
set ::autoreg::vGuiArray(mdio.PhyAddr.-aw) {16}
set ::autoreg::vGuiArray(mdio.PhyAddr.-c) {Phy address}
set ::autoreg::vGuiArray(mdio.PhyAddr.-dw) {16}
set ::autoreg::vGuiArray(mdio.PhyAddr.-en) {big}
set ::autoreg::vGuiArray(mdio.PhyAddr.-ex) {32}
set ::autoreg::vGuiArray(mdio.PhyAddr.-f) {U}
set ::autoreg::vGuiArray(mdio.PhyAddr.-gloc) {0 0}
set ::autoreg::vGuiArray(mdio.PhyAddr.-gtype) {entry}
set ::autoreg::vGuiArray(mdio.PhyAddr.-hi) {31}
set ::autoreg::vGuiArray(mdio.PhyAddr.-i) {0}
set ::autoreg::vGuiArray(mdio.PhyAddr.-lo) {0}
set ::autoreg::vGuiArray(mdio.PhyAddr.-n) {PhyAddr}
set ::autoreg::vGuiArray(mdio.PhyAddr.-o) {reg}
set ::autoreg::vGuiArray(mdio.PhyAddr.-p) {0}
set ::autoreg::vGuiArray(mdio.PhyAddr.-rmw) {1}
set ::autoreg::vGuiArray(mdio.PhyAddr.-t) {RW}
set ::autoreg::vGuiArray(mdio.PhyAddr.-w) {5}
set ::autoreg::vGuiArray(mdio.Rd.-a) {256}
set ::autoreg::vGuiArray(mdio.Rd.-as) {user}
set ::autoreg::vGuiArray(mdio.Rd.-aw) {16}
set ::autoreg::vGuiArray(mdio.Rd.-c) {Read}
set ::autoreg::vGuiArray(mdio.Rd.-dw) {16}
set ::autoreg::vGuiArray(mdio.Rd.-en) {big}
set ::autoreg::vGuiArray(mdio.Rd.-ex) {2}
set ::autoreg::vGuiArray(mdio.Rd.-f) {U}
set ::autoreg::vGuiArray(mdio.Rd.-gloc) {0 2}
set ::autoreg::vGuiArray(mdio.Rd.-gtype) {button}
set ::autoreg::vGuiArray(mdio.Rd.-hi) {1}
set ::autoreg::vGuiArray(mdio.Rd.-i) {0}
set ::autoreg::vGuiArray(mdio.Rd.-lo) {0}
set ::autoreg::vGuiArray(mdio.Rd.-n) {Rd}
set ::autoreg::vGuiArray(mdio.Rd.-o) {reg}
set ::autoreg::vGuiArray(mdio.Rd.-p) {6}
set ::autoreg::vGuiArray(mdio.Rd.-rmw) {1}
set ::autoreg::vGuiArray(mdio.Rd.-t) {WI}
set ::autoreg::vGuiArray(mdio.Rd.-w) {1}
set ::autoreg::vGuiArray(mdio.RegAddr.-a) {257}
set ::autoreg::vGuiArray(mdio.RegAddr.-as) {user}
set ::autoreg::vGuiArray(mdio.RegAddr.-aw) {16}
set ::autoreg::vGuiArray(mdio.RegAddr.-c) {Register address}
set ::autoreg::vGuiArray(mdio.RegAddr.-dw) {16}
set ::autoreg::vGuiArray(mdio.RegAddr.-en) {big}
set ::autoreg::vGuiArray(mdio.RegAddr.-ex) {32}
set ::autoreg::vGuiArray(mdio.RegAddr.-f) {U}
set ::autoreg::vGuiArray(mdio.RegAddr.-gloc) {0 4}
set ::autoreg::vGuiArray(mdio.RegAddr.-gtype) {entry}
set ::autoreg::vGuiArray(mdio.RegAddr.-hi) {31}
set ::autoreg::vGuiArray(mdio.RegAddr.-i) {0}
set ::autoreg::vGuiArray(mdio.RegAddr.-lo) {0}
set ::autoreg::vGuiArray(mdio.RegAddr.-n) {RegAddr}
set ::autoreg::vGuiArray(mdio.RegAddr.-o) {reg}
set ::autoreg::vGuiArray(mdio.RegAddr.-p) {0}
set ::autoreg::vGuiArray(mdio.RegAddr.-rmw) {1}
set ::autoreg::vGuiArray(mdio.RegAddr.-t) {RW}
set ::autoreg::vGuiArray(mdio.RegAddr.-w) {5}
set ::autoreg::vGuiArray(mdio.Wr.-a) {256}
set ::autoreg::vGuiArray(mdio.Wr.-as) {user}
set ::autoreg::vGuiArray(mdio.Wr.-aw) {16}
set ::autoreg::vGuiArray(mdio.Wr.-c) {Write}
set ::autoreg::vGuiArray(mdio.Wr.-dw) {16}
set ::autoreg::vGuiArray(mdio.Wr.-en) {big}
set ::autoreg::vGuiArray(mdio.Wr.-ex) {2}
set ::autoreg::vGuiArray(mdio.Wr.-f) {U}
set ::autoreg::vGuiArray(mdio.Wr.-gloc) {0 1}
set ::autoreg::vGuiArray(mdio.Wr.-gtype) {button}
set ::autoreg::vGuiArray(mdio.Wr.-hi) {1}
set ::autoreg::vGuiArray(mdio.Wr.-i) {0}
set ::autoreg::vGuiArray(mdio.Wr.-lo) {0}
set ::autoreg::vGuiArray(mdio.Wr.-n) {Wr}
set ::autoreg::vGuiArray(mdio.Wr.-o) {reg}
set ::autoreg::vGuiArray(mdio.Wr.-p) {5}
set ::autoreg::vGuiArray(mdio.Wr.-rmw) {1}
set ::autoreg::vGuiArray(mdio.Wr.-t) {WI}
set ::autoreg::vGuiArray(mdio.Wr.-w) {1}
set ::autoreg::vGuiArray(revision.-gspan) {4 8}
set ::autoreg::vGuiArray(revision.-gupdate) {2 7}
set ::autoreg::vGuiArray(revision.-gw) {12 8}
set ::autoreg::vGuiArray(revision.-i) {trunkrev branchesrev year month day hour minute rwtest latch rtest rctest}
set ::autoreg::vGuiArray(revision.-n) {revision}
set ::autoreg::vGuiArray(revision.-o) {group}
set ::autoreg::vGuiArray(revision.-path) {/i0jtag/i0demo/i0core/i0rb_revision}
set ::autoreg::vGuiArray(revision.-t) {bank}
set ::autoreg::vGuiArray(revision.branchesrev.-a) {0}
set ::autoreg::vGuiArray(revision.branchesrev.-as) {user}
set ::autoreg::vGuiArray(revision.branchesrev.-aw) {16}
set ::autoreg::vGuiArray(revision.branchesrev.-c) {Branches revision.}
set ::autoreg::vGuiArray(revision.branchesrev.-dw) {16}
set ::autoreg::vGuiArray(revision.branchesrev.-en) {big}
set ::autoreg::vGuiArray(revision.branchesrev.-ex) {256}
set ::autoreg::vGuiArray(revision.branchesrev.-f) {U}
set ::autoreg::vGuiArray(revision.branchesrev.-gloc) {0 1}
set ::autoreg::vGuiArray(revision.branchesrev.-gtype) {label}
set ::autoreg::vGuiArray(revision.branchesrev.-hi) {255}
set ::autoreg::vGuiArray(revision.branchesrev.-i) {0}
set ::autoreg::vGuiArray(revision.branchesrev.-lo) {0}
set ::autoreg::vGuiArray(revision.branchesrev.-n) {branchesrev}
set ::autoreg::vGuiArray(revision.branchesrev.-o) {reg}
set ::autoreg::vGuiArray(revision.branchesrev.-other) {Nice to have!}
set ::autoreg::vGuiArray(revision.branchesrev.-p) {8}
set ::autoreg::vGuiArray(revision.branchesrev.-rmw) {1}
set ::autoreg::vGuiArray(revision.branchesrev.-t) {RC}
set ::autoreg::vGuiArray(revision.branchesrev.-v) {0}
set ::autoreg::vGuiArray(revision.branchesrev.-w) {8}
set ::autoreg::vGuiArray(revision.day.-a) {3}
set ::autoreg::vGuiArray(revision.day.-as) {user}
set ::autoreg::vGuiArray(revision.day.-aw) {16}
set ::autoreg::vGuiArray(revision.day.-c) {Day of build}
set ::autoreg::vGuiArray(revision.day.-dw) {16}
set ::autoreg::vGuiArray(revision.day.-en) {big}
set ::autoreg::vGuiArray(revision.day.-ex) {65536}
set ::autoreg::vGuiArray(revision.day.-f) {U}
set ::autoreg::vGuiArray(revision.day.-gloc) {0 4}
set ::autoreg::vGuiArray(revision.day.-gtype) {label}
set ::autoreg::vGuiArray(revision.day.-hi) {65535}
set ::autoreg::vGuiArray(revision.day.-i) {0}
set ::autoreg::vGuiArray(revision.day.-lo) {0}
set ::autoreg::vGuiArray(revision.day.-n) {day}
set ::autoreg::vGuiArray(revision.day.-o) {reg}
set ::autoreg::vGuiArray(revision.day.-p) {0}
set ::autoreg::vGuiArray(revision.day.-rmw) {1}
set ::autoreg::vGuiArray(revision.day.-t) {RC}
set ::autoreg::vGuiArray(revision.day.-v) {08}
set ::autoreg::vGuiArray(revision.day.-w) {16}
set ::autoreg::vGuiArray(revision.hour.-a) {4}
set ::autoreg::vGuiArray(revision.hour.-as) {user}
set ::autoreg::vGuiArray(revision.hour.-aw) {16}
set ::autoreg::vGuiArray(revision.hour.-c) {Hour of build}
set ::autoreg::vGuiArray(revision.hour.-dw) {16}
set ::autoreg::vGuiArray(revision.hour.-en) {big}
set ::autoreg::vGuiArray(revision.hour.-ex) {65536}
set ::autoreg::vGuiArray(revision.hour.-f) {U}
set ::autoreg::vGuiArray(revision.hour.-gloc) {0 5}
set ::autoreg::vGuiArray(revision.hour.-gtype) {label}
set ::autoreg::vGuiArray(revision.hour.-hi) {65535}
set ::autoreg::vGuiArray(revision.hour.-i) {0}
set ::autoreg::vGuiArray(revision.hour.-lo) {0}
set ::autoreg::vGuiArray(revision.hour.-n) {hour}
set ::autoreg::vGuiArray(revision.hour.-o) {reg}
set ::autoreg::vGuiArray(revision.hour.-p) {0}
set ::autoreg::vGuiArray(revision.hour.-rmw) {1}
set ::autoreg::vGuiArray(revision.hour.-t) {RC}
set ::autoreg::vGuiArray(revision.hour.-v) {14}
set ::autoreg::vGuiArray(revision.hour.-w) {16}
set ::autoreg::vGuiArray(revision.latch.-a) {9}
set ::autoreg::vGuiArray(revision.latch.-as) {user}
set ::autoreg::vGuiArray(revision.latch.-aw) {16}
set ::autoreg::vGuiArray(revision.latch.-c) {Global latch}
set ::autoreg::vGuiArray(revision.latch.-dw) {16}
set ::autoreg::vGuiArray(revision.latch.-en) {big}
set ::autoreg::vGuiArray(revision.latch.-ex) {2}
set ::autoreg::vGuiArray(revision.latch.-f) {U}
set ::autoreg::vGuiArray(revision.latch.-gloc) {2 3}
set ::autoreg::vGuiArray(revision.latch.-gtype) {button}
set ::autoreg::vGuiArray(revision.latch.-hi) {1}
set ::autoreg::vGuiArray(revision.latch.-i) {0}
set ::autoreg::vGuiArray(revision.latch.-lo) {0}
set ::autoreg::vGuiArray(revision.latch.-n) {latch}
set ::autoreg::vGuiArray(revision.latch.-o) {reg}
set ::autoreg::vGuiArray(revision.latch.-p) {0}
set ::autoreg::vGuiArray(revision.latch.-rmw) {1}
set ::autoreg::vGuiArray(revision.latch.-t) {WI}
set ::autoreg::vGuiArray(revision.latch.-w) {1}
set ::autoreg::vGuiArray(revision.minute.-a) {5}
set ::autoreg::vGuiArray(revision.minute.-as) {user}
set ::autoreg::vGuiArray(revision.minute.-aw) {16}
set ::autoreg::vGuiArray(revision.minute.-c) {Minute of build}
set ::autoreg::vGuiArray(revision.minute.-dw) {16}
set ::autoreg::vGuiArray(revision.minute.-en) {big}
set ::autoreg::vGuiArray(revision.minute.-ex) {65536}
set ::autoreg::vGuiArray(revision.minute.-f) {U}
set ::autoreg::vGuiArray(revision.minute.-gloc) {0 6}
set ::autoreg::vGuiArray(revision.minute.-gtype) {label}
set ::autoreg::vGuiArray(revision.minute.-hi) {65535}
set ::autoreg::vGuiArray(revision.minute.-i) {0}
set ::autoreg::vGuiArray(revision.minute.-lo) {0}
set ::autoreg::vGuiArray(revision.minute.-n) {minute}
set ::autoreg::vGuiArray(revision.minute.-o) {reg}
set ::autoreg::vGuiArray(revision.minute.-p) {0}
set ::autoreg::vGuiArray(revision.minute.-rmw) {1}
set ::autoreg::vGuiArray(revision.minute.-t) {RC}
set ::autoreg::vGuiArray(revision.minute.-v) {48}
set ::autoreg::vGuiArray(revision.minute.-w) {16}
set ::autoreg::vGuiArray(revision.month.-a) {2}
set ::autoreg::vGuiArray(revision.month.-as) {user}
set ::autoreg::vGuiArray(revision.month.-aw) {16}
set ::autoreg::vGuiArray(revision.month.-c) {Month of build}
set ::autoreg::vGuiArray(revision.month.-dw) {16}
set ::autoreg::vGuiArray(revision.month.-en) {big}
set ::autoreg::vGuiArray(revision.month.-ex) {65536}
set ::autoreg::vGuiArray(revision.month.-f) {U}
set ::autoreg::vGuiArray(revision.month.-gloc) {0 3}
set ::autoreg::vGuiArray(revision.month.-gtype) {label}
set ::autoreg::vGuiArray(revision.month.-hi) {65535}
set ::autoreg::vGuiArray(revision.month.-i) {0}
set ::autoreg::vGuiArray(revision.month.-lo) {0}
set ::autoreg::vGuiArray(revision.month.-n) {month}
set ::autoreg::vGuiArray(revision.month.-o) {reg}
set ::autoreg::vGuiArray(revision.month.-p) {0}
set ::autoreg::vGuiArray(revision.month.-rmw) {1}
set ::autoreg::vGuiArray(revision.month.-t) {RC}
set ::autoreg::vGuiArray(revision.month.-v) {04}
set ::autoreg::vGuiArray(revision.month.-w) {16}
set ::autoreg::vGuiArray(revision.rctest.-a) {12}
set ::autoreg::vGuiArray(revision.rctest.-as) {user}
set ::autoreg::vGuiArray(revision.rctest.-aw) {16}
set ::autoreg::vGuiArray(revision.rctest.-c) {Test register}
set ::autoreg::vGuiArray(revision.rctest.-dw) {16}
set ::autoreg::vGuiArray(revision.rctest.-en) {big}
set ::autoreg::vGuiArray(revision.rctest.-ex) {1099511627776}
set ::autoreg::vGuiArray(revision.rctest.-f) {U}
set ::autoreg::vGuiArray(revision.rctest.-gloc) {2 2}
set ::autoreg::vGuiArray(revision.rctest.-gtype) {label}
set ::autoreg::vGuiArray(revision.rctest.-hi) {1099511627775}
set ::autoreg::vGuiArray(revision.rctest.-i) {0}
set ::autoreg::vGuiArray(revision.rctest.-lo) {0}
set ::autoreg::vGuiArray(revision.rctest.-n) {rctest}
set ::autoreg::vGuiArray(revision.rctest.-o) {reg}
set ::autoreg::vGuiArray(revision.rctest.-p) {0}
set ::autoreg::vGuiArray(revision.rctest.-rmw) {1}
set ::autoreg::vGuiArray(revision.rctest.-t) {RC}
set ::autoreg::vGuiArray(revision.rctest.-v) {0xabc}
set ::autoreg::vGuiArray(revision.rctest.-w) {40}
set ::autoreg::vGuiArray(revision.rtest.-a) {9}
set ::autoreg::vGuiArray(revision.rtest.-as) {user}
set ::autoreg::vGuiArray(revision.rtest.-aw) {16}
set ::autoreg::vGuiArray(revision.rtest.-c) {Test register}
set ::autoreg::vGuiArray(revision.rtest.-dw) {16}
set ::autoreg::vGuiArray(revision.rtest.-en) {big}
set ::autoreg::vGuiArray(revision.rtest.-ex) {1099511627776}
set ::autoreg::vGuiArray(revision.rtest.-f) {U}
set ::autoreg::vGuiArray(revision.rtest.-gloc) {2 1}
set ::autoreg::vGuiArray(revision.rtest.-gtype) {label}
set ::autoreg::vGuiArray(revision.rtest.-hi) {1099511627775}
set ::autoreg::vGuiArray(revision.rtest.-i) {0}
set ::autoreg::vGuiArray(revision.rtest.-lo) {0}
set ::autoreg::vGuiArray(revision.rtest.-n) {rtest}
set ::autoreg::vGuiArray(revision.rtest.-o) {reg}
set ::autoreg::vGuiArray(revision.rtest.-p) {3}
set ::autoreg::vGuiArray(revision.rtest.-rmw) {1}
set ::autoreg::vGuiArray(revision.rtest.-t) {R}
set ::autoreg::vGuiArray(revision.rtest.-w) {40}
set ::autoreg::vGuiArray(revision.rwtest.-a) {6}
set ::autoreg::vGuiArray(revision.rwtest.-as) {user}
set ::autoreg::vGuiArray(revision.rwtest.-aw) {16}
set ::autoreg::vGuiArray(revision.rwtest.-c) {Test register}
set ::autoreg::vGuiArray(revision.rwtest.-dw) {16}
set ::autoreg::vGuiArray(revision.rwtest.-en) {big}
set ::autoreg::vGuiArray(revision.rwtest.-ex) {1099511627776}
set ::autoreg::vGuiArray(revision.rwtest.-f) {U}
set ::autoreg::vGuiArray(revision.rwtest.-gloc) {2 0}
set ::autoreg::vGuiArray(revision.rwtest.-gtype) {entry}
set ::autoreg::vGuiArray(revision.rwtest.-hi) {1099511627775}
set ::autoreg::vGuiArray(revision.rwtest.-i) {0}
set ::autoreg::vGuiArray(revision.rwtest.-lo) {0}
set ::autoreg::vGuiArray(revision.rwtest.-n) {rwtest}
set ::autoreg::vGuiArray(revision.rwtest.-o) {reg}
set ::autoreg::vGuiArray(revision.rwtest.-p) {1}
set ::autoreg::vGuiArray(revision.rwtest.-rmw) {1}
set ::autoreg::vGuiArray(revision.rwtest.-t) {RW}
set ::autoreg::vGuiArray(revision.rwtest.-w) {40}
set ::autoreg::vGuiArray(revision.trunkrev.-a) {0}
set ::autoreg::vGuiArray(revision.trunkrev.-as) {user}
set ::autoreg::vGuiArray(revision.trunkrev.-aw) {16}
set ::autoreg::vGuiArray(revision.trunkrev.-c) {Trunk revision.}
set ::autoreg::vGuiArray(revision.trunkrev.-dw) {16}
set ::autoreg::vGuiArray(revision.trunkrev.-en) {big}
set ::autoreg::vGuiArray(revision.trunkrev.-ex) {256}
set ::autoreg::vGuiArray(revision.trunkrev.-f) {U}
set ::autoreg::vGuiArray(revision.trunkrev.-gloc) {0 0}
set ::autoreg::vGuiArray(revision.trunkrev.-gtype) {label}
set ::autoreg::vGuiArray(revision.trunkrev.-gui) {Fun}
set ::autoreg::vGuiArray(revision.trunkrev.-hi) {255}
set ::autoreg::vGuiArray(revision.trunkrev.-i) {0}
set ::autoreg::vGuiArray(revision.trunkrev.-lo) {0}
set ::autoreg::vGuiArray(revision.trunkrev.-n) {trunkrev}
set ::autoreg::vGuiArray(revision.trunkrev.-o) {reg}
set ::autoreg::vGuiArray(revision.trunkrev.-p) {0}
set ::autoreg::vGuiArray(revision.trunkrev.-rmw) {1}
set ::autoreg::vGuiArray(revision.trunkrev.-t) {RC}
set ::autoreg::vGuiArray(revision.trunkrev.-v) {20}
set ::autoreg::vGuiArray(revision.trunkrev.-w) {8}
set ::autoreg::vGuiArray(revision.year.-a) {1}
set ::autoreg::vGuiArray(revision.year.-as) {user}
set ::autoreg::vGuiArray(revision.year.-aw) {16}
set ::autoreg::vGuiArray(revision.year.-c) {Year of build}
set ::autoreg::vGuiArray(revision.year.-dw) {16}
set ::autoreg::vGuiArray(revision.year.-en) {big}
set ::autoreg::vGuiArray(revision.year.-ex) {65536}
set ::autoreg::vGuiArray(revision.year.-f) {U}
set ::autoreg::vGuiArray(revision.year.-gloc) {0 2}
set ::autoreg::vGuiArray(revision.year.-gtype) {label}
set ::autoreg::vGuiArray(revision.year.-hi) {65535}
set ::autoreg::vGuiArray(revision.year.-i) {0}
set ::autoreg::vGuiArray(revision.year.-lo) {0}
set ::autoreg::vGuiArray(revision.year.-n) {year}
set ::autoreg::vGuiArray(revision.year.-o) {reg}
set ::autoreg::vGuiArray(revision.year.-p) {0}
set ::autoreg::vGuiArray(revision.year.-rmw) {1}
set ::autoreg::vGuiArray(revision.year.-t) {RC}
set ::autoreg::vGuiArray(revision.year.-v) {17}
set ::autoreg::vGuiArray(revision.year.-w) {16}
set ::autoreg::vGuiArray(status.-gspan) {2 8}
set ::autoreg::vGuiArray(status.-gupdate) {0 7}
set ::autoreg::vGuiArray(status.-gw) {12 8}
set ::autoreg::vGuiArray(status.-i) {X Y Z Version AEmpty BEmpty AWrOnFull BRdOnEmpty ExtError ExtStatus}
set ::autoreg::vGuiArray(status.-n) {status}
set ::autoreg::vGuiArray(status.-o) {group}
set ::autoreg::vGuiArray(status.-path) {/i0jtag/i0jtag_conf/status0}
set ::autoreg::vGuiArray(status.AEmpty.-a) {59}
set ::autoreg::vGuiArray(status.AEmpty.-as) {conf}
set ::autoreg::vGuiArray(status.AEmpty.-aw) {16}
set ::autoreg::vGuiArray(status.AEmpty.-c) {FIFO A Empty}
set ::autoreg::vGuiArray(status.AEmpty.-dw) {16}
set ::autoreg::vGuiArray(status.AEmpty.-en) {big}
set ::autoreg::vGuiArray(status.AEmpty.-ex) {2}
set ::autoreg::vGuiArray(status.AEmpty.-f) {U}
set ::autoreg::vGuiArray(status.AEmpty.-gloc) {0 1}
set ::autoreg::vGuiArray(status.AEmpty.-gtype) {label}
set ::autoreg::vGuiArray(status.AEmpty.-hi) {1}
set ::autoreg::vGuiArray(status.AEmpty.-i) {0}
set ::autoreg::vGuiArray(status.AEmpty.-lo) {0}
set ::autoreg::vGuiArray(status.AEmpty.-n) {AEmpty}
set ::autoreg::vGuiArray(status.AEmpty.-o) {reg}
set ::autoreg::vGuiArray(status.AEmpty.-p) {8}
set ::autoreg::vGuiArray(status.AEmpty.-t) {RO}
set ::autoreg::vGuiArray(status.AEmpty.-w) {1}
set ::autoreg::vGuiArray(status.AWrOnFull.-a) {59}
set ::autoreg::vGuiArray(status.AWrOnFull.-as) {conf}
set ::autoreg::vGuiArray(status.AWrOnFull.-aw) {16}
set ::autoreg::vGuiArray(status.AWrOnFull.-c) {FIFO A write on full}
set ::autoreg::vGuiArray(status.AWrOnFull.-dw) {16}
set ::autoreg::vGuiArray(status.AWrOnFull.-en) {big}
set ::autoreg::vGuiArray(status.AWrOnFull.-ex) {2}
set ::autoreg::vGuiArray(status.AWrOnFull.-f) {U}
set ::autoreg::vGuiArray(status.AWrOnFull.-gloc) {0 3}
set ::autoreg::vGuiArray(status.AWrOnFull.-gtype) {label}
set ::autoreg::vGuiArray(status.AWrOnFull.-hi) {1}
set ::autoreg::vGuiArray(status.AWrOnFull.-i) {0}
set ::autoreg::vGuiArray(status.AWrOnFull.-lo) {0}
set ::autoreg::vGuiArray(status.AWrOnFull.-n) {AWrOnFull}
set ::autoreg::vGuiArray(status.AWrOnFull.-o) {reg}
set ::autoreg::vGuiArray(status.AWrOnFull.-p) {10}
set ::autoreg::vGuiArray(status.AWrOnFull.-t) {RO}
set ::autoreg::vGuiArray(status.AWrOnFull.-w) {1}
set ::autoreg::vGuiArray(status.BEmpty.-a) {59}
set ::autoreg::vGuiArray(status.BEmpty.-as) {conf}
set ::autoreg::vGuiArray(status.BEmpty.-aw) {16}
set ::autoreg::vGuiArray(status.BEmpty.-c) {FIFO B Empty}
set ::autoreg::vGuiArray(status.BEmpty.-dw) {16}
set ::autoreg::vGuiArray(status.BEmpty.-en) {big}
set ::autoreg::vGuiArray(status.BEmpty.-ex) {2}
set ::autoreg::vGuiArray(status.BEmpty.-f) {U}
set ::autoreg::vGuiArray(status.BEmpty.-gloc) {0 2}
set ::autoreg::vGuiArray(status.BEmpty.-gtype) {label}
set ::autoreg::vGuiArray(status.BEmpty.-hi) {1}
set ::autoreg::vGuiArray(status.BEmpty.-i) {0}
set ::autoreg::vGuiArray(status.BEmpty.-lo) {0}
set ::autoreg::vGuiArray(status.BEmpty.-n) {BEmpty}
set ::autoreg::vGuiArray(status.BEmpty.-o) {reg}
set ::autoreg::vGuiArray(status.BEmpty.-p) {9}
set ::autoreg::vGuiArray(status.BEmpty.-t) {RO}
set ::autoreg::vGuiArray(status.BEmpty.-w) {1}
set ::autoreg::vGuiArray(status.BRdOnEmpty.-a) {59}
set ::autoreg::vGuiArray(status.BRdOnEmpty.-as) {conf}
set ::autoreg::vGuiArray(status.BRdOnEmpty.-aw) {16}
set ::autoreg::vGuiArray(status.BRdOnEmpty.-c) {FIFO B read on empty}
set ::autoreg::vGuiArray(status.BRdOnEmpty.-dw) {16}
set ::autoreg::vGuiArray(status.BRdOnEmpty.-en) {big}
set ::autoreg::vGuiArray(status.BRdOnEmpty.-ex) {2}
set ::autoreg::vGuiArray(status.BRdOnEmpty.-f) {U}
set ::autoreg::vGuiArray(status.BRdOnEmpty.-gloc) {0 4}
set ::autoreg::vGuiArray(status.BRdOnEmpty.-gtype) {label}
set ::autoreg::vGuiArray(status.BRdOnEmpty.-hi) {1}
set ::autoreg::vGuiArray(status.BRdOnEmpty.-i) {0}
set ::autoreg::vGuiArray(status.BRdOnEmpty.-lo) {0}
set ::autoreg::vGuiArray(status.BRdOnEmpty.-n) {BRdOnEmpty}
set ::autoreg::vGuiArray(status.BRdOnEmpty.-o) {reg}
set ::autoreg::vGuiArray(status.BRdOnEmpty.-p) {11}
set ::autoreg::vGuiArray(status.BRdOnEmpty.-t) {RO}
set ::autoreg::vGuiArray(status.BRdOnEmpty.-w) {1}
set ::autoreg::vGuiArray(status.ExtError.-a) {59}
set ::autoreg::vGuiArray(status.ExtError.-as) {conf}
set ::autoreg::vGuiArray(status.ExtError.-aw) {16}
set ::autoreg::vGuiArray(status.ExtError.-c) {External error}
set ::autoreg::vGuiArray(status.ExtError.-dw) {16}
set ::autoreg::vGuiArray(status.ExtError.-en) {big}
set ::autoreg::vGuiArray(status.ExtError.-ex) {2}
set ::autoreg::vGuiArray(status.ExtError.-f) {U}
set ::autoreg::vGuiArray(status.ExtError.-gloc) {0 5}
set ::autoreg::vGuiArray(status.ExtError.-gtype) {label}
set ::autoreg::vGuiArray(status.ExtError.-hi) {1}
set ::autoreg::vGuiArray(status.ExtError.-i) {0}
set ::autoreg::vGuiArray(status.ExtError.-lo) {0}
set ::autoreg::vGuiArray(status.ExtError.-n) {ExtError}
set ::autoreg::vGuiArray(status.ExtError.-o) {reg}
set ::autoreg::vGuiArray(status.ExtError.-p) {12}
set ::autoreg::vGuiArray(status.ExtError.-t) {RO}
set ::autoreg::vGuiArray(status.ExtError.-w) {1}
set ::autoreg::vGuiArray(status.ExtStatus.-a) {59}
set ::autoreg::vGuiArray(status.ExtStatus.-as) {conf}
set ::autoreg::vGuiArray(status.ExtStatus.-aw) {16}
set ::autoreg::vGuiArray(status.ExtStatus.-c) {External status}
set ::autoreg::vGuiArray(status.ExtStatus.-dw) {16}
set ::autoreg::vGuiArray(status.ExtStatus.-en) {big}
set ::autoreg::vGuiArray(status.ExtStatus.-ex) {2}
set ::autoreg::vGuiArray(status.ExtStatus.-f) {U}
set ::autoreg::vGuiArray(status.ExtStatus.-gloc) {0 6}
set ::autoreg::vGuiArray(status.ExtStatus.-gtype) {label}
set ::autoreg::vGuiArray(status.ExtStatus.-hi) {1}
set ::autoreg::vGuiArray(status.ExtStatus.-i) {0}
set ::autoreg::vGuiArray(status.ExtStatus.-lo) {0}
set ::autoreg::vGuiArray(status.ExtStatus.-n) {ExtStatus}
set ::autoreg::vGuiArray(status.ExtStatus.-o) {reg}
set ::autoreg::vGuiArray(status.ExtStatus.-p) {13}
set ::autoreg::vGuiArray(status.ExtStatus.-t) {RO}
set ::autoreg::vGuiArray(status.ExtStatus.-w) {1}
set ::autoreg::vGuiArray(status.Version.-a) {59}
set ::autoreg::vGuiArray(status.Version.-as) {conf}
set ::autoreg::vGuiArray(status.Version.-aw) {16}
set ::autoreg::vGuiArray(status.Version.-c) {HW version}
set ::autoreg::vGuiArray(status.Version.-dw) {16}
set ::autoreg::vGuiArray(status.Version.-en) {big}
set ::autoreg::vGuiArray(status.Version.-ex) {256}
set ::autoreg::vGuiArray(status.Version.-f) {U}
set ::autoreg::vGuiArray(status.Version.-gloc) {0 0}
set ::autoreg::vGuiArray(status.Version.-gtype) {label}
set ::autoreg::vGuiArray(status.Version.-hi) {255}
set ::autoreg::vGuiArray(status.Version.-i) {0}
set ::autoreg::vGuiArray(status.Version.-lo) {0}
set ::autoreg::vGuiArray(status.Version.-n) {Version}
set ::autoreg::vGuiArray(status.Version.-o) {reg}
set ::autoreg::vGuiArray(status.Version.-p) {0}
set ::autoreg::vGuiArray(status.Version.-t) {RO}
set ::autoreg::vGuiArray(status.Version.-w) {8}
set ::autoreg::vGuiArray(status.X.-a) {56}
set ::autoreg::vGuiArray(status.X.-as) {conf}
set ::autoreg::vGuiArray(status.X.-aw) {16}
set ::autoreg::vGuiArray(status.X.-c) {Write phase length - 1}
set ::autoreg::vGuiArray(status.X.-dw) {16}
set ::autoreg::vGuiArray(status.X.-en) {big}
set ::autoreg::vGuiArray(status.X.-ex) {256}
set ::autoreg::vGuiArray(status.X.-f) {U}
set ::autoreg::vGuiArray(status.X.-hi) {255}
set ::autoreg::vGuiArray(status.X.-i) {0}
set ::autoreg::vGuiArray(status.X.-lo) {0}
set ::autoreg::vGuiArray(status.X.-n) {X}
set ::autoreg::vGuiArray(status.X.-o) {reg}
set ::autoreg::vGuiArray(status.X.-p) {0}
set ::autoreg::vGuiArray(status.X.-t) {RO}
set ::autoreg::vGuiArray(status.X.-w) {8}
set ::autoreg::vGuiArray(status.Y.-a) {57}
set ::autoreg::vGuiArray(status.Y.-as) {conf}
set ::autoreg::vGuiArray(status.Y.-aw) {16}
set ::autoreg::vGuiArray(status.Y.-c) {Dummy phase length - 1}
set ::autoreg::vGuiArray(status.Y.-dw) {16}
set ::autoreg::vGuiArray(status.Y.-en) {big}
set ::autoreg::vGuiArray(status.Y.-ex) {256}
set ::autoreg::vGuiArray(status.Y.-f) {U}
set ::autoreg::vGuiArray(status.Y.-hi) {255}
set ::autoreg::vGuiArray(status.Y.-i) {0}
set ::autoreg::vGuiArray(status.Y.-lo) {0}
set ::autoreg::vGuiArray(status.Y.-n) {Y}
set ::autoreg::vGuiArray(status.Y.-o) {reg}
set ::autoreg::vGuiArray(status.Y.-p) {0}
set ::autoreg::vGuiArray(status.Y.-t) {RO}
set ::autoreg::vGuiArray(status.Y.-w) {8}
set ::autoreg::vGuiArray(status.Z.-a) {58}
set ::autoreg::vGuiArray(status.Z.-as) {conf}
set ::autoreg::vGuiArray(status.Z.-aw) {16}
set ::autoreg::vGuiArray(status.Z.-c) {Read phase length - 1}
set ::autoreg::vGuiArray(status.Z.-dw) {16}
set ::autoreg::vGuiArray(status.Z.-en) {big}
set ::autoreg::vGuiArray(status.Z.-ex) {256}
set ::autoreg::vGuiArray(status.Z.-f) {U}
set ::autoreg::vGuiArray(status.Z.-hi) {255}
set ::autoreg::vGuiArray(status.Z.-i) {0}
set ::autoreg::vGuiArray(status.Z.-lo) {0}
set ::autoreg::vGuiArray(status.Z.-n) {Z}
set ::autoreg::vGuiArray(status.Z.-o) {reg}
set ::autoreg::vGuiArray(status.Z.-p) {0}
set ::autoreg::vGuiArray(status.Z.-t) {RO}
set ::autoreg::vGuiArray(status.Z.-w) {8}

