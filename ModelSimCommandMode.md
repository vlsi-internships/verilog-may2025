### The following are the commands in ModelSim to run in windows cmd

```
Step1:
vlib work

step2:
vlog file.v

step3:
vsim -c topModuleName[in this example it is ha]

step4:
# vsim -c ha
# Start time: 07:33:05 on May 24,2025
# Loading work.ha
VSIM 1> force b 1 1ns, 1 2ns -deposit
VSIM 2> force a 0 1ns, 1 2ns -deposit
VSIM 3> run 1ns
VSIM 4> examine sum co
# St1 St0
VSIM 5> run 1ns
VSIM 6> examine sum co
# St0 St1

[If for some reason getting : GetModuleFileName: The specified module could not be found. Then do the following]
VSIM 26> vsim work.ha
VSIM 27> force b 1 1ns, 1 2ns -deposit
VSIM 28> force a 0 1ns, 1 2ns -deposit
VSIM 29> run 1ns
VSIM 30> puts "==== @1ns ==="
==== @1ns ===
VSIM 31> examine sum
# St1
VSIM 32> examine co
# St0
VSIM 33> run 1ns
VSIM 34> puts "==== @2ns ==="
==== @2ns ===
VSIM 35> examine sum
# St0
VSIM 36> examine co
# St1
```
