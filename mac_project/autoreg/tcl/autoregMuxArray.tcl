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
set ::autoreg::vMuxArray(core.-i) {i0rb_revision i0rb_led i0mac i0rb_mem}
set ::autoreg::vMuxArray(core.-n) {core}
set ::autoreg::vMuxArray(core.-o) {group}
set ::autoreg::vMuxArray(core.-path) {/i0jtag/i0demo/i0core}
set ::autoreg::vMuxArray(core.-t) {mux}
set ::autoreg::vMuxArray(core.i0mac.-ba) {256}
set ::autoreg::vMuxArray(core.i0mac.-bh) {265}
set ::autoreg::vMuxArray(core.i0mac.-l) {::autoreg::myTree9}
set ::autoreg::vMuxArray(core.i0mac.-n) {i0mac}
set ::autoreg::vMuxArray(core.i0mac.-o) {inst}
set ::autoreg::vMuxArray(core.i0mac.-sg) {mac_ip}
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
set ::autoreg::vMuxArray(mac_ip.-aw) {16}
set ::autoreg::vMuxArray(mac_ip.-ba) {256}
set ::autoreg::vMuxArray(mac_ip.-clkcpu) {ClkCpu}
set ::autoreg::vMuxArray(mac_ip.-clkpl) {Clk}
set ::autoreg::vMuxArray(mac_ip.-dw) {16}
set ::autoreg::vMuxArray(mac_ip.-en) {big}
set ::autoreg::vMuxArray(mac_ip.-i) {i0rb_mac i0rb_mdio}
set ::autoreg::vMuxArray(mac_ip.-n) {mac_ip}
set ::autoreg::vMuxArray(mac_ip.-o) {group}
set ::autoreg::vMuxArray(mac_ip.-path) {/i0jtag/i0demo/i0core/i0mac}
set ::autoreg::vMuxArray(mac_ip.-t) {mux}
set ::autoreg::vMuxArray(mac_ip.i0rb_mac.-ba) {4}
set ::autoreg::vMuxArray(mac_ip.i0rb_mac.-bh) {9}
set ::autoreg::vMuxArray(mac_ip.i0rb_mac.-l) {::autoreg::myTree15 ::autoreg::myTree16}
set ::autoreg::vMuxArray(mac_ip.i0rb_mac.-n) {i0rb_mac}
set ::autoreg::vMuxArray(mac_ip.i0rb_mac.-o) {inst}
set ::autoreg::vMuxArray(mac_ip.i0rb_mac.-rtb) {0}
set ::autoreg::vMuxArray(mac_ip.i0rb_mac.-rtc) {0}
set ::autoreg::vMuxArray(mac_ip.i0rb_mac.-sg) {mac}
set ::autoreg::vMuxArray(mac_ip.i0rb_mac.-sy) {0}
set ::autoreg::vMuxArray(mac_ip.i0rb_mdio.-ba) {0}
set ::autoreg::vMuxArray(mac_ip.i0rb_mdio.-bh) {3}
set ::autoreg::vMuxArray(mac_ip.i0rb_mdio.-l) {::autoreg::myTree14}
set ::autoreg::vMuxArray(mac_ip.i0rb_mdio.-n) {i0rb_mdio}
set ::autoreg::vMuxArray(mac_ip.i0rb_mdio.-o) {inst}
set ::autoreg::vMuxArray(mac_ip.i0rb_mdio.-rtb) {0}
set ::autoreg::vMuxArray(mac_ip.i0rb_mdio.-rtc) {0}
set ::autoreg::vMuxArray(mac_ip.i0rb_mdio.-sg) {mdio}
set ::autoreg::vMuxArray(mac_ip.i0rb_mdio.-sy) {0}

