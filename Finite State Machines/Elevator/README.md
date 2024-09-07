# Elevator: An elevator can be modeled as an FSM with five states: Idle, Moving Up, Moving Down, Doors Opening, and Doors Closing.  

Working:  
* Idle → Moving Up   
* Idle → Moving Down  
* Moving Up → Doors Opening (when elevator reaches the desired floor)  
* Moving Down → Doors Opening (when elevator reaches the desired floor)  
* Doors Opening → Doors Closing (after a timeout)  
* Doors Closing → Idle (after doors are closed)
------------------------------------------------------------------------

* S0 = idle  
* S1 = Moving Up  
* S2 = Moving down  
* S3 = Doors Opening   
* S4 = Doors Closing  


Input variable for indicating the motion of the elevator  
```verilog
input reg motion_status[1:0];  
motion_status = 00 ( Idle )  
motion_status = 01 ( Moving Up )  
motion_status = 10 ( Moving Down )  
```  

Input variable for indicating status of correct floor reached  
```verilog
input reg floor_status;  
floor_status = 1 (The correct floor is reached )  
floor_status = 0 (The elevator is not at the correct floor )  
```  
## State table 

| Present State | motion_status | floor_status | Next State |  Output |
----------------|---------------|--------------|------------|----------
|    S0         |     01        |     x        |    S1      |  0001   |
|    S0         |     10        |     x        |    S2      |  0010   |
|    S1         |     xx        |     1        |    S3      |  0011   |
|    S2         |     xx        |     1        |    S3      |  0011   |
|    S3         |     xx        |     x        |    S4      |  0100   |
|    S4         |     xx        |     x        |    S0      |  0000   |  

## state transition diagram  
![ds](https://github.com/AbhijitBaral/VerilogDigitalDesigns/blob/main/Finite%20State%20Machines/Elevator/schematic.png)  

## schematic  
![ds](https://github.com/AbhijitBaral/VerilogDigitalDesigns/blob/main/Finite%20State%20Machines/Elevator/schematic.png)  

## waveform  
![dvd](https://github.com/AbhijitBaral/VerilogDigitalDesigns/blob/main/Finite%20State%20Machines/Elevator/waveform.png)

  


