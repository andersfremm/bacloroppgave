################# COPYRIGHT © ProgBit AS 2017 ##################################
## status_gui.tcl has been generated with ProgBit autoreg tools by user fremm
################################################################################

package require Tk

namespace eval status_gui {
   variable guiList -name status -path /i0jtag/i0jtag_conf/status0 -gspan {2 8} -gw {12 8} -gupdate {0 7}
   variable regList {-name AEmpty -gloc {0 1} -gtype label} {-name BRdOnEmpty -gloc {0 4} -gtype label} {-name ExtError -gloc {0 5} -gtype label} {-name AWrOnFull -gloc {0 3} -gtype label} {-name ExtStatus -gloc {0 6} -gtype label} {-name BEmpty -gloc {0 2} -gtype label} {-name Version -gloc {0 0} -gtype label}
   variable vUpdate 0
   variable AEmpty
   variable BRdOnEmpty
   variable ExtError
   variable AWrOnFull
   variable ExtStatus
   variable BEmpty
   variable Version
}

proc status_gui::fUpdate { } {
   update
   if {$status_gui::vUpdate && [winfo exists .status_gui]} {
      status_gui::getreg
      after 1000 status_gui::fUpdate
   } else {
      after cancel status_gui::fUpdate
   }
}

proc status_gui::getreg { } {
   set code 0
   set returnValue OK
   set errorInfo ""
   if {[catch {
      set status_gui::AEmpty [aget /i0jtag/i0jtag_conf/status0/AEmpty]
      set status_gui::BRdOnEmpty [aget /i0jtag/i0jtag_conf/status0/BRdOnEmpty]
      set status_gui::ExtError [aget /i0jtag/i0jtag_conf/status0/ExtError]
      set status_gui::AWrOnFull [aget /i0jtag/i0jtag_conf/status0/AWrOnFull]
      set status_gui::ExtStatus [aget /i0jtag/i0jtag_conf/status0/ExtStatus]
      set status_gui::BEmpty [aget /i0jtag/i0jtag_conf/status0/BEmpty]
      set status_gui::Version [aget /i0jtag/i0jtag_conf/status0/Version]
   } cmdres] == 1} {
      set code 1
      set returnValue NOK
      set errorInfo "[lindex [info level 0] 0] error: $cmdres"
   }
   return -code $code -errorInfo $errorInfo $returnValue
}

proc status_gui::main { } {
   set w .status_gui
   if {[catch {destroy $w}]} {
      set temp [after info]
      after cancel $temp
   }
   toplevel $w
   wm title $w "status_gui"
   wm withdraw .
   
   ttk::labelframe $w.lf -text /i0jtag/i0jtag_conf/status0
   grid  $w.lf           -column 0 -row 0 -columnspan 2 -rowspan 8 -sticky nsew
   
   label $w.lf.wAEmpty -text AEmpty -width 12
   grid  $w.lf.wAEmpty -column 0 -row 1 -sticky ew
   label $w.lf.wAEmptyVal -textvariable status_gui::AEmpty -width 8 -justify center
   grid  $w.lf.wAEmptyVal -column 1 -row 1 -sticky ew
   label $w.lf.wBRdOnEmpty -text BRdOnEmpty -width 12
   grid  $w.lf.wBRdOnEmpty -column 0 -row 4 -sticky ew
   label $w.lf.wBRdOnEmptyVal -textvariable status_gui::BRdOnEmpty -width 8 -justify center
   grid  $w.lf.wBRdOnEmptyVal -column 1 -row 4 -sticky ew
   label $w.lf.wExtError -text ExtError -width 12
   grid  $w.lf.wExtError -column 0 -row 5 -sticky ew
   label $w.lf.wExtErrorVal -textvariable status_gui::ExtError -width 8 -justify center
   grid  $w.lf.wExtErrorVal -column 1 -row 5 -sticky ew
   label $w.lf.wAWrOnFull -text AWrOnFull -width 12
   grid  $w.lf.wAWrOnFull -column 0 -row 3 -sticky ew
   label $w.lf.wAWrOnFullVal -textvariable status_gui::AWrOnFull -width 8 -justify center
   grid  $w.lf.wAWrOnFullVal -column 1 -row 3 -sticky ew
   label $w.lf.wExtStatus -text ExtStatus -width 12
   grid  $w.lf.wExtStatus -column 0 -row 6 -sticky ew
   label $w.lf.wExtStatusVal -textvariable status_gui::ExtStatus -width 8 -justify center
   grid  $w.lf.wExtStatusVal -column 1 -row 6 -sticky ew
   label $w.lf.wBEmpty -text BEmpty -width 12
   grid  $w.lf.wBEmpty -column 0 -row 2 -sticky ew
   label $w.lf.wBEmptyVal -textvariable status_gui::BEmpty -width 8 -justify center
   grid  $w.lf.wBEmptyVal -column 1 -row 2 -sticky ew
   label $w.lf.wVersion -text Version -width 12
   grid  $w.lf.wVersion -column 0 -row 0 -sticky ew
   label $w.lf.wVersionVal -textvariable status_gui::Version -width 8 -justify center
   grid  $w.lf.wVersionVal -column 1 -row 0 -sticky ew
   
   button $w.lf.getregs -text Update -background lightblue -command {status_gui::getreg}
   grid   $w.lf.getregs -column 0 -row 7 -sticky ew
   checkbutton $w.lf.getregsCont -variable status_gui::vUpdate -width 8 -justify center -command {status_gui::fUpdate}
   grid   $w.lf.getregsCont -column 1 -row 7 -sticky ew
}

if {[winfo exists .status_gui] == 0} {
   status_gui::main
}


