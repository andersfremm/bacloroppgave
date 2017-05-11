################# COPYRIGHT © ProgBit AS 2017 ##################################
## mac_gui.tcl has been generated with ProgBit autoreg tools by user fremm
################################################################################

package require Tk

namespace eval mac_gui {
   variable guiList -name mac -path /i0jtag/i0demo/i0core/i0mac/i0rb_mac -gspan {6 8} -gw {12 8} -gupdate {4 7}
   variable regList {-name down -gloc {2 1} -gtype checkbutton} {-name stepdown -gloc {2 3} -gtype button} {-name stepup -gloc {2 2} -gtype button} {-name readcnt -gloc {4 0} -gtype label} {-name prescale -gloc {0 0} -gtype entry} {-name setcnt -gloc {0 4} -gtype entry} {-name preset -gloc {2 4} -gtype button} {-name up -gloc {2 0} -gtype checkbutton} {-name revision -gloc {0 7} -gtype label} {-name max -gloc {0 1} -gtype entry}
   variable vUpdate 0
   variable down
   variable stepdown
   variable stepup
   variable readcnt
   variable prescale
   variable setcnt
   variable preset
   variable up
   variable revision
   variable max
}

proc mac_gui::fUpdate { } {
   update
   if {$mac_gui::vUpdate && [winfo exists .mac_gui]} {
      mac_gui::getreg
      after 1000 mac_gui::fUpdate
   } else {
      after cancel mac_gui::fUpdate
   }
}

proc mac_gui::getreg { } {
   set code 0
   set returnValue OK
   set errorInfo ""
   if {[catch {
      set mac_gui::down [aget /i0jtag/i0demo/i0core/i0mac/i0rb_mac/down]
      set mac_gui::readcnt [aget /i0jtag/i0demo/i0core/i0mac/i0rb_mac/readcnt]
      set mac_gui::prescale [aget /i0jtag/i0demo/i0core/i0mac/i0rb_mac/prescale]
      set mac_gui::setcnt [aget /i0jtag/i0demo/i0core/i0mac/i0rb_mac/setcnt]
      set mac_gui::up [aget /i0jtag/i0demo/i0core/i0mac/i0rb_mac/up]
      set mac_gui::revision [aget /i0jtag/i0demo/i0core/i0mac/i0rb_mac/revision]
      set mac_gui::max [aget /i0jtag/i0demo/i0core/i0mac/i0rb_mac/max]
   } cmdres] == 1} {
      set code 1
      set returnValue NOK
      set errorInfo "[lindex [info level 0] 0] error: $cmdres"
   }
   return -code $code -errorInfo $errorInfo $returnValue
}

proc mac_gui::main { } {
   set w .mac_gui
   if {[catch {destroy $w}]} {
      set temp [after info]
      after cancel $temp
   }
   toplevel $w
   wm title $w "mac_gui"
   wm withdraw .
   
   ttk::labelframe $w.lf -text /i0jtag/i0demo/i0core/i0mac/i0rb_mac
   grid  $w.lf           -column 0 -row 0 -columnspan 6 -rowspan 8 -sticky nsew
   
   label $w.lf.wdown -text down -width 12
   grid  $w.lf.wdown -column 2 -row 1 -sticky ew
   checkbutton $w.lf.wdownVal -variable mac_gui::down -width 8 -justify center -command {catch {aset /i0jtag/i0demo/i0core/i0mac/i0rb_mac/down $mac_gui::down}}
   grid  $w.lf.wdownVal -column 3 -row 1 -sticky ew
   button $w.lf.wstepdownVal -text stepdown -background lightblue -width 8 -justify center -command {catch {aset /i0jtag/i0demo/i0core/i0mac/i0rb_mac/stepdown 1}}
   grid  $w.lf.wstepdownVal -column 2 -row 3 -sticky ew
   button $w.lf.wstepupVal -text stepup -background lightblue -width 8 -justify center -command {catch {aset /i0jtag/i0demo/i0core/i0mac/i0rb_mac/stepup 1}}
   grid  $w.lf.wstepupVal -column 2 -row 2 -sticky ew
   label $w.lf.wreadcnt -text readcnt -width 12
   grid  $w.lf.wreadcnt -column 4 -row 0 -sticky ew
   label $w.lf.wreadcntVal -textvariable mac_gui::readcnt -width 8 -justify center
   grid  $w.lf.wreadcntVal -column 5 -row 0 -sticky ew
   label $w.lf.wprescale -text prescale -width 12
   grid  $w.lf.wprescale -column 0 -row 0 -sticky ew
   entry $w.lf.wprescaleVal -textvariable mac_gui::prescale -width 8 -justify center
   grid  $w.lf.wprescaleVal -column 1 -row 0 -sticky ew
   bind $w.lf.wprescaleVal <Return> {
      catch {aset /i0jtag/i0demo/i0core/i0mac/i0rb_mac/prescale [%W get]}
   }
   label $w.lf.wsetcnt -text setcnt -width 12
   grid  $w.lf.wsetcnt -column 0 -row 4 -sticky ew
   entry $w.lf.wsetcntVal -textvariable mac_gui::setcnt -width 8 -justify center
   grid  $w.lf.wsetcntVal -column 1 -row 4 -sticky ew
   bind $w.lf.wsetcntVal <Return> {
      catch {aset /i0jtag/i0demo/i0core/i0mac/i0rb_mac/setcnt [%W get]}
   }
   button $w.lf.wpresetVal -text preset -background lightblue -width 8 -justify center -command {catch {aset /i0jtag/i0demo/i0core/i0mac/i0rb_mac/preset 1}}
   grid  $w.lf.wpresetVal -column 2 -row 4 -sticky ew
   label $w.lf.wup -text up -width 12
   grid  $w.lf.wup -column 2 -row 0 -sticky ew
   checkbutton $w.lf.wupVal -variable mac_gui::up -width 8 -justify center -command {catch {aset /i0jtag/i0demo/i0core/i0mac/i0rb_mac/up $mac_gui::up}}
   grid  $w.lf.wupVal -column 3 -row 0 -sticky ew
   label $w.lf.wrevision -text revision -width 12
   grid  $w.lf.wrevision -column 0 -row 7 -sticky ew
   label $w.lf.wrevisionVal -textvariable mac_gui::revision -width 8 -justify center
   grid  $w.lf.wrevisionVal -column 1 -row 7 -sticky ew
   label $w.lf.wmax -text max -width 12
   grid  $w.lf.wmax -column 0 -row 1 -sticky ew
   entry $w.lf.wmaxVal -textvariable mac_gui::max -width 8 -justify center
   grid  $w.lf.wmaxVal -column 1 -row 1 -sticky ew
   bind $w.lf.wmaxVal <Return> {
      catch {aset /i0jtag/i0demo/i0core/i0mac/i0rb_mac/max [%W get]}
   }
   
   button $w.lf.getregs -text Update -background lightblue -command {mac_gui::getreg}
   grid   $w.lf.getregs -column 4 -row 7 -sticky ew
   checkbutton $w.lf.getregsCont -variable mac_gui::vUpdate -width 8 -justify center -command {mac_gui::fUpdate}
   grid   $w.lf.getregsCont -column 5 -row 7 -sticky ew
}

if {[winfo exists .mac_gui] == 0} {
   mac_gui::main
}


