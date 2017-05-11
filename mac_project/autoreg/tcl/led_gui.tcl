################# COPYRIGHT © ProgBit AS 2017 ##################################
## led_gui.tcl has been generated with ProgBit autoreg tools by user fremm
################################################################################

package require Tk

namespace eval led_gui {
   variable guiList -name led -path /i0jtag/i0demo/i0core/i0rb_led -gspan {2 4} -gw {12 8} -gupdate {0 4}
   variable regList {-name led2 -gloc {0 2} -gtype checkbutton} {-name led1 -gloc {0 1} -gtype checkbutton} {-name led0 -gloc {0 0} -gtype checkbutton} {-name led3 -gloc {0 3} -gtype checkbutton}
   variable vUpdate 0
   variable led2
   variable led1
   variable led0
   variable led3
}

proc led_gui::fUpdate { } {
   update
   if {$led_gui::vUpdate && [winfo exists .led_gui]} {
      led_gui::getreg
      after 1000 led_gui::fUpdate
   } else {
      after cancel led_gui::fUpdate
   }
}

proc led_gui::getreg { } {
   set code 0
   set returnValue OK
   set errorInfo ""
   if {[catch {
      set led_gui::led2 [aget /i0jtag/i0demo/i0core/i0rb_led/led2]
      set led_gui::led1 [aget /i0jtag/i0demo/i0core/i0rb_led/led1]
      set led_gui::led0 [aget /i0jtag/i0demo/i0core/i0rb_led/led0]
      set led_gui::led3 [aget /i0jtag/i0demo/i0core/i0rb_led/led3]
   } cmdres] == 1} {
      set code 1
      set returnValue NOK
      set errorInfo "[lindex [info level 0] 0] error: $cmdres"
   }
   return -code $code -errorInfo $errorInfo $returnValue
}

proc led_gui::main { } {
   set w .led_gui
   if {[catch {destroy $w}]} {
      set temp [after info]
      after cancel $temp
   }
   toplevel $w
   wm title $w "led_gui"
   wm withdraw .
   
   ttk::labelframe $w.lf -text /i0jtag/i0demo/i0core/i0rb_led
   grid  $w.lf           -column 0 -row 0 -columnspan 2 -rowspan 4 -sticky nsew
   
   label $w.lf.wled2 -text led2 -width 12
   grid  $w.lf.wled2 -column 0 -row 2 -sticky ew
   checkbutton $w.lf.wled2Val -variable led_gui::led2 -width 8 -justify center -command {catch {aset /i0jtag/i0demo/i0core/i0rb_led/led2 $led_gui::led2}}
   grid  $w.lf.wled2Val -column 1 -row 2 -sticky ew
   label $w.lf.wled1 -text led1 -width 12
   grid  $w.lf.wled1 -column 0 -row 1 -sticky ew
   checkbutton $w.lf.wled1Val -variable led_gui::led1 -width 8 -justify center -command {catch {aset /i0jtag/i0demo/i0core/i0rb_led/led1 $led_gui::led1}}
   grid  $w.lf.wled1Val -column 1 -row 1 -sticky ew
   label $w.lf.wled0 -text led0 -width 12
   grid  $w.lf.wled0 -column 0 -row 0 -sticky ew
   checkbutton $w.lf.wled0Val -variable led_gui::led0 -width 8 -justify center -command {catch {aset /i0jtag/i0demo/i0core/i0rb_led/led0 $led_gui::led0}}
   grid  $w.lf.wled0Val -column 1 -row 0 -sticky ew
   label $w.lf.wled3 -text led3 -width 12
   grid  $w.lf.wled3 -column 0 -row 3 -sticky ew
   checkbutton $w.lf.wled3Val -variable led_gui::led3 -width 8 -justify center -command {catch {aset /i0jtag/i0demo/i0core/i0rb_led/led3 $led_gui::led3}}
   grid  $w.lf.wled3Val -column 1 -row 3 -sticky ew
   
   button $w.lf.getregs -text Update -background lightblue -command {led_gui::getreg}
   grid   $w.lf.getregs -column 0 -row 4 -sticky ew
   checkbutton $w.lf.getregsCont -variable led_gui::vUpdate -width 8 -justify center -command {led_gui::fUpdate}
   grid   $w.lf.getregsCont -column 1 -row 4 -sticky ew
}

if {[winfo exists .led_gui] == 0} {
   led_gui::main
}


