create_clock -name {clk} -period 20.000 -waveform { 0.000 10.000 } [get_ports {ClkCpu}]
create_clock -name {altera_reserved_tck} -period 100.000 -waveform {0.000 50.000} { altera_reserved_tck }
set_max_delay -from {clk} -to {altera_reserved_tck} 10.0
set_max_delay -from {altera_reserved_tck} -to {clk} 10.0

set_input_delay -clock {altera_reserved_tck} 10 [get_ports altera_reserved_tdi]
set_input_delay -clock {altera_reserved_tck} 10 [get_ports altera_reserved_tms]
set_output_delay -clock {altera_reserved_tck} 6 [get_ports altera_reserved_tdo]

set_output_delay -clock { clk } -max 1.5 [get_ports {i0rb_ledled0O}]
set_output_delay -clock { clk } -max 1.5 [get_ports {i0rb_ledled1O}]
set_output_delay -clock { clk } -max 1.5 [get_ports {i0rb_ledled2O}]
set_output_delay -clock { clk } -max 1.5 [get_ports {i0rb_ledled3O}]
set_output_delay -clock { clk } -max 1.5 [get_ports {Cpu0ActiveO}]
set_output_delay -clock { clk } -max 1.5 [get_ports {Cpu1ActiveO}]
set_output_delay -clock { clk } -max 1.5 [get_ports {serial0TxEnO}]
set_output_delay -clock { clk } -max 1.5 [get_ports {serial0TxO}]

set_output_delay -clock { clk } -min -6 [get_ports {i0rb_ledled0O}]
set_output_delay -clock { clk } -min -6 [get_ports {i0rb_ledled1O}]
set_output_delay -clock { clk } -min -6 [get_ports {i0rb_ledled2O}]
set_output_delay -clock { clk } -min -6 [get_ports {i0rb_ledled3O}]
set_output_delay -clock { clk } -min -6 [get_ports {Cpu0ActiveO}]
set_output_delay -clock { clk } -min -6 [get_ports {Cpu1ActiveO}]
set_output_delay -clock { clk } -min -6 [get_ports {serial0TxEnO}]
set_output_delay -clock { clk } -min -6 [get_ports {serial0TxO}]

set_input_delay  -clock [get_clocks {clk}]  5.000 [get_ports {serial0RxI}]
