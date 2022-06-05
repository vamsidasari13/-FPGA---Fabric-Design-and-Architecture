## Day - 05

Implementing Riscv core on SOFA and analayzing area, timing. and also done the post implementation netlist on vivado.

#### Area analysis

Logic Elements
![area logic elements](https://user-images.githubusercontent.com/67407412/172059794-4be304e4-cbad-4b28-a9ca-dfb8abde640c.jpg)

Circuit Statstics
![area circuit stats](https://user-images.githubusercontent.com/67407412/172059799-8efa4d04-6285-418f-89f6-f1acc1552af6.jpg)

#### Timing Summary

Create an .sdc file and add these commands

```
create_clock -period 200 clk
set_input_delay -clock clk -max 0 [get_ports {*}]
set_output_delay -clock clk -max 0 [get_ports {*}]
```

Also add the .sdc file in generate_testbench.openfpga 

```
vpr ${VPR_ARCH_FILE} ${VPR_TESTBENCH_BLIF} --clock_modeling ideal --device ${OPENFPGA_VPR_DEVICE_LAYOUT} --absorb_buffer_luts off --sdc_file /home/vamsy.dasari126/SOFA/FPGA1212_QLSOFA_HD_PNR/FPGA1212_QLSOFA_HD_task/BENCHMARK/rvmyth/mythcore.sdc
```

Setup Timing Report

![Setup timing reportjpg](https://user-images.githubusercontent.com/67407412/172060248-faac34ca-7fa5-4911-b3d3-c7b2f38680e7.jpg)

Hold Timing Report

![Hold timing report](https://user-images.githubusercontent.com/67407412/172060258-d8b935f1-b73e-4b08-82bd-208805ab6c92.jpg)

Implementation on Vivado

![post_imple in vivado](https://user-images.githubusercontent.com/67407412/172060274-c2a709a5-2af8-4698-a574-3bb1f0bd8f9c.jpg)
