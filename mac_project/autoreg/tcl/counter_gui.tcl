################# COPYRIGHT © ProgBit AS 2017 ##################################
## counter_gui.tcl has been generated with ProgBit autoreg tools by user User
################################################################################

package require Tk

namespace eval counter_gui {
   variable guiList -name counter -path /i0jtag/i0demo/i0core/i0count/i0rb_counter -gspan {6 8} -gw {12 8} -gupdate {4 7}
   variable regList {-name stepup -gloc {2 2} -gtype button} {-name stepdown -gloc {2 3} -gtype button} {-name up -gloc {2 0} -gtype checkbutton} {-name max -gloc {0 1} -gtype entry} {-name readcnt -gloc {4 0} -gtype label} {-name revision -gloc {0 7} -gtype label} {-name setcnt -gloc {0 4} -gtype entry} {-name prescale -gloc {0 0} -gtype entry} {-name down -gloc {2 1} -gtype checkbutton} {-name preset -gloc {2 4} -gtype button}
   variable vUpdate 0
   variable stepup
   variable stepdown
   variable up
   variable max
   variable readcnt
   variable revision
   variable setcnt
   variable prescale
   variable down
   variable preset
}

proc counter_gui::fUpdate { } {
   update
   if {$counter_gui::vUpdate && [winfo exists .counter_gui]} {
      counter_gui::getreg
      after 1000 counter_gui::fUpdate
   } else {
      after cancel counter_gui::fUpdate
   }
}

proc counter_gui::getreg { } {
   set code 0
   set returnValue OK
   set errorInfo ""
   if {[catch {
      set counter_gui::up [aget /i0jtag/i0demo/i0core/i0count/i0rb_counter/up]
      set counter_gui::max [aget /i0jtag/i0demo/i0core/i0count/i0rb_counter/max]
      set counter_gui::readcnt [aget /i0jtag/i0demo/i0core/i0count/i0rb_counter/readcnt]
      set counter_gui::revision [aget /i0jtag/i0demo/i0core/i0count/i0rb_counter/revision]
      set counter_gui::setcnt [aget /i0jtag/i0demo/i0core/i0count/i0rb_counter/setcnt]
      set counter_gui::prescale [aget /i0jtag/i0demo/i0core/i0count/i0rb_counter/prescale]
      set counter_gui::down [aget /i0jtag/i0demo/i0core/i0count/i0rb_counter/down]
   } cmdres] == 1} {
      set code 1
      set returnValue NOK
      set errorInfo "[lindex [info level 0] 0] error: $cmdres"
   }
   return -code $code -errorInfo $errorInfo $returnValue
}

proc counter_gui::main { } {
   set w .counter_gui
   if {[catch {destroy $w}]} {
      set temp [after info]
      after cancel $temp
   }
   toplevel $w
   wm title $w "counter_gui"
   wm withdraw .
   
   ttk::labelframe $w.lf -text /i0jtag/i0demo/i0core/i0count/i0rb_counter
   grid  $w.lf           -column 0 -row 0 -columnspan 6 -rowspan 8 -sticky nsew
   
   button $w.lf.wstepupVal -text stepup -background lightblue -width 8 -justify center -command {catch {aset /i0jtag/i0demo/i0core/i0count/i0rb_counter/stepup 1}}
   grid  $w.lf.wstepupVal -column 2 -row 2 -sticky ew
   button $w.lf.wstepdownVal -text stepdown -background lightblue -width 8 -justify center -command {catch {aset /i0jtag/i0demo/i0core/i0count/i0rb_counter/stepdown 1}}
   grid  $w.lf.wstepdownVal -column 2 -row 3 -sticky ew
   label $w.lf.wup -text up -width 12
   grid  $w.lf.wup -column 2 -row 0 -sticky ew
   checkbutton $w.lf.wupVal -variable counter_gui::up -width 8 -justify center -command {catch {aset /i0jtag/i0demo/i0core/i0count/i0rb_counter/up $counter_gui::up}}
   grid  $w.lf.wupVal -column 3 -row 0 -sticky ew
   label $w.lf.wmax -text max -width 12
   grid  $w.lf.wmax -column 0 -row 1 -sticky ew
   entry $w.lf.wmaxVal -textvariable counter_gui::max -width 8 -justify center
   grid  $w.lf.wmaxVal -column 1 -row 1 -sticky ew
   bind $w.lf.wmaxVal <Return> {
      catch {aset /i0jtag/i0demo/i0core/i0count/i0rb_counter/max [%W get]}
   }
   label $w.lf.wreadcnt -text readcnt -width 12
   grid  $w.lf.wreadcnt -column 4 -row 0 -sticky ew
   label $w.lf.wreadcntVal -textvariable counter_gui::readcnt -width 8 -justify center
   grid  $w.lf.wreadcntVal -column 5 -row 0 -sticky ew
   label $w.lf.wrevision -text revision -width 12
   grid  $w.lf.wrevision -column 0 -row 7 -sticky ew
   label $w.lf.wrevisionVal -textvariable counter_gui::revision -width 8 -justify center
   grid  $w.lf.wrevisionVal -column 1 -row 7 -sticky ew
   label $w.lf.wsetcnt -text setcnt -width 12
   grid  $w.lf.wsetcnt -column 0 -row 4 -sticky ew
   entry $w.lf.wsetcntVal -textvariable counter_gui::setcnt -width 8 -justify center
   grid  $w.lf.wsetcntVal -column 1 -row 4 -sticky ew
   bind $w.lf.wsetcntVal <Return> {
      catch {aset /i0jtag/i0demo/i0core/i0count/i0rb_counter/setcnt [%W get]}
   }
   label $w.lf.wprescale -text prescale -width 12
   grid  $w.lf.wprescale -column 0 -row 0 -sticky ew
   entry $w.lf.wprescaleVal -textvariable counter_gui::prescale -width 8 -justify center
   grid  $w.lf.wprescaleVal -column 1 -row 0 -sticky ew
   bind $w.lf.wprescaleVal <Return> {
      catch {aset /i0jtag/i0demo/i0core/i0count/i0rb_counter/prescale [%W get]}
   }
   label $w.lf.wdown -text down -width 12
   grid  $w.lf.wdown -column 2 -row 1 -sticky ew
   checkbutton $w.lf.wdownVal -variable counter_gui::down -width 8 -justify center -command {catch {aset /i0jtag/i0demo/i0core/i0count/i0rb_counter/down $counter_gui::down}}
   grid  $w.lf.wdownVal -column 3 -row 1 -sticky ew
   button $w.lf.wpresetVal -text preset -background lightblue -width 8 -justify center -command {catch {aset /i0jtag/i0demo/i0core/i0count/i0rb_counter/preset 1}}
   grid  $w.lf.wpresetVal -column 2 -row 4 -sticky ew
   
   button $w.lf.getregs -text Update -background lightblue -command {counter_gui::getreg}
   grid   $w.lf.getregs -column 4 -row 7 -sticky ew
   checkbutton $w.lf.getregsCont -variable counter_gui::vUpdate -width 8 -justify center -command {counter_gui::fUpdate}
   grid   $w.lf.getregsCont -column 5 -row 7 -sticky ew
}

if {[winfo exists .counter_gui] == 0} {
   counter_gui::main
}


