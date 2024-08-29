# Cyclical Lamps  

There are three lamps- RED, GREEN and YELLOW that should glow cyclically with a fixed time interval. (say 1 second).  

The FSM has three states, corresponding to the the glowing state of any one of the lamps.  
The input set is NULL and state transition occurs each time the clock signal comes.  
This is a Moore machine, since the lamps that will glow only depends on the state and not on the inputs.  


VCD info: dumpfile cyclic.vcd opened for output.
                   0 RGY: xxx
                   5 RGY: 100
                  15 RGY: 110
                  25 RGY: 101
                  35 RGY: 100
                  45 RGY: 110
                  55 RGY: 101
                  65 RGY: 100
                  75 RGY: 110
                  85 RGY: 101
                  95 RGY: 100
test_cyclic_lamp.v:9: $finish called at 100 (1s)

