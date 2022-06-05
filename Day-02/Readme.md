# Day - 02

On day2 we used VPR(Versitle Place and Route) 

VPR takes, as input, a description of an FPGA architecture along with a technology-mapped user circuit.
It then performs packing, placement, and routing to map the circuit onto the FPGA. The output of VPR includes the FPGA configuration needed to implement the circuit and statistics about the final mapped design (eg. critical path delay, area, etc).

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
