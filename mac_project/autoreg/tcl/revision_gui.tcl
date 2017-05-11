################# COPYRIGHT © ProgBit AS 2017 ##################################
## revision_gui.tcl has been generated with ProgBit autoreg tools by user fremm
################################################################################

package require Tk

namespace eval revision_gui {
   variable guiList -name revision -path /i0jtag/i0demo/i0core/i0rb_revision -gspan {4 8} -gw {12 8} -gupdate {2 7}
   variable regList {-name year -gloc {0 2} -gtype label} {-name rctest -gloc {2 2} -gtype label} {-name hour -gloc {0 5} -gtype label} {-name branchesrev -gloc {0 1} -gtype label} {-name month -gloc {0 3} -gtype label} {-name trunkrev -gloc {0 0} -gtype label} {-name rwtest -gloc {2 0} -gtype entry} {-name day -gloc {0 4} -gtype label} {-name minute -gloc {0 6} -gtype label} {-name latch -gloc {2 3} -gtype button} {-name rtest -gloc {2 1} -gtype label}
   variable vUpdate 0
   variable year
   variable rctest
   variable hour
   variable branchesrev
   variable month
   variable trunkrev
   variable rwtest
   variable day
   variable minute
   variable latch
   variable rtest
}

proc revision_gui::fUpdate { } {
   update
   if {$revision_gui::vUpdate && [winfo exists .revision_gui]} {
      revision_gui::getreg
      after 1000 revision_gui::fUpdate
   } else {
      after cancel revision_gui::fUpdate
   }
}

proc revision_gui::getreg { } {
   set code 0
   set returnValue OK
   set errorInfo ""
   if {[catch {
      set revision_gui::year [aget /i0jtag/i0demo/i0core/i0rb_revision/year]
      set revision_gui::rctest [aget /i0jtag/i0demo/i0core/i0rb_revision/rctest]
      set revision_gui::hour [aget /i0jtag/i0demo/i0core/i0rb_revision/hour]
      set revision_gui::branchesrev [aget /i0jtag/i0demo/i0core/i0rb_revision/branchesrev]
      set revision_gui::month [aget /i0jtag/i0demo/i0core/i0rb_revision/month]
      set revision_gui::trunkrev [aget /i0jtag/i0demo/i0core/i0rb_revision/trunkrev]
      set revision_gui::rwtest [aget /i0jtag/i0demo/i0core/i0rb_revision/rwtest]
      set revision_gui::day [aget /i0jtag/i0demo/i0core/i0rb_revision/day]
      set revision_gui::minute [aget /i0jtag/i0demo/i0core/i0rb_revision/minute]
      set revision_gui::rtest [aget /i0jtag/i0demo/i0core/i0rb_revision/rtest]
   } cmdres] == 1} {
      set code 1
      set returnValue NOK
      set errorInfo "[lindex [info level 0] 0] error: $cmdres"
   }
   return -code $code -errorInfo $errorInfo $returnValue
}

proc revision_gui::main { } {
   set w .revision_gui
   if {[catch {destroy $w}]} {
      set temp [after info]
      after cancel $temp
   }
   toplevel $w
   wm title $w "revision_gui"
   wm withdraw .
   
   ttk::labelframe $w.lf -text /i0jtag/i0demo/i0core/i0rb_revision
   grid  $w.lf           -column 0 -row 0 -columnspan 4 -rowspan 8 -sticky nsew
   
   label $w.lf.wyear -text year -width 12
   grid  $w.lf.wyear -column 0 -row 2 -sticky ew
   label $w.lf.wyearVal -textvariable revision_gui::year -width 8 -justify center
   grid  $w.lf.wyearVal -column 1 -row 2 -sticky ew
   label $w.lf.wrctest -text rctest -width 12
   grid  $w.lf.wrctest -column 2 -row 2 -sticky ew
   label $w.lf.wrctestVal -textvariable revision_gui::rctest -width 8 -justify center
   grid  $w.lf.wrctestVal -column 3 -row 2 -sticky ew
   label $w.lf.whour -text hour -width 12
   grid  $w.lf.whour -column 0 -row 5 -sticky ew
   label $w.lf.whourVal -textvariable revision_gui::hour -width 8 -justify center
   grid  $w.lf.whourVal -column 1 -row 5 -sticky ew
   label $w.lf.wbranchesrev -text branchesrev -width 12
   grid  $w.lf.wbranchesrev -column 0 -row 1 -sticky ew
   label $w.lf.wbranchesrevVal -textvariable revision_gui::branchesrev -width 8 -justify center
   grid  $w.lf.wbranchesrevVal -column 1 -row 1 -sticky ew
   label $w.lf.wmonth -text month -width 12
   grid  $w.lf.wmonth -column 0 -row 3 -sticky ew
   label $w.lf.wmonthVal -textvariable revision_gui::month -width 8 -justify center
   grid  $w.lf.wmonthVal -column 1 -row 3 -sticky ew
   label $w.lf.wtrunkrev -text trunkrev -width 12
   grid  $w.lf.wtrunkrev -column 0 -row 0 -sticky ew
   label $w.lf.wtrunkrevVal -textvariable revision_gui::trunkrev -width 8 -justify center
   grid  $w.lf.wtrunkrevVal -column 1 -row 0 -sticky ew
   label $w.lf.wrwtest -text rwtest -width 12
   grid  $w.lf.wrwtest -column 2 -row 0 -sticky ew
   entry $w.lf.wrwtestVal -textvariable revision_gui::rwtest -width 8 -justify center
   grid  $w.lf.wrwtestVal -column 3 -row 0 -sticky ew
   bind $w.lf.wrwtestVal <Return> {
      catch {aset /i0jtag/i0demo/i0core/i0rb_revision/rwtest [%W get]}
   }
   label $w.lf.wday -text day -width 12
   grid  $w.lf.wday -column 0 -row 4 -sticky ew
   label $w.lf.wdayVal -textvariable revision_gui::day -width 8 -justify center
   grid  $w.lf.wdayVal -column 1 -row 4 -sticky ew
   label $w.lf.wminute -text minute -width 12
   grid  $w.lf.wminute -column 0 -row 6 -sticky ew
   label $w.lf.wminuteVal -textvariable revision_gui::minute -width 8 -justify center
   grid  $w.lf.wminuteVal -column 1 -row 6 -sticky ew
   button $w.lf.wlatchVal -text latch -background lightblue -width 8 -justify center -command {catch {aset /i0jtag/i0demo/i0core/i0rb_revision/latch 1}}
   grid  $w.lf.wlatchVal -column 2 -row 3 -sticky ew
   label $w.lf.wrtest -text rtest -width 12
   grid  $w.lf.wrtest -column 2 -row 1 -sticky ew
   label $w.lf.wrtestVal -textvariable revision_gui::rtest -width 8 -justify center
   grid  $w.lf.wrtestVal -column 3 -row 1 -sticky ew
   
   button $w.lf.getregs -text Update -background lightblue -command {revision_gui::getreg}
   grid   $w.lf.getregs -column 2 -row 7 -sticky ew
   checkbutton $w.lf.getregsCont -variable revision_gui::vUpdate -width 8 -justify center -command {revision_gui::fUpdate}
   grid   $w.lf.getregsCont -column 3 -row 7 -sticky ew
}

if {[winfo exists .revision_gui] == 0} {
   revision_gui::main
}


