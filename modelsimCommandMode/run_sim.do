vlib work
vlog ha.v
vsim -c work.ha

force b 1 1ns, 1 2ns -deposit
force a 1 1ns, 0 2ns -deposit
run 1ns            ;# Run to 1ns
puts "=== @1ns ==="
puts "	a=1 b=1"
puts "	co sum"
examine co sum

run 1ns            ;# Run from 1ns to 2ns (total 2ns)
puts "=== @2ns ==="
puts "	a=0 b=1"
puts "	co sum"
examine co sum

quit
