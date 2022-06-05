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

VIO (Virtual input/output)

![Screenshot 2022-06-05 100730](https://user-images.githubusercontent.com/67407412/172035217-7d5fc372-0ae8-4c0d-8f5f-bf287a4588af.jpg)

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

VPR takes, as input, a description of an FPGA architecture along with a technology-mapped user circuit.
It then performs packing, placement, and routing to map the circuit onto the FPGA. The output of VPR includes the FPGA configuration needed to implement the circuit and statistics about the final mapped design (eg. critical path delay, area, etc).

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

### Post Netlist Implementation on vivado 

![upcounter impl with post_implemntaion netlist](https://user-images.githubusercontent.com/67407412/172035341-65ec6e99-7f42-44ab-929d-3518625fca38.jpg)

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

Area and Timing Report

```
$VTR_ROOT/vtr_flow/scripts/run_vtr_flow.py \
$VTR_ROOT/doc/src/quickstart/counter.v \
$VTR_ROOT/vtr_flow/arch/timing/EArch.xml \
-temp_dir . \
--route_chan_width 100
```

![timing and area analysis in vtr flow](https://user-images.githubusercontent.com/67407412/172035259-e8e93623-157f-445f-a05b-722fdc2ee7db.jpg)

Power Analysis

```
$VTR_ROOT/vtr_flow/scripts/run_vtr_flow.py \
$VTR_ROOT/doc/src/quickstart/counter.v \
$VTR_ROOT/vtr_flow/arch/timing/EArch.xml \
-power -cmos_tech $VTR_ROOT/vtr_flow/tech/PTM_45nm/45nm.xml \
-temp_dir . \
--route_chan_width 100
```
![Power estimation in vtr flow](https://user-images.githubusercontent.com/67407412/172035277-586117c0-23a2-4430-a468-1d68367705bc.jpg)

## Day - 03

RISC-V Core implementation on Xilinx Vivado

Simulation 
![riscv core in vivado simu](https://user-images.githubusercontent.com/67407412/172050529-97c4cc45-c959-4316-b8b7-dec841134753.jpg)

Schematic
![schematic vivado](https://user-images.githubusercontent.com/67407412/172050568-3706be21-9b91-4a65-84e6-b1ccbe7c275c.jpg)

#### Timing, Power and Area analysis

Timing Summary
![timing summary](https://user-images.githubusercontent.com/67407412/172050637-7e84ad02-4999-4b14-b963-d0b333c66125.jpg)

Power Analysis
![power used](https://user-images.githubusercontent.com/67407412/172050642-7b656827-de53-4184-9cda-6aca4b89e166.jpg)

Utilization
![resource utilized](https://user-images.githubusercontent.com/67407412/172050647-45106480-98e4-47c5-9e04-61027aa2aed0.jpg)



## Day - 04

### Introduction

 (SOFA) is a fully open-source embedded FPGA IP library, from the architecture description to production ready layouts. As illustrated in Fig. 1, SOFA IPs are designed through the Skywater 130nm PDK, OpenFPGA framework and Synopsys IC Compiler II. The runtime of the design flow for each IP is within 24 hours.

All the SOFA FPGAs are designed to interface the Caravel SoC interface. We aims to empower embedded applications with its low-cost design approach but high-density architecture.

To run the user flow using SOFA repository you need to have OpenFPGA installed.
```
git clone https://github.com/lnis-uofu/SOFA.git

cd FPGA1212_QLSOFA_HD_PNR

make runOpenFPGA

```

### Area Report 

VPR Device Layout

Edit generate_testbench.openfpga with this command.
```
vpr ${VPR_ARCH_FILE} ${VPR_TESTBENCH_BLIF} --clock_modeling ideal --device ${OPENFPGA_VPR_DEVICE_LAYOUT} --route_
chan_width ${OPENFPGA_VPR_ROUTE_CHAN_WIDTH} --absorb_buffer_luts off
```
Circuit Statstics

![Area report for counter](https://user-images.githubusercontent.com/67407412/172047423-35fd1a5a-f731-46bd-82ba-65aab354b550.jpg)

Logic Elements

![Area report of counter 2](https://user-images.githubusercontent.com/67407412/172047459-f44687ab-735a-4c46-bbc4-b4f617c68f95.jpg)

### Timing Analysis

Create an .sdc file and add these commands
```
create_clock -period 20 clk
set_input_delay -clock clk -max 0 [get_ports {*}]
set_output_delay -clock clk -max 0 [get_ports {*}]
```

Also add the .sdc file in generate_testbench.openfpga 

```
vpr ${VPR_ARCH_FILE} ${VPR_TESTBENCH_BLIF} --clock_modeling ideal --device ${OPENFPGA_VPR_DEVICE_LAYOUT} --route_
chan_width ${OPENFPGA_VPR_ROUTE_CHAN_WIDTH} --absorb_buffer_luts off --sdc_file /home/vamsy.dasari126/SOFA/FPGA1212_QLSOFA_HD_PNR/FPGA1212_QLSOFA_HD_task/
BENCHMARK/counter/counter.sdc
```
Setup Timing Report

![setup timing report](https://user-images.githubusercontent.com/67407412/172048800-1bb76518-4b41-48dc-ae77-da9938f887a3.jpg)

Hold Timing Report

![hold timing report](https://user-images.githubusercontent.com/67407412/172048839-7c31ebb6-0860-40fc-8b60-f6e24faf786a.jpg)

RTL simulation on vivado with Post Implementation netlist.

![post_imple_netlist_in vivado ](https://user-images.githubusercontent.com/67407412/172049135-a87b5116-6ebf-4918-b7e3-8779b370ea83.jpg)


