# Simple test code for using the fifos

aset /i0jtag/i0demo/i0core/i0mac/i0rb_mac/LoopEn 1

set Length 10
for {set i 0} {$i < $Length} {incr i} {
    aset /i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxFifo $i
}
   
aset /i0jtag/i0demo/i0core/i0mac/i0rb_mac/TxStart 1

for {set i 0} {$i < $Length} {incr i} {
    aexp /i0jtag/i0demo/i0core/i0mac/i0rb_mac/RxFifo $i
}
