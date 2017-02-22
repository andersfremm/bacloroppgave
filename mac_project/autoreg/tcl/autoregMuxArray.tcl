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
set ::autoreg::vMuxArray(core.i0count.-sg) {counter_ip}
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
set ::autoreg::vMuxArray(counter_ip.-aw) {16}
set ::autoreg::vMuxArray(counter_ip.-ba) {256}
set ::autoreg::vMuxArray(counter_ip.-clkcpu) {ClkCpu}
set ::autoreg::vMuxArray(counter_ip.-clkpl) {Clk}
set ::autoreg::vMuxArray(counter_ip.-dw) {16}
set ::autoreg::vMuxArray(counter_ip.-en) {big}
set ::autoreg::vMuxArray(counter_ip.-i) {i0rb_counter}
set ::autoreg::vMuxArray(counter_ip.-n) {counter_ip}
set ::autoreg::vMuxArray(counter_ip.-o) {group}
set ::autoreg::vMuxArray(counter_ip.-path) {/i0jtag/i0demo/i0core/i0count}
set ::autoreg::vMuxArray(counter_ip.-t) {mux}
set ::autoreg::vMuxArray(counter_ip.i0rb_counter.-ba) {0}
set ::autoreg::vMuxArray(counter_ip.i0rb_counter.-bh) {5}
set ::autoreg::vMuxArray(counter_ip.i0rb_counter.-l) {::autoreg::myTree14 ::autoreg::myTree15}
set ::autoreg::vMuxArray(counter_ip.i0rb_counter.-n) {i0rb_counter}
set ::autoreg::vMuxArray(counter_ip.i0rb_counter.-o) {inst}
set ::autoreg::vMuxArray(counter_ip.i0rb_counter.-rtb) {0}
set ::autoreg::vMuxArray(counter_ip.i0rb_counter.-rtc) {0}
set ::autoreg::vMuxArray(counter_ip.i0rb_counter.-sg) {counter}
set ::autoreg::vMuxArray(counter_ip.i0rb_counter.-sy) {0}

