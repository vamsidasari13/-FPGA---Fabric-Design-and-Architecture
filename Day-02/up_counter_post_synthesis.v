//Verilog generated by VPR 8.0.0+unkown from post-place-and-route implementation
module up_counter (
    input \top^enable ,
    input \top^clk ,
    input \top^reset ,
    output \top^out~0 ,
    output \top^out~1 ,
    output \top^out~2 ,
    output \top^out~3 
);

    //Wires
    wire \top^enable_output_0_0 ;
    wire \top^clk_output_0_0 ;
    wire \top^reset_output_0_0 ;
    wire \lut_n22_output_0_0 ;
    wire \lut_n27_output_0_0 ;
    wire \lut_n32_output_0_0 ;
    wire \lut_n37_output_0_0 ;
    wire \lut_vcc_output_0_0 ;
    wire \adder_top^ADD~4-0[0]_output_0_0 ;
    wire \adder_top^ADD~4-1[0]_output_0_0 ;
    wire \adder_top^ADD~4-1[0]_output_1_0 ;
    wire \lut_gnd_output_0_0 ;
    wire \adder_top^ADD~4-2[0]_output_0_0 ;
    wire \adder_top^ADD~4-2[0]_output_1_0 ;
    wire \adder_top^ADD~4-3[0]_output_0_0 ;
    wire \adder_top^ADD~4-3[0]_output_1_0 ;
    wire \adder_top^ADD~4-4[0]_output_1_0 ;
    wire \latch_top^out~0_FF_NODE_output_0_0 ;
    wire \latch_top^out~1_FF_NODE_output_0_0 ;
    wire \latch_top^out~2_FF_NODE_output_0_0 ;
    wire \latch_top^out~3_FF_NODE_output_0_0 ;
    wire \lut_n22_input_0_2 ;
    wire \lut_n27_input_0_0 ;
    wire \lut_n37_input_0_4 ;
    wire \lut_n32_input_0_0 ;
    wire \latch_top^out~0_FF_NODE_clock_0_0 ;
    wire \latch_top^out~3_FF_NODE_clock_0_0 ;
    wire \latch_top^out~1_FF_NODE_clock_0_0 ;
    wire \latch_top^out~2_FF_NODE_clock_0_0 ;
    wire \lut_n22_input_0_1 ;
    wire \lut_n27_input_0_2 ;
    wire \lut_n37_input_0_2 ;
    wire \lut_n32_input_0_4 ;
    wire \latch_top^out~0_FF_NODE_input_0_0 ;
    wire \latch_top^out~3_FF_NODE_input_0_0 ;
    wire \latch_top^out~2_FF_NODE_input_0_0 ;
    wire \latch_top^out~1_FF_NODE_input_0_0 ;
    wire \adder_top^ADD~4-1[0]_input_1_0 ;
    wire \adder_top^ADD~4-1[0]_input_2_0 ;
    wire \adder_top^ADD~4-2[0]_input_2_0 ;
    wire \lut_n22_input_0_3 ;
    wire \adder_top^ADD~4-0[0]_input_0_0 ;
    wire \adder_top^ADD~4-0[0]_input_1_0 ;
    wire \adder_top^ADD~4-2[0]_input_1_0 ;
    wire \adder_top^ADD~4-3[0]_input_1_0 ;
    wire \adder_top^ADD~4-4[0]_input_1_0 ;
    wire \adder_top^ADD~4-3[0]_input_2_0 ;
    wire \lut_n37_input_0_3 ;
    wire \adder_top^ADD~4-4[0]_input_2_0 ;
    wire \lut_n32_input_0_1 ;
    wire \lut_n27_input_0_1 ;
    wire \lut_n22_input_0_4 ;
    wire \adder_top^ADD~4-1[0]_input_0_0 ;
    wire \top^out~0_input_0_0 ;
    wire \lut_n37_input_0_0 ;
    wire \adder_top^ADD~4-2[0]_input_0_0 ;
    wire \top^out~1_input_0_0 ;
    wire \lut_n32_input_0_2 ;
    wire \adder_top^ADD~4-3[0]_input_0_0 ;
    wire \top^out~2_input_0_0 ;
    wire \lut_n27_input_0_4 ;
    wire \adder_top^ADD~4-4[0]_input_0_0 ;
    wire \top^out~3_input_0_0 ;

    //IO assignments
    assign \top^out~0  = \top^out~0_input_0_0 ;
    assign \top^out~1  = \top^out~1_input_0_0 ;
    assign \top^out~2  = \top^out~2_input_0_0 ;
    assign \top^out~3  = \top^out~3_input_0_0 ;
    assign \top^enable_output_0_0  = \top^enable ;
    assign \top^clk_output_0_0  = \top^clk ;
    assign \top^reset_output_0_0  = \top^reset ;

    //Interconnect
    fpga_interconnect \routing_segment_top^enable_output_0_0_to_lut_n22_input_0_2  (
        .datain(\top^enable_output_0_0 ),
        .dataout(\lut_n22_input_0_2 )
    );

    fpga_interconnect \routing_segment_top^enable_output_0_0_to_lut_n27_input_0_0  (
        .datain(\top^enable_output_0_0 ),
        .dataout(\lut_n27_input_0_0 )
    );

    fpga_interconnect \routing_segment_top^enable_output_0_0_to_lut_n37_input_0_4  (
        .datain(\top^enable_output_0_0 ),
        .dataout(\lut_n37_input_0_4 )
    );

    fpga_interconnect \routing_segment_top^enable_output_0_0_to_lut_n32_input_0_0  (
        .datain(\top^enable_output_0_0 ),
        .dataout(\lut_n32_input_0_0 )
    );

    fpga_interconnect \routing_segment_top^clk_output_0_0_to_latch_top^out~0_FF_NODE_clock_0_0  (
        .datain(\top^clk_output_0_0 ),
        .dataout(\latch_top^out~0_FF_NODE_clock_0_0 )
    );

    fpga_interconnect \routing_segment_top^clk_output_0_0_to_latch_top^out~3_FF_NODE_clock_0_0  (
        .datain(\top^clk_output_0_0 ),
        .dataout(\latch_top^out~3_FF_NODE_clock_0_0 )
    );

    fpga_interconnect \routing_segment_top^clk_output_0_0_to_latch_top^out~1_FF_NODE_clock_0_0  (
        .datain(\top^clk_output_0_0 ),
        .dataout(\latch_top^out~1_FF_NODE_clock_0_0 )
    );

    fpga_interconnect \routing_segment_top^clk_output_0_0_to_latch_top^out~2_FF_NODE_clock_0_0  (
        .datain(\top^clk_output_0_0 ),
        .dataout(\latch_top^out~2_FF_NODE_clock_0_0 )
    );

    fpga_interconnect \routing_segment_top^reset_output_0_0_to_lut_n22_input_0_1  (
        .datain(\top^reset_output_0_0 ),
        .dataout(\lut_n22_input_0_1 )
    );

    fpga_interconnect \routing_segment_top^reset_output_0_0_to_lut_n27_input_0_2  (
        .datain(\top^reset_output_0_0 ),
        .dataout(\lut_n27_input_0_2 )
    );

    fpga_interconnect \routing_segment_top^reset_output_0_0_to_lut_n37_input_0_2  (
        .datain(\top^reset_output_0_0 ),
        .dataout(\lut_n37_input_0_2 )
    );

    fpga_interconnect \routing_segment_top^reset_output_0_0_to_lut_n32_input_0_4  (
        .datain(\top^reset_output_0_0 ),
        .dataout(\lut_n32_input_0_4 )
    );

    fpga_interconnect \routing_segment_lut_n22_output_0_0_to_latch_top^out~0_FF_NODE_input_0_0  (
        .datain(\lut_n22_output_0_0 ),
        .dataout(\latch_top^out~0_FF_NODE_input_0_0 )
    );

    fpga_interconnect \routing_segment_lut_n27_output_0_0_to_latch_top^out~3_FF_NODE_input_0_0  (
        .datain(\lut_n27_output_0_0 ),
        .dataout(\latch_top^out~3_FF_NODE_input_0_0 )
    );

    fpga_interconnect \routing_segment_lut_n32_output_0_0_to_latch_top^out~2_FF_NODE_input_0_0  (
        .datain(\lut_n32_output_0_0 ),
        .dataout(\latch_top^out~2_FF_NODE_input_0_0 )
    );

    fpga_interconnect \routing_segment_lut_n37_output_0_0_to_latch_top^out~1_FF_NODE_input_0_0  (
        .datain(\lut_n37_output_0_0 ),
        .dataout(\latch_top^out~1_FF_NODE_input_0_0 )
    );

    fpga_interconnect \routing_segment_lut_vcc_output_0_0_to_adder_top^ADD~4-1[0]_input_1_0  (
        .datain(\lut_vcc_output_0_0 ),
        .dataout(\adder_top^ADD~4-1[0]_input_1_0 )
    );

    fpga_interconnect \routing_segment_adder_top^ADD~4-0[0]_output_0_0_to_adder_top^ADD~4-1[0]_input_2_0  (
        .datain(\adder_top^ADD~4-0[0]_output_0_0 ),
        .dataout(\adder_top^ADD~4-1[0]_input_2_0 )
    );

    fpga_interconnect \routing_segment_adder_top^ADD~4-1[0]_output_0_0_to_adder_top^ADD~4-2[0]_input_2_0  (
        .datain(\adder_top^ADD~4-1[0]_output_0_0 ),
        .dataout(\adder_top^ADD~4-2[0]_input_2_0 )
    );

    fpga_interconnect \routing_segment_adder_top^ADD~4-1[0]_output_1_0_to_lut_n22_input_0_3  (
        .datain(\adder_top^ADD~4-1[0]_output_1_0 ),
        .dataout(\lut_n22_input_0_3 )
    );

    fpga_interconnect \routing_segment_lut_gnd_output_0_0_to_adder_top^ADD~4-0[0]_input_0_0  (
        .datain(\lut_gnd_output_0_0 ),
        .dataout(\adder_top^ADD~4-0[0]_input_0_0 )
    );

    fpga_interconnect \routing_segment_lut_gnd_output_0_0_to_adder_top^ADD~4-0[0]_input_1_0  (
        .datain(\lut_gnd_output_0_0 ),
        .dataout(\adder_top^ADD~4-0[0]_input_1_0 )
    );

    fpga_interconnect \routing_segment_lut_gnd_output_0_0_to_adder_top^ADD~4-2[0]_input_1_0  (
        .datain(\lut_gnd_output_0_0 ),
        .dataout(\adder_top^ADD~4-2[0]_input_1_0 )
    );

    fpga_interconnect \routing_segment_lut_gnd_output_0_0_to_adder_top^ADD~4-3[0]_input_1_0  (
        .datain(\lut_gnd_output_0_0 ),
        .dataout(\adder_top^ADD~4-3[0]_input_1_0 )
    );

    fpga_interconnect \routing_segment_lut_gnd_output_0_0_to_adder_top^ADD~4-4[0]_input_1_0  (
        .datain(\lut_gnd_output_0_0 ),
        .dataout(\adder_top^ADD~4-4[0]_input_1_0 )
    );

    fpga_interconnect \routing_segment_adder_top^ADD~4-2[0]_output_0_0_to_adder_top^ADD~4-3[0]_input_2_0  (
        .datain(\adder_top^ADD~4-2[0]_output_0_0 ),
        .dataout(\adder_top^ADD~4-3[0]_input_2_0 )
    );

    fpga_interconnect \routing_segment_adder_top^ADD~4-2[0]_output_1_0_to_lut_n37_input_0_3  (
        .datain(\adder_top^ADD~4-2[0]_output_1_0 ),
        .dataout(\lut_n37_input_0_3 )
    );

    fpga_interconnect \routing_segment_adder_top^ADD~4-3[0]_output_0_0_to_adder_top^ADD~4-4[0]_input_2_0  (
        .datain(\adder_top^ADD~4-3[0]_output_0_0 ),
        .dataout(\adder_top^ADD~4-4[0]_input_2_0 )
    );

    fpga_interconnect \routing_segment_adder_top^ADD~4-3[0]_output_1_0_to_lut_n32_input_0_1  (
        .datain(\adder_top^ADD~4-3[0]_output_1_0 ),
        .dataout(\lut_n32_input_0_1 )
    );

    fpga_interconnect \routing_segment_adder_top^ADD~4-4[0]_output_1_0_to_lut_n27_input_0_1  (
        .datain(\adder_top^ADD~4-4[0]_output_1_0 ),
        .dataout(\lut_n27_input_0_1 )
    );

    fpga_interconnect \routing_segment_latch_top^out~0_FF_NODE_output_0_0_to_lut_n22_input_0_4  (
        .datain(\latch_top^out~0_FF_NODE_output_0_0 ),
        .dataout(\lut_n22_input_0_4 )
    );

    fpga_interconnect \routing_segment_latch_top^out~0_FF_NODE_output_0_0_to_adder_top^ADD~4-1[0]_input_0_0  (
        .datain(\latch_top^out~0_FF_NODE_output_0_0 ),
        .dataout(\adder_top^ADD~4-1[0]_input_0_0 )
    );

    fpga_interconnect \routing_segment_latch_top^out~0_FF_NODE_output_0_0_to_top^out~0_input_0_0  (
        .datain(\latch_top^out~0_FF_NODE_output_0_0 ),
        .dataout(\top^out~0_input_0_0 )
    );

    fpga_interconnect \routing_segment_latch_top^out~1_FF_NODE_output_0_0_to_lut_n37_input_0_0  (
        .datain(\latch_top^out~1_FF_NODE_output_0_0 ),
        .dataout(\lut_n37_input_0_0 )
    );

    fpga_interconnect \routing_segment_latch_top^out~1_FF_NODE_output_0_0_to_adder_top^ADD~4-2[0]_input_0_0  (
        .datain(\latch_top^out~1_FF_NODE_output_0_0 ),
        .dataout(\adder_top^ADD~4-2[0]_input_0_0 )
    );

    fpga_interconnect \routing_segment_latch_top^out~1_FF_NODE_output_0_0_to_top^out~1_input_0_0  (
        .datain(\latch_top^out~1_FF_NODE_output_0_0 ),
        .dataout(\top^out~1_input_0_0 )
    );

    fpga_interconnect \routing_segment_latch_top^out~2_FF_NODE_output_0_0_to_lut_n32_input_0_2  (
        .datain(\latch_top^out~2_FF_NODE_output_0_0 ),
        .dataout(\lut_n32_input_0_2 )
    );

    fpga_interconnect \routing_segment_latch_top^out~2_FF_NODE_output_0_0_to_adder_top^ADD~4-3[0]_input_0_0  (
        .datain(\latch_top^out~2_FF_NODE_output_0_0 ),
        .dataout(\adder_top^ADD~4-3[0]_input_0_0 )
    );

    fpga_interconnect \routing_segment_latch_top^out~2_FF_NODE_output_0_0_to_top^out~2_input_0_0  (
        .datain(\latch_top^out~2_FF_NODE_output_0_0 ),
        .dataout(\top^out~2_input_0_0 )
    );

    fpga_interconnect \routing_segment_latch_top^out~3_FF_NODE_output_0_0_to_lut_n27_input_0_4  (
        .datain(\latch_top^out~3_FF_NODE_output_0_0 ),
        .dataout(\lut_n27_input_0_4 )
    );

    fpga_interconnect \routing_segment_latch_top^out~3_FF_NODE_output_0_0_to_adder_top^ADD~4-4[0]_input_0_0  (
        .datain(\latch_top^out~3_FF_NODE_output_0_0 ),
        .dataout(\adder_top^ADD~4-4[0]_input_0_0 )
    );

    fpga_interconnect \routing_segment_latch_top^out~3_FF_NODE_output_0_0_to_top^out~3_input_0_0  (
        .datain(\latch_top^out~3_FF_NODE_output_0_0 ),
        .dataout(\top^out~3_input_0_0 )
    );


    //Cell instances
    LUT_K #(
        .K(5),
        .LUT_MASK(32'b11111111111111111111111111111110)
    ) \lut_gnd  (
        .in({
            1'b0,
            1'b0,
            1'b0,
            1'b0,
            1'b0}),
        .out(\lut_gnd_output_0_0 )
    );

    LUT_K #(
        .K(5),
        .LUT_MASK(32'b00010001000000010001000000000000)
    ) \lut_n22  (
        .in({
            \lut_n22_input_0_4 ,
            \lut_n22_input_0_3 ,
            \lut_n22_input_0_2 ,
            \lut_n22_input_0_1 ,
            1'b0}),
        .out(\lut_n22_output_0_0 )
    );

    DFF #(
        .INITIAL_VALUE(1'b0)
    ) \latch_top^out~0_FF_NODE  (
        .D(\latch_top^out~0_FF_NODE_input_0_0 ), 
        .Q(\latch_top^out~0_FF_NODE_output_0_0 ), 
        .clock(\latch_top^out~0_FF_NODE_clock_0_0 )
    );
    LUT_K #(
        .K(5),
        .LUT_MASK(32'b00000000000011010000000000001000)
    ) \lut_n27  (
        .in({
            \lut_n27_input_0_4 ,
            1'b0,
            \lut_n27_input_0_2 ,
            \lut_n27_input_0_1 ,
            \lut_n27_input_0_0 }),
        .out(\lut_n27_output_0_0 )
    );

    DFF #(
        .INITIAL_VALUE(1'b0)
    ) \latch_top^out~3_FF_NODE  (
        .D(\latch_top^out~3_FF_NODE_input_0_0 ), 
        .Q(\latch_top^out~3_FF_NODE_output_0_0 ), 
        .clock(\latch_top^out~3_FF_NODE_clock_0_0 )
    );
    LUT_K #(
        .K(5),
        .LUT_MASK(32'b00000011000000000000001000000010)
    ) \lut_n37  (
        .in({
            \lut_n37_input_0_4 ,
            \lut_n37_input_0_3 ,
            \lut_n37_input_0_2 ,
            1'b0,
            \lut_n37_input_0_0 }),
        .out(\lut_n37_output_0_0 )
    );

    DFF #(
        .INITIAL_VALUE(1'b0)
    ) \latch_top^out~1_FF_NODE  (
        .D(\latch_top^out~1_FF_NODE_input_0_0 ), 
        .Q(\latch_top^out~1_FF_NODE_output_0_0 ), 
        .clock(\latch_top^out~1_FF_NODE_clock_0_0 )
    );
    LUT_K #(
        .K(5),
        .LUT_MASK(32'b00000000000000000000000011011000)
    ) \lut_n32  (
        .in({
            \lut_n32_input_0_4 ,
            1'b0,
            \lut_n32_input_0_2 ,
            \lut_n32_input_0_1 ,
            \lut_n32_input_0_0 }),
        .out(\lut_n32_output_0_0 )
    );

    DFF #(
        .INITIAL_VALUE(1'b0)
    ) \latch_top^out~2_FF_NODE  (
        .D(\latch_top^out~2_FF_NODE_input_0_0 ), 
        .Q(\latch_top^out~2_FF_NODE_output_0_0 ), 
        .clock(\latch_top^out~2_FF_NODE_clock_0_0 )
    );
    adder #(
        .WIDTH(1)
    ) \adder_top^ADD~4-0[0]  (
        .a(\adder_top^ADD~4-0[0]_input_0_0 ),
        .b(\adder_top^ADD~4-0[0]_input_1_0 ),
        .cin(1'b0),
        .cout(\adder_top^ADD~4-0[0]_output_0_0 ),
        .sumout()
    );

    LUT_K #(
        .K(4),
        .LUT_MASK(16'b0000000000000001)
    ) \lut_vcc  (
        .in({
            1'b0,
            1'b0,
            1'b0,
            1'b0}),
        .out(\lut_vcc_output_0_0 )
    );

    adder #(
        .WIDTH(1)
    ) \adder_top^ADD~4-1[0]  (
        .a(\adder_top^ADD~4-1[0]_input_0_0 ),
        .b(\adder_top^ADD~4-1[0]_input_1_0 ),
        .cin(\adder_top^ADD~4-1[0]_input_2_0 ),
        .cout(\adder_top^ADD~4-1[0]_output_0_0 ),
        .sumout(\adder_top^ADD~4-1[0]_output_1_0 )
    );

    adder #(
        .WIDTH(1)
    ) \adder_top^ADD~4-2[0]  (
        .a(\adder_top^ADD~4-2[0]_input_0_0 ),
        .b(\adder_top^ADD~4-2[0]_input_1_0 ),
        .cin(\adder_top^ADD~4-2[0]_input_2_0 ),
        .cout(\adder_top^ADD~4-2[0]_output_0_0 ),
        .sumout(\adder_top^ADD~4-2[0]_output_1_0 )
    );

    adder #(
        .WIDTH(1)
    ) \adder_top^ADD~4-3[0]  (
        .a(\adder_top^ADD~4-3[0]_input_0_0 ),
        .b(\adder_top^ADD~4-3[0]_input_1_0 ),
        .cin(\adder_top^ADD~4-3[0]_input_2_0 ),
        .cout(\adder_top^ADD~4-3[0]_output_0_0 ),
        .sumout(\adder_top^ADD~4-3[0]_output_1_0 )
    );

    adder #(
        .WIDTH(1)
    ) \adder_top^ADD~4-4[0]  (
        .a(\adder_top^ADD~4-4[0]_input_0_0 ),
        .b(\adder_top^ADD~4-4[0]_input_1_0 ),
        .cin(\adder_top^ADD~4-4[0]_input_2_0 ),
        .cout(),
        .sumout(\adder_top^ADD~4-4[0]_output_1_0 )
    );


endmodule