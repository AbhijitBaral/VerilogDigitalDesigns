# Sequence detector

The circuit accepts a serial bit stream "x" as input and produces a serial bit stream "z" as output.  
Whenever a bit pattern "0110" appears in the input stream, it outputs z=1; At all other times, z=0.  
Overlapping occurrences of the pattern are also detected.  

* This is a Mealy Machine

state diagram:  
![d](https://github.com/AbhijitBaral/VerilogDigitalDesigns/blob/main/Finite%20State%20Machines/Sequence%20Detector/imgs/state%20diagram.png)  

schematics:  
![ewe](https://github.com/AbhijitBaral/VerilogDigitalDesigns/blob/main/Finite%20State%20Machines/Sequence%20Detector/imgs/schematic.png)

waveform:
![ew](https://github.com/AbhijitBaral/VerilogDigitalDesigns/blob/main/Finite%20State%20Machines/Sequence%20Detector/imgs/waveform.png)
