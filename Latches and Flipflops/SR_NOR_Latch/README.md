# SR_NOR Latch

S-R Latch/ Set-Reset Latch is a digital circuit that uses two cross coupled NOR Gates to store 1 Bit of information.  

  Truth Table  
S | R | Q    | nQ       
--|---|------|-------  
0 | 0 | Qprev| nQprev  
1 | 0 |  1   | 0     
0 | 1 |  0   | 1  
1 | 1 | invld| invld  


Schematic  
![d](https://github.com/AbhijitBaral/VerilogDigitalDesigns/blob/main/Latches%20and%20Flipflops/SR_NOR_Latch/Schematic/schem.png)  
Waveform  
![f](https://github.com/AbhijitBaral/VerilogDigitalDesigns/blob/main/Latches%20and%20Flipflops/SR_NOR_Latch/Schematic/waveform.png)
