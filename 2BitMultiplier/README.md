# 2 Bit Multiplier

Performs Arithmetic multiplication on two 2Bit Binary Numbers
## Truth Table  

a1 a0 b1 b0 | product[3:0]
------------|-------------  
0  0  0  0  | 0 0 0 0  
0  0  0  1  | 0 0 0 0  
0  0  1  0  | 0 0 0 0  
0  0  1  1  | 0 0 0 0  
0  1  0  0  | 0 0 0 0  
0  1  0  1  | 0 0 0 1  
0  1  1  0  | 0 0 1 0  
0  1  1  1  | 0 0 1 1  
1  0  0  0  | 0 0 0 0  
1  0  0  1  | 0 0 1 0  
1  0  1  0  | 0 1 0 0  
1  0  1  1  | 0 1 1 0  
1  1  0  0  | 0 0 0 0  
1  1  0  1  | 0 0 1 1  
1  1  1  0  | 0 1 1 0  
1  1  1  1  | 1 0 0 1   

Multiplier  
![mult](https://github.com/AbhijitBaral/VerilogDigitalDesigns/blob/main/2BitMultiplier/Schem/schem.png)  


halfAdder  
![ha](https://github.com/AbhijitBaral/VerilogDigitalDesigns/blob/main/fullAdder/Schematic/ha.png)  

Waveform  
![ha](https://github.com/AbhijitBaral/VerilogDigitalDesigns/blob/main/2BitMultiplier/Schem/waveform.png)

