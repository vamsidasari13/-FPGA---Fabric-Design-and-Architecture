# -FPGA---Fabric-Design-and-Architecture

![image](https://user-images.githubusercontent.com/67407412/171920700-fc26a0dd-af30-4ed1-8ab1-2dbd96442867.png)

This repository contains the work done on FPGA Fabric, Design and Architecture wworkshop. This is a five days workshop. In this short span of five days on day 1, I have implemented the 4-bit counter in vivado and simulated it, later done the synthesis and implementation finally generated the bitstream which is used to implement it on FPGA using VIO(Virtual Input/Output). On day 2 we gone throught the VTR flow and implemented the 4-bit counter using this method. Later on Day 3 we done the Riscv myth core code implementation on xilinx vivado the area utilization, power estimation, Timing analysis is done. On Day 4 

## Table of Content

### Day 01

•	FPGA Introduction

•	Design of a 4-bit counter through Vivado on Basys3 FPGA

•	Use of Virtual Input/Output (VIO)

###  Day 02

•	VPR flow: tseng on Earch

•	VTR flow: 4 bit counter on Earch


•	Timing, area, power and post implementation simulation

•	Basys3 vs VTR results

### Day 03

•	Explain RISC-V RVMyth processor code

•	Run it till bitstream on Basys3

###  Day 04

•	Skywater OpenSource FPGA (SOFA): 4-bit counter on SOFA

•	Area, timing and post implementation

###  Day 05

•	Skywater OpenSource FPGA (SOFA): RVMyth on SOFA 

•	Area, timing and post implementation

## Introduction

In this workshop, The content is broadly cover 5 modules. The first module focuses on taking a digital design through Xilinx Vivado and programming it on the FPGA.  Also demonstrate area, timing analysis, and post-implementation simulation. In the second module, The describing of the OpenFPGA framework and demonstrate the VTR tool flow on two designs with an example architecture. Next, The same tasks are repeated for a RISC-V based processor called RVMyth.  simulation of RVMyth with a testbench through Vivado and program it on a Basys3 board. Later then take it through the OpenFPGA framework through Skywater OpenSource FPGA (SOFA). Also demonstrate area, timing analysis, and post implementation simulation for the processor core after taking it through SOFA. Lastly,  summarizing  the area and timing results obtained by the design from Basys3 and VTR.

## Tools Used

### Xilinx Vivado 
Vivado Design Suite is a software suite produced by Xilinx for synthesis and analysis of hardware description language designs, superseding Xilinx ISE with additional features for system on a chip development and high-level synthesis. Vivado represents a ground-up rewrite and re-thinking of the entire design flow.

## Day - 01

On Day -01 I done the 4-bit counter simulation, synthesis and implementation on xilinx vivado and later area, power, timing are estimated and generation of bitstream which is used to implement the 4-bit counter on FPGA

![Counter Waveform](https://user-images.githubusercontent.com/67407412/171978978-6534d400-0e16-42d4-a859-17d82afe8447.png)

## Day - 02

VTR CAD Flow
![image](https://user-images.githubusercontent.com/67407412/171973891-25443a68-cdec-4221-ac1e-2085a19664f0.png)

VPR Flow

The Place and Route process in VPR consists of several steps:

Packing (combinines primitives into complex blocks)

Placment (places complex blocks within the FPGA grid)

Routing (determines interconnections between blocks)

Analysis (analyzes the implementation)
