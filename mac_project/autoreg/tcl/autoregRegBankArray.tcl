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
set ::autoreg::vRegBankArray(mac.-i) {revision prescale up down stepup stepdown preset setcnt max readcnt}
set ::autoreg::vRegBankArray(mac.-n) {mac}
set ::autoreg::vRegBankArray(mac.-o) {group}
set ::autoreg::vRegBankArray(mac.-path) {/i0jtag/i0demo/i0core/i0mac/i0rb_mac}
set ::autoreg::vRegBankArray(mac.-sy) {0}
set ::autoreg::vRegBankArray(mac.-t) {bank}
set ::autoreg::vRegBankArray(mac.down.-a) {1}
set ::autoreg::vRegBankArray(mac.down.-as) {user}
set ::autoreg::vRegBankArray(mac.down.-c) {Count down continuously}
set ::autoreg::vRegBankArray(mac.down.-f) {U}
set ::autoreg::vRegBankArray(mac.down.-gloc) {2 1}
set ::autoreg::vRegBankArray(mac.down.-gtype) {checkbutton}
set ::autoreg::vRegBankArray(mac.down.-n) {down}
set ::autoreg::vRegBankArray(mac.down.-o) {reg}
set ::autoreg::vRegBankArray(mac.down.-p) {1}
set ::autoreg::vRegBankArray(mac.down.-t) {RW}
set ::autoreg::vRegBankArray(mac.down.-w) {1}
set ::autoreg::vRegBankArray(mac.max.-a) {4}
set ::autoreg::vRegBankArray(mac.max.-as) {user}
set ::autoreg::vRegBankArray(mac.max.-c) {Max value before wrap to 0}
set ::autoreg::vRegBankArray(mac.max.-f) {U}
set ::autoreg::vRegBankArray(mac.max.-gloc) {0 1}
set ::autoreg::vRegBankArray(mac.max.-gtype) {entry}
set ::autoreg::vRegBankArray(mac.max.-n) {max}
set ::autoreg::vRegBankArray(mac.max.-o) {reg}
set ::autoreg::vRegBankArray(mac.max.-p) {0}
set ::autoreg::vRegBankArray(mac.max.-t) {RW}
set ::autoreg::vRegBankArray(mac.max.-v) {65535}
set ::autoreg::vRegBankArray(mac.max.-w) {16}
set ::autoreg::vRegBankArray(mac.prescale.-a) {1}
set ::autoreg::vRegBankArray(mac.prescale.-as) {user}
set ::autoreg::vRegBankArray(mac.prescale.-c) {Max value for prescale counter}
set ::autoreg::vRegBankArray(mac.prescale.-f) {U}
set ::autoreg::vRegBankArray(mac.prescale.-gloc) {0 0}
set ::autoreg::vRegBankArray(mac.prescale.-gtype) {entry}
set ::autoreg::vRegBankArray(mac.prescale.-n) {prescale}
set ::autoreg::vRegBankArray(mac.prescale.-o) {reg}
set ::autoreg::vRegBankArray(mac.prescale.-p) {2}
set ::autoreg::vRegBankArray(mac.prescale.-t) {RW}
set ::autoreg::vRegBankArray(mac.prescale.-v) {1024}
set ::autoreg::vRegBankArray(mac.prescale.-w) {12}
set ::autoreg::vRegBankArray(mac.preset.-a) {2}
set ::autoreg::vRegBankArray(mac.preset.-as) {user}
set ::autoreg::vRegBankArray(mac.preset.-c) {Preset to SetCnt value}
set ::autoreg::vRegBankArray(mac.preset.-f) {U}
set ::autoreg::vRegBankArray(mac.preset.-gloc) {2 4}
set ::autoreg::vRegBankArray(mac.preset.-gtype) {button}
set ::autoreg::vRegBankArray(mac.preset.-n) {preset}
set ::autoreg::vRegBankArray(mac.preset.-o) {reg}
set ::autoreg::vRegBankArray(mac.preset.-p) {2}
set ::autoreg::vRegBankArray(mac.preset.-t) {WI}
set ::autoreg::vRegBankArray(mac.preset.-w) {1}
set ::autoreg::vRegBankArray(mac.readcnt.-a) {5}
set ::autoreg::vRegBankArray(mac.readcnt.-as) {user}
set ::autoreg::vRegBankArray(mac.readcnt.-c) {Read value of counter}
set ::autoreg::vRegBankArray(mac.readcnt.-f) {U}
set ::autoreg::vRegBankArray(mac.readcnt.-gloc) {4 0}
set ::autoreg::vRegBankArray(mac.readcnt.-gtype) {label}
set ::autoreg::vRegBankArray(mac.readcnt.-n) {readcnt}
set ::autoreg::vRegBankArray(mac.readcnt.-o) {reg}
set ::autoreg::vRegBankArray(mac.readcnt.-p) {0}
set ::autoreg::vRegBankArray(mac.readcnt.-t) {R}
set ::autoreg::vRegBankArray(mac.readcnt.-w) {16}
set ::autoreg::vRegBankArray(mac.revision.-a) {0}
set ::autoreg::vRegBankArray(mac.revision.-as) {user}
set ::autoreg::vRegBankArray(mac.revision.-c) {Trunk revision.}
set ::autoreg::vRegBankArray(mac.revision.-f) {U}
set ::autoreg::vRegBankArray(mac.revision.-gloc) {0 7}
set ::autoreg::vRegBankArray(mac.revision.-gtype) {label}
set ::autoreg::vRegBankArray(mac.revision.-n) {revision}
set ::autoreg::vRegBankArray(mac.revision.-o) {reg}
set ::autoreg::vRegBankArray(mac.revision.-p) {0}
set ::autoreg::vRegBankArray(mac.revision.-t) {RC}
set ::autoreg::vRegBankArray(mac.revision.-v) {5}
set ::autoreg::vRegBankArray(mac.revision.-w) {8}
set ::autoreg::vRegBankArray(mac.setcnt.-a) {3}
set ::autoreg::vRegBankArray(mac.setcnt.-as) {user}
set ::autoreg::vRegBankArray(mac.setcnt.-c) {Value to be set by Preset}
set ::autoreg::vRegBankArray(mac.setcnt.-f) {U}
set ::autoreg::vRegBankArray(mac.setcnt.-gloc) {0 4}
set ::autoreg::vRegBankArray(mac.setcnt.-gtype) {entry}
set ::autoreg::vRegBankArray(mac.setcnt.-n) {setcnt}
set ::autoreg::vRegBankArray(mac.setcnt.-o) {reg}
set ::autoreg::vRegBankArray(mac.setcnt.-p) {0}
set ::autoreg::vRegBankArray(mac.setcnt.-t) {RW}
set ::autoreg::vRegBankArray(mac.setcnt.-w) {16}
set ::autoreg::vRegBankArray(mac.stepdown.-a) {2}
set ::autoreg::vRegBankArray(mac.stepdown.-as) {user}
set ::autoreg::vRegBankArray(mac.stepdown.-c) {Step down one value}
set ::autoreg::vRegBankArray(mac.stepdown.-f) {U}
set ::autoreg::vRegBankArray(mac.stepdown.-gloc) {2 3}
set ::autoreg::vRegBankArray(mac.stepdown.-gtype) {button}
set ::autoreg::vRegBankArray(mac.stepdown.-n) {stepdown}
set ::autoreg::vRegBankArray(mac.stepdown.-o) {reg}
set ::autoreg::vRegBankArray(mac.stepdown.-p) {1}
set ::autoreg::vRegBankArray(mac.stepdown.-t) {WI}
set ::autoreg::vRegBankArray(mac.stepdown.-w) {1}
set ::autoreg::vRegBankArray(mac.stepup.-a) {2}
set ::autoreg::vRegBankArray(mac.stepup.-as) {user}
set ::autoreg::vRegBankArray(mac.stepup.-c) {Step up one value}
set ::autoreg::vRegBankArray(mac.stepup.-f) {U}
set ::autoreg::vRegBankArray(mac.stepup.-gloc) {2 2}
set ::autoreg::vRegBankArray(mac.stepup.-gtype) {button}
set ::autoreg::vRegBankArray(mac.stepup.-n) {stepup}
set ::autoreg::vRegBankArray(mac.stepup.-o) {reg}
set ::autoreg::vRegBankArray(mac.stepup.-p) {0}
set ::autoreg::vRegBankArray(mac.stepup.-t) {WI}
set ::autoreg::vRegBankArray(mac.stepup.-w) {1}
set ::autoreg::vRegBankArray(mac.up.-a) {1}
set ::autoreg::vRegBankArray(mac.up.-as) {user}
set ::autoreg::vRegBankArray(mac.up.-c) {Count up continuously}
set ::autoreg::vRegBankArray(mac.up.-f) {U}
set ::autoreg::vRegBankArray(mac.up.-gloc) {2 0}
set ::autoreg::vRegBankArray(mac.up.-gtype) {checkbutton}
set ::autoreg::vRegBankArray(mac.up.-n) {up}
set ::autoreg::vRegBankArray(mac.up.-o) {reg}
set ::autoreg::vRegBankArray(mac.up.-p) {0}
set ::autoreg::vRegBankArray(mac.up.-t) {RW}
set ::autoreg::vRegBankArray(mac.up.-v) {1}
set ::autoreg::vRegBankArray(mac.up.-w) {1}
set ::autoreg::vRegBankArray(mdio.-aw) {16}
set ::autoreg::vRegBankArray(mdio.-clkcpu) {ClkCpu}
set ::autoreg::vRegBankArray(mdio.-clkpl) {Clk}
set ::autoreg::vRegBankArray(mdio.-dw) {16}
set ::autoreg::vRegBankArray(mdio.-en) {big}
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
set ::autoreg::vRegBankArray(mdio.Ack.-n) {Ack}
set ::autoreg::vRegBankArray(mdio.Ack.-o) {reg}
set ::autoreg::vRegBankArray(mdio.Ack.-p) {7}
set ::autoreg::vRegBankArray(mdio.Ack.-t) {R}
set ::autoreg::vRegBankArray(mdio.Ack.-w) {1}
set ::autoreg::vRegBankArray(mdio.DataI.-a) {3}
set ::autoreg::vRegBankArray(mdio.DataI.-as) {user}
set ::autoreg::vRegBankArray(mdio.DataI.-c) {Data in from phy}
set ::autoreg::vRegBankArray(mdio.DataI.-f) {U}
set ::autoreg::vRegBankArray(mdio.DataI.-n) {DataI}
set ::autoreg::vRegBankArray(mdio.DataI.-o) {reg}
set ::autoreg::vRegBankArray(mdio.DataI.-p) {0}
set ::autoreg::vRegBankArray(mdio.DataI.-t) {R}
set ::autoreg::vRegBankArray(mdio.DataI.-w) {16}
set ::autoreg::vRegBankArray(mdio.DataO.-a) {2}
set ::autoreg::vRegBankArray(mdio.DataO.-as) {user}
set ::autoreg::vRegBankArray(mdio.DataO.-c) {Data out to phy}
set ::autoreg::vRegBankArray(mdio.DataO.-f) {U}
set ::autoreg::vRegBankArray(mdio.DataO.-n) {DataO}
set ::autoreg::vRegBankArray(mdio.DataO.-o) {reg}
set ::autoreg::vRegBankArray(mdio.DataO.-p) {0}
set ::autoreg::vRegBankArray(mdio.DataO.-t) {RW}
set ::autoreg::vRegBankArray(mdio.DataO.-w) {16}
set ::autoreg::vRegBankArray(mdio.PhyAddr.-a) {0}
set ::autoreg::vRegBankArray(mdio.PhyAddr.-as) {user}
set ::autoreg::vRegBankArray(mdio.PhyAddr.-c) {Phy address}
set ::autoreg::vRegBankArray(mdio.PhyAddr.-f) {U}
set ::autoreg::vRegBankArray(mdio.PhyAddr.-n) {PhyAddr}
set ::autoreg::vRegBankArray(mdio.PhyAddr.-o) {reg}
set ::autoreg::vRegBankArray(mdio.PhyAddr.-p) {0}
set ::autoreg::vRegBankArray(mdio.PhyAddr.-t) {RW}
set ::autoreg::vRegBankArray(mdio.PhyAddr.-w) {5}
set ::autoreg::vRegBankArray(mdio.Rd.-a) {0}
set ::autoreg::vRegBankArray(mdio.Rd.-as) {user}
set ::autoreg::vRegBankArray(mdio.Rd.-c) {Read}
set ::autoreg::vRegBankArray(mdio.Rd.-f) {U}
set ::autoreg::vRegBankArray(mdio.Rd.-n) {Rd}
set ::autoreg::vRegBankArray(mdio.Rd.-o) {reg}
set ::autoreg::vRegBankArray(mdio.Rd.-p) {6}
set ::autoreg::vRegBankArray(mdio.Rd.-t) {WI}
set ::autoreg::vRegBankArray(mdio.Rd.-w) {1}
set ::autoreg::vRegBankArray(mdio.RegAddr.-a) {1}
set ::autoreg::vRegBankArray(mdio.RegAddr.-as) {user}
set ::autoreg::vRegBankArray(mdio.RegAddr.-c) {Register address}
set ::autoreg::vRegBankArray(mdio.RegAddr.-f) {U}
set ::autoreg::vRegBankArray(mdio.RegAddr.-n) {RegAddr}
set ::autoreg::vRegBankArray(mdio.RegAddr.-o) {reg}
set ::autoreg::vRegBankArray(mdio.RegAddr.-p) {0}
set ::autoreg::vRegBankArray(mdio.RegAddr.-t) {RW}
set ::autoreg::vRegBankArray(mdio.RegAddr.-w) {5}
set ::autoreg::vRegBankArray(mdio.Wr.-a) {0}
set ::autoreg::vRegBankArray(mdio.Wr.-as) {user}
set ::autoreg::vRegBankArray(mdio.Wr.-c) {Write}
set ::autoreg::vRegBankArray(mdio.Wr.-f) {U}
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

