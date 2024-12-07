# Three Way Light Control

It is an elementary problem used in one of the examples in the logic synthesis chapter of the book "Fundamentals of Digital Logic with Verilog Design"  

## Assume that a large room has three doors and that a switch near each door controls a light in the room. It has to be possible to turn the light on or off by changing the state of any one of the switches.

Let x1 , x2 , and x3 be the input variables that denote the state of each switch. Assume that the light is off if all switches are open. Closing any one of the switches will turn the light on. Then turning on a second switch will have to turn off the light. Thus the light will be on if exactly one switch is closed, and it will be off if two (or no) switches are closed. If the light is off when two switches are closed, then it must be possible to turn it on by closing the third switch. The word statement turned to a formal specification using a truth table : 

| x1 | x2 | x3 | f |
|----|----|----|---|
| 0  | 0  | 0  | 0 |
| 0  | 0  | 1  | 1 |
| 0  | 1  | 0  | 1 |
| 0  | 1  | 1  | 0 |
| 1  | 0  | 0  | 1 |
| 1  | 0  | 1  | 0 |
| 1  | 1  | 0  | 0 |
| 1  | 1  | 1  | 1 |  

function as the sum of product : 
f = m1 + m2 + m4 +m7  
![ds](https://github.com/AbhijitBaral/VerilogDigitalDesigns/blob/main/three%20way%20light%20control/pics/SOP.png)  

function as the procuct of sum :  
![dwswd](https://github.com/AbhijitBaral/VerilogDigitalDesigns/blob/main/three%20way%20light%20control/pics/POS.png)  

Implementation using optimized gates : 
![csa](https://github.com/AbhijitBaral/VerilogDigitalDesigns/blob/main/three%20way%20light%20control/pics/optimized.png)



