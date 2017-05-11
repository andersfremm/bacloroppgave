################# COPYRIGHT © ProgBit AS 2017 ##################################
## mdio_gui.tcl has been generated with ProgBit autoreg tools by user fremm
################################################################################

package require Tk

namespace eval mdio_gui {
   variable guiList -name mdio -path /i0jtag/i0demo/i0core/i0mac/i0rb_mdio -gspan {6 8} -gw {12 8} -gupdate {4 7}
   variable regList {-name RegAddr -gloc {0 4} -gtype entry} {-name Rd -gloc {0 2} -gtype button} {-name Wr -gloc {0 1} -gtype button} {-name Ack -gloc {0 3} -gtype label} {-name PhyAddr -gloc {0 0} -gtype entry} {-name DataI -gloc {0 6} -gtype label} {-name DataO -gloc {0 5} -gtype entry}
   variable vUpdate 0
   variable RegAddr
   variable Rd
   variable Wr
   variable Ack
   variable PhyAddr
   variable DataI
   variable DataO
}

proc mdio_gui::fUpdate { } {
   update
   if {$mdio_gui::vUpdate && [winfo exists .mdio_gui]} {
      mdio_gui::getreg
      after 1000 mdio_gui::fUpdate
   } else {
      after cancel mdio_gui::fUpdate
   }
}

proc mdio_gui::getreg { } {
   set code 0
   set returnValue OK
   set errorInfo ""
   if {[catch {
      set mdio_gui::RegAddr [aget /i0jtag/i0demo/i0core/i0mac/i0rb_mdio/RegAddr]
      set mdio_gui::Ack [aget /i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Ack]
      set mdio_gui::PhyAddr [aget /i0jtag/i0demo/i0core/i0mac/i0rb_mdio/PhyAddr]
      set mdio_gui::DataI [aget /i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataI]
      set mdio_gui::DataO [aget /i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataO]
   } cmdres] == 1} {
      set code 1
      set returnValue NOK
      set errorInfo "[lindex [info level 0] 0] error: $cmdres"
   }
   return -code $code -errorInfo $errorInfo $returnValue
}

proc mdio_gui::main { } {
   set w .mdio_gui
   if {[catch {destroy $w}]} {
      set temp [after info]
      after cancel $temp
   }
   toplevel $w
   wm title $w "mdio_gui"
   wm withdraw .
   
   ttk::labelframe $w.lf -text /i0jtag/i0demo/i0core/i0mac/i0rb_mdio
   grid  $w.lf           -column 0 -row 0 -columnspan 6 -rowspan 8 -sticky nsew
   
   label $w.lf.wRegAddr -text RegAddr -width 12
   grid  $w.lf.wRegAddr -column 0 -row 4 -sticky ew
   entry $w.lf.wRegAddrVal -textvariable mdio_gui::RegAddr -width 8 -justify center
   grid  $w.lf.wRegAddrVal -column 1 -row 4 -sticky ew
   bind $w.lf.wRegAddrVal <Return> {
      catch {aset /i0jtag/i0demo/i0core/i0mac/i0rb_mdio/RegAddr [%W get]}
   }
   button $w.lf.wRdVal -text Rd -background lightblue -width 8 -justify center -command {catch {aset /i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Rd 1}}
   grid  $w.lf.wRdVal -column 0 -row 2 -sticky ew
   button $w.lf.wWrVal -text Wr -background lightblue -width 8 -justify center -command {catch {aset /i0jtag/i0demo/i0core/i0mac/i0rb_mdio/Wr 1}}
   grid  $w.lf.wWrVal -column 0 -row 1 -sticky ew
   label $w.lf.wAck -text Ack -width 12
   grid  $w.lf.wAck -column 0 -row 3 -sticky ew
   label $w.lf.wAckVal -textvariable mdio_gui::Ack -width 8 -justify center
   grid  $w.lf.wAckVal -column 1 -row 3 -sticky ew
   label $w.lf.wPhyAddr -text PhyAddr -width 12
   grid  $w.lf.wPhyAddr -column 0 -row 0 -sticky ew
   entry $w.lf.wPhyAddrVal -textvariable mdio_gui::PhyAddr -width 8 -justify center
   grid  $w.lf.wPhyAddrVal -column 1 -row 0 -sticky ew
   bind $w.lf.wPhyAddrVal <Return> {
      catch {aset /i0jtag/i0demo/i0core/i0mac/i0rb_mdio/PhyAddr [%W get]}
   }
   label $w.lf.wDataI -text DataI -width 12
   grid  $w.lf.wDataI -column 0 -row 6 -sticky ew
   label $w.lf.wDataIVal -textvariable mdio_gui::DataI -width 8 -justify center
   grid  $w.lf.wDataIVal -column 1 -row 6 -sticky ew
   label $w.lf.wDataO -text DataO -width 12
   grid  $w.lf.wDataO -column 0 -row 5 -sticky ew
   entry $w.lf.wDataOVal -textvariable mdio_gui::DataO -width 8 -justify center
   grid  $w.lf.wDataOVal -column 1 -row 5 -sticky ew
   bind $w.lf.wDataOVal <Return> {
      catch {aset /i0jtag/i0demo/i0core/i0mac/i0rb_mdio/DataO [%W get]}
   }
   
   button $w.lf.getregs -text Update -background lightblue -command {mdio_gui::getreg}
   grid   $w.lf.getregs -column 4 -row 7 -sticky ew
   checkbutton $w.lf.getregsCont -variable mdio_gui::vUpdate -width 8 -justify center -command {mdio_gui::fUpdate}
   grid   $w.lf.getregsCont -column 5 -row 7 -sticky ew
}

if {[winfo exists .mdio_gui] == 0} {
   mdio_gui::main
}


