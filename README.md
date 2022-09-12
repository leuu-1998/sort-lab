# Sort algorithm using FSM and Bubble algorithm

This repository shows the implementation of a number ordering algorithm on an FPGA using VHDL.

## Use was made of

- 4 bit registers.
- The design of a state machine for the controller.

## How works

The architecture used for the design takes into account a controller and a datapath to order the data as such.

- When the signal resetn='0' is applied, an asynchronous reset occurs in the controller and the content of all registers is deleted.
- While the signal go=' 0' and the signal wrinit = '1' the data will be written, in order to indicate in which register it is written, it is indicated with the signal radd[].
- The signal go='1' indicates that processing mode is started. In this state we will not be able to return to the initialization mode.
- When all the processing finishes, the signal done = '1' appears and that is when we can read the content of the registers.
- To know which register will be read, the radd[] signal will be used and dataout[] will show that read value.
- The control[] signal tells the datapath what action to take.

![image](https://user-images.githubusercontent.com/63620889/189761283-3f0a5cf7-73de-4d07-9618-2e6863629c83.png)


The simulations carried out were made on an FPGA, below is an image with the FPGA used.

![Simulación](/image/simulation.png "Simulado en una FPGA")
