### This file contains the synopsys tools usgae info.
```
VCS (Verilog Compiler Simulator) – A high-performance simulator from Synopsys for functional verification of
                                    digital designs using Verilog/SystemVerilog.


Verdi – A powerful debug and visualization tool for analyzing simulation results and understanding complex SoC behavior.


SpyGlass – A static linting and RTL analysis tool that checks coding style, synthesis readiness,
            and potential bugs early in the design flow.

Steps to compile and run the Verilog code

step1: The following command is to compile the Verilog code:

vcs fa.v rca.v tb_rca.v -full64 -kdb -lca -debug_access+all

step1: The following command is to compile the SystemVerilog code:

vcs -sverilog fa.v rca.v tb_rca.v -full64 -kdb -lca -debug_access+all

[with different switch order]
//if systemverilog files

vcs -sverilog f1.sv  -full64 -kdb -lca -debug_access+all
vcs -sverilog f1.sv  -lca -kdb -debug_access+all -full64


step2: After compilation, the tool will produce a "simv" executable file. In the terminal type

./simv -verdi

it will open GUI 
```

![Alt text](vcs/Picture1.png)

*Fig.1*

![Alt text](vcs/Picture2.png)

*Fig.2*

![Alt text](vcs/Picture3.png)

*Fig.3*

![Alt text](vcs/Picture4.png)

*Fig.4*

![Alt text](vcs/Picture5.png)

*Fig.5*

![Alt text](vcs/Picture6.png)

*Fig.6*

![Alt text](vcs/Picture7.png)

*Fig.7*

![Alt text](vcs/Picture8.png)

*Fig.8*

### coverage 
```
step1: The following command is to compile the Verilog code:

vcs fa.v rca.v tb_rca.v -full64 -kdb -lca -debug_access+all

step1: The following command is to compile the SystemVerilog code:

vcs -sverilog fa.v rca.v tb_rca.v -full64 -kdb -lca -debug_access+all

step2: ./simv

step3:
verdi -cov -covdir simv.vdb
```
![image](https://github.com/user-attachments/assets/0bf6bb99-e470-4faf-aacb-e836813af12b)

*Fig.1*


