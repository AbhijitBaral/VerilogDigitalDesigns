# ASIC design flow for a simple full adder.  

RTL -> GDSII layout  
Tools used : Yosys, OpenRoad, OpenSTA, skyWater PDK, Magic/Klayout, Netgen  

--
Full adder  
--
Truth table  
|A | B | Cin | Sum | Cout |  
|--|---|-----|-----|------|
|0 | 0 |  0  |  0  |  0   |
|0 | 0 |  1  |  1  |  0   |
|0 | 1 |  0  |  1  |  0   |
|1 | 0 |  0  |  1  |  0   |
|1 | 1 |  0  |  0  |  1   |
|0 | 1 |  1  |  0  |  1   |
|1 | 0 |  1  |  0  |  1   |
|1 | 1 |  1  |  1  |  1   |  


Sum = A xor B xor Cin  
Carry = (A.B) + (Cin.(A xor B))  




