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

