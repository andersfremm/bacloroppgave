if {[namespace exist ::autoreg] == 0} {
   namespace eval ::autoreg {
      variable vRegBankArray
   }
}
set ::autoreg::vRegBankArray(counter.-aw) {16}
set ::autoreg::vRegBankArray(counter.-clkcpu) {ClkCpu}
set ::autoreg::vRegBankArray(counter.-clkpl) {Clk}
set ::autoreg::vRegBankArray(counter.-dw) {16}
set ::autoreg::vRegBankArray(counter.-en) {big}
set ::autoreg::vRegBankArray(counter.-gspan) {6 8}
set ::autoreg::vRegBankArray(counter.-gupdate) {4 7}
set ::autoreg::vRegBankArray(counter.-gw) {12 8}
set ::autoreg::vRegBankArray(counter.-i) {revision prescale up down stepup stepdown preset setcnt max readcnt}
set ::autoreg::vRegBankArray(counter.-n) {counter}
set ::autoreg::vRegBankArray(counter.-o) {group}
set ::autoreg::vRegBankArray(counter.-path) {/i0jtag/i0demo/i0core/i0count/i0rb_counter}
set ::autoreg::vRegBankArray(counter.-sy) {0}
set ::autoreg::vRegBankArray(counter.-t) {bank}
set ::autoreg::vRegBankArray(counter.down.-a) {1}
set ::autoreg::vRegBankArray(counter.down.-as) {user}
set ::autoreg::vRegBankArray(counter.down.-c) {Count down continuously}
set ::autoreg::vRegBankArray(counter.down.-f) {U}
set ::autoreg::vRegBankArray(counter.down.-gloc) {2 1}
set ::autoreg::vRegBankArray(counter.down.-gtype) {checkbutton}
set ::autoreg::vRegBankArray(counter.down.-n) {down}
set ::autoreg::vRegBankArray(counter.down.-o) {reg}
set ::autoreg::vRegBankArray(counter.down.-p) {1}
set ::autoreg::vRegBankArray(counter.down.-t) {RW}
set ::autoreg::vRegBankArray(counter.down.-w) {1}
set ::autoreg::vRegBankArray(counter.max.-a) {4}
set ::autoreg::vRegBankArray(counter.max.-as) {user}
set ::autoreg::vRegBankArray(counter.max.-c) {Max value before wrap to 0}
set ::autoreg::vRegBankArray(counter.max.-f) {U}
set ::autoreg::vRegBankArray(counter.max.-gloc) {0 1}
set ::autoreg::vRegBankArray(counter.max.-gtype) {entry}
set ::autoreg::vRegBankArray(counter.max.-n) {max}
set ::autoreg::vRegBankArray(counter.max.-o) {reg}
set ::autoreg::vRegBankArray(counter.max.-p) {0}
set ::autoreg::vRegBankArray(counter.max.-t) {RW}
set ::autoreg::vRegBankArray(counter.max.-v) {65535}
set ::autoreg::vRegBankArray(counter.max.-w) {16}
set ::autoreg::vRegBankArray(counter.prescale.-a) {1}
set ::autoreg::vRegBankArray(counter.prescale.-as) {user}
set ::autoreg::vRegBankArray(counter.prescale.-c) {Max value for prescale counter}
set ::autoreg::vRegBankArray(counter.prescale.-f) {U}
set ::autoreg::vRegBankArray(counter.prescale.-gloc) {0 0}
set ::autoreg::vRegBankArray(counter.prescale.-gtype) {entry}
set ::autoreg::vRegBankArray(counter.prescale.-n) {prescale}
set ::autoreg::vRegBankArray(counter.prescale.-o) {reg}
set ::autoreg::vRegBankArray(counter.prescale.-p) {2}
set ::autoreg::vRegBankArray(counter.prescale.-t) {RW}
set ::autoreg::vRegBankArray(counter.prescale.-v) {1024}
set ::autoreg::vRegBankArray(counter.prescale.-w) {12}
set ::autoreg::vRegBankArray(counter.preset.-a) {2}
set ::autoreg::vRegBankArray(counter.preset.-as) {user}
set ::autoreg::vRegBankArray(counter.preset.-c) {Preset to SetCnt value}
set ::autoreg::vRegBankArray(counter.preset.-f) {U}
set ::autoreg::vRegBankArray(counter.preset.-gloc) {2 4}
set ::autoreg::vRegBankArray(counter.preset.-gtype) {button}
set ::autoreg::vRegBankArray(counter.preset.-n) {preset}
set ::autoreg::vRegBankArray(counter.preset.-o) {reg}
set ::autoreg::vRegBankArray(counter.preset.-p) {2}
set ::autoreg::vRegBankArray(counter.preset.-t) {WI}
set ::autoreg::vRegBankArray(counter.preset.-w) {1}
set ::autoreg::vRegBankArray(counter.readcnt.-a) {5}
set ::autoreg::vRegBankArray(counter.readcnt.-as) {user}
set ::autoreg::vRegBankArray(counter.readcnt.-c) {Read value of counter}
set ::autoreg::vRegBankArray(counter.readcnt.-f) {U}
set ::autoreg::vRegBankArray(counter.readcnt.-gloc) {4 0}
set ::autoreg::vRegBankArray(counter.readcnt.-gtype) {label}
set ::autoreg::vRegBankArray(counter.readcnt.-n) {readcnt}
set ::autoreg::vRegBankArray(counter.readcnt.-o) {reg}
set ::autoreg::vRegBankArray(counter.readcnt.-p) {0}
set ::autoreg::vRegBankArray(counter.readcnt.-t) {R}
set ::autoreg::vRegBankArray(counter.readcnt.-w) {16}
set ::autoreg::vRegBankArray(counter.revision.-a) {0}
set ::autoreg::vRegBankArray(counter.revision.-as) {user}
set ::autoreg::vRegBankArray(counter.revision.-c) {Trunk revision.}
set ::autoreg::vRegBankArray(counter.revision.-f) {U}
set ::autoreg::vRegBankArray(counter.revision.-gloc) {0 7}
set ::autoreg::vRegBankArray(counter.revision.-gtype) {label}
set ::autoreg::vRegBankArray(counter.revision.-n) {revision}
set ::autoreg::vRegBankArray(counter.revision.-o) {reg}
set ::autoreg::vRegBankArray(counter.revision.-p) {0}
set ::autoreg::vRegBankArray(counter.revision.-t) {RC}
set ::autoreg::vRegBankArray(counter.revision.-v) {5}
set ::autoreg::vRegBankArray(counter.revision.-w) {8}
set ::autoreg::vRegBankArray(counter.setcnt.-a) {3}
set ::autoreg::vRegBankArray(counter.setcnt.-as) {user}
set ::autoreg::vRegBankArray(counter.setcnt.-c) {Value to be set by Preset}
set ::autoreg::vRegBankArray(counter.setcnt.-f) {U}
set ::autoreg::vRegBankArray(counter.setcnt.-gloc) {0 4}
set ::autoreg::vRegBankArray(counter.setcnt.-gtype) {entry}
set ::autoreg::vRegBankArray(counter.setcnt.-n) {setcnt}
set ::autoreg::vRegBankArray(counter.setcnt.-o) {reg}
set ::autoreg::vRegBankArray(counter.setcnt.-p) {0}
set ::autoreg::vRegBankArray(counter.setcnt.-t) {RW}
set ::autoreg::vRegBankArray(counter.setcnt.-w) {16}
set ::autoreg::vRegBankArray(counter.stepdown.-a) {2}
set ::autoreg::vRegBankArray(counter.stepdown.-as) {user}
set ::autoreg::vRegBankArray(counter.stepdown.-c) {Step down one value}
set ::autoreg::vRegBankArray(counter.stepdown.-f) {U}
set ::autoreg::vRegBankArray(counter.stepdown.-gloc) {2 3}
set ::autoreg::vRegBankArray(counter.stepdown.-gtype) {button}
set ::autoreg::vRegBankArray(counter.stepdown.-n) {stepdown}
set ::autoreg::vRegBankArray(counter.stepdown.-o) {reg}
set ::autoreg::vRegBankArray(counter.stepdown.-p) {1}
set ::autoreg::vRegBankArray(counter.stepdown.-t) {WI}
set ::autoreg::vRegBankArray(counter.stepdown.-w) {1}
set ::autoreg::vRegBankArray(counter.stepup.-a) {2}
set ::autoreg::vRegBankArray(counter.stepup.-as) {user}
set ::autoreg::vRegBankArray(counter.stepup.-c) {Step up one value}
set ::autoreg::vRegBankArray(counter.stepup.-f) {U}
set ::autoreg::vRegBankArray(counter.stepup.-gloc) {2 2}
set ::autoreg::vRegBankArray(counter.stepup.-gtype) {button}
set ::autoreg::vRegBankArray(counter.stepup.-n) {stepup}
set ::autoreg::vRegBankArray(counter.stepup.-o) {reg}
set ::autoreg::vRegBankArray(counter.stepup.-p) {0}
set ::autoreg::vRegBankArray(counter.stepup.-t) {WI}
set ::autoreg::vRegBankArray(counter.stepup.-w) {1}
set ::autoreg::vRegBankArray(counter.up.-a) {1}
set ::autoreg::vRegBankArray(counter.up.-as) {user}
set ::autoreg::vRegBankArray(counter.up.-c) {Count up continuously}
set ::autoreg::vRegBankArray(counter.up.-f) {U}
set ::autoreg::vRegBankArray(counter.up.-gloc) {2 0}
set ::autoreg::vRegBankArray(counter.up.-gtype) {checkbutton}
set ::autoreg::vRegBankArray(counter.up.-n) {up}
set ::autoreg::vRegBankArray(counter.up.-o) {reg}
set ::autoreg::vRegBankArray(counter.up.-p) {0}
set ::autoreg::vRegBankArray(counter.up.-t) {RW}
set ::autoreg::vRegBankArray(counter.up.-v) {1}
set ::autoreg::vRegBankArray(counter.up.-w) {1}
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
set ::autoreg::vRegBankArray(revision.day.-v) {21}
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
set ::autoreg::vRegBankArray(revision.hour.-v) {17}
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
set ::autoreg::vRegBankArray(revision.minute.-v) {16}
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
set ::autoreg::vRegBankArray(revision.month.-v) {02}
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
set ::autoreg::vRegBankArray(revision.trunkrev.-v) {6}
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

