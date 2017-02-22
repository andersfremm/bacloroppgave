if {[namespace exist ::autoreg] == 0} {
   namespace eval ::autoreg {
      variable vMuxArray
   }
}
set ::autoreg::vMuxArray(core.-aw) {16}
set ::autoreg::vMuxArray(core.-ba) {0}
set ::autoreg::vMuxArray(core.-clkcpu) {ClkCpu}
set ::autoreg::vMuxArray(core.-clkpl) {Clk}
set ::autoreg::vMuxArray(core.-dw) {16}
set ::autoreg::vMuxArray(core.-en) {big}
set ::autoreg::vMuxArray(core.-i) {i0rb_revision i0rb_led i0count i0rb_mem}
set ::autoreg::vMuxArray(core.-n) {core}
set ::autoreg::vMuxArray(core.-o) {group}
set ::autoreg::vMuxArray(core.-path) {/i0jtag/i0demo/i0core}
set ::autoreg::vMuxArray(core.-t) {mux}
set ::autoreg::vMuxArray(core.i0count.-ba) {256}
set ::autoreg::vMuxArray(core.i0count.-bh) {261}
set ::autoreg::vMuxArray(core.i0count.-l) {::autoreg::myTree9}
set ::autoreg::vMuxArray(core.i0count.-n) {i0count}
set ::autoreg::vMuxArray(core.i0count.-o) {inst}
set ::autoreg::vMuxArray(core.i0count.-sg) {mac}
set ::autoreg::vMuxArray(core.i0rb_led.-ba) {63}
set ::autoreg::vMuxArray(core.i0rb_led.-bh) {63}
set ::autoreg::vMuxArray(core.i0rb_led.-n) {i0rb_led}
set ::autoreg::vMuxArray(core.i0rb_led.-o) {inst}
set ::autoreg::vMuxArray(core.i0rb_led.-rtb) {0}
set ::autoreg::vMuxArray(core.i0rb_led.-rtc) {0}
set ::autoreg::vMuxArray(core.i0rb_led.-sg) {led}
set ::autoreg::vMuxArray(core.i0rb_led.-sy) {1}
set ::autoreg::vMuxArray(core.i0rb_mem.-ba) {1024}
set ::autoreg::vMuxArray(core.i0rb_mem.-bh) {1034}
set ::autoreg::vMuxArray(core.i0rb_mem.-l) {::autoreg::myTree8}
set ::autoreg::vMuxArray(core.i0rb_mem.-n) {i0rb_mem}
set ::autoreg::vMuxArray(core.i0rb_mem.-o) {inst}
set ::autoreg::vMuxArray(core.i0rb_mem.-rtb) {0}
set ::autoreg::vMuxArray(core.i0rb_mem.-rtc) {0}
set ::autoreg::vMuxArray(core.i0rb_mem.-sg) {mem}
set ::autoreg::vMuxArray(core.i0rb_mem.-sy) {1}
set ::autoreg::vMuxArray(core.i0rb_revision.-ba) {0}
set ::autoreg::vMuxArray(core.i0rb_revision.-bh) {14}
set ::autoreg::vMuxArray(core.i0rb_revision.-l) {::autoreg::myTree10 ::autoreg::myTree11 ::autoreg::myTree12 ::autoreg::myTree13}
set ::autoreg::vMuxArray(core.i0rb_revision.-n) {i0rb_revision}
set ::autoreg::vMuxArray(core.i0rb_revision.-o) {inst}
set ::autoreg::vMuxArray(core.i0rb_revision.-rtb) {0}
set ::autoreg::vMuxArray(core.i0rb_revision.-rtc) {0}
set ::autoreg::vMuxArray(core.i0rb_revision.-sg) {revision}
set ::autoreg::vMuxArray(core.i0rb_revision.-sy) {1}
set ::autoreg::vMuxArray(mac.-aw) {16}
set ::autoreg::vMuxArray(mac.-ba) {256}
set ::autoreg::vMuxArray(mac.-clkcpu) {ClkCpu}
set ::autoreg::vMuxArray(mac.-clkpl) {Clk}
set ::autoreg::vMuxArray(mac.-dw) {16}
set ::autoreg::vMuxArray(mac.-en) {big}
set ::autoreg::vMuxArray(mac.-i) {i0rb_mac}
set ::autoreg::vMuxArray(mac.-n) {mac}
set ::autoreg::vMuxArray(mac.-o) {group}
set ::autoreg::vMuxArray(mac.-path) {/i0jtag/i0demo/i0core/i0count}
set ::autoreg::vMuxArray(mac.-t) {mux}
set ::autoreg::vMuxArray(mac.i0rb_mac.-ba) {0}
set ::autoreg::vMuxArray(mac.i0rb_mac.-bh) {5}
set ::autoreg::vMuxArray(mac.i0rb_mac.-l) {::autoreg::myTree14 ::autoreg::myTree15}
set ::autoreg::vMuxArray(mac.i0rb_mac.-n) {i0rb_mac}
set ::autoreg::vMuxArray(mac.i0rb_mac.-o) {inst}
set ::autoreg::vMuxArray(mac.i0rb_mac.-rtb) {0}
set ::autoreg::vMuxArray(mac.i0rb_mac.-rtc) {0}
set ::autoreg::vMuxArray(mac.i0rb_mac.-sg) {mac}
set ::autoreg::vMuxArray(mac.i0rb_mac.-sy) {0}

