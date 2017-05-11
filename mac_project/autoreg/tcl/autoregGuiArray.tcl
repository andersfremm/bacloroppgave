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
set ::autoreg::vGuiArray(mac.-i) {revision prescale up down stepup stepdown preset setcnt max readcnt}
set ::autoreg::vGuiArray(mac.-n) {mac}
set ::autoreg::vGuiArray(mac.-o) {group}
set ::autoreg::vGuiArray(mac.-path) {/i0jtag/i0demo/i0core/i0mac/i0rb_mac}
set ::autoreg::vGuiArray(mac.-t) {bank}
set ::autoreg::vGuiArray(mac.CpuTxData.-a) {267}
set ::autoreg::vGuiArray(mac.CpuTxData.-as) {user}
set ::autoreg::vGuiArray(mac.CpuTxData.-aw) {16}
set ::autoreg::vGuiArray(mac.CpuTxData.-c) {Data to the transmitter}
set ::autoreg::vGuiArray(mac.CpuTxData.-dw) {16}
set ::autoreg::vGuiArray(mac.CpuTxData.-en) {big}
set ::autoreg::vGuiArray(mac.CpuTxData.-ex) {18446744073709551616}
set ::autoreg::vGuiArray(mac.CpuTxData.-f) {U}
set ::autoreg::vGuiArray(mac.CpuTxData.-hi) {18446744073709551615}
set ::autoreg::vGuiArray(mac.CpuTxData.-i) {0}
set ::autoreg::vGuiArray(mac.CpuTxData.-lo) {0}
set ::autoreg::vGuiArray(mac.CpuTxData.-n) {CpuTxData}
set ::autoreg::vGuiArray(mac.CpuTxData.-o) {reg}
set ::autoreg::vGuiArray(mac.CpuTxData.-p) {0}
set ::autoreg::vGuiArray(mac.CpuTxData.-rmw) {1}
set ::autoreg::vGuiArray(mac.CpuTxData.-t) {RW}
set ::autoreg::vGuiArray(mac.CpuTxData.-w) {64}
set ::autoreg::vGuiArray(mac.CpuTxEn.-a) {270}
set ::autoreg::vGuiArray(mac.CpuTxEn.-as) {user}
set ::autoreg::vGuiArray(mac.CpuTxEn.-aw) {16}
set ::autoreg::vGuiArray(mac.CpuTxEn.-c) {Send data to fifo}
set ::autoreg::vGuiArray(mac.CpuTxEn.-dw) {16}
set ::autoreg::vGuiArray(mac.CpuTxEn.-en) {big}
set ::autoreg::vGuiArray(mac.CpuTxEn.-ex) {2}
set ::autoreg::vGuiArray(mac.CpuTxEn.-f) {U}
set ::autoreg::vGuiArray(mac.CpuTxEn.-hi) {1}
set ::autoreg::vGuiArray(mac.CpuTxEn.-i) {0}
set ::autoreg::vGuiArray(mac.CpuTxEn.-lo) {0}
set ::autoreg::vGuiArray(mac.CpuTxEn.-n) {CpuTxEn}
set ::autoreg::vGuiArray(mac.CpuTxEn.-o) {reg}
set ::autoreg::vGuiArray(mac.CpuTxEn.-p) {0}
set ::autoreg::vGuiArray(mac.CpuTxEn.-rmw) {1}
set ::autoreg::vGuiArray(mac.CpuTxEn.-t) {WI}
set ::autoreg::vGuiArray(mac.CpuTxEn.-w) {1}
set ::autoreg::vGuiArray(mac.CpuTxFull.-a) {271}
set ::autoreg::vGuiArray(mac.CpuTxFull.-as) {user}
set ::autoreg::vGuiArray(mac.CpuTxFull.-aw) {16}
set ::autoreg::vGuiArray(mac.CpuTxFull.-c) {FIFO Cpu interface is full}
set ::autoreg::vGuiArray(mac.CpuTxFull.-dw) {16}
set ::autoreg::vGuiArray(mac.CpuTxFull.-en) {big}
set ::autoreg::vGuiArray(mac.CpuTxFull.-ex) {2}
set ::autoreg::vGuiArray(mac.CpuTxFull.-f) {U}
set ::autoreg::vGuiArray(mac.CpuTxFull.-hi) {1}
set ::autoreg::vGuiArray(mac.CpuTxFull.-i) {0}
set ::autoreg::vGuiArray(mac.CpuTxFull.-lo) {0}
set ::autoreg::vGuiArray(mac.CpuTxFull.-n) {CpuTxFull}
set ::autoreg::vGuiArray(mac.CpuTxFull.-o) {reg}
set ::autoreg::vGuiArray(mac.CpuTxFull.-p) {1}
set ::autoreg::vGuiArray(mac.CpuTxFull.-rmw) {1}
set ::autoreg::vGuiArray(mac.CpuTxFull.-t) {R}
set ::autoreg::vGuiArray(mac.CpuTxFull.-w) {1}
set ::autoreg::vGuiArray(mac.Data.-a) {274}
set ::autoreg::vGuiArray(mac.Data.-as) {user}
set ::autoreg::vGuiArray(mac.Data.-aw) {16}
set ::autoreg::vGuiArray(mac.Data.-c) {Data to the transmitter}
set ::autoreg::vGuiArray(mac.Data.-dw) {16}
set ::autoreg::vGuiArray(mac.Data.-en) {big}
set ::autoreg::vGuiArray(mac.Data.-ex) {256}
set ::autoreg::vGuiArray(mac.Data.-f) {U}
set ::autoreg::vGuiArray(mac.Data.-hi) {255}
set ::autoreg::vGuiArray(mac.Data.-i) {0}
set ::autoreg::vGuiArray(mac.Data.-lo) {0}
set ::autoreg::vGuiArray(mac.Data.-n) {Data}
set ::autoreg::vGuiArray(mac.Data.-o) {reg}
set ::autoreg::vGuiArray(mac.Data.-p) {0}
set ::autoreg::vGuiArray(mac.Data.-rmw) {1}
set ::autoreg::vGuiArray(mac.Data.-t) {R}
set ::autoreg::vGuiArray(mac.Data.-w) {8}
set ::autoreg::vGuiArray(mac.DataValid.-a) {274}
set ::autoreg::vGuiArray(mac.DataValid.-as) {user}
set ::autoreg::vGuiArray(mac.DataValid.-aw) {16}
set ::autoreg::vGuiArray(mac.DataValid.-c) {Data to the transmitter}
set ::autoreg::vGuiArray(mac.DataValid.-dw) {16}
set ::autoreg::vGuiArray(mac.DataValid.-en) {big}
set ::autoreg::vGuiArray(mac.DataValid.-ex) {2}
set ::autoreg::vGuiArray(mac.DataValid.-f) {U}
set ::autoreg::vGuiArray(mac.DataValid.-hi) {1}
set ::autoreg::vGuiArray(mac.DataValid.-i) {0}
set ::autoreg::vGuiArray(mac.DataValid.-lo) {0}
set ::autoreg::vGuiArray(mac.DataValid.-n) {DataValid}
set ::autoreg::vGuiArray(mac.DataValid.-o) {reg}
set ::autoreg::vGuiArray(mac.DataValid.-p) {10}
set ::autoreg::vGuiArray(mac.DataValid.-rmw) {1}
set ::autoreg::vGuiArray(mac.DataValid.-t) {R}
set ::autoreg::vGuiArray(mac.DataValid.-w) {1}
set ::autoreg::vGuiArray(mac.FifoEn.-a) {274}
set ::autoreg::vGuiArray(mac.FifoEn.-as) {user}
set ::autoreg::vGuiArray(mac.FifoEn.-aw) {16}
set ::autoreg::vGuiArray(mac.FifoEn.-c) {Data to the transmitter}
set ::autoreg::vGuiArray(mac.FifoEn.-dw) {16}
set ::autoreg::vGuiArray(mac.FifoEn.-en) {big}
set ::autoreg::vGuiArray(mac.FifoEn.-ex) {2}
set ::autoreg::vGuiArray(mac.FifoEn.-f) {U}
set ::autoreg::vGuiArray(mac.FifoEn.-hi) {1}
set ::autoreg::vGuiArray(mac.FifoEn.-i) {0}
set ::autoreg::vGuiArray(mac.FifoEn.-lo) {0}
set ::autoreg::vGuiArray(mac.FifoEn.-n) {FifoEn}
set ::autoreg::vGuiArray(mac.FifoEn.-o) {reg}
set ::autoreg::vGuiArray(mac.FifoEn.-p) {9}
set ::autoreg::vGuiArray(mac.FifoEn.-rmw) {1}
set ::autoreg::vGuiArray(mac.FifoEn.-t) {R}
set ::autoreg::vGuiArray(mac.FifoEn.-w) {1}
set ::autoreg::vGuiArray(mac.LastData.-a) {274}
set ::autoreg::vGuiArray(mac.LastData.-as) {user}
set ::autoreg::vGuiArray(mac.LastData.-aw) {16}
set ::autoreg::vGuiArray(mac.LastData.-c) {Data to the transmitter}
set ::autoreg::vGuiArray(mac.LastData.-dw) {16}
set ::autoreg::vGuiArray(mac.LastData.-en) {big}
set ::autoreg::vGuiArray(mac.LastData.-ex) {2}
set ::autoreg::vGuiArray(mac.LastData.-f) {U}
set ::autoreg::vGuiArray(mac.LastData.-hi) {1}
set ::autoreg::vGuiArray(mac.LastData.-i) {0}
set ::autoreg::vGuiArray(mac.LastData.-lo) {0}
set ::autoreg::vGuiArray(mac.LastData.-n) {LastData}
set ::autoreg::vGuiArray(mac.LastData.-o) {reg}
set ::autoreg::vGuiArray(mac.LastData.-p) {11}
set ::autoreg::vGuiArray(mac.LastData.-rmw) {1}
set ::autoreg::vGuiArray(mac.LastData.-t) {R}
set ::autoreg::vGuiArray(mac.LastData.-w) {1}
set ::autoreg::vGuiArray(mac.RXStatus.-a) {275}
set ::autoreg::vGuiArray(mac.RXStatus.-as) {user}
set ::autoreg::vGuiArray(mac.RXStatus.-aw) {16}
set ::autoreg::vGuiArray(mac.RXStatus.-c) {Data to the transmitter}
set ::autoreg::vGuiArray(mac.RXStatus.-dw) {16}
set ::autoreg::vGuiArray(mac.RXStatus.-en) {big}
set ::autoreg::vGuiArray(mac.RXStatus.-ex) {16}
set ::autoreg::vGuiArray(mac.RXStatus.-f) {U}
set ::autoreg::vGuiArray(mac.RXStatus.-hi) {15}
set ::autoreg::vGuiArray(mac.RXStatus.-i) {0}
set ::autoreg::vGuiArray(mac.RXStatus.-lo) {0}
set ::autoreg::vGuiArray(mac.RXStatus.-n) {RXStatus}
set ::autoreg::vGuiArray(mac.RXStatus.-o) {reg}
set ::autoreg::vGuiArray(mac.RXStatus.-p) {0}
set ::autoreg::vGuiArray(mac.RXStatus.-rmw) {1}
set ::autoreg::vGuiArray(mac.RXStatus.-t) {R}
set ::autoreg::vGuiArray(mac.RXStatus.-w) {4}
set ::autoreg::vGuiArray(mac.ReceiveEn.-a) {266}
set ::autoreg::vGuiArray(mac.ReceiveEn.-as) {user}
set ::autoreg::vGuiArray(mac.ReceiveEn.-aw) {16}
set ::autoreg::vGuiArray(mac.ReceiveEn.-c) {Receive Enable}
set ::autoreg::vGuiArray(mac.ReceiveEn.-dw) {16}
set ::autoreg::vGuiArray(mac.ReceiveEn.-en) {big}
set ::autoreg::vGuiArray(mac.ReceiveEn.-ex) {2}
set ::autoreg::vGuiArray(mac.ReceiveEn.-f) {U}
set ::autoreg::vGuiArray(mac.ReceiveEn.-hi) {1}
set ::autoreg::vGuiArray(mac.ReceiveEn.-i) {0}
set ::autoreg::vGuiArray(mac.ReceiveEn.-lo) {0}
set ::autoreg::vGuiArray(mac.ReceiveEn.-n) {ReceiveEn}
set ::autoreg::vGuiArray(mac.ReceiveEn.-o) {reg}
set ::autoreg::vGuiArray(mac.ReceiveEn.-p) {0}
set ::autoreg::vGuiArray(mac.ReceiveEn.-rmw) {1}
set ::autoreg::vGuiArray(mac.ReceiveEn.-t) {WI}
set ::autoreg::vGuiArray(mac.ReceiveEn.-w) {1}
set ::autoreg::vGuiArray(mac.TransmittEn.-a) {266}
set ::autoreg::vGuiArray(mac.TransmittEn.-as) {user}
set ::autoreg::vGuiArray(mac.TransmittEn.-aw) {16}
set ::autoreg::vGuiArray(mac.TransmittEn.-c) {Transmitt Enable}
set ::autoreg::vGuiArray(mac.TransmittEn.-dw) {16}
set ::autoreg::vGuiArray(mac.TransmittEn.-en) {big}
set ::autoreg::vGuiArray(mac.TransmittEn.-ex) {2}
set ::autoreg::vGuiArray(mac.TransmittEn.-f) {U}
set ::autoreg::vGuiArray(mac.TransmittEn.-hi) {1}
set ::autoreg::vGuiArray(mac.TransmittEn.-i) {0}
set ::autoreg::vGuiArray(mac.TransmittEn.-lo) {0}
set ::autoreg::vGuiArray(mac.TransmittEn.-n) {TransmittEn}
set ::autoreg::vGuiArray(mac.TransmittEn.-o) {reg}
set ::autoreg::vGuiArray(mac.TransmittEn.-p) {1}
set ::autoreg::vGuiArray(mac.TransmittEn.-rmw) {1}
set ::autoreg::vGuiArray(mac.TransmittEn.-t) {WI}
set ::autoreg::vGuiArray(mac.TransmittEn.-w) {1}
set ::autoreg::vGuiArray(mac.TxStatus.-a) {272}
set ::autoreg::vGuiArray(mac.TxStatus.-as) {user}
set ::autoreg::vGuiArray(mac.TxStatus.-aw) {16}
set ::autoreg::vGuiArray(mac.TxStatus.-c) {Status TxStateMachine}
set ::autoreg::vGuiArray(mac.TxStatus.-dw) {16}
set ::autoreg::vGuiArray(mac.TxStatus.-en) {big}
set ::autoreg::vGuiArray(mac.TxStatus.-ex) {128}
set ::autoreg::vGuiArray(mac.TxStatus.-f) {U}
set ::autoreg::vGuiArray(mac.TxStatus.-hi) {127}
set ::autoreg::vGuiArray(mac.TxStatus.-i) {0}
set ::autoreg::vGuiArray(mac.TxStatus.-lo) {0}
set ::autoreg::vGuiArray(mac.TxStatus.-n) {TxStatus}
set ::autoreg::vGuiArray(mac.TxStatus.-o) {reg}
set ::autoreg::vGuiArray(mac.TxStatus.-p) {0}
set ::autoreg::vGuiArray(mac.TxStatus.-rmw) {1}
set ::autoreg::vGuiArray(mac.TxStatus.-t) {R}
set ::autoreg::vGuiArray(mac.TxStatus.-w) {7}
set ::autoreg::vGuiArray(mac.TxStatusValid.-a) {273}
set ::autoreg::vGuiArray(mac.TxStatusValid.-as) {user}
set ::autoreg::vGuiArray(mac.TxStatusValid.-aw) {16}
set ::autoreg::vGuiArray(mac.TxStatusValid.-c) {Staus is valid = 1}
set ::autoreg::vGuiArray(mac.TxStatusValid.-dw) {16}
set ::autoreg::vGuiArray(mac.TxStatusValid.-en) {big}
set ::autoreg::vGuiArray(mac.TxStatusValid.-ex) {2}
set ::autoreg::vGuiArray(mac.TxStatusValid.-f) {U}
set ::autoreg::vGuiArray(mac.TxStatusValid.-hi) {1}
set ::autoreg::vGuiArray(mac.TxStatusValid.-i) {0}
set ::autoreg::vGuiArray(mac.TxStatusValid.-lo) {0}
set ::autoreg::vGuiArray(mac.TxStatusValid.-n) {TxStatusValid}
set ::autoreg::vGuiArray(mac.TxStatusValid.-o) {reg}
set ::autoreg::vGuiArray(mac.TxStatusValid.-p) {0}
set ::autoreg::vGuiArray(mac.TxStatusValid.-rmw) {1}
set ::autoreg::vGuiArray(mac.TxStatusValid.-t) {R}
set ::autoreg::vGuiArray(mac.TxStatusValid.-w) {1}
set ::autoreg::vGuiArray(mac.down.-a) {261}
set ::autoreg::vGuiArray(mac.down.-as) {user}
set ::autoreg::vGuiArray(mac.down.-aw) {16}
set ::autoreg::vGuiArray(mac.down.-c) {Count down continuously}
set ::autoreg::vGuiArray(mac.down.-dw) {16}
set ::autoreg::vGuiArray(mac.down.-en) {big}
set ::autoreg::vGuiArray(mac.down.-ex) {2}
set ::autoreg::vGuiArray(mac.down.-f) {U}
set ::autoreg::vGuiArray(mac.down.-gloc) {2 1}
set ::autoreg::vGuiArray(mac.down.-gtype) {checkbutton}
set ::autoreg::vGuiArray(mac.down.-hi) {1}
set ::autoreg::vGuiArray(mac.down.-i) {0}
set ::autoreg::vGuiArray(mac.down.-lo) {0}
set ::autoreg::vGuiArray(mac.down.-n) {down}
set ::autoreg::vGuiArray(mac.down.-o) {reg}
set ::autoreg::vGuiArray(mac.down.-p) {1}
set ::autoreg::vGuiArray(mac.down.-rmw) {1}
set ::autoreg::vGuiArray(mac.down.-t) {RW}
set ::autoreg::vGuiArray(mac.down.-w) {1}
set ::autoreg::vGuiArray(mac.max.-a) {264}
set ::autoreg::vGuiArray(mac.max.-as) {user}
set ::autoreg::vGuiArray(mac.max.-aw) {16}
set ::autoreg::vGuiArray(mac.max.-c) {Max value before wrap to 0}
set ::autoreg::vGuiArray(mac.max.-dw) {16}
set ::autoreg::vGuiArray(mac.max.-en) {big}
set ::autoreg::vGuiArray(mac.max.-ex) {65536}
set ::autoreg::vGuiArray(mac.max.-f) {U}
set ::autoreg::vGuiArray(mac.max.-gloc) {0 1}
set ::autoreg::vGuiArray(mac.max.-gtype) {entry}
set ::autoreg::vGuiArray(mac.max.-hi) {65535}
set ::autoreg::vGuiArray(mac.max.-i) {0}
set ::autoreg::vGuiArray(mac.max.-lo) {0}
set ::autoreg::vGuiArray(mac.max.-n) {max}
set ::autoreg::vGuiArray(mac.max.-o) {reg}
set ::autoreg::vGuiArray(mac.max.-p) {0}
set ::autoreg::vGuiArray(mac.max.-rmw) {1}
set ::autoreg::vGuiArray(mac.max.-t) {RW}
set ::autoreg::vGuiArray(mac.max.-v) {65535}
set ::autoreg::vGuiArray(mac.max.-w) {16}
set ::autoreg::vGuiArray(mac.prescale.-a) {261}
set ::autoreg::vGuiArray(mac.prescale.-as) {user}
set ::autoreg::vGuiArray(mac.prescale.-aw) {16}
set ::autoreg::vGuiArray(mac.prescale.-c) {Max value for prescale counter}
set ::autoreg::vGuiArray(mac.prescale.-dw) {16}
set ::autoreg::vGuiArray(mac.prescale.-en) {big}
set ::autoreg::vGuiArray(mac.prescale.-ex) {4096}
set ::autoreg::vGuiArray(mac.prescale.-f) {U}
set ::autoreg::vGuiArray(mac.prescale.-gloc) {0 0}
set ::autoreg::vGuiArray(mac.prescale.-gtype) {entry}
set ::autoreg::vGuiArray(mac.prescale.-hi) {4095}
set ::autoreg::vGuiArray(mac.prescale.-i) {0}
set ::autoreg::vGuiArray(mac.prescale.-lo) {0}
set ::autoreg::vGuiArray(mac.prescale.-n) {prescale}
set ::autoreg::vGuiArray(mac.prescale.-o) {reg}
set ::autoreg::vGuiArray(mac.prescale.-p) {2}
set ::autoreg::vGuiArray(mac.prescale.-rmw) {1}
set ::autoreg::vGuiArray(mac.prescale.-t) {RW}
set ::autoreg::vGuiArray(mac.prescale.-v) {1024}
set ::autoreg::vGuiArray(mac.prescale.-w) {12}
set ::autoreg::vGuiArray(mac.preset.-a) {262}
set ::autoreg::vGuiArray(mac.preset.-as) {user}
set ::autoreg::vGuiArray(mac.preset.-aw) {16}
set ::autoreg::vGuiArray(mac.preset.-c) {Preset to SetCnt value}
set ::autoreg::vGuiArray(mac.preset.-dw) {16}
set ::autoreg::vGuiArray(mac.preset.-en) {big}
set ::autoreg::vGuiArray(mac.preset.-ex) {2}
set ::autoreg::vGuiArray(mac.preset.-f) {U}
set ::autoreg::vGuiArray(mac.preset.-gloc) {2 4}
set ::autoreg::vGuiArray(mac.preset.-gtype) {button}
set ::autoreg::vGuiArray(mac.preset.-hi) {1}
set ::autoreg::vGuiArray(mac.preset.-i) {0}
set ::autoreg::vGuiArray(mac.preset.-lo) {0}
set ::autoreg::vGuiArray(mac.preset.-n) {preset}
set ::autoreg::vGuiArray(mac.preset.-o) {reg}
set ::autoreg::vGuiArray(mac.preset.-p) {2}
set ::autoreg::vGuiArray(mac.preset.-rmw) {1}
set ::autoreg::vGuiArray(mac.preset.-t) {WI}
set ::autoreg::vGuiArray(mac.preset.-w) {1}
set ::autoreg::vGuiArray(mac.readcnt.-a) {265}
set ::autoreg::vGuiArray(mac.readcnt.-as) {user}
set ::autoreg::vGuiArray(mac.readcnt.-aw) {16}
set ::autoreg::vGuiArray(mac.readcnt.-c) {Read value of counter}
set ::autoreg::vGuiArray(mac.readcnt.-dw) {16}
set ::autoreg::vGuiArray(mac.readcnt.-en) {big}
set ::autoreg::vGuiArray(mac.readcnt.-ex) {65536}
set ::autoreg::vGuiArray(mac.readcnt.-f) {U}
set ::autoreg::vGuiArray(mac.readcnt.-gloc) {4 0}
set ::autoreg::vGuiArray(mac.readcnt.-gtype) {label}
set ::autoreg::vGuiArray(mac.readcnt.-hi) {65535}
set ::autoreg::vGuiArray(mac.readcnt.-i) {0}
set ::autoreg::vGuiArray(mac.readcnt.-lo) {0}
set ::autoreg::vGuiArray(mac.readcnt.-n) {readcnt}
set ::autoreg::vGuiArray(mac.readcnt.-o) {reg}
set ::autoreg::vGuiArray(mac.readcnt.-p) {0}
set ::autoreg::vGuiArray(mac.readcnt.-rmw) {1}
set ::autoreg::vGuiArray(mac.readcnt.-t) {R}
set ::autoreg::vGuiArray(mac.readcnt.-w) {16}
set ::autoreg::vGuiArray(mac.revision.-a) {260}
set ::autoreg::vGuiArray(mac.revision.-as) {user}
set ::autoreg::vGuiArray(mac.revision.-aw) {16}
set ::autoreg::vGuiArray(mac.revision.-c) {Trunk revision.}
set ::autoreg::vGuiArray(mac.revision.-dw) {16}
set ::autoreg::vGuiArray(mac.revision.-en) {big}
set ::autoreg::vGuiArray(mac.revision.-ex) {256}
set ::autoreg::vGuiArray(mac.revision.-f) {U}
set ::autoreg::vGuiArray(mac.revision.-gloc) {0 7}
set ::autoreg::vGuiArray(mac.revision.-gtype) {label}
set ::autoreg::vGuiArray(mac.revision.-hi) {255}
set ::autoreg::vGuiArray(mac.revision.-i) {0}
set ::autoreg::vGuiArray(mac.revision.-lo) {0}
set ::autoreg::vGuiArray(mac.revision.-n) {revision}
set ::autoreg::vGuiArray(mac.revision.-o) {reg}
set ::autoreg::vGuiArray(mac.revision.-p) {0}
set ::autoreg::vGuiArray(mac.revision.-rmw) {1}
set ::autoreg::vGuiArray(mac.revision.-t) {RC}
set ::autoreg::vGuiArray(mac.revision.-v) {5}
set ::autoreg::vGuiArray(mac.revision.-w) {8}
set ::autoreg::vGuiArray(mac.setcnt.-a) {263}
set ::autoreg::vGuiArray(mac.setcnt.-as) {user}
set ::autoreg::vGuiArray(mac.setcnt.-aw) {16}
set ::autoreg::vGuiArray(mac.setcnt.-c) {Value to be set by Preset}
set ::autoreg::vGuiArray(mac.setcnt.-dw) {16}
set ::autoreg::vGuiArray(mac.setcnt.-en) {big}
set ::autoreg::vGuiArray(mac.setcnt.-ex) {65536}
set ::autoreg::vGuiArray(mac.setcnt.-f) {U}
set ::autoreg::vGuiArray(mac.setcnt.-gloc) {0 4}
set ::autoreg::vGuiArray(mac.setcnt.-gtype) {entry}
set ::autoreg::vGuiArray(mac.setcnt.-hi) {65535}
set ::autoreg::vGuiArray(mac.setcnt.-i) {0}
set ::autoreg::vGuiArray(mac.setcnt.-lo) {0}
set ::autoreg::vGuiArray(mac.setcnt.-n) {setcnt}
set ::autoreg::vGuiArray(mac.setcnt.-o) {reg}
set ::autoreg::vGuiArray(mac.setcnt.-p) {0}
set ::autoreg::vGuiArray(mac.setcnt.-rmw) {1}
set ::autoreg::vGuiArray(mac.setcnt.-t) {RW}
set ::autoreg::vGuiArray(mac.setcnt.-w) {16}
set ::autoreg::vGuiArray(mac.stepdown.-a) {262}
set ::autoreg::vGuiArray(mac.stepdown.-as) {user}
set ::autoreg::vGuiArray(mac.stepdown.-aw) {16}
set ::autoreg::vGuiArray(mac.stepdown.-c) {Step down one value}
set ::autoreg::vGuiArray(mac.stepdown.-dw) {16}
set ::autoreg::vGuiArray(mac.stepdown.-en) {big}
set ::autoreg::vGuiArray(mac.stepdown.-ex) {2}
set ::autoreg::vGuiArray(mac.stepdown.-f) {U}
set ::autoreg::vGuiArray(mac.stepdown.-gloc) {2 3}
set ::autoreg::vGuiArray(mac.stepdown.-gtype) {button}
set ::autoreg::vGuiArray(mac.stepdown.-hi) {1}
set ::autoreg::vGuiArray(mac.stepdown.-i) {0}
set ::autoreg::vGuiArray(mac.stepdown.-lo) {0}
set ::autoreg::vGuiArray(mac.stepdown.-n) {stepdown}
set ::autoreg::vGuiArray(mac.stepdown.-o) {reg}
set ::autoreg::vGuiArray(mac.stepdown.-p) {1}
set ::autoreg::vGuiArray(mac.stepdown.-rmw) {1}
set ::autoreg::vGuiArray(mac.stepdown.-t) {WI}
set ::autoreg::vGuiArray(mac.stepdown.-w) {1}
set ::autoreg::vGuiArray(mac.stepup.-a) {262}
set ::autoreg::vGuiArray(mac.stepup.-as) {user}
set ::autoreg::vGuiArray(mac.stepup.-aw) {16}
set ::autoreg::vGuiArray(mac.stepup.-c) {Step up one value}
set ::autoreg::vGuiArray(mac.stepup.-dw) {16}
set ::autoreg::vGuiArray(mac.stepup.-en) {big}
set ::autoreg::vGuiArray(mac.stepup.-ex) {2}
set ::autoreg::vGuiArray(mac.stepup.-f) {U}
set ::autoreg::vGuiArray(mac.stepup.-gloc) {2 2}
set ::autoreg::vGuiArray(mac.stepup.-gtype) {button}
set ::autoreg::vGuiArray(mac.stepup.-hi) {1}
set ::autoreg::vGuiArray(mac.stepup.-i) {0}
set ::autoreg::vGuiArray(mac.stepup.-lo) {0}
set ::autoreg::vGuiArray(mac.stepup.-n) {stepup}
set ::autoreg::vGuiArray(mac.stepup.-o) {reg}
set ::autoreg::vGuiArray(mac.stepup.-p) {0}
set ::autoreg::vGuiArray(mac.stepup.-rmw) {1}
set ::autoreg::vGuiArray(mac.stepup.-t) {WI}
set ::autoreg::vGuiArray(mac.stepup.-w) {1}
set ::autoreg::vGuiArray(mac.up.-a) {261}
set ::autoreg::vGuiArray(mac.up.-as) {user}
set ::autoreg::vGuiArray(mac.up.-aw) {16}
set ::autoreg::vGuiArray(mac.up.-c) {Count up continuously}
set ::autoreg::vGuiArray(mac.up.-dw) {16}
set ::autoreg::vGuiArray(mac.up.-en) {big}
set ::autoreg::vGuiArray(mac.up.-ex) {2}
set ::autoreg::vGuiArray(mac.up.-f) {U}
set ::autoreg::vGuiArray(mac.up.-gloc) {2 0}
set ::autoreg::vGuiArray(mac.up.-gtype) {checkbutton}
set ::autoreg::vGuiArray(mac.up.-hi) {1}
set ::autoreg::vGuiArray(mac.up.-i) {0}
set ::autoreg::vGuiArray(mac.up.-lo) {0}
set ::autoreg::vGuiArray(mac.up.-n) {up}
set ::autoreg::vGuiArray(mac.up.-o) {reg}
set ::autoreg::vGuiArray(mac.up.-p) {0}
set ::autoreg::vGuiArray(mac.up.-rmw) {1}
set ::autoreg::vGuiArray(mac.up.-t) {RW}
set ::autoreg::vGuiArray(mac.up.-v) {1}
set ::autoreg::vGuiArray(mac.up.-w) {1}
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
set ::autoreg::vGuiArray(revision.day.-v) {02}
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
set ::autoreg::vGuiArray(revision.hour.-v) {01}
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
set ::autoreg::vGuiArray(revision.minute.-v) {10}
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
set ::autoreg::vGuiArray(revision.month.-v) {05}
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
set ::autoreg::vGuiArray(revision.trunkrev.-v) {16}
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

