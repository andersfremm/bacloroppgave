set w .autoregGui
set m $w.menu.regbankgui
if {[winfo exists $m] == 1} {
   catch {$m delete 0 end}
}

$m add command -label "/i0jtag/i0demo/i0core/i0rb_led" -command {catch {source ./autoreg/tcl/led_gui.tcl}}

$m add command -label "/i0jtag/i0demo/i0core/i0rb_revision" -command {catch {source ./autoreg/tcl/revision_gui.tcl}}

$m add command -label "/i0jtag/i0demo/i0core/i0mac/i0rb_mac" -command {catch {source ./autoreg/tcl/mac_gui.tcl}}

$m add command -label "/i0jtag/i0jtag_conf/status0" -command {catch {source ./autoreg/tcl/status_gui.tcl}}


