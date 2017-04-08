if {[namespace exist ::autoreg] == 0} {
   namespace eval ::autoreg {
      variable vRegBankArray
   }
}
set ::autoreg::vRegBankArray(led.-aw) {16}
set ::autoreg::vRegBankArray(led.-clkcpu) {ClkCpu}
set ::autoreg::vRegBankArray(led.-clkpl) {Clk}
set ::autoreg::vRegBankArray(led.-dw) {16}
set ::autoreg::vRegBankArray(led.-en) {big}
set ::autoreg::vRegBankArray(led.-gspan) {2 4}
set ::autoreg::vRegBankArray(led.-gupdate) {0 4}
set ::autoreg::vRegBankArray(led.-gw) {12 8}
set ::autoreg::vRegBankArray(led.-i) {led0 led1 led2 led3}
set ::autoreg::vRegBankArray(led.-n) {led}
set ::autoreg::vRegBankArray(led.-o) {group}
set ::autoreg::vRegBankArray(led.-path) {/i0jtag/i0demo/i0core/i0rb_led}
set ::autoreg::vRegBankArray(led.-sy) {1}
set ::autoreg::vRegBankArray(led.-t) {bank}
set ::autoreg::vRegBankArray(led.led0.-a) {0}
set ::autoreg::vRegBankArray(led.led0.-as) {user}
set ::autoreg::vRegBankArray(led.led0.-c) {led 0 control, 1 ~ light}
set ::autoreg::vRegBankArray(led.led0.-f) {U}
set ::autoreg::vRegBankArray(led.led0.-gloc) {0 0}
set ::autoreg::vRegBankArray(led.led0.-gtype) {checkbutton}
set ::autoreg::vRegBankArray(led.led0.-n) {led0}
set ::autoreg::vRegBankArray(led.led0.-o) {reg}
set ::autoreg::vRegBankArray(led.led0.-p) {0}
set ::autoreg::vRegBankArray(led.led0.-port) {external}
set ::autoreg::vRegBankArray(led.led0.-t) {RW}
set ::autoreg::vRegBankArray(led.led0.-w) {1}
set ::autoreg::vRegBankArray(led.led1.-a) {0}
set ::autoreg::vRegBankArray(led.led1.-as) {user}
set ::autoreg::vRegBankArray(led.led1.-c) {led 1 control, 1 ~ light}
set ::autoreg::vRegBankArray(led.led1.-f) {U}
set ::autoreg::vRegBankArray(led.led1.-gloc) {0 1}
set ::autoreg::vRegBankArray(led.led1.-gtype) {checkbutton}
set ::autoreg::vRegBankArray(led.led1.-n) {led1}
set ::autoreg::vRegBankArray(led.led1.-o) {reg}
set ::autoreg::vRegBankArray(led.led1.-p) {1}
set ::autoreg::vRegBankArray(led.led1.-port) {external}
set ::autoreg::vRegBankArray(led.led1.-t) {RW}
set ::autoreg::vRegBankArray(led.led1.-v) {1}
set ::autoreg::vRegBankArray(led.led1.-w) {1}
set ::autoreg::vRegBankArray(led.led2.-a) {0}
set ::autoreg::vRegBankArray(led.led2.-as) {user}
set ::autoreg::vRegBankArray(led.led2.-c) {led 2 control, 1 ~ light}
set ::autoreg::vRegBankArray(led.led2.-f) {U}
set ::autoreg::vRegBankArray(led.led2.-gloc) {0 2}
set ::autoreg::vRegBankArray(led.led2.-gtype) {checkbutton}
set ::autoreg::vRegBankArray(led.led2.-n) {led2}
set ::autoreg::vRegBankArray(led.led2.-o) {reg}
set ::autoreg::vRegBankArray(led.led2.-p) {2}
set ::autoreg::vRegBankArray(led.led2.-port) {external}
set ::autoreg::vRegBankArray(led.led2.-t) {RW}
set ::autoreg::vRegBankArray(led.led2.-w) {1}
set ::autoreg::vRegBankArray(led.led3.-a) {0}
set ::autoreg::vRegBankArray(led.led3.-as) {user}
set ::autoreg::vRegBankArray(led.led3.-c) {led 3 control, 1 ~ light}
set ::autoreg::vRegBankArray(led.led3.-f) {U}
set ::autoreg::vRegBankArray(led.led3.-gloc) {0 3}
set ::autoreg::vRegBankArray(led.led3.-gtype) {checkbutton}
set ::autoreg::vRegBankArray(led.led3.-n) {led3}
set ::autoreg::vRegBankArray(led.led3.-o) {reg}
set ::autoreg::vRegBankArray(led.led3.-p) {3}
set ::autoreg::vRegBankArray(led.led3.-port) {external}
set ::autoreg::vRegBankArray(led.led3.-t) {RW}
set ::autoreg::vRegBankArray(led.led3.-w) {1}
set ::autoreg::vRegBankArray(mac.-aw) {16}
set ::autoreg::vRegBankArray(mac.-clkcpu) {ClkCpu}
set ::autoreg::vRegBankArray(mac.-clkpl) {Clk}
set ::autoreg::vRegBankArray(mac.-dw) {16}
set ::autoreg::vRegBankArray(mac.-en) {big}
set ::autoreg::vRegBankArray(mac.-gspan) {6 8}
set ::autoreg::vRegBankArray(mac.-gupdate) {4 7}
set ::autoreg::vRegBankArray(mac.-gw) {12 8}
set ::autoreg::vRegBankArray(mac.-i) {TxFifo RxFifo TxCnt RxCnt TxFifoFull TxFifoEmpty RxFifoFull RxFifoEmpty LoopEn TxStart FifoRst}
set ::autoreg::vRegBankArray(mac.-n) {mac}
set ::autoreg::vRegBankArray(mac.-o) {group}
set ::autoreg::vRegBankArray(mac.-path) {/i0jtag/i0demo/i0core/i0mac/i0rb_mac}
set ::autoreg::vRegBankArray(mac.-sy) {0}
set ::autoreg::vRegBankArray(mac.-t) {bank}
set ::autoreg::vRegBankArray(mac.FifoRst.-a) {5}
set ::autoreg::vRegBankArray(mac.FifoRst.-as) {user}
set ::autoreg::vRegBankArray(mac.FifoRst.-c) {Reset fifo logic}
set ::autoreg::vRegBankArray(mac.FifoRst.-f) {U}
set ::autoreg::vRegBankArray(mac.FifoRst.-gloc) {0 10}
set ::autoreg::vRegBankArray(mac.FifoRst.-gtype) {button}
set ::autoreg::vRegBankArray(mac.FifoRst.-n) {FifoRst}
set ::autoreg::vRegBankArray(mac.FifoRst.-o) {reg}
set ::autoreg::vRegBankArray(mac.FifoRst.-p) {2}
set ::autoreg::vRegBankArray(mac.FifoRst.-t) {WI}
set ::autoreg::vRegBankArray(mac.FifoRst.-w) {1}
set ::autoreg::vRegBankArray(mac.LoopEn.-a) {5}
set ::autoreg::vRegBankArray(mac.LoopEn.-as) {user}
set ::autoreg::vRegBankArray(mac.LoopEn.-c) {Enable looping}
set ::autoreg::vRegBankArray(mac.LoopEn.-f) {U}
set ::autoreg::vRegBankArray(mac.LoopEn.-gloc) {0  8}
set ::autoreg::vRegBankArray(mac.LoopEn.-gtype) {checkbutton}
set ::autoreg::vRegBankArray(mac.LoopEn.-n) {LoopEn}
set ::autoreg::vRegBankArray(mac.LoopEn.-o) {reg}
set ::autoreg::vRegBankArray(mac.LoopEn.-p) {0}
set ::autoreg::vRegBankArray(mac.LoopEn.-t) {RW}
set ::autoreg::vRegBankArray(mac.LoopEn.-w) {1}
set ::autoreg::vRegBankArray(mac.RxCnt.-a) {3}
set ::autoreg::vRegBankArray(mac.RxCnt.-as) {user}
set ::autoreg::vRegBankArray(mac.RxCnt.-c) {RxFifo fill}
set ::autoreg::vRegBankArray(mac.RxCnt.-f) {U}
set ::autoreg::vRegBankArray(mac.RxCnt.-gloc) {0  3}
set ::autoreg::vRegBankArray(mac.RxCnt.-gtype) {label}
set ::autoreg::vRegBankArray(mac.RxCnt.-n) {RxCnt}
set ::autoreg::vRegBankArray(mac.RxCnt.-o) {reg}
set ::autoreg::vRegBankArray(mac.RxCnt.-p) {0}
set ::autoreg::vRegBankArray(mac.RxCnt.-t) {R}
set ::autoreg::vRegBankArray(mac.RxCnt.-w) {10}
set ::autoreg::vRegBankArray(mac.RxFifo.-a) {1}
set ::autoreg::vRegBankArray(mac.RxFifo.-as) {user}
set ::autoreg::vRegBankArray(mac.RxFifo.-c) {Receive fifo}
set ::autoreg::vRegBankArray(mac.RxFifo.-f) {U}
set ::autoreg::vRegBankArray(mac.RxFifo.-gloc) {0  1}
set ::autoreg::vRegBankArray(mac.RxFifo.-gtype) {label}
set ::autoreg::vRegBankArray(mac.RxFifo.-n) {RxFifo}
set ::autoreg::vRegBankArray(mac.RxFifo.-o) {reg}
set ::autoreg::vRegBankArray(mac.RxFifo.-p) {0}
set ::autoreg::vRegBankArray(mac.RxFifo.-t) {FIFOR}
set ::autoreg::vRegBankArray(mac.RxFifo.-w) {8}
set ::autoreg::vRegBankArray(mac.RxFifoEmpty.-a) {4}
set ::autoreg::vRegBankArray(mac.RxFifoEmpty.-as) {user}
set ::autoreg::vRegBankArray(mac.RxFifoEmpty.-c) {Receive fifo empty}
set ::autoreg::vRegBankArray(mac.RxFifoEmpty.-f) {U}
set ::autoreg::vRegBankArray(mac.RxFifoEmpty.-gloc) {0  7}
set ::autoreg::vRegBankArray(mac.RxFifoEmpty.-gtype) {label}
set ::autoreg::vRegBankArray(mac.RxFifoEmpty.-n) {RxFifoEmpty}
set ::autoreg::vRegBankArray(mac.RxFifoEmpty.-o) {reg}
set ::autoreg::vRegBankArray(mac.RxFifoEmpty.-p) {3}
set ::autoreg::vRegBankArray(mac.RxFifoEmpty.-t) {R}
set ::autoreg::vRegBankArray(mac.RxFifoEmpty.-w) {1}
set ::autoreg::vRegBankArray(mac.RxFifoFull.-a) {4}
set ::autoreg::vRegBankArray(mac.RxFifoFull.-as) {user}
set ::autoreg::vRegBankArray(mac.RxFifoFull.-c) {Receive fifo full}
set ::autoreg::vRegBankArray(mac.RxFifoFull.-f) {U}
set ::autoreg::vRegBankArray(mac.RxFifoFull.-gloc) {0  6}
set ::autoreg::vRegBankArray(mac.RxFifoFull.-gtype) {label}
set ::autoreg::vRegBankArray(mac.RxFifoFull.-n) {RxFifoFull}
set ::autoreg::vRegBankArray(mac.RxFifoFull.-o) {reg}
set ::autoreg::vRegBankArray(mac.RxFifoFull.-p) {2}
set ::autoreg::vRegBankArray(mac.RxFifoFull.-t) {R}
set ::autoreg::vRegBankArray(mac.RxFifoFull.-w) {1}
set ::autoreg::vRegBankArray(mac.TxCnt.-a) {2}
set ::autoreg::vRegBankArray(mac.TxCnt.-as) {user}
set ::autoreg::vRegBankArray(mac.TxCnt.-c) {TxFifo fill}
set ::autoreg::vRegBankArray(mac.TxCnt.-f) {U}
set ::autoreg::vRegBankArray(mac.TxCnt.-gloc) {0  2}
set ::autoreg::vRegBankArray(mac.TxCnt.-gtype) {label}
set ::autoreg::vRegBankArray(mac.TxCnt.-n) {TxCnt}
set ::autoreg::vRegBankArray(mac.TxCnt.-o) {reg}
set ::autoreg::vRegBankArray(mac.TxCnt.-p) {0}
set ::autoreg::vRegBankArray(mac.TxCnt.-t) {R}
set ::autoreg::vRegBankArray(mac.TxCnt.-w) {10}
set ::autoreg::vRegBankArray(mac.TxFifo.-a) {0}
set ::autoreg::vRegBankArray(mac.TxFifo.-as) {user}
set ::autoreg::vRegBankArray(mac.TxFifo.-c) {Transmit fifo}
set ::autoreg::vRegBankArray(mac.TxFifo.-f) {U}
set ::autoreg::vRegBankArray(mac.TxFifo.-gloc) {0  0}
set ::autoreg::vRegBankArray(mac.TxFifo.-gtype) {entry}
set ::autoreg::vRegBankArray(mac.TxFifo.-n) {TxFifo}
set ::autoreg::vRegBankArray(mac.TxFifo.-o) {reg}
set ::autoreg::vRegBankArray(mac.TxFifo.-p) {0}
set ::autoreg::vRegBankArray(mac.TxFifo.-t) {FIFOW}
set ::autoreg::vRegBankArray(mac.TxFifo.-w) {8}
set ::autoreg::vRegBankArray(mac.TxFifoEmpty.-a) {4}
set ::autoreg::vRegBankArray(mac.TxFifoEmpty.-as) {user}
set ::autoreg::vRegBankArray(mac.TxFifoEmpty.-c) {Transmit fifo empty}
set ::autoreg::vRegBankArray(mac.TxFifoEmpty.-f) {U}
set ::autoreg::vRegBankArray(mac.TxFifoEmpty.-gloc) {0  5}
set ::autoreg::vRegBankArray(mac.TxFifoEmpty.-gtype) {label}
set ::autoreg::vRegBankArray(mac.TxFifoEmpty.-n) {TxFifoEmpty}
set ::autoreg::vRegBankArray(mac.TxFifoEmpty.-o) {reg}
set ::autoreg::vRegBankArray(mac.TxFifoEmpty.-p) {1}
set ::autoreg::vRegBankArray(mac.TxFifoEmpty.-t) {R}
set ::autoreg::vRegBankArray(mac.TxFifoEmpty.-w) {1}
set ::autoreg::vRegBankArray(mac.TxFifoFull.-a) {4}
set ::autoreg::vRegBankArray(mac.TxFifoFull.-as) {user}
set ::autoreg::vRegBankArray(mac.TxFifoFull.-c) {Transmit fifo full}
set ::autoreg::vRegBankArray(mac.TxFifoFull.-f) {U}
set ::autoreg::vRegBankArray(mac.TxFifoFull.-gloc) {0  4}
set ::autoreg::vRegBankArray(mac.TxFifoFull.-gtype) {label}
set ::autoreg::vRegBankArray(mac.TxFifoFull.-n) {TxFifoFull}
set ::autoreg::vRegBankArray(mac.TxFifoFull.-o) {reg}
set ::autoreg::vRegBankArray(mac.TxFifoFull.-p) {0}
set ::autoreg::vRegBankArray(mac.TxFifoFull.-t) {R}
set ::autoreg::vRegBankArray(mac.TxFifoFull.-w) {1}
set ::autoreg::vRegBankArray(mac.TxStart.-a) {5}
set ::autoreg::vRegBankArray(mac.TxStart.-as) {user}
set ::autoreg::vRegBankArray(mac.TxStart.-c) {Start transmitting}
set ::autoreg::vRegBankArray(mac.TxStart.-f) {U}
set ::autoreg::vRegBankArray(mac.TxStart.-gloc) {0  9}
set ::autoreg::vRegBankArray(mac.TxStart.-gtype) {button}
set ::autoreg::vRegBankArray(mac.TxStart.-n) {TxStart}
set ::autoreg::vRegBankArray(mac.TxStart.-o) {reg}
set ::autoreg::vRegBankArray(mac.TxStart.-p) {1}
set ::autoreg::vRegBankArray(mac.TxStart.-t) {WI}
set ::autoreg::vRegBankArray(mac.TxStart.-w) {1}
set ::autoreg::vRegBankArray(mdio.-aw) {16}
set ::autoreg::vRegBankArray(mdio.-clkcpu) {ClkCpu}
set ::autoreg::vRegBankArray(mdio.-clkpl) {Clk}
set ::autoreg::vRegBankArray(mdio.-dw) {16}
set ::autoreg::vRegBankArray(mdio.-en) {big}
set ::autoreg::vRegBankArray(mdio.-gspan) {6 8}
set ::autoreg::vRegBankArray(mdio.-gupdate) {4 7}
set ::autoreg::vRegBankArray(mdio.-gw) {12 8}
set ::autoreg::vRegBankArray(mdio.-i) {PhyAddr Wr Rd Ack RegAddr DataO DataI}
set ::autoreg::vRegBankArray(mdio.-n) {mdio}
set ::autoreg::vRegBankArray(mdio.-o) {group}
set ::autoreg::vRegBankArray(mdio.-path) {/i0jtag/i0demo/i0core/i0mac/i0rb_mdio}
set ::autoreg::vRegBankArray(mdio.-sy) {0}
set ::autoreg::vRegBankArray(mdio.-t) {bank}
set ::autoreg::vRegBankArray(mdio.Ack.-a) {0}
set ::autoreg::vRegBankArray(mdio.Ack.-as) {user}
set ::autoreg::vRegBankArray(mdio.Ack.-c) {Ack when done}
set ::autoreg::vRegBankArray(mdio.Ack.-f) {U}
set ::autoreg::vRegBankArray(mdio.Ack.-gloc) {0 3}
set ::autoreg::vRegBankArray(mdio.Ack.-gtype) {label}
set ::autoreg::vRegBankArray(mdio.Ack.-n) {Ack}
set ::autoreg::vRegBankArray(mdio.Ack.-o) {reg}
set ::autoreg::vRegBankArray(mdio.Ack.-p) {7}
set ::autoreg::vRegBankArray(mdio.Ack.-t) {R}
set ::autoreg::vRegBankArray(mdio.Ack.-w) {1}
set ::autoreg::vRegBankArray(mdio.DataI.-a) {3}
set ::autoreg::vRegBankArray(mdio.DataI.-as) {user}
set ::autoreg::vRegBankArray(mdio.DataI.-c) {Data in from phy}
set ::autoreg::vRegBankArray(mdio.DataI.-f) {U}
set ::autoreg::vRegBankArray(mdio.DataI.-gloc) {0 6}
set ::autoreg::vRegBankArray(mdio.DataI.-gtype) {label}
set ::autoreg::vRegBankArray(mdio.DataI.-n) {DataI}
set ::autoreg::vRegBankArray(mdio.DataI.-o) {reg}
set ::autoreg::vRegBankArray(mdio.DataI.-p) {0}
set ::autoreg::vRegBankArray(mdio.DataI.-t) {R}
set ::autoreg::vRegBankArray(mdio.DataI.-w) {16}
set ::autoreg::vRegBankArray(mdio.DataO.-a) {2}
set ::autoreg::vRegBankArray(mdio.DataO.-as) {user}
set ::autoreg::vRegBankArray(mdio.DataO.-c) {Data out to phy}
set ::autoreg::vRegBankArray(mdio.DataO.-f) {U}
set ::autoreg::vRegBankArray(mdio.DataO.-gloc) {0 5}
set ::autoreg::vRegBankArray(mdio.DataO.-gtype) {entry}
set ::autoreg::vRegBankArray(mdio.DataO.-n) {DataO}
set ::autoreg::vRegBankArray(mdio.DataO.-o) {reg}
set ::autoreg::vRegBankArray(mdio.DataO.-p) {0}
set ::autoreg::vRegBankArray(mdio.DataO.-t) {RW}
set ::autoreg::vRegBankArray(mdio.DataO.-w) {16}
set ::autoreg::vRegBankArray(mdio.PhyAddr.-a) {0}
set ::autoreg::vRegBankArray(mdio.PhyAddr.-as) {user}
set ::autoreg::vRegBankArray(mdio.PhyAddr.-c) {Phy address}
set ::autoreg::vRegBankArray(mdio.PhyAddr.-f) {U}
set ::autoreg::vRegBankArray(mdio.PhyAddr.-gloc) {0 0}
set ::autoreg::vRegBankArray(mdio.PhyAddr.-gtype) {entry}
set ::autoreg::vRegBankArray(mdio.PhyAddr.-n) {PhyAddr}
set ::autoreg::vRegBankArray(mdio.PhyAddr.-o) {reg}
set ::autoreg::vRegBankArray(mdio.PhyAddr.-p) {0}
set ::autoreg::vRegBankArray(mdio.PhyAddr.-t) {RW}
set ::autoreg::vRegBankArray(mdio.PhyAddr.-w) {5}
set ::autoreg::vRegBankArray(mdio.Rd.-a) {0}
set ::autoreg::vRegBankArray(mdio.Rd.-as) {user}
set ::autoreg::vRegBankArray(mdio.Rd.-c) {Read}
set ::autoreg::vRegBankArray(mdio.Rd.-f) {U}
set ::autoreg::vRegBankArray(mdio.Rd.-gloc) {0 2}
set ::autoreg::vRegBankArray(mdio.Rd.-gtype) {button}
set ::autoreg::vRegBankArray(mdio.Rd.-n) {Rd}
set ::autoreg::vRegBankArray(mdio.Rd.-o) {reg}
set ::autoreg::vRegBankArray(mdio.Rd.-p) {6}
set ::autoreg::vRegBankArray(mdio.Rd.-t) {WI}
set ::autoreg::vRegBankArray(mdio.Rd.-w) {1}
set ::autoreg::vRegBankArray(mdio.RegAddr.-a) {1}
set ::autoreg::vRegBankArray(mdio.RegAddr.-as) {user}
set ::autoreg::vRegBankArray(mdio.RegAddr.-c) {Register address}
set ::autoreg::vRegBankArray(mdio.RegAddr.-f) {U}
set ::autoreg::vRegBankArray(mdio.RegAddr.-gloc) {0 4}
set ::autoreg::vRegBankArray(mdio.RegAddr.-gtype) {entry}
set ::autoreg::vRegBankArray(mdio.RegAddr.-n) {RegAddr}
set ::autoreg::vRegBankArray(mdio.RegAddr.-o) {reg}
set ::autoreg::vRegBankArray(mdio.RegAddr.-p) {0}
set ::autoreg::vRegBankArray(mdio.RegAddr.-t) {RW}
set ::autoreg::vRegBankArray(mdio.RegAddr.-w) {5}
set ::autoreg::vRegBankArray(mdio.Wr.-a) {0}
set ::autoreg::vRegBankArray(mdio.Wr.-as) {user}
set ::autoreg::vRegBankArray(mdio.Wr.-c) {Write}
set ::autoreg::vRegBankArray(mdio.Wr.-f) {U}
set ::autoreg::vRegBankArray(mdio.Wr.-gloc) {0 1}
set ::autoreg::vRegBankArray(mdio.Wr.-gtype) {button}
set ::autoreg::vRegBankArray(mdio.Wr.-n) {Wr}
set ::autoreg::vRegBankArray(mdio.Wr.-o) {reg}
set ::autoreg::vRegBankArray(mdio.Wr.-p) {5}
set ::autoreg::vRegBankArray(mdio.Wr.-t) {WI}
set ::autoreg::vRegBankArray(mdio.Wr.-w) {1}
set ::autoreg::vRegBankArray(mem.-aw) {16}
set ::autoreg::vRegBankArray(mem.-clkcpu) {ClkCpu}
set ::autoreg::vRegBankArray(mem.-clkpl) {Clk}
set ::autoreg::vRegBankArray(mem.-dw) {16}
set ::autoreg::vRegBankArray(mem.-en) {big}
set ::autoreg::vRegBankArray(mem.-i) {Ram RamAddr}
set ::autoreg::vRegBankArray(mem.-n) {mem}
set ::autoreg::vRegBankArray(mem.-o) {group}
set ::autoreg::vRegBankArray(mem.-path) {/i0jtag/i0demo/i0core/i0rb_mem}
set ::autoreg::vRegBankArray(mem.-sy) {1}
set ::autoreg::vRegBankArray(mem.-t) {bank}
set ::autoreg::vRegBankArray(mem.Ram.-a) {8}
set ::autoreg::vRegBankArray(mem.Ram.-as) {user}
set ::autoreg::vRegBankArray(mem.Ram.-c) {Ram data}
set ::autoreg::vRegBankArray(mem.Ram.-f) {U}
set ::autoreg::vRegBankArray(mem.Ram.-n) {Ram}
set ::autoreg::vRegBankArray(mem.Ram.-o) {reg}
set ::autoreg::vRegBankArray(mem.Ram.-p) {0}
set ::autoreg::vRegBankArray(mem.Ram.-t) {RAMIFRW}
set ::autoreg::vRegBankArray(mem.Ram.-v) {0}
set ::autoreg::vRegBankArray(mem.Ram.-w) {36}
set ::autoreg::vRegBankArray(mem.RamAddr.-a) {0}
set ::autoreg::vRegBankArray(mem.RamAddr.-as) {user}
set ::autoreg::vRegBankArray(mem.RamAddr.-c) {Ram address register}
set ::autoreg::vRegBankArray(mem.RamAddr.-f) {U}
set ::autoreg::vRegBankArray(mem.RamAddr.-n) {RamAddr}
set ::autoreg::vRegBankArray(mem.RamAddr.-o) {reg}
set ::autoreg::vRegBankArray(mem.RamAddr.-p) {0}
set ::autoreg::vRegBankArray(mem.RamAddr.-r) {Ram}
set ::autoreg::vRegBankArray(mem.RamAddr.-t) {RAMIFADDR}
set ::autoreg::vRegBankArray(mem.RamAddr.-v) {0}
set ::autoreg::vRegBankArray(mem.RamAddr.-w) {8}
set ::autoreg::vRegBankArray(revision.-aw) {16}
set ::autoreg::vRegBankArray(revision.-clkcpu) {ClkCpu}
set ::autoreg::vRegBankArray(revision.-clkpl) {Clk}
set ::autoreg::vRegBankArray(revision.-dw) {16}
set ::autoreg::vRegBankArray(revision.-en) {big}
set ::autoreg::vRegBankArray(revision.-gspan) {4 8}
set ::autoreg::vRegBankArray(revision.-gupdate) {2 7}
set ::autoreg::vRegBankArray(revision.-gw) {12 8}
set ::autoreg::vRegBankArray(revision.-i) {trunkrev branchesrev year month day hour minute rwtest latch rtest rctest}
set ::autoreg::vRegBankArray(revision.-n) {revision}
set ::autoreg::vRegBankArray(revision.-o) {group}
set ::autoreg::vRegBankArray(revision.-path) {/i0jtag/i0demo/i0core/i0rb_revision}
set ::autoreg::vRegBankArray(revision.-sy) {1}
set ::autoreg::vRegBankArray(revision.-t) {bank}
set ::autoreg::vRegBankArray(revision.branchesrev.-a) {0}
set ::autoreg::vRegBankArray(revision.branchesrev.-as) {user}
set ::autoreg::vRegBankArray(revision.branchesrev.-c) {Branches revision.}
set ::autoreg::vRegBankArray(revision.branchesrev.-f) {U}
set ::autoreg::vRegBankArray(revision.branchesrev.-gloc) {0 1}
set ::autoreg::vRegBankArray(revision.branchesrev.-gtype) {label}
set ::autoreg::vRegBankArray(revision.branchesrev.-n) {branchesrev}
set ::autoreg::vRegBankArray(revision.branchesrev.-o) {reg}
set ::autoreg::vRegBankArray(revision.branchesrev.-other) {Nice to have!}
set ::autoreg::vRegBankArray(revision.branchesrev.-p) {8}
set ::autoreg::vRegBankArray(revision.branchesrev.-t) {RC}
set ::autoreg::vRegBankArray(revision.branchesrev.-v) {0}
set ::autoreg::vRegBankArray(revision.branchesrev.-w) {8}
set ::autoreg::vRegBankArray(revision.day.-a) {3}
set ::autoreg::vRegBankArray(revision.day.-as) {user}
set ::autoreg::vRegBankArray(revision.day.-c) {Day of build}
set ::autoreg::vRegBankArray(revision.day.-f) {U}
set ::autoreg::vRegBankArray(revision.day.-gloc) {0 4}
set ::autoreg::vRegBankArray(revision.day.-gtype) {label}
set ::autoreg::vRegBankArray(revision.day.-n) {day}
set ::autoreg::vRegBankArray(revision.day.-o) {reg}
set ::autoreg::vRegBankArray(revision.day.-p) {0}
set ::autoreg::vRegBankArray(revision.day.-t) {RC}
set ::autoreg::vRegBankArray(revision.day.-v) {08}
set ::autoreg::vRegBankArray(revision.day.-w) {16}
set ::autoreg::vRegBankArray(revision.hour.-a) {4}
set ::autoreg::vRegBankArray(revision.hour.-as) {user}
set ::autoreg::vRegBankArray(revision.hour.-c) {Hour of build}
set ::autoreg::vRegBankArray(revision.hour.-f) {U}
set ::autoreg::vRegBankArray(revision.hour.-gloc) {0 5}
set ::autoreg::vRegBankArray(revision.hour.-gtype) {label}
set ::autoreg::vRegBankArray(revision.hour.-n) {hour}
set ::autoreg::vRegBankArray(revision.hour.-o) {reg}
set ::autoreg::vRegBankArray(revision.hour.-p) {0}
set ::autoreg::vRegBankArray(revision.hour.-t) {RC}
set ::autoreg::vRegBankArray(revision.hour.-v) {14}
set ::autoreg::vRegBankArray(revision.hour.-w) {16}
set ::autoreg::vRegBankArray(revision.latch.-a) {9}
set ::autoreg::vRegBankArray(revision.latch.-as) {user}
set ::autoreg::vRegBankArray(revision.latch.-c) {Global latch}
set ::autoreg::vRegBankArray(revision.latch.-f) {U}
set ::autoreg::vRegBankArray(revision.latch.-gloc) {2 3}
set ::autoreg::vRegBankArray(revision.latch.-gtype) {button}
set ::autoreg::vRegBankArray(revision.latch.-n) {latch}
set ::autoreg::vRegBankArray(revision.latch.-o) {reg}
set ::autoreg::vRegBankArray(revision.latch.-p) {0}
set ::autoreg::vRegBankArray(revision.latch.-t) {WI}
set ::autoreg::vRegBankArray(revision.latch.-w) {1}
set ::autoreg::vRegBankArray(revision.minute.-a) {5}
set ::autoreg::vRegBankArray(revision.minute.-as) {user}
set ::autoreg::vRegBankArray(revision.minute.-c) {Minute of build}
set ::autoreg::vRegBankArray(revision.minute.-f) {U}
set ::autoreg::vRegBankArray(revision.minute.-gloc) {0 6}
set ::autoreg::vRegBankArray(revision.minute.-gtype) {label}
set ::autoreg::vRegBankArray(revision.minute.-n) {minute}
set ::autoreg::vRegBankArray(revision.minute.-o) {reg}
set ::autoreg::vRegBankArray(revision.minute.-p) {0}
set ::autoreg::vRegBankArray(revision.minute.-t) {RC}
set ::autoreg::vRegBankArray(revision.minute.-v) {48}
set ::autoreg::vRegBankArray(revision.minute.-w) {16}
set ::autoreg::vRegBankArray(revision.month.-a) {2}
set ::autoreg::vRegBankArray(revision.month.-as) {user}
set ::autoreg::vRegBankArray(revision.month.-c) {Month of build}
set ::autoreg::vRegBankArray(revision.month.-f) {U}
set ::autoreg::vRegBankArray(revision.month.-gloc) {0 3}
set ::autoreg::vRegBankArray(revision.month.-gtype) {label}
set ::autoreg::vRegBankArray(revision.month.-n) {month}
set ::autoreg::vRegBankArray(revision.month.-o) {reg}
set ::autoreg::vRegBankArray(revision.month.-p) {0}
set ::autoreg::vRegBankArray(revision.month.-t) {RC}
set ::autoreg::vRegBankArray(revision.month.-v) {04}
set ::autoreg::vRegBankArray(revision.month.-w) {16}
set ::autoreg::vRegBankArray(revision.rctest.-a) {12}
set ::autoreg::vRegBankArray(revision.rctest.-as) {user}
set ::autoreg::vRegBankArray(revision.rctest.-c) {Test register}
set ::autoreg::vRegBankArray(revision.rctest.-f) {U}
set ::autoreg::vRegBankArray(revision.rctest.-gloc) {2 2}
set ::autoreg::vRegBankArray(revision.rctest.-gtype) {label}
set ::autoreg::vRegBankArray(revision.rctest.-n) {rctest}
set ::autoreg::vRegBankArray(revision.rctest.-o) {reg}
set ::autoreg::vRegBankArray(revision.rctest.-p) {0}
set ::autoreg::vRegBankArray(revision.rctest.-t) {RC}
set ::autoreg::vRegBankArray(revision.rctest.-v) {0xabc}
set ::autoreg::vRegBankArray(revision.rctest.-w) {40}
set ::autoreg::vRegBankArray(revision.rtest.-a) {9}
set ::autoreg::vRegBankArray(revision.rtest.-as) {user}
set ::autoreg::vRegBankArray(revision.rtest.-c) {Test register}
set ::autoreg::vRegBankArray(revision.rtest.-f) {U}
set ::autoreg::vRegBankArray(revision.rtest.-gloc) {2 1}
set ::autoreg::vRegBankArray(revision.rtest.-gtype) {label}
set ::autoreg::vRegBankArray(revision.rtest.-n) {rtest}
set ::autoreg::vRegBankArray(revision.rtest.-o) {reg}
set ::autoreg::vRegBankArray(revision.rtest.-p) {3}
set ::autoreg::vRegBankArray(revision.rtest.-t) {R}
set ::autoreg::vRegBankArray(revision.rtest.-w) {40}
set ::autoreg::vRegBankArray(revision.rwtest.-a) {6}
set ::autoreg::vRegBankArray(revision.rwtest.-as) {user}
set ::autoreg::vRegBankArray(revision.rwtest.-c) {Test register}
set ::autoreg::vRegBankArray(revision.rwtest.-f) {U}
set ::autoreg::vRegBankArray(revision.rwtest.-gloc) {2 0}
set ::autoreg::vRegBankArray(revision.rwtest.-gtype) {entry}
set ::autoreg::vRegBankArray(revision.rwtest.-n) {rwtest}
set ::autoreg::vRegBankArray(revision.rwtest.-o) {reg}
set ::autoreg::vRegBankArray(revision.rwtest.-p) {1}
set ::autoreg::vRegBankArray(revision.rwtest.-t) {RW}
set ::autoreg::vRegBankArray(revision.rwtest.-w) {40}
set ::autoreg::vRegBankArray(revision.trunkrev.-a) {0}
set ::autoreg::vRegBankArray(revision.trunkrev.-as) {user}
set ::autoreg::vRegBankArray(revision.trunkrev.-c) {Trunk revision.}
set ::autoreg::vRegBankArray(revision.trunkrev.-f) {U}
set ::autoreg::vRegBankArray(revision.trunkrev.-gloc) {0 0}
set ::autoreg::vRegBankArray(revision.trunkrev.-gtype) {label}
set ::autoreg::vRegBankArray(revision.trunkrev.-gui) {Fun}
set ::autoreg::vRegBankArray(revision.trunkrev.-n) {trunkrev}
set ::autoreg::vRegBankArray(revision.trunkrev.-o) {reg}
set ::autoreg::vRegBankArray(revision.trunkrev.-p) {0}
set ::autoreg::vRegBankArray(revision.trunkrev.-t) {RC}
set ::autoreg::vRegBankArray(revision.trunkrev.-v) {20}
set ::autoreg::vRegBankArray(revision.trunkrev.-w) {8}
set ::autoreg::vRegBankArray(revision.year.-a) {1}
set ::autoreg::vRegBankArray(revision.year.-as) {user}
set ::autoreg::vRegBankArray(revision.year.-c) {Year of build}
set ::autoreg::vRegBankArray(revision.year.-f) {U}
set ::autoreg::vRegBankArray(revision.year.-gloc) {0 2}
set ::autoreg::vRegBankArray(revision.year.-gtype) {label}
set ::autoreg::vRegBankArray(revision.year.-n) {year}
set ::autoreg::vRegBankArray(revision.year.-o) {reg}
set ::autoreg::vRegBankArray(revision.year.-p) {0}
set ::autoreg::vRegBankArray(revision.year.-t) {RC}
set ::autoreg::vRegBankArray(revision.year.-v) {17}
set ::autoreg::vRegBankArray(revision.year.-w) {16}

