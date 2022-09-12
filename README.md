# Sort algorithm using FSM and Bubble algorithm

This repository shows the implementation of a number ordering algorithm on an FPGA using VHDL.

## Use was made of

- The numbers will be 4 bits, in total 8 numbers will be entered that will be stored in registers with 4 bits of capacity. The smallest value will be in R0 and the largest value in R7.
- We will use two modules, the first one is datapath.vhd and the second one will be controller.vhd.

## How works

The architecture used for the design takes into account a controller and a datapath to order the data as such.

- When the signal resetn='0' is applied, an asynchronous reset occurs in the controller and the content of all registers is deleted.
- While the signal go=' 0' and the signal wrinit = '1' the data will be written, in order to indicate in which register it is written, it is indicated with the signal radd[].
- The signal go='1' indicates that processing mode is started. In this state we will not be able to return to the initialization mode.
- When all the processing finishes, the signal done = '1' appears and that is when we can read the content of the registers.
- To know which register will be read, the radd[] signal will be used and dataout[] will show that read value.
- The control[] signal tells the datapath what action to take.

![image](https://user-images.githubusercontent.com/63620889/189761283-3f0a5cf7-73de-4d07-9618-2e6863629c83.png)

## Description of the state machine

The controller is a Moore type state machine, with 6 states, for the interaction of signals i and j we add internal signals ci, cj, ci_n and cj_n, which are the present and future values of i and j respectively.

- State S0 (control= “000”): Reset state = “0”, all outputs i, j and done are 0. If go = “0” it goes to state S1.
- State S1(control=”001”): They store the data in the datapath, the outputs i,j and done remain zero, . If you have go = "1" it goes to state S2.
- State S2(control = “010”): Sorting begins, assigning j the value of i (cj_n <= ci).
- State S4(control “100”): i,j and control are sent to order the data in the datapath. Then the value of j is increased by one (cj_n <= cj + 1). Finally, if j is 7 (cj=6) it goes to state S5, otherwise it stays in S4 to increase j.
- State S5(control “100”): When j is 7, i is increased by one (ci_n<=ci + 1). If i is equal to 6 then it goes to state S7, otherwise it goes to state S2.
- S7 Status(control is “111”): Indicates the end of the ordering by showing done = “1”.
![image](https://user-images.githubusercontent.com/63620889/189762867-771876d6-8175-4263-baef-71bae98c5166.png)




The simulations carried out were made on an FPGA, below is an image with the FPGA used.

![Simulación](/image/simulation.png "Simulado en una FPGA")
