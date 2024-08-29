# Serial Parity detector  

A continous stream of bits is fed into a circuit in synchronism with a clock. The circuit will be generating a stream of
bits as output, where a `0` will indicate "even number of 1's seen so far" and a 1 will be indicate "odd number of 1's
seen so far"  
This state machine is a Moore Machine  

state diagram:  
![s](https://github.com/AbhijitBaral/VerilogDigitalDesigns/blob/main/Finite%20State%20Machines/Serial%20Parity%20detector/state%20diagram.png)

