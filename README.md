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

### VTR 
The Verilog-to-Routing (VTR) project [LAK+14, RLY+12] is a world-wide collaborative effort to provide a open-source framework for conducting FPGA architecture and CAD research and development. The VTR design flow takes as input a Verilog description of a digital circuit, and a description of the target FPGA architecture.

It then perfoms:

Elaboration & Synthesis (Odin II)

Logic Optimization & Technology Mapping (ABC)

Packing, Placement, Routing & Timing Analysis (VPR)

### SOFA
SOFA (Skywater Opensource FPGAs) are a series of open-source FPGA IPs using the open-source Skywater 130nm PDK and OpenFPGA framework.
##

## Day - 01

On Day -01 I done the 4-bit counter simulation, synthesis and implementation on xilinx vivado and later area, power, timing are estimated and generation of bitstream which is used to implement the 4-bit counter on FPGA. We can use VIO (Virtual Input/Output) for  

![Counter Waveform](https://user-images.githubusercontent.com/67407412/171978978-6534d400-0e16-42d4-a859-17d82afe8447.png)

Timing Report
![Timing Report](https://user-images.githubusercontent.com/67407412/172015182-668dacc8-df74-4553-ab9e-3fc20f27d473.jpg)
 
Utilization
![Area consumed](https://user-images.githubusercontent.com/67407412/172015202-0e4e13bc-0b32-4ae0-88ed-12a69a95901c.jpg)

Power Analysis
![Power Analysis](https://user-images.githubusercontent.com/67407412/172015277-95e29ade-84c5-4d25-a504-1423980c32f1.jpg)



## Day - 02

VTR CAD Flow
![image](https://user-images.githubusercontent.com/67407412/171973891-25443a68-cdec-4221-ac1e-2085a19664f0.png)

VPR Flow

The Place and Route process in VPR consists of several steps:

Packing (combinines primitives into complex blocks)

Placment (places complex blocks within the FPGA grid)

Routing (determines interconnections between blocks)

Analysis (analyzes the implementation)

## Steps

Build OpenFPGA (done on cloud)

Build VTR (done on cloud)

Run VPR on a Pre-Synthesized Circuit

•	Observe the result files

•	Visualize (GUI) circuit implementation

Run the entire VTR flow automatically

•	Implement our own circuit (blink.v and counter.v) on a pre-existing FPGA architecture Earch.xml (VTR_ROOT/vtr_flow/arch)

•	Use an automated approach (Odin II and ABC are automatically run)

•	Perform timing simulation on the generated fabric

 ### Running VPR
  
Lets now try taking a simple pre-synthesized circuit (consisting of LUTs and Flip-Flops) and use the VPR tool to implement it on a specific FPGA architecture.

Running VPR on a Pre-Synthesized Circuit

``` 
 mkdir -p vtr_work/quickstart/vpr_tseng
 cd ~/vtr_work/quickstart/vpr_tseng
 ```
 
 Now, lets invoke the VPR tool to implement:
 
``` 
 $VTR_ROOT/vpr/vpr \
 $VTR_ROOT/vtr_flow/arch/timing/EArch.xml \
 $VTR_ROOT/vtr_flow/benchmarks/blif/tseng.blif \
 --route_chan_width 100
```
![Screenshot (1005)](https://user-images.githubusercontent.com/67407412/172017170-3cc3c338-957f-473c-b4a8-fd850ab62a13.png)

![Screenshot (1006)](https://user-images.githubusercontent.com/67407412/172031009-30f0226c-2b39-4047-ba4d-5f4eb5e037f4.png)

The timing and area and power analysis can be done 

