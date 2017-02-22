if {[namespace exist ::autoreg] == 0} {
   namespace eval ::autoreg {
      variable vGuiArray
   }
}
set ::autoreg::vGuiArray(counter.-gspan) {6 8}
set ::autoreg::vGuiArray(counter.-gupdate) {4 7}
set ::autoreg::vGuiArray(counter.-gw) {12 8}
set ::autoreg::vGuiArray(counter.-i) {revision prescale up down stepup stepdown preset setcnt max readcnt}
set ::autoreg::vGuiArray(counter.-n) {counter}
set ::autoreg::vGuiArray(counter.-o) {group}
set ::autoreg::vGuiArray(counter.-path) {/i0jtag/i0demo/i0core/i0count/i0rb_counter}
set ::autoreg::vGuiArray(counter.-t) {bank}
set ::autoreg::vGuiArray(counter.down.-a) {257}
set ::autoreg::vGuiArray(counter.down.-as) {user}
set ::autoreg::vGuiArray(counter.down.-aw) {16}
set ::autoreg::vGuiArray(counter.down.-c) {Count down continuously}
set ::autoreg::vGuiArray(counter.down.-dw) {16}
set ::autoreg::vGuiArray(counter.down.-en) {big}
set ::autoreg::vGuiArray(counter.down.-ex) {2}
set ::autoreg::vGuiArray(counter.down.-f) {U}
set ::autoreg::vGuiArray(counter.down.-gloc) {2 1}
set ::autoreg::vGuiArray(counter.down.-gtype) {checkbutton}
set ::autoreg::vGuiArray(counter.down.-hi) {1}
set ::autoreg::vGuiArray(counter.down.-i) {0}
set ::autoreg::vGuiArray(counter.down.-lo) {0}
set ::autoreg::vGuiArray(counter.down.-n) {down}
set ::autoreg::vGuiArray(counter.down.-o) {reg}
set ::autoreg::vGuiArray(counter.down.-p) {1}
set ::autoreg::vGuiArray(counter.down.-rmw) {1}
set ::autoreg::vGuiArray(counter.down.-t) {RW}
set ::autoreg::vGuiArray(counter.down.-w) {1}
set ::autoreg::vGuiArray(counter.max.-a) {260}
set ::autoreg::vGuiArray(counter.max.-as) {user}
set ::autoreg::vGuiArray(counter.max.-aw) {16}
set ::autoreg::vGuiArray(counter.max.-c) {Max value before wrap to 0}
set ::autoreg::vGuiArray(counter.max.-dw) {16}
set ::autoreg::vGuiArray(counter.max.-en) {big}
set ::autoreg::vGuiArray(counter.max.-ex) {65536}
set ::autoreg::vGuiArray(counter.max.-f) {U}
set ::autoreg::vGuiArray(counter.max.-gloc) {0 1}
set ::autoreg::vGuiArray(counter.max.-gtype) {entry}
set ::autoreg::vGuiArray(counter.max.-hi) {65535}
set ::autoreg::vGuiArray(counter.max.-i) {0}
set ::autoreg::vGuiArray(counter.max.-lo) {0}
set ::autoreg::vGuiArray(counter.max.-n) {max}
set ::autoreg::vGuiArray(counter.max.-o) {reg}
set ::autoreg::vGuiArray(counter.max.-p) {0}
set ::autoreg::vGuiArray(counter.max.-rmw) {1}
set ::autoreg::vGuiArray(counter.max.-t) {RW}
set ::autoreg::vGuiArray(counter.max.-v) {65535}
set ::autoreg::vGuiArray(counter.max.-w) {16}
set ::autoreg::vGuiArray(counter.prescale.-a) {257}
set ::autoreg::vGuiArray(counter.prescale.-as) {user}
set ::autoreg::vGuiArray(counter.prescale.-aw) {16}
set ::autoreg::vGuiArray(counter.prescale.-c) {Max value for prescale counter}
set ::autoreg::vGuiArray(counter.prescale.-dw) {16}
set ::autoreg::vGuiArray(counter.prescale.-en) {big}
set ::autoreg::vGuiArray(counter.prescale.-ex) {4096}
set ::autoreg::vGuiArray(counter.prescale.-f) {U}
set ::autoreg::vGuiArray(counter.prescale.-gloc) {0 0}
set ::autoreg::vGuiArray(counter.prescale.-gtype) {entry}
set ::autoreg::vGuiArray(counter.prescale.-hi) {4095}
set ::autoreg::vGuiArray(counter.prescale.-i) {0}
set ::autoreg::vGuiArray(counter.prescale.-lo) {0}
set ::autoreg::vGuiArray(counter.prescale.-n) {prescale}
set ::autoreg::vGuiArray(counter.prescale.-o) {reg}
set ::autoreg::vGuiArray(counter.prescale.-p) {2}
set ::autoreg::vGuiArray(counter.prescale.-rmw) {1}
set ::autoreg::vGuiArray(counter.prescale.-t) {RW}
set ::autoreg::vGuiArray(counter.prescale.-v) {1024}
set ::autoreg::vGuiArray(counter.prescale.-w) {12}
set ::autoreg::vGuiArray(counter.preset.-a) {258}
set ::autoreg::vGuiArray(counter.preset.-as) {user}
set ::autoreg::vGuiArray(counter.preset.-aw) {16}
set ::autoreg::vGuiArray(counter.preset.-c) {Preset to SetCnt value}
set ::autoreg::vGuiArray(counter.preset.-dw) {16}
set ::autoreg::vGuiArray(counter.preset.-en) {big}
set ::autoreg::vGuiArray(counter.preset.-ex) {2}
set ::autoreg::vGuiArray(counter.preset.-f) {U}
set ::autoreg::vGuiArray(counter.preset.-gloc) {2 4}
set ::autoreg::vGuiArray(counter.preset.-gtype) {button}
set ::autoreg::vGuiArray(counter.preset.-hi) {1}
set ::autoreg::vGuiArray(counter.preset.-i) {0}
set ::autoreg::vGuiArray(counter.preset.-lo) {0}
set ::autoreg::vGuiArray(counter.preset.-n) {preset}
set ::autoreg::vGuiArray(counter.preset.-o) {reg}
set ::autoreg::vGuiArray(counter.preset.-p) {2}
set ::autoreg::vGuiArray(counter.preset.-rmw) {1}
set ::autoreg::vGuiArray(counter.preset.-t) {WI}
set ::autoreg::vGuiArray(counter.preset.-w) {1}
set ::autoreg::vGuiArray(counter.readcnt.-a) {261}
set ::autoreg::vGuiArray(counter.readcnt.-as) {user}
set ::autoreg::vGuiArray(counter.readcnt.-aw) {16}
set ::autoreg::vGuiArray(counter.readcnt.-c) {Read value of counter}
set ::autoreg::vGuiArray(counter.readcnt.-dw) {16}
set ::autoreg::vGuiArray(counter.readcnt.-en) {big}
set ::autoreg::vGuiArray(counter.readcnt.-ex) {65536}
set ::autoreg::vGuiArray(counter.readcnt.-f) {U}
set ::autoreg::vGuiArray(counter.readcnt.-gloc) {4 0}
set ::autoreg::vGuiArray(counter.readcnt.-gtype) {label}
set ::autoreg::vGuiArray(counter.readcnt.-hi) {65535}
set ::autoreg::vGuiArray(counter.readcnt.-i) {0}
set ::autoreg::vGuiArray(counter.readcnt.-lo) {0}
set ::autoreg::vGuiArray(counter.readcnt.-n) {readcnt}
set ::autoreg::vGuiArray(counter.readcnt.-o) {reg}
set ::autoreg::vGuiArray(counter.readcnt.-p) {0}
set ::autoreg::vGuiArray(counter.readcnt.-rmw) {1}
set ::autoreg::vGuiArray(counter.readcnt.-t) {R}
set ::autoreg::vGuiArray(counter.readcnt.-w) {16}
set ::autoreg::vGuiArray(counter.revision.-a) {256}
set ::autoreg::vGuiArray(counter.revision.-as) {user}
set ::autoreg::vGuiArray(counter.revision.-aw) {16}
set ::autoreg::vGuiArray(counter.revision.-c) {Trunk revision.}
set ::autoreg::vGuiArray(counter.revision.-dw) {16}
set ::autoreg::vGuiArray(counter.revision.-en) {big}
set ::autoreg::vGuiArray(counter.revision.-ex) {256}
set ::autoreg::vGuiArray(counter.revision.-f) {U}
set ::autoreg::vGuiArray(counter.revision.-gloc) {0 7}
set ::autoreg::vGuiArray(counter.revision.-gtype) {label}
set ::autoreg::vGuiArray(counter.revision.-hi) {255}
set ::autoreg::vGuiArray(counter.revision.-i) {0}
set ::autoreg::vGuiArray(counter.revision.-lo) {0}
set ::autoreg::vGuiArray(counter.revision.-n) {revision}
set ::autoreg::vGuiArray(counter.revision.-o) {reg}
set ::autoreg::vGuiArray(counter.revision.-p) {0}
set ::autoreg::vGuiArray(counter.revision.-rmw) {1}
set ::autoreg::vGuiArray(counter.revision.-t) {RC}
set ::autoreg::vGuiArray(counter.revision.-v) {5}
set ::autoreg::vGuiArray(counter.revision.-w) {8}
set ::autoreg::vGuiArray(counter.setcnt.-a) {259}
set ::autoreg::vGuiArray(counter.setcnt.-as) {user}
set ::autoreg::vGuiArray(counter.setcnt.-aw) {16}
set ::autoreg::vGuiArray(counter.setcnt.-c) {Value to be set by Preset}
set ::autoreg::vGuiArray(counter.setcnt.-dw) {16}
set ::autoreg::vGuiArray(counter.setcnt.-en) {big}
set ::autoreg::vGuiArray(counter.setcnt.-ex) {65536}
set ::autoreg::vGuiArray(counter.setcnt.-f) {U}
set ::autoreg::vGuiArray(counter.setcnt.-gloc) {0 4}
set ::autoreg::vGuiArray(counter.setcnt.-gtype) {entry}
set ::autoreg::vGuiArray(counter.setcnt.-hi) {65535}
set ::autoreg::vGuiArray(counter.setcnt.-i) {0}
set ::autoreg::vGuiArray(counter.setcnt.-lo) {0}
set ::autoreg::vGuiArray(counter.setcnt.-n) {setcnt}
set ::autoreg::vGuiArray(counter.setcnt.-o) {reg}
set ::autoreg::vGuiArray(counter.setcnt.-p) {0}
set ::autoreg::vGuiArray(counter.setcnt.-rmw) {1}
set ::autoreg::vGuiArray(counter.setcnt.-t) {RW}
set ::autoreg::vGuiArray(counter.setcnt.-w) {16}
set ::autoreg::vGuiArray(counter.stepdown.-a) {258}
set ::autoreg::vGuiArray(counter.stepdown.-as) {user}
set ::autoreg::vGuiArray(counter.stepdown.-aw) {16}
set ::autoreg::vGuiArray(counter.stepdown.-c) {Step down one value}
set ::autoreg::vGuiArray(counter.stepdown.-dw) {16}
set ::autoreg::vGuiArray(counter.stepdown.-en) {big}
set ::autoreg::vGuiArray(counter.stepdown.-ex) {2}
set ::autoreg::vGuiArray(counter.stepdown.-f) {U}
set ::autoreg::vGuiArray(counter.stepdown.-gloc) {2 3}
set ::autoreg::vGuiArray(counter.stepdown.-gtype) {button}
set ::autoreg::vGuiArray(counter.stepdown.-hi) {1}
set ::autoreg::vGuiArray(counter.stepdown.-i) {0}
set ::autoreg::vGuiArray(counter.stepdown.-lo) {0}
set ::autoreg::vGuiArray(counter.stepdown.-n) {stepdown}
set ::autoreg::vGuiArray(counter.stepdown.-o) {reg}
set ::autoreg::vGuiArray(counter.stepdown.-p) {1}
set ::autoreg::vGuiArray(counter.stepdown.-rmw) {1}
set ::autoreg::vGuiArray(counter.stepdown.-t) {WI}
set ::autoreg::vGuiArray(counter.stepdown.-w) {1}
set ::autoreg::vGuiArray(counter.stepup.-a) {258}
set ::autoreg::vGuiArray(counter.stepup.-as) {user}
set ::autoreg::vGuiArray(counter.stepup.-aw) {16}
set ::autoreg::vGuiArray(counter.stepup.-c) {Step up one value}
set ::autoreg::vGuiArray(counter.stepup.-dw) {16}
set ::autoreg::vGuiArray(counter.stepup.-en) {big}
set ::autoreg::vGuiArray(counter.stepup.-ex) {2}
set ::autoreg::vGuiArray(counter.stepup.-f) {U}
set ::autoreg::vGuiArray(counter.stepup.-gloc) {2 2}
set ::autoreg::vGuiArray(counter.stepup.-gtype) {button}
set ::autoreg::vGuiArray(counter.stepup.-hi) {1}
set ::autoreg::vGuiArray(counter.stepup.-i) {0}
set ::autoreg::vGuiArray(counter.stepup.-lo) {0}
set ::autoreg::vGuiArray(counter.stepup.-n) {stepup}
set ::autoreg::vGuiArray(counter.stepup.-o) {reg}
set ::autoreg::vGuiArray(counter.stepup.-p) {0}
set ::autoreg::vGuiArray(counter.stepup.-rmw) {1}
set ::autoreg::vGuiArray(counter.stepup.-t) {WI}
set ::autoreg::vGuiArray(counter.stepup.-w) {1}
set ::autoreg::vGuiArray(counter.up.-a) {257}
set ::autoreg::vGuiArray(counter.up.-as) {user}
set ::autoreg::vGuiArray(counter.up.-aw) {16}
set ::autoreg::vGuiArray(counter.up.-c) {Count up continuously}
set ::autoreg::vGuiArray(counter.up.-dw) {16}
set ::autoreg::vGuiArray(counter.up.-en) {big}
set ::autoreg::vGuiArray(counter.up.-ex) {2}
set ::autoreg::vGuiArray(counter.up.-f) {U}
set ::autoreg::vGuiArray(counter.up.-gloc) {2 0}
set ::autoreg::vGuiArray(counter.up.-gtype) {checkbutton}
set ::autoreg::vGuiArray(counter.up.-hi) {1}
set ::autoreg::vGuiArray(counter.up.-i) {0}
set ::autoreg::vGuiArray(counter.up.-lo) {0}
set ::autoreg::vGuiArray(counter.up.-n) {up}
set ::autoreg::vGuiArray(counter.up.-o) {reg}
set ::autoreg::vGuiArray(counter.up.-p) {0}
set ::autoreg::vGuiArray(counter.up.-rmw) {1}
set ::autoreg::vGuiArray(counter.up.-t) {RW}
set ::autoreg::vGuiArray(counter.up.-v) {1}
set ::autoreg::vGuiArray(counter.up.-w) {1}
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
set ::autoreg::vGuiArray(revision.day.-v) {21}
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
set ::autoreg::vGuiArray(revision.hour.-v) {17}
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
set ::autoreg::vGuiArray(revision.minute.-v) {16}
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
set ::autoreg::vGuiArray(revision.month.-v) {02}
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
set ::autoreg::vGuiArray(revision.trunkrev.-v) {6}
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

