////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: alu_top_synthesis.v
// /___/   /\     Timestamp: Tue Nov 07 14:09:47 2023
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim alu_top.ngc alu_top_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: alu_top.ngc
// Output file	: C:\ise-vhdl\ALU\netgen\synthesis\alu_top_synthesis.v
// # of Modules	: 1
// Design Name	: alu_top
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module alu_top (
  clk, a, b, s, flag, seg_out, seg_sel
);
  input clk;
  input [3 : 0] a;
  input [3 : 0] b;
  input [2 : 0] s;
  output [2 : 0] flag;
  output [7 : 0] seg_out;
  output [7 : 0] seg_sel;
  wire b_3_IBUF_0;
  wire b_2_IBUF_1;
  wire b_1_IBUF_2;
  wire b_0_IBUF_3;
  wire s_2_IBUF_4;
  wire s_1_IBUF_5;
  wire s_0_IBUF_6;
  wire clk_BUFGP_7;
  wire seg_sel_3_OBUF_13;
  wire seg_sel_2_OBUF_14;
  wire seg_sel_1_OBUF_15;
  wire seg_sel_0_OBUF_16;
  wire seg_out_7_OBUF_17;
  wire seg_out_6_OBUF_18;
  wire seg_out_5_OBUF_19;
  wire seg_out_4_OBUF_20;
  wire seg_out_3_OBUF_21;
  wire seg_out_2_OBUF_22;
  wire seg_out_1_OBUF_23;
  wire flag_1_OBUF_28;
  wire flag_0_OBUF_29;
  wire flag_2_OBUF_30;
  wire seg_sel_4_OBUF_31;
  wire N1;
  wire \A1/w1 ;
  wire Mmux_final_out_43_38;
  wire Mmux_final_out_33_39;
  wire Mmux_final_out_42_40;
  wire Mmux_final_out_32_41;
  wire Mmux_final_out_41_42;
  wire Mmux_final_out_31_43;
  wire temp11_44;
  wire \A0/c2 ;
  wire \A8/Mmux_segment4 ;
  wire \A8/Mmux_segment1 ;
  wire \A8/Mmux_segment6 ;
  wire \A8/Mmux_segment5 ;
  wire \A8/Mcount_counter_cy<16>_rt_137 ;
  wire \A8/Mcount_counter_cy<15>_rt_138 ;
  wire \A8/Mcount_counter_cy<14>_rt_139 ;
  wire \A8/Mcount_counter_cy<13>_rt_140 ;
  wire \A8/Mcount_counter_cy<12>_rt_141 ;
  wire \A8/Mcount_counter_cy<11>_rt_142 ;
  wire \A8/Mcount_counter_cy<10>_rt_143 ;
  wire \A8/Mcount_counter_cy<9>_rt_144 ;
  wire \A8/Mcount_counter_cy<8>_rt_145 ;
  wire \A8/Mcount_counter_cy<7>_rt_146 ;
  wire \A8/Mcount_counter_cy<6>_rt_147 ;
  wire \A8/Mcount_counter_cy<5>_rt_148 ;
  wire \A8/Mcount_counter_cy<4>_rt_149 ;
  wire \A8/Mcount_counter_cy<3>_rt_150 ;
  wire \A8/Mcount_counter_cy<2>_rt_151 ;
  wire \A8/Mcount_counter_cy<1>_rt_152 ;
  wire \A8/Mcount_counter_xor<17>_rt_153 ;
  wire N2;
  wire N4;
  wire N6;
  wire N7;
  wire N8;
  wire N9;
  wire [3 : 2] sub_out;
  wire [2 : 2] xor_out;
  wire [3 : 2] inc_out;
  wire [3 : 0] final_out;
  wire [0 : 0] \A5/Madd_output_cy ;
  wire [3 : 1] \A5/Madd_output_lut ;
  wire [16 : 0] \A8/Mcount_counter_cy ;
  wire [0 : 0] \A8/Mcount_counter_lut ;
  wire [17 : 0] \A8/counter ;
  wire [17 : 0] \A8/Result ;
  wire [1 : 0] \A8/sec ;
  VCC   XST_VCC (
    .P(seg_sel_4_OBUF_31)
  );
  GND   XST_GND (
    .G(N1)
  );
  MUXF7   Mmux_final_out_2_f7_2 (
    .I0(Mmux_final_out_43_38),
    .I1(Mmux_final_out_33_39),
    .S(s_2_IBUF_4),
    .O(final_out[3])
  );
  MUXF7   Mmux_final_out_2_f7_1 (
    .I0(Mmux_final_out_42_40),
    .I1(Mmux_final_out_32_41),
    .S(s_2_IBUF_4),
    .O(final_out[2])
  );
  MUXF7   Mmux_final_out_2_f7_0 (
    .I0(Mmux_final_out_41_42),
    .I1(Mmux_final_out_31_43),
    .S(s_2_IBUF_4),
    .O(final_out[1])
  );
  XORCY   \A8/Mcount_counter_xor<17>  (
    .CI(\A8/Mcount_counter_cy [16]),
    .LI(\A8/Mcount_counter_xor<17>_rt_153 ),
    .O(\A8/Result [17])
  );
  XORCY   \A8/Mcount_counter_xor<16>  (
    .CI(\A8/Mcount_counter_cy [15]),
    .LI(\A8/Mcount_counter_cy<16>_rt_137 ),
    .O(\A8/Result [16])
  );
  MUXCY   \A8/Mcount_counter_cy<16>  (
    .CI(\A8/Mcount_counter_cy [15]),
    .DI(N1),
    .S(\A8/Mcount_counter_cy<16>_rt_137 ),
    .O(\A8/Mcount_counter_cy [16])
  );
  XORCY   \A8/Mcount_counter_xor<15>  (
    .CI(\A8/Mcount_counter_cy [14]),
    .LI(\A8/Mcount_counter_cy<15>_rt_138 ),
    .O(\A8/Result [15])
  );
  MUXCY   \A8/Mcount_counter_cy<15>  (
    .CI(\A8/Mcount_counter_cy [14]),
    .DI(N1),
    .S(\A8/Mcount_counter_cy<15>_rt_138 ),
    .O(\A8/Mcount_counter_cy [15])
  );
  XORCY   \A8/Mcount_counter_xor<14>  (
    .CI(\A8/Mcount_counter_cy [13]),
    .LI(\A8/Mcount_counter_cy<14>_rt_139 ),
    .O(\A8/Result [14])
  );
  MUXCY   \A8/Mcount_counter_cy<14>  (
    .CI(\A8/Mcount_counter_cy [13]),
    .DI(N1),
    .S(\A8/Mcount_counter_cy<14>_rt_139 ),
    .O(\A8/Mcount_counter_cy [14])
  );
  XORCY   \A8/Mcount_counter_xor<13>  (
    .CI(\A8/Mcount_counter_cy [12]),
    .LI(\A8/Mcount_counter_cy<13>_rt_140 ),
    .O(\A8/Result [13])
  );
  MUXCY   \A8/Mcount_counter_cy<13>  (
    .CI(\A8/Mcount_counter_cy [12]),
    .DI(N1),
    .S(\A8/Mcount_counter_cy<13>_rt_140 ),
    .O(\A8/Mcount_counter_cy [13])
  );
  XORCY   \A8/Mcount_counter_xor<12>  (
    .CI(\A8/Mcount_counter_cy [11]),
    .LI(\A8/Mcount_counter_cy<12>_rt_141 ),
    .O(\A8/Result [12])
  );
  MUXCY   \A8/Mcount_counter_cy<12>  (
    .CI(\A8/Mcount_counter_cy [11]),
    .DI(N1),
    .S(\A8/Mcount_counter_cy<12>_rt_141 ),
    .O(\A8/Mcount_counter_cy [12])
  );
  XORCY   \A8/Mcount_counter_xor<11>  (
    .CI(\A8/Mcount_counter_cy [10]),
    .LI(\A8/Mcount_counter_cy<11>_rt_142 ),
    .O(\A8/Result [11])
  );
  MUXCY   \A8/Mcount_counter_cy<11>  (
    .CI(\A8/Mcount_counter_cy [10]),
    .DI(N1),
    .S(\A8/Mcount_counter_cy<11>_rt_142 ),
    .O(\A8/Mcount_counter_cy [11])
  );
  XORCY   \A8/Mcount_counter_xor<10>  (
    .CI(\A8/Mcount_counter_cy [9]),
    .LI(\A8/Mcount_counter_cy<10>_rt_143 ),
    .O(\A8/Result [10])
  );
  MUXCY   \A8/Mcount_counter_cy<10>  (
    .CI(\A8/Mcount_counter_cy [9]),
    .DI(N1),
    .S(\A8/Mcount_counter_cy<10>_rt_143 ),
    .O(\A8/Mcount_counter_cy [10])
  );
  XORCY   \A8/Mcount_counter_xor<9>  (
    .CI(\A8/Mcount_counter_cy [8]),
    .LI(\A8/Mcount_counter_cy<9>_rt_144 ),
    .O(\A8/Result [9])
  );
  MUXCY   \A8/Mcount_counter_cy<9>  (
    .CI(\A8/Mcount_counter_cy [8]),
    .DI(N1),
    .S(\A8/Mcount_counter_cy<9>_rt_144 ),
    .O(\A8/Mcount_counter_cy [9])
  );
  XORCY   \A8/Mcount_counter_xor<8>  (
    .CI(\A8/Mcount_counter_cy [7]),
    .LI(\A8/Mcount_counter_cy<8>_rt_145 ),
    .O(\A8/Result [8])
  );
  MUXCY   \A8/Mcount_counter_cy<8>  (
    .CI(\A8/Mcount_counter_cy [7]),
    .DI(N1),
    .S(\A8/Mcount_counter_cy<8>_rt_145 ),
    .O(\A8/Mcount_counter_cy [8])
  );
  XORCY   \A8/Mcount_counter_xor<7>  (
    .CI(\A8/Mcount_counter_cy [6]),
    .LI(\A8/Mcount_counter_cy<7>_rt_146 ),
    .O(\A8/Result [7])
  );
  MUXCY   \A8/Mcount_counter_cy<7>  (
    .CI(\A8/Mcount_counter_cy [6]),
    .DI(N1),
    .S(\A8/Mcount_counter_cy<7>_rt_146 ),
    .O(\A8/Mcount_counter_cy [7])
  );
  XORCY   \A8/Mcount_counter_xor<6>  (
    .CI(\A8/Mcount_counter_cy [5]),
    .LI(\A8/Mcount_counter_cy<6>_rt_147 ),
    .O(\A8/Result [6])
  );
  MUXCY   \A8/Mcount_counter_cy<6>  (
    .CI(\A8/Mcount_counter_cy [5]),
    .DI(N1),
    .S(\A8/Mcount_counter_cy<6>_rt_147 ),
    .O(\A8/Mcount_counter_cy [6])
  );
  XORCY   \A8/Mcount_counter_xor<5>  (
    .CI(\A8/Mcount_counter_cy [4]),
    .LI(\A8/Mcount_counter_cy<5>_rt_148 ),
    .O(\A8/Result [5])
  );
  MUXCY   \A8/Mcount_counter_cy<5>  (
    .CI(\A8/Mcount_counter_cy [4]),
    .DI(N1),
    .S(\A8/Mcount_counter_cy<5>_rt_148 ),
    .O(\A8/Mcount_counter_cy [5])
  );
  XORCY   \A8/Mcount_counter_xor<4>  (
    .CI(\A8/Mcount_counter_cy [3]),
    .LI(\A8/Mcount_counter_cy<4>_rt_149 ),
    .O(\A8/Result [4])
  );
  MUXCY   \A8/Mcount_counter_cy<4>  (
    .CI(\A8/Mcount_counter_cy [3]),
    .DI(N1),
    .S(\A8/Mcount_counter_cy<4>_rt_149 ),
    .O(\A8/Mcount_counter_cy [4])
  );
  XORCY   \A8/Mcount_counter_xor<3>  (
    .CI(\A8/Mcount_counter_cy [2]),
    .LI(\A8/Mcount_counter_cy<3>_rt_150 ),
    .O(\A8/Result [3])
  );
  MUXCY   \A8/Mcount_counter_cy<3>  (
    .CI(\A8/Mcount_counter_cy [2]),
    .DI(N1),
    .S(\A8/Mcount_counter_cy<3>_rt_150 ),
    .O(\A8/Mcount_counter_cy [3])
  );
  XORCY   \A8/Mcount_counter_xor<2>  (
    .CI(\A8/Mcount_counter_cy [1]),
    .LI(\A8/Mcount_counter_cy<2>_rt_151 ),
    .O(\A8/Result [2])
  );
  MUXCY   \A8/Mcount_counter_cy<2>  (
    .CI(\A8/Mcount_counter_cy [1]),
    .DI(N1),
    .S(\A8/Mcount_counter_cy<2>_rt_151 ),
    .O(\A8/Mcount_counter_cy [2])
  );
  XORCY   \A8/Mcount_counter_xor<1>  (
    .CI(\A8/Mcount_counter_cy [0]),
    .LI(\A8/Mcount_counter_cy<1>_rt_152 ),
    .O(\A8/Result [1])
  );
  MUXCY   \A8/Mcount_counter_cy<1>  (
    .CI(\A8/Mcount_counter_cy [0]),
    .DI(N1),
    .S(\A8/Mcount_counter_cy<1>_rt_152 ),
    .O(\A8/Mcount_counter_cy [1])
  );
  XORCY   \A8/Mcount_counter_xor<0>  (
    .CI(N1),
    .LI(\A8/Mcount_counter_lut [0]),
    .O(\A8/Result [0])
  );
  MUXCY   \A8/Mcount_counter_cy<0>  (
    .CI(N1),
    .DI(seg_sel_4_OBUF_31),
    .S(\A8/Mcount_counter_lut [0]),
    .O(\A8/Mcount_counter_cy [0])
  );
  FD   \A8/counter_17  (
    .C(clk_BUFGP_7),
    .D(\A8/Result [17]),
    .Q(\A8/counter [17])
  );
  FD   \A8/counter_16  (
    .C(clk_BUFGP_7),
    .D(\A8/Result [16]),
    .Q(\A8/counter [16])
  );
  FD   \A8/counter_15  (
    .C(clk_BUFGP_7),
    .D(\A8/Result [15]),
    .Q(\A8/counter [15])
  );
  FD   \A8/counter_14  (
    .C(clk_BUFGP_7),
    .D(\A8/Result [14]),
    .Q(\A8/counter [14])
  );
  FD   \A8/counter_13  (
    .C(clk_BUFGP_7),
    .D(\A8/Result [13]),
    .Q(\A8/counter [13])
  );
  FD   \A8/counter_12  (
    .C(clk_BUFGP_7),
    .D(\A8/Result [12]),
    .Q(\A8/counter [12])
  );
  FD   \A8/counter_11  (
    .C(clk_BUFGP_7),
    .D(\A8/Result [11]),
    .Q(\A8/counter [11])
  );
  FD   \A8/counter_10  (
    .C(clk_BUFGP_7),
    .D(\A8/Result [10]),
    .Q(\A8/counter [10])
  );
  FD   \A8/counter_9  (
    .C(clk_BUFGP_7),
    .D(\A8/Result [9]),
    .Q(\A8/counter [9])
  );
  FD   \A8/counter_8  (
    .C(clk_BUFGP_7),
    .D(\A8/Result [8]),
    .Q(\A8/counter [8])
  );
  FD   \A8/counter_7  (
    .C(clk_BUFGP_7),
    .D(\A8/Result [7]),
    .Q(\A8/counter [7])
  );
  FD   \A8/counter_6  (
    .C(clk_BUFGP_7),
    .D(\A8/Result [6]),
    .Q(\A8/counter [6])
  );
  FD   \A8/counter_5  (
    .C(clk_BUFGP_7),
    .D(\A8/Result [5]),
    .Q(\A8/counter [5])
  );
  FD   \A8/counter_4  (
    .C(clk_BUFGP_7),
    .D(\A8/Result [4]),
    .Q(\A8/counter [4])
  );
  FD   \A8/counter_3  (
    .C(clk_BUFGP_7),
    .D(\A8/Result [3]),
    .Q(\A8/counter [3])
  );
  FD   \A8/counter_2  (
    .C(clk_BUFGP_7),
    .D(\A8/Result [2]),
    .Q(\A8/counter [2])
  );
  FD   \A8/counter_1  (
    .C(clk_BUFGP_7),
    .D(\A8/Result [1]),
    .Q(\A8/counter [1])
  );
  FD   \A8/counter_0  (
    .C(clk_BUFGP_7),
    .D(\A8/Result [0]),
    .Q(\A8/counter [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \A8/sec_1  (
    .C(clk_BUFGP_7),
    .D(\A8/counter [17]),
    .Q(\A8/sec [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \A8/sec_0  (
    .C(clk_BUFGP_7),
    .D(\A8/counter [16]),
    .Q(\A8/sec [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \A1/w11  (
    .I0(\A5/Madd_output_cy [0]),
    .I1(b_0_IBUF_3),
    .O(\A1/w1 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \Z<4>1  (
    .I0(final_out[3]),
    .I1(final_out[2]),
    .I2(final_out[1]),
    .I3(final_out[0]),
    .I4(flag_1_OBUF_28),
    .O(flag_2_OBUF_30)
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \inc_out<3>1  (
    .I0(\A5/Madd_output_lut [2]),
    .I1(\A5/Madd_output_lut [3]),
    .I2(\A5/Madd_output_cy [0]),
    .I3(\A5/Madd_output_lut [1]),
    .O(inc_out[3])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \inc_out<2>1  (
    .I0(\A5/Madd_output_lut [2]),
    .I1(\A5/Madd_output_cy [0]),
    .I2(\A5/Madd_output_lut [1]),
    .O(inc_out[2])
  );
  LUT6 #(
    .INIT ( 64'h4D44DD4D4D444D44 ))
  temp11 (
    .I0(\A5/Madd_output_lut [2]),
    .I1(b_2_IBUF_1),
    .I2(\A5/Madd_output_lut [1]),
    .I3(b_1_IBUF_2),
    .I4(\A5/Madd_output_cy [0]),
    .I5(b_0_IBUF_3),
    .O(temp11_44)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \A4/Mxor_output<2>_xo<0>1  (
    .I0(\A5/Madd_output_lut [2]),
    .I1(b_2_IBUF_1),
    .O(xor_out[2])
  );
  LUT6 #(
    .INIT ( 64'h2BB2B22BB22B2BB2 ))
  \A1/U4/Mxor_c_out_xo<0>1  (
    .I0(\A5/Madd_output_lut [3]),
    .I1(b_3_IBUF_0),
    .I2(\A1/w1 ),
    .I3(\A5/Madd_output_lut [1]),
    .I4(b_1_IBUF_2),
    .I5(xor_out[2]),
    .O(sub_out[3])
  );
  LUT6 #(
    .INIT ( 64'h1101000000000100 ))
  \A8/Mmux_segment31  (
    .I0(\A8/sec [0]),
    .I1(\A8/sec [1]),
    .I2(final_out[0]),
    .I3(final_out[1]),
    .I4(final_out[2]),
    .I5(final_out[3]),
    .O(seg_out_3_OBUF_21)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF0941 ))
  \A8/Mmux_segment71  (
    .I0(final_out[1]),
    .I1(final_out[2]),
    .I2(final_out[3]),
    .I3(final_out[0]),
    .I4(\A8/sec [0]),
    .I5(\A8/sec [1]),
    .O(seg_out_7_OBUF_17)
  );
  LUT6 #(
    .INIT ( 64'h1110001000101000 ))
  \A8/Mmux_segment21  (
    .I0(\A8/sec [0]),
    .I1(\A8/sec [1]),
    .I2(final_out[2]),
    .I3(final_out[0]),
    .I4(final_out[1]),
    .I5(final_out[3]),
    .O(seg_out_2_OBUF_22)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \A8/Mram_sel31  (
    .I0(\A8/sec [0]),
    .I1(\A8/sec [1]),
    .O(seg_sel_3_OBUF_13)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \A8/Mram_sel21  (
    .I0(\A8/sec [0]),
    .I1(\A8/sec [1]),
    .O(seg_sel_2_OBUF_14)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \A8/Mram_sel111  (
    .I0(\A8/sec [1]),
    .I1(\A8/sec [0]),
    .O(seg_sel_1_OBUF_15)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \A8/Mram_sel11  (
    .I0(\A8/sec [1]),
    .I1(\A8/sec [0]),
    .O(seg_sel_0_OBUF_16)
  );
  LUT6 #(
    .INIT ( 64'hEAAEEBBA40044110 ))
  \A8/Mmux_segment41  (
    .I0(\A8/sec [0]),
    .I1(final_out[1]),
    .I2(final_out[0]),
    .I3(final_out[2]),
    .I4(final_out[3]),
    .I5(flag_1_OBUF_28),
    .O(\A8/Mmux_segment4 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A8/Mmux_segment42  (
    .I0(\A8/Mmux_segment4 ),
    .I1(\A8/sec [1]),
    .O(seg_out_4_OBUF_20)
  );
  LUT6 #(
    .INIT ( 64'hAEAAEABE04004014 ))
  \A8/Mmux_segment11  (
    .I0(\A8/sec [0]),
    .I1(final_out[0]),
    .I2(final_out[2]),
    .I3(final_out[3]),
    .I4(final_out[1]),
    .I5(flag_1_OBUF_28),
    .O(\A8/Mmux_segment1 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A8/Mmux_segment12  (
    .I0(\A8/Mmux_segment1 ),
    .I1(\A8/sec [1]),
    .O(seg_out_1_OBUF_23)
  );
  LUT6 #(
    .INIT ( 64'hAEEAAFAE04400504 ))
  \A8/Mmux_segment61  (
    .I0(\A8/sec [0]),
    .I1(final_out[0]),
    .I2(final_out[3]),
    .I3(final_out[1]),
    .I4(final_out[2]),
    .I5(flag_1_OBUF_28),
    .O(\A8/Mmux_segment6 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A8/Mmux_segment62  (
    .I0(\A8/Mmux_segment6 ),
    .I1(\A8/sec [1]),
    .O(seg_out_6_OBUF_18)
  );
  LUT6 #(
    .INIT ( 64'hAEAEAFEE04040544 ))
  \A8/Mmux_segment51  (
    .I0(\A8/sec [0]),
    .I1(final_out[0]),
    .I2(final_out[3]),
    .I3(final_out[2]),
    .I4(final_out[1]),
    .I5(flag_1_OBUF_28),
    .O(\A8/Mmux_segment5 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \A8/Mmux_segment52  (
    .I0(\A8/Mmux_segment5 ),
    .I1(\A8/sec [1]),
    .O(seg_out_5_OBUF_19)
  );
  IBUF   a_3_IBUF (
    .I(a[3]),
    .O(\A5/Madd_output_lut [3])
  );
  IBUF   a_2_IBUF (
    .I(a[2]),
    .O(\A5/Madd_output_lut [2])
  );
  IBUF   a_1_IBUF (
    .I(a[1]),
    .O(\A5/Madd_output_lut [1])
  );
  IBUF   a_0_IBUF (
    .I(a[0]),
    .O(\A5/Madd_output_cy [0])
  );
  IBUF   b_3_IBUF (
    .I(b[3]),
    .O(b_3_IBUF_0)
  );
  IBUF   b_2_IBUF (
    .I(b[2]),
    .O(b_2_IBUF_1)
  );
  IBUF   b_1_IBUF (
    .I(b[1]),
    .O(b_1_IBUF_2)
  );
  IBUF   b_0_IBUF (
    .I(b[0]),
    .O(b_0_IBUF_3)
  );
  IBUF   s_2_IBUF (
    .I(s[2]),
    .O(s_2_IBUF_4)
  );
  IBUF   s_1_IBUF (
    .I(s[1]),
    .O(s_1_IBUF_5)
  );
  IBUF   s_0_IBUF (
    .I(s[0]),
    .O(s_0_IBUF_6)
  );
  OBUF   flag_2_OBUF (
    .I(flag_2_OBUF_30),
    .O(flag[2])
  );
  OBUF   flag_1_OBUF (
    .I(flag_1_OBUF_28),
    .O(flag[1])
  );
  OBUF   flag_0_OBUF (
    .I(flag_0_OBUF_29),
    .O(flag[0])
  );
  OBUF   seg_out_7_OBUF (
    .I(seg_out_7_OBUF_17),
    .O(seg_out[7])
  );
  OBUF   seg_out_6_OBUF (
    .I(seg_out_6_OBUF_18),
    .O(seg_out[6])
  );
  OBUF   seg_out_5_OBUF (
    .I(seg_out_5_OBUF_19),
    .O(seg_out[5])
  );
  OBUF   seg_out_4_OBUF (
    .I(seg_out_4_OBUF_20),
    .O(seg_out[4])
  );
  OBUF   seg_out_3_OBUF (
    .I(seg_out_3_OBUF_21),
    .O(seg_out[3])
  );
  OBUF   seg_out_2_OBUF (
    .I(seg_out_2_OBUF_22),
    .O(seg_out[2])
  );
  OBUF   seg_out_1_OBUF (
    .I(seg_out_1_OBUF_23),
    .O(seg_out[1])
  );
  OBUF   seg_out_0_OBUF (
    .I(seg_sel_4_OBUF_31),
    .O(seg_out[0])
  );
  OBUF   seg_sel_7_OBUF (
    .I(seg_sel_4_OBUF_31),
    .O(seg_sel[7])
  );
  OBUF   seg_sel_6_OBUF (
    .I(seg_sel_4_OBUF_31),
    .O(seg_sel[6])
  );
  OBUF   seg_sel_5_OBUF (
    .I(seg_sel_4_OBUF_31),
    .O(seg_sel[5])
  );
  OBUF   seg_sel_4_OBUF (
    .I(seg_sel_4_OBUF_31),
    .O(seg_sel[4])
  );
  OBUF   seg_sel_3_OBUF (
    .I(seg_sel_3_OBUF_13),
    .O(seg_sel[3])
  );
  OBUF   seg_sel_2_OBUF (
    .I(seg_sel_2_OBUF_14),
    .O(seg_sel[2])
  );
  OBUF   seg_sel_1_OBUF (
    .I(seg_sel_1_OBUF_15),
    .O(seg_sel[1])
  );
  OBUF   seg_sel_0_OBUF (
    .I(seg_sel_0_OBUF_16),
    .O(seg_sel[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A8/Mcount_counter_cy<16>_rt  (
    .I0(\A8/counter [16]),
    .O(\A8/Mcount_counter_cy<16>_rt_137 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A8/Mcount_counter_cy<15>_rt  (
    .I0(\A8/counter [15]),
    .O(\A8/Mcount_counter_cy<15>_rt_138 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A8/Mcount_counter_cy<14>_rt  (
    .I0(\A8/counter [14]),
    .O(\A8/Mcount_counter_cy<14>_rt_139 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A8/Mcount_counter_cy<13>_rt  (
    .I0(\A8/counter [13]),
    .O(\A8/Mcount_counter_cy<13>_rt_140 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A8/Mcount_counter_cy<12>_rt  (
    .I0(\A8/counter [12]),
    .O(\A8/Mcount_counter_cy<12>_rt_141 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A8/Mcount_counter_cy<11>_rt  (
    .I0(\A8/counter [11]),
    .O(\A8/Mcount_counter_cy<11>_rt_142 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A8/Mcount_counter_cy<10>_rt  (
    .I0(\A8/counter [10]),
    .O(\A8/Mcount_counter_cy<10>_rt_143 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A8/Mcount_counter_cy<9>_rt  (
    .I0(\A8/counter [9]),
    .O(\A8/Mcount_counter_cy<9>_rt_144 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A8/Mcount_counter_cy<8>_rt  (
    .I0(\A8/counter [8]),
    .O(\A8/Mcount_counter_cy<8>_rt_145 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A8/Mcount_counter_cy<7>_rt  (
    .I0(\A8/counter [7]),
    .O(\A8/Mcount_counter_cy<7>_rt_146 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A8/Mcount_counter_cy<6>_rt  (
    .I0(\A8/counter [6]),
    .O(\A8/Mcount_counter_cy<6>_rt_147 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A8/Mcount_counter_cy<5>_rt  (
    .I0(\A8/counter [5]),
    .O(\A8/Mcount_counter_cy<5>_rt_148 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A8/Mcount_counter_cy<4>_rt  (
    .I0(\A8/counter [4]),
    .O(\A8/Mcount_counter_cy<4>_rt_149 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A8/Mcount_counter_cy<3>_rt  (
    .I0(\A8/counter [3]),
    .O(\A8/Mcount_counter_cy<3>_rt_150 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A8/Mcount_counter_cy<2>_rt  (
    .I0(\A8/counter [2]),
    .O(\A8/Mcount_counter_cy<2>_rt_151 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A8/Mcount_counter_cy<1>_rt  (
    .I0(\A8/counter [1]),
    .O(\A8/Mcount_counter_cy<1>_rt_152 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \A8/Mcount_counter_xor<17>_rt  (
    .I0(\A8/counter [17]),
    .O(\A8/Mcount_counter_xor<17>_rt_153 )
  );
  LUT4 #(
    .INIT ( 16'h72AC ))
  Mmux_final_out_33 (
    .I0(b_3_IBUF_0),
    .I1(s_1_IBUF_5),
    .I2(s_0_IBUF_6),
    .I3(\A5/Madd_output_lut [3]),
    .O(Mmux_final_out_33_39)
  );
  LUT4 #(
    .INIT ( 16'h72AC ))
  Mmux_final_out_31 (
    .I0(b_1_IBUF_2),
    .I1(s_1_IBUF_5),
    .I2(s_0_IBUF_6),
    .I3(\A5/Madd_output_lut [1]),
    .O(Mmux_final_out_31_43)
  );
  LUT4 #(
    .INIT ( 16'h72AC ))
  Mmux_final_out_32 (
    .I0(b_2_IBUF_1),
    .I1(s_1_IBUF_5),
    .I2(s_0_IBUF_6),
    .I3(\A5/Madd_output_lut [2]),
    .O(Mmux_final_out_32_41)
  );
  LUT6 #(
    .INIT ( 64'h14141414141414BE ))
  Mmux_final_out_43_SW0 (
    .I0(s_1_IBUF_5),
    .I1(\A0/c2 ),
    .I2(b_3_IBUF_0),
    .I3(\A5/Madd_output_lut [2]),
    .I4(\A5/Madd_output_cy [0]),
    .I5(\A5/Madd_output_lut [1]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h8A80DFD5DFD58A80 ))
  Mmux_final_out_43 (
    .I0(s_0_IBUF_6),
    .I1(inc_out[3]),
    .I2(s_1_IBUF_5),
    .I3(sub_out[3]),
    .I4(\A5/Madd_output_lut [3]),
    .I5(N2),
    .O(Mmux_final_out_43_38)
  );
  LUT6 #(
    .INIT ( 64'hEEE8E888E888E888 ))
  \A0/fa3/Mxor_c_out_xo<0>1  (
    .I0(\A5/Madd_output_lut [2]),
    .I1(b_2_IBUF_1),
    .I2(\A5/Madd_output_lut [1]),
    .I3(b_1_IBUF_2),
    .I4(\A5/Madd_output_cy [0]),
    .I5(b_0_IBUF_3),
    .O(\A0/c2 )
  );
  LUT6 #(
    .INIT ( 64'hB22B2BB22BB2B22B ))
  \A1/U3/Mxor_c_out_xo<0>1  (
    .I0(\A5/Madd_output_lut [2]),
    .I1(b_2_IBUF_1),
    .I2(\A5/Madd_output_cy [0]),
    .I3(b_0_IBUF_3),
    .I4(\A5/Madd_output_lut [1]),
    .I5(b_1_IBUF_2),
    .O(sub_out[2])
  );
  LUT6 #(
    .INIT ( 64'h8A80DFD5DFD58A80 ))
  Mmux_final_out_42 (
    .I0(s_0_IBUF_6),
    .I1(inc_out[2]),
    .I2(s_1_IBUF_5),
    .I3(sub_out[2]),
    .I4(\A5/Madd_output_lut [2]),
    .I5(N4),
    .O(Mmux_final_out_42_40)
  );
  LUT6 #(
    .INIT ( 64'h46ABA956678A9A56 ))
  Mmux_final_out_41 (
    .I0(\A5/Madd_output_lut [1]),
    .I1(s_1_IBUF_5),
    .I2(b_1_IBUF_2),
    .I3(\A5/Madd_output_cy [0]),
    .I4(s_0_IBUF_6),
    .I5(b_0_IBUF_3),
    .O(Mmux_final_out_41_42)
  );
  LUT6 #(
    .INIT ( 64'h111414441414EEEE ))
  Mmux_final_out_42_SW0 (
    .I0(s_1_IBUF_5),
    .I1(b_2_IBUF_1),
    .I2(b_1_IBUF_2),
    .I3(b_0_IBUF_3),
    .I4(\A5/Madd_output_lut [1]),
    .I5(\A5/Madd_output_cy [0]),
    .O(N4)
  );
  LUT5 #(
    .INIT ( 32'h3933E89E ))
  Mmux_final_out_2_f7 (
    .I0(s_0_IBUF_6),
    .I1(\A5/Madd_output_cy [0]),
    .I2(b_0_IBUF_3),
    .I3(s_2_IBUF_4),
    .I4(s_1_IBUF_5),
    .O(final_out[0])
  );
  MUXF7   V3 (
    .I0(N6),
    .I1(N7),
    .S(s_1_IBUF_5),
    .O(flag_0_OBUF_29)
  );
  LUT5 #(
    .INIT ( 32'h40004440 ))
  V3_F (
    .I0(s_2_IBUF_4),
    .I1(s_0_IBUF_6),
    .I2(temp11_44),
    .I3(b_3_IBUF_0),
    .I4(\A5/Madd_output_lut [3]),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  V3_G (
    .I0(s_2_IBUF_4),
    .I1(s_0_IBUF_6),
    .I2(\A5/Madd_output_lut [3]),
    .I3(\A5/Madd_output_lut [2]),
    .I4(\A5/Madd_output_lut [1]),
    .I5(\A5/Madd_output_cy [0]),
    .O(N7)
  );
  MUXF7   C3 (
    .I0(N8),
    .I1(N9),
    .S(s_1_IBUF_5),
    .O(flag_1_OBUF_28)
  );
  LUT5 #(
    .INIT ( 32'h11101000 ))
  C3_F (
    .I0(s_2_IBUF_4),
    .I1(s_0_IBUF_6),
    .I2(b_3_IBUF_0),
    .I3(\A0/c2 ),
    .I4(\A5/Madd_output_lut [3]),
    .O(N8)
  );
  LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  C3_G (
    .I0(s_2_IBUF_4),
    .I1(s_0_IBUF_6),
    .I2(\A5/Madd_output_lut [2]),
    .I3(\A5/Madd_output_lut [3]),
    .I4(\A5/Madd_output_cy [0]),
    .I5(\A5/Madd_output_lut [1]),
    .O(N9)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_7)
  );
  INV   \A8/Mcount_counter_lut<0>_INV_0  (
    .I(\A8/counter [0]),
    .O(\A8/Mcount_counter_lut [0])
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

