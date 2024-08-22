# Combinational Circuits

## What is a Combinational Circuit?

It can basically be described as the digital circuits which are not dependent on any kind of past/future data, rather processes the output based on the current combination of the inputs. These create the basics of many complex circuits.

For the upcoming days I'll be uploading the coding of different types of combinational circuits.

## Day-1
### Basic Adder Circuits.
All the modelling is done on "Gate Level" modelling.
## Day-2
### Basic Subtractor Circuits.
Both "Gate Level" Modelling for Half Subtractor and "Data Flow Level" Modelling for Full Subtractor is used.


## Two day break due to personal reasons

## Day-3
### Corrected a Logical Error in Full Adder Circuit.
### Built a 4-bit Ripple Carry Adder and Subtractor.
#### What is a Ripple Carry Adder?
A ripple carry adder generally created by consecutive (cascaded) connections of Full adder circuits. It is one of the slowest multi-bit adder, as the nth carry-in bit depends upon the n-1th carry-out of the circuit. As a result there is propagation delay.

#### Module and Test Bench Details:
For the previous modules I have created using the "Gate Level Modelling" of Verilog. This too could have been done in the same way. However, the complexity of the code will increase, which ultimately relates to difficulties in debugging. As a result "Behaviourial Level Modelling" has been used, where we just need to define the Output based on the input combinations, the compiler will handle the gates required.

Usage of @always block along with if block is done. 

This marks the first usage of behaviourial modelling, showing the advantage. Will try to upload the gate level modelling also some time later for reference purpose.