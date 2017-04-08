################# COPYRIGHT © ProgBit AS 2017 ##################################
## mac_gui.tcl has been generated with ProgBit autoreg tools by user User
################################################################################

package require Tk

namespace eval mac_gui {
   variable guiList -name mac -path /i0jtag/i0demo/i0core/i0mac/i0rb_mac -gspan {6 8} -gw {12 8} -gupdate {4 7}
   variable regList {-name FifoRst -gloc {0 10} -gtype button} {-name TxFifoFull -gloc {0  4} -gtype label} {-name TxFifo -gloc {0  0} -gtype entry} {-name TxFifoEmpty -gloc {0  5} -gtype label} {-name TxCnt -gloc {0  2} -gtype label} {-name RxFifoEmpty -gloc {0  7} -gtype label} {-name RxFifo -gloc {0  1} -gtype label} {-name RxCnt -gloc {0  3} -gtype label} {-name TxStart -gloc {0  9} -gtype button} {-name RxFifoFull -gloc {0  6} -gtype label} {-name LoopEn -gloc {0  8} -gtype checkbutton}
   variable vUpdate 0
   variable FifoRst
   variable TxFifoFull
   variable TxFifo
   variable TxFifoEmpty
   variable TxCnt
   variable RxFifoEmpty
   variable RxFifo
   variable RxCnt
   variable TxStart
   variable RxFifoFull
   variable LoopEn
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
      set mac_gui::TxFifoFull [aget /i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoFull]
      set mac_gui::TxFifo [aget /i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifo]
      set mac_gui::TxFifoEmpty [aget /i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifoEmpty]
      set mac_gui::TxCnt [aget /i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxCnt]
      set mac_gui::RxFifoEmpty [aget /i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoEmpty]
      set mac_gui::RxFifo [aget /i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifo]
      set mac_gui::RxCnt [aget /i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxCnt]
      set mac_gui::RxFifoFull [aget /i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifoFull]
      set mac_gui::LoopEn [aget /i0jtag/i0demo/i0core/i0mac/i0rb_mac/LoopEn]
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
   
   button $w.lf.wFifoRstVal -text FifoRst -background lightblue -width 8 -justify center -command {catch {aset /i0jtag/i0demo/i0core/i0mac/i0rb_mac/FifoRst 1}}
   grid  $w.lf.wFifoRstVal -column 0 -row 10 -sticky ew
   label $w.lf.wTxFifoFull -text TxFifoFull -width 12
   grid  $w.lf.wTxFifoFull -column 0 -row 4 -sticky ew
   label $w.lf.wTxFifoFullVal -textvariable mac_gui::TxFifoFull -width 8 -justify center
   grid  $w.lf.wTxFifoFullVal -column 1 -row 4 -sticky ew
   label $w.lf.wTxFifo -text TxFifo -width 12
   grid  $w.lf.wTxFifo -column 0 -row 0 -sticky ew
   entry $w.lf.wTxFifoVal -textvariable mac_gui::TxFifo -width 8 -justify center
   grid  $w.lf.wTxFifoVal -column 1 -row 0 -sticky ew
   bind $w.lf.wTxFifoVal <Return> {
      catch {aset /i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifo [%W get]}
   }
   label $w.lf.wTxFifoEmpty -text TxFifoEmpty -width 12
   grid  $w.lf.wTxFifoEmpty -column 0 -row 5 -sticky ew
   label $w.lf.wTxFifoEmptyVal -textvariable mac_gui::TxFifoEmpty -width 8 -justify center
   grid  $w.lf.wTxFifoEmptyVal -column 1 -row 5 -sticky ew
   label $w.lf.wTxCnt -text TxCnt -width 12
   grid  $w.lf.wTxCnt -column 0 -row 2 -sticky ew
   label $w.lf.wTxCntVal -textvariable mac_gui::TxCnt -width 8 -justify center
   grid  $w.lf.wTxCntVal -column 1 -row 2 -sticky ew
   label $w.lf.wRxFifoEmpty -text RxFifoEmpty -width 12
   grid  $w.lf.wRxFifoEmpty -column 0 -row 7 -sticky ew
   label $w.lf.wRxFifoEmptyVal -textvariable mac_gui::RxFifoEmpty -width 8 -justify center
   grid  $w.lf.wRxFifoEmptyVal -column 1 -row 7 -sticky ew
   label $w.lf.wRxFifo -text RxFifo -width 12
   grid  $w.lf.wRxFifo -column 0 -row 1 -sticky ew
   label $w.lf.wRxFifoVal -textvariable mac_gui::RxFifo -width 8 -justify center
   grid  $w.lf.wRxFifoVal -column 1 -row 1 -sticky ew
   label $w.lf.wRxCnt -text RxCnt -width 12
   grid  $w.lf.wRxCnt -column 0 -row 3 -sticky ew
   label $w.lf.wRxCntVal -textvariable mac_gui::RxCnt -width 8 -justify center
   grid  $w.lf.wRxCntVal -column 1 -row 3 -sticky ew
   button $w.lf.wTxStartVal -text TxStart -background lightblue -width 8 -justify center -command {catch {aset /i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxStart 1}}
   grid  $w.lf.wTxStartVal -column 0 -row 9 -sticky ew
   label $w.lf.wRxFifoFull -text RxFifoFull -width 12
   grid  $w.lf.wRxFifoFull -column 0 -row 6 -sticky ew
   label $w.lf.wRxFifoFullVal -textvariable mac_gui::RxFifoFull -width 8 -justify center
   grid  $w.lf.wRxFifoFullVal -column 1 -row 6 -sticky ew
   label $w.lf.wLoopEn -text LoopEn -width 12
   grid  $w.lf.wLoopEn -column 0 -row 8 -sticky ew
   checkbutton $w.lf.wLoopEnVal -variable mac_gui::LoopEn -width 8 -justify center -command {catch {aset /i0jtag/i0demo/i0core/i0mac/i0rb_mac/LoopEn $mac_gui::LoopEn}}
   grid  $w.lf.wLoopEnVal -column 1 -row 8 -sticky ew
   
   button $w.lf.getregs -text Update -background lightblue -command {mac_gui::getreg}
   grid   $w.lf.getregs -column 4 -row 7 -sticky ew
   checkbutton $w.lf.getregsCont -variable mac_gui::vUpdate -width 8 -justify center -command {mac_gui::fUpdate}
   grid   $w.lf.getregsCont -column 5 -row 7 -sticky ew
}

if {[winfo exists .mac_gui] == 0} {
   mac_gui::main
}


