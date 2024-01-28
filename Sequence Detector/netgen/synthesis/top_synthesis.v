////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: top_synthesis.v
// /___/   /\     Timestamp: Tue Dec 12 13:32:32 2023
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim top.ngc top_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: top.ngc
// Output file	: C:\ise-vhdl\lab_7_3\netgen\synthesis\top_synthesis.v
// # of Modules	: 1
// Design Name	: top
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

module top (
  clk, reset, inp, en, seg_out, seg_sel
);
  input clk;
  input reset;
  input inp;
  input en;
  output [7 : 0] seg_out;
  output [7 : 0] seg_sel;
  wire clk_BUFGP_0;
  wire reset_IBUF_1;
  wire inp_IBUF_2;
  wire en_IBUF_3;
  wire \hzclk/clk_out_BUFG_4 ;
  wire seg_sel_3_OBUF_9;
  wire seg_sel_2_OBUF_10;
  wire seg_sel_1_OBUF_11;
  wire seg_sel_0_OBUF_12;
  wire seg_out_7_OBUF_13;
  wire seg_out_6_OBUF_14;
  wire seg_out_5_OBUF_15;
  wire seg_out_4_OBUF_16;
  wire seg_out_3_OBUF_17;
  wire seg_out_2_OBUF_18;
  wire seg_out_1_OBUF_19;
  wire seg_sel_4_OBUF_20;
  wire N1;
  wire \hzclk/GND_7_o_GND_7_o_MUX_65_o ;
  wire reset_inv;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<0>_88 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<0>_89 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lutdi_90 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<1>_91 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<1>_92 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lutdi1_93 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<2>_94 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<2>_95 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lutdi2_96 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<3>_97 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<3>_98 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<4>_99 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<4>_100 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lutdi3_101 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<5>_102 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<5>_103 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lutdi4_104 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<6>_105 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<0>_107 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<0>_108 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lutdi_109 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<1>_110 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<1>_111 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lutdi1_112 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<2>_113 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<2>_114 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lutdi2_115 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<3>_116 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<3>_117 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<4>_118 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<4>_119 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lutdi3_120 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<5>_121 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<5>_122 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lutdi4_123 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<6>_124 ;
  wire \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ;
  wire \uut_fsm/_n0046_inv ;
  wire \uut_fsm/state_FSM_FFd2_163 ;
  wire \uut_fsm/state_FSM_FFd1-In ;
  wire \uut_fsm/state_FSM_FFd2-In ;
  wire \uut_fsm/state_FSM_FFd1_166 ;
  wire \hzclk/Mcount_counter_cy<1>_rt_243 ;
  wire \hzclk/Mcount_counter_cy<2>_rt_244 ;
  wire \hzclk/Mcount_counter_cy<3>_rt_245 ;
  wire \hzclk/Mcount_counter_cy<4>_rt_246 ;
  wire \hzclk/Mcount_counter_cy<5>_rt_247 ;
  wire \hzclk/Mcount_counter_cy<6>_rt_248 ;
  wire \hzclk/Mcount_counter_cy<7>_rt_249 ;
  wire \hzclk/Mcount_counter_cy<8>_rt_250 ;
  wire \hzclk/Mcount_counter_cy<9>_rt_251 ;
  wire \hzclk/Mcount_counter_cy<10>_rt_252 ;
  wire \hzclk/Mcount_counter_cy<11>_rt_253 ;
  wire \hzclk/Mcount_counter_cy<12>_rt_254 ;
  wire \hzclk/Mcount_counter_cy<13>_rt_255 ;
  wire \hzclk/Mcount_counter_cy<14>_rt_256 ;
  wire \hzclk/Mcount_counter_cy<15>_rt_257 ;
  wire \hzclk/Mcount_counter_cy<16>_rt_258 ;
  wire \hzclk/Mcount_counter_cy<17>_rt_259 ;
  wire \hzclk/Mcount_counter_cy<18>_rt_260 ;
  wire \hzclk/Mcount_counter_cy<19>_rt_261 ;
  wire \hzclk/Mcount_counter_cy<20>_rt_262 ;
  wire \hzclk/Mcount_counter_cy<21>_rt_263 ;
  wire \hzclk/Mcount_counter_cy<22>_rt_264 ;
  wire \hzclk/Mcount_counter_cy<23>_rt_265 ;
  wire \hzclk/Mcount_counter_cy<24>_rt_266 ;
  wire \hzclk/Mcount_counter_cy<25>_rt_267 ;
  wire \hzclk/Mcount_counter_cy<26>_rt_268 ;
  wire \hzclk/Mcount_counter_cy<27>_rt_269 ;
  wire \hzclk/Mcount_counter_cy<28>_rt_270 ;
  wire \hzclk/Mcount_counter_cy<29>_rt_271 ;
  wire \hzclk/Mcount_counter_cy<30>_rt_272 ;
  wire \uut_seven_segment/Mcount_counter_cy<16>_rt_273 ;
  wire \uut_seven_segment/Mcount_counter_cy<15>_rt_274 ;
  wire \uut_seven_segment/Mcount_counter_cy<14>_rt_275 ;
  wire \uut_seven_segment/Mcount_counter_cy<13>_rt_276 ;
  wire \uut_seven_segment/Mcount_counter_cy<12>_rt_277 ;
  wire \uut_seven_segment/Mcount_counter_cy<11>_rt_278 ;
  wire \uut_seven_segment/Mcount_counter_cy<10>_rt_279 ;
  wire \uut_seven_segment/Mcount_counter_cy<9>_rt_280 ;
  wire \uut_seven_segment/Mcount_counter_cy<8>_rt_281 ;
  wire \uut_seven_segment/Mcount_counter_cy<7>_rt_282 ;
  wire \uut_seven_segment/Mcount_counter_cy<6>_rt_283 ;
  wire \uut_seven_segment/Mcount_counter_cy<5>_rt_284 ;
  wire \uut_seven_segment/Mcount_counter_cy<4>_rt_285 ;
  wire \uut_seven_segment/Mcount_counter_cy<3>_rt_286 ;
  wire \uut_seven_segment/Mcount_counter_cy<2>_rt_287 ;
  wire \uut_seven_segment/Mcount_counter_cy<1>_rt_288 ;
  wire \hzclk/Mcount_counter_xor<31>_rt_289 ;
  wire \uut_seven_segment/Mcount_counter_xor<17>_rt_290 ;
  wire \hzclk/counter_0_rstpot_291 ;
  wire \hzclk/counter_1_rstpot_292 ;
  wire \hzclk/counter_2_rstpot_293 ;
  wire \hzclk/counter_3_rstpot_294 ;
  wire \hzclk/counter_4_rstpot_295 ;
  wire \hzclk/counter_5_rstpot_296 ;
  wire \hzclk/counter_6_rstpot_297 ;
  wire \hzclk/counter_7_rstpot_298 ;
  wire \hzclk/counter_8_rstpot_299 ;
  wire \hzclk/counter_9_rstpot_300 ;
  wire \hzclk/counter_10_rstpot_301 ;
  wire \hzclk/counter_11_rstpot_302 ;
  wire \hzclk/counter_12_rstpot_303 ;
  wire \hzclk/counter_13_rstpot_304 ;
  wire \hzclk/counter_14_rstpot_305 ;
  wire \hzclk/counter_15_rstpot_306 ;
  wire \hzclk/counter_16_rstpot_307 ;
  wire \hzclk/counter_17_rstpot_308 ;
  wire \hzclk/counter_18_rstpot_309 ;
  wire \hzclk/counter_19_rstpot_310 ;
  wire \hzclk/counter_20_rstpot_311 ;
  wire \hzclk/counter_21_rstpot_312 ;
  wire \hzclk/counter_22_rstpot_313 ;
  wire \hzclk/counter_23_rstpot_314 ;
  wire \hzclk/counter_24_rstpot_315 ;
  wire \hzclk/counter_25_rstpot_316 ;
  wire \hzclk/counter_26_rstpot_317 ;
  wire \hzclk/counter_27_rstpot_318 ;
  wire \hzclk/counter_28_rstpot_319 ;
  wire \hzclk/counter_29_rstpot_320 ;
  wire \hzclk/counter_30_rstpot_321 ;
  wire \hzclk/counter_31_rstpot_322 ;
  wire \hzclk/clk_out_323 ;
  wire [3 : 0] \uut_fsm/cnt ;
  wire [31 : 0] \hzclk/counter ;
  wire [31 : 0] Result;
  wire [0 : 0] \hzclk/Mcount_counter_lut ;
  wire [30 : 0] \hzclk/Mcount_counter_cy ;
  wire [3 : 0] \uut_fsm/Result ;
  wire [16 : 0] \uut_seven_segment/Mcount_counter_cy ;
  wire [0 : 0] \uut_seven_segment/Mcount_counter_lut ;
  wire [17 : 0] \uut_seven_segment/counter ;
  wire [17 : 0] \uut_seven_segment/Result ;
  wire [1 : 0] \uut_seven_segment/sec ;
  VCC   XST_VCC (
    .P(seg_sel_4_OBUF_20)
  );
  GND   XST_GND (
    .G(N1)
  );
  FDC   \hzclk/clk_out  (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\hzclk/GND_7_o_GND_7_o_MUX_65_o ),
    .Q(\hzclk/clk_out_323 )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<0>  (
    .I0(\hzclk/counter [0]),
    .I1(\hzclk/counter [1]),
    .I2(\hzclk/counter [2]),
    .I3(\hzclk/counter [3]),
    .I4(\hzclk/counter [4]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<0>_88 )
  );
  MUXCY   \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<0>  (
    .CI(seg_sel_4_OBUF_20),
    .DI(N1),
    .S(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<0>_88 ),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<0>_89 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lutdi  (
    .I0(\hzclk/counter [9]),
    .I1(\hzclk/counter [8]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lutdi_90 )
  );
  LUT5 #(
    .INIT ( 32'h10000000 ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<1>  (
    .I0(\hzclk/counter [8]),
    .I1(\hzclk/counter [9]),
    .I2(\hzclk/counter [7]),
    .I3(\hzclk/counter [5]),
    .I4(\hzclk/counter [6]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<1>_91 )
  );
  MUXCY   \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<1>  (
    .CI(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<0>_89 ),
    .DI(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lutdi_90 ),
    .S(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<1>_91 ),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<1>_92 )
  );
  LUT5 #(
    .INIT ( 32'h88888880 ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lutdi1  (
    .I0(\hzclk/counter [14]),
    .I1(\hzclk/counter [13]),
    .I2(\hzclk/counter [12]),
    .I3(\hzclk/counter [11]),
    .I4(\hzclk/counter [10]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lutdi1_93 )
  );
  LUT5 #(
    .INIT ( 32'h00000008 ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<2>  (
    .I0(\hzclk/counter [14]),
    .I1(\hzclk/counter [13]),
    .I2(\hzclk/counter [10]),
    .I3(\hzclk/counter [11]),
    .I4(\hzclk/counter [12]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<2>_94 )
  );
  MUXCY   \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<2>  (
    .CI(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<1>_92 ),
    .DI(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lutdi1_93 ),
    .S(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<2>_94 ),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<2>_95 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lutdi2  (
    .I0(\hzclk/counter [18]),
    .I1(\hzclk/counter [17]),
    .I2(\hzclk/counter [19]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lutdi2_96 )
  );
  LUT5 #(
    .INIT ( 32'h10000000 ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<3>  (
    .I0(\hzclk/counter [17]),
    .I1(\hzclk/counter [19]),
    .I2(\hzclk/counter [15]),
    .I3(\hzclk/counter [18]),
    .I4(\hzclk/counter [16]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<3>_97 )
  );
  MUXCY   \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<3>  (
    .CI(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<2>_95 ),
    .DI(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lutdi2_96 ),
    .S(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<3>_97 ),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<3>_98 )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<4>  (
    .I0(\hzclk/counter [20]),
    .I1(\hzclk/counter [21]),
    .I2(\hzclk/counter [22]),
    .I3(\hzclk/counter [23]),
    .I4(\hzclk/counter [24]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<4>_99 )
  );
  MUXCY   \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<4>  (
    .CI(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<3>_98 ),
    .DI(N1),
    .S(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<4>_99 ),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<4>_100 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFEEE ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lutdi3  (
    .I0(\hzclk/counter [27]),
    .I1(\hzclk/counter [29]),
    .I2(\hzclk/counter [26]),
    .I3(\hzclk/counter [25]),
    .I4(\hzclk/counter [28]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lutdi3_101 )
  );
  LUT5 #(
    .INIT ( 32'h00010000 ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<5>  (
    .I0(\hzclk/counter [25]),
    .I1(\hzclk/counter [27]),
    .I2(\hzclk/counter [28]),
    .I3(\hzclk/counter [29]),
    .I4(\hzclk/counter [26]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<5>_102 )
  );
  MUXCY   \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<5>  (
    .CI(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<4>_100 ),
    .DI(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lutdi3_101 ),
    .S(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<5>_102 ),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<5>_103 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lutdi4  (
    .I0(\hzclk/counter [31]),
    .I1(\hzclk/counter [30]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lutdi4_104 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<6>  (
    .I0(\hzclk/counter [30]),
    .I1(\hzclk/counter [31]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<6>_105 )
  );
  MUXCY   \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>  (
    .CI(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<5>_103 ),
    .DI(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lutdi4_104 ),
    .S(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_lut<6>_105 ),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<0>  (
    .I0(\hzclk/counter [0]),
    .I1(\hzclk/counter [1]),
    .I2(\hzclk/counter [2]),
    .I3(\hzclk/counter [3]),
    .I4(\hzclk/counter [4]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<0>_107 )
  );
  MUXCY   \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<0>  (
    .CI(seg_sel_4_OBUF_20),
    .DI(N1),
    .S(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<0>_107 ),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<0>_108 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lutdi  (
    .I0(\hzclk/counter [9]),
    .I1(\hzclk/counter [8]),
    .I2(\hzclk/counter [7]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lutdi_109 )
  );
  LUT5 #(
    .INIT ( 32'h00000008 ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<1>  (
    .I0(\hzclk/counter [5]),
    .I1(\hzclk/counter [6]),
    .I2(\hzclk/counter [7]),
    .I3(\hzclk/counter [8]),
    .I4(\hzclk/counter [9]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<1>_110 )
  );
  MUXCY   \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<1>  (
    .CI(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<0>_108 ),
    .DI(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lutdi_109 ),
    .S(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<1>_110 ),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<1>_111 )
  );
  LUT5 #(
    .INIT ( 32'h80808000 ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lutdi1  (
    .I0(\hzclk/counter [14]),
    .I1(\hzclk/counter [13]),
    .I2(\hzclk/counter [12]),
    .I3(\hzclk/counter [11]),
    .I4(\hzclk/counter [10]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lutdi1_112 )
  );
  LUT5 #(
    .INIT ( 32'h10000000 ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<2>  (
    .I0(\hzclk/counter [10]),
    .I1(\hzclk/counter [11]),
    .I2(\hzclk/counter [12]),
    .I3(\hzclk/counter [13]),
    .I4(\hzclk/counter [14]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<2>_113 )
  );
  MUXCY   \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<2>  (
    .CI(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<1>_111 ),
    .DI(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lutdi1_112 ),
    .S(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<2>_113 ),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<2>_114 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lutdi2  (
    .I0(\hzclk/counter [19]),
    .I1(\hzclk/counter [17]),
    .I2(\hzclk/counter [16]),
    .I3(\hzclk/counter [18]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lutdi2_115 )
  );
  LUT5 #(
    .INIT ( 32'h10000000 ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<3>  (
    .I0(\hzclk/counter [16]),
    .I1(\hzclk/counter [18]),
    .I2(\hzclk/counter [17]),
    .I3(\hzclk/counter [15]),
    .I4(\hzclk/counter [19]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<3>_116 )
  );
  MUXCY   \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<3>  (
    .CI(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<2>_114 ),
    .DI(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lutdi2_115 ),
    .S(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<3>_116 ),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<3>_117 )
  );
  LUT5 #(
    .INIT ( 32'h40000000 ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<4>  (
    .I0(\hzclk/counter [24]),
    .I1(\hzclk/counter [21]),
    .I2(\hzclk/counter [22]),
    .I3(\hzclk/counter [23]),
    .I4(\hzclk/counter [20]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<4>_118 )
  );
  MUXCY   \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<4>  (
    .CI(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<3>_117 ),
    .DI(\hzclk/counter [24]),
    .S(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<4>_118 ),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<4>_119 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lutdi3  (
    .I0(\hzclk/counter [29]),
    .I1(\hzclk/counter [28]),
    .I2(\hzclk/counter [27]),
    .I3(\hzclk/counter [26]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lutdi3_120 )
  );
  LUT5 #(
    .INIT ( 32'h00010000 ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<5>  (
    .I0(\hzclk/counter [26]),
    .I1(\hzclk/counter [27]),
    .I2(\hzclk/counter [28]),
    .I3(\hzclk/counter [29]),
    .I4(\hzclk/counter [25]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<5>_121 )
  );
  MUXCY   \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<5>  (
    .CI(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<4>_119 ),
    .DI(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lutdi3_120 ),
    .S(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<5>_121 ),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<5>_122 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lutdi4  (
    .I0(\hzclk/counter [31]),
    .I1(\hzclk/counter [30]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lutdi4_123 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<6>  (
    .I0(\hzclk/counter [30]),
    .I1(\hzclk/counter [31]),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<6>_124 )
  );
  MUXCY   \hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>  (
    .CI(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<5>_122 ),
    .DI(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lutdi4_123 ),
    .S(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_lut<6>_124 ),
    .O(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 )
  );
  MUXCY   \hzclk/Mcount_counter_cy<0>  (
    .CI(N1),
    .DI(seg_sel_4_OBUF_20),
    .S(\hzclk/Mcount_counter_lut [0]),
    .O(\hzclk/Mcount_counter_cy [0])
  );
  XORCY   \hzclk/Mcount_counter_xor<0>  (
    .CI(N1),
    .LI(\hzclk/Mcount_counter_lut [0]),
    .O(Result[0])
  );
  MUXCY   \hzclk/Mcount_counter_cy<1>  (
    .CI(\hzclk/Mcount_counter_cy [0]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<1>_rt_243 ),
    .O(\hzclk/Mcount_counter_cy [1])
  );
  XORCY   \hzclk/Mcount_counter_xor<1>  (
    .CI(\hzclk/Mcount_counter_cy [0]),
    .LI(\hzclk/Mcount_counter_cy<1>_rt_243 ),
    .O(Result[1])
  );
  MUXCY   \hzclk/Mcount_counter_cy<2>  (
    .CI(\hzclk/Mcount_counter_cy [1]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<2>_rt_244 ),
    .O(\hzclk/Mcount_counter_cy [2])
  );
  XORCY   \hzclk/Mcount_counter_xor<2>  (
    .CI(\hzclk/Mcount_counter_cy [1]),
    .LI(\hzclk/Mcount_counter_cy<2>_rt_244 ),
    .O(Result[2])
  );
  MUXCY   \hzclk/Mcount_counter_cy<3>  (
    .CI(\hzclk/Mcount_counter_cy [2]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<3>_rt_245 ),
    .O(\hzclk/Mcount_counter_cy [3])
  );
  XORCY   \hzclk/Mcount_counter_xor<3>  (
    .CI(\hzclk/Mcount_counter_cy [2]),
    .LI(\hzclk/Mcount_counter_cy<3>_rt_245 ),
    .O(Result[3])
  );
  MUXCY   \hzclk/Mcount_counter_cy<4>  (
    .CI(\hzclk/Mcount_counter_cy [3]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<4>_rt_246 ),
    .O(\hzclk/Mcount_counter_cy [4])
  );
  XORCY   \hzclk/Mcount_counter_xor<4>  (
    .CI(\hzclk/Mcount_counter_cy [3]),
    .LI(\hzclk/Mcount_counter_cy<4>_rt_246 ),
    .O(Result[4])
  );
  MUXCY   \hzclk/Mcount_counter_cy<5>  (
    .CI(\hzclk/Mcount_counter_cy [4]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<5>_rt_247 ),
    .O(\hzclk/Mcount_counter_cy [5])
  );
  XORCY   \hzclk/Mcount_counter_xor<5>  (
    .CI(\hzclk/Mcount_counter_cy [4]),
    .LI(\hzclk/Mcount_counter_cy<5>_rt_247 ),
    .O(Result[5])
  );
  MUXCY   \hzclk/Mcount_counter_cy<6>  (
    .CI(\hzclk/Mcount_counter_cy [5]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<6>_rt_248 ),
    .O(\hzclk/Mcount_counter_cy [6])
  );
  XORCY   \hzclk/Mcount_counter_xor<6>  (
    .CI(\hzclk/Mcount_counter_cy [5]),
    .LI(\hzclk/Mcount_counter_cy<6>_rt_248 ),
    .O(Result[6])
  );
  MUXCY   \hzclk/Mcount_counter_cy<7>  (
    .CI(\hzclk/Mcount_counter_cy [6]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<7>_rt_249 ),
    .O(\hzclk/Mcount_counter_cy [7])
  );
  XORCY   \hzclk/Mcount_counter_xor<7>  (
    .CI(\hzclk/Mcount_counter_cy [6]),
    .LI(\hzclk/Mcount_counter_cy<7>_rt_249 ),
    .O(Result[7])
  );
  MUXCY   \hzclk/Mcount_counter_cy<8>  (
    .CI(\hzclk/Mcount_counter_cy [7]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<8>_rt_250 ),
    .O(\hzclk/Mcount_counter_cy [8])
  );
  XORCY   \hzclk/Mcount_counter_xor<8>  (
    .CI(\hzclk/Mcount_counter_cy [7]),
    .LI(\hzclk/Mcount_counter_cy<8>_rt_250 ),
    .O(Result[8])
  );
  MUXCY   \hzclk/Mcount_counter_cy<9>  (
    .CI(\hzclk/Mcount_counter_cy [8]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<9>_rt_251 ),
    .O(\hzclk/Mcount_counter_cy [9])
  );
  XORCY   \hzclk/Mcount_counter_xor<9>  (
    .CI(\hzclk/Mcount_counter_cy [8]),
    .LI(\hzclk/Mcount_counter_cy<9>_rt_251 ),
    .O(Result[9])
  );
  MUXCY   \hzclk/Mcount_counter_cy<10>  (
    .CI(\hzclk/Mcount_counter_cy [9]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<10>_rt_252 ),
    .O(\hzclk/Mcount_counter_cy [10])
  );
  XORCY   \hzclk/Mcount_counter_xor<10>  (
    .CI(\hzclk/Mcount_counter_cy [9]),
    .LI(\hzclk/Mcount_counter_cy<10>_rt_252 ),
    .O(Result[10])
  );
  MUXCY   \hzclk/Mcount_counter_cy<11>  (
    .CI(\hzclk/Mcount_counter_cy [10]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<11>_rt_253 ),
    .O(\hzclk/Mcount_counter_cy [11])
  );
  XORCY   \hzclk/Mcount_counter_xor<11>  (
    .CI(\hzclk/Mcount_counter_cy [10]),
    .LI(\hzclk/Mcount_counter_cy<11>_rt_253 ),
    .O(Result[11])
  );
  MUXCY   \hzclk/Mcount_counter_cy<12>  (
    .CI(\hzclk/Mcount_counter_cy [11]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<12>_rt_254 ),
    .O(\hzclk/Mcount_counter_cy [12])
  );
  XORCY   \hzclk/Mcount_counter_xor<12>  (
    .CI(\hzclk/Mcount_counter_cy [11]),
    .LI(\hzclk/Mcount_counter_cy<12>_rt_254 ),
    .O(Result[12])
  );
  MUXCY   \hzclk/Mcount_counter_cy<13>  (
    .CI(\hzclk/Mcount_counter_cy [12]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<13>_rt_255 ),
    .O(\hzclk/Mcount_counter_cy [13])
  );
  XORCY   \hzclk/Mcount_counter_xor<13>  (
    .CI(\hzclk/Mcount_counter_cy [12]),
    .LI(\hzclk/Mcount_counter_cy<13>_rt_255 ),
    .O(Result[13])
  );
  MUXCY   \hzclk/Mcount_counter_cy<14>  (
    .CI(\hzclk/Mcount_counter_cy [13]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<14>_rt_256 ),
    .O(\hzclk/Mcount_counter_cy [14])
  );
  XORCY   \hzclk/Mcount_counter_xor<14>  (
    .CI(\hzclk/Mcount_counter_cy [13]),
    .LI(\hzclk/Mcount_counter_cy<14>_rt_256 ),
    .O(Result[14])
  );
  MUXCY   \hzclk/Mcount_counter_cy<15>  (
    .CI(\hzclk/Mcount_counter_cy [14]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<15>_rt_257 ),
    .O(\hzclk/Mcount_counter_cy [15])
  );
  XORCY   \hzclk/Mcount_counter_xor<15>  (
    .CI(\hzclk/Mcount_counter_cy [14]),
    .LI(\hzclk/Mcount_counter_cy<15>_rt_257 ),
    .O(Result[15])
  );
  MUXCY   \hzclk/Mcount_counter_cy<16>  (
    .CI(\hzclk/Mcount_counter_cy [15]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<16>_rt_258 ),
    .O(\hzclk/Mcount_counter_cy [16])
  );
  XORCY   \hzclk/Mcount_counter_xor<16>  (
    .CI(\hzclk/Mcount_counter_cy [15]),
    .LI(\hzclk/Mcount_counter_cy<16>_rt_258 ),
    .O(Result[16])
  );
  MUXCY   \hzclk/Mcount_counter_cy<17>  (
    .CI(\hzclk/Mcount_counter_cy [16]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<17>_rt_259 ),
    .O(\hzclk/Mcount_counter_cy [17])
  );
  XORCY   \hzclk/Mcount_counter_xor<17>  (
    .CI(\hzclk/Mcount_counter_cy [16]),
    .LI(\hzclk/Mcount_counter_cy<17>_rt_259 ),
    .O(Result[17])
  );
  MUXCY   \hzclk/Mcount_counter_cy<18>  (
    .CI(\hzclk/Mcount_counter_cy [17]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<18>_rt_260 ),
    .O(\hzclk/Mcount_counter_cy [18])
  );
  XORCY   \hzclk/Mcount_counter_xor<18>  (
    .CI(\hzclk/Mcount_counter_cy [17]),
    .LI(\hzclk/Mcount_counter_cy<18>_rt_260 ),
    .O(Result[18])
  );
  MUXCY   \hzclk/Mcount_counter_cy<19>  (
    .CI(\hzclk/Mcount_counter_cy [18]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<19>_rt_261 ),
    .O(\hzclk/Mcount_counter_cy [19])
  );
  XORCY   \hzclk/Mcount_counter_xor<19>  (
    .CI(\hzclk/Mcount_counter_cy [18]),
    .LI(\hzclk/Mcount_counter_cy<19>_rt_261 ),
    .O(Result[19])
  );
  MUXCY   \hzclk/Mcount_counter_cy<20>  (
    .CI(\hzclk/Mcount_counter_cy [19]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<20>_rt_262 ),
    .O(\hzclk/Mcount_counter_cy [20])
  );
  XORCY   \hzclk/Mcount_counter_xor<20>  (
    .CI(\hzclk/Mcount_counter_cy [19]),
    .LI(\hzclk/Mcount_counter_cy<20>_rt_262 ),
    .O(Result[20])
  );
  MUXCY   \hzclk/Mcount_counter_cy<21>  (
    .CI(\hzclk/Mcount_counter_cy [20]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<21>_rt_263 ),
    .O(\hzclk/Mcount_counter_cy [21])
  );
  XORCY   \hzclk/Mcount_counter_xor<21>  (
    .CI(\hzclk/Mcount_counter_cy [20]),
    .LI(\hzclk/Mcount_counter_cy<21>_rt_263 ),
    .O(Result[21])
  );
  MUXCY   \hzclk/Mcount_counter_cy<22>  (
    .CI(\hzclk/Mcount_counter_cy [21]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<22>_rt_264 ),
    .O(\hzclk/Mcount_counter_cy [22])
  );
  XORCY   \hzclk/Mcount_counter_xor<22>  (
    .CI(\hzclk/Mcount_counter_cy [21]),
    .LI(\hzclk/Mcount_counter_cy<22>_rt_264 ),
    .O(Result[22])
  );
  MUXCY   \hzclk/Mcount_counter_cy<23>  (
    .CI(\hzclk/Mcount_counter_cy [22]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<23>_rt_265 ),
    .O(\hzclk/Mcount_counter_cy [23])
  );
  XORCY   \hzclk/Mcount_counter_xor<23>  (
    .CI(\hzclk/Mcount_counter_cy [22]),
    .LI(\hzclk/Mcount_counter_cy<23>_rt_265 ),
    .O(Result[23])
  );
  MUXCY   \hzclk/Mcount_counter_cy<24>  (
    .CI(\hzclk/Mcount_counter_cy [23]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<24>_rt_266 ),
    .O(\hzclk/Mcount_counter_cy [24])
  );
  XORCY   \hzclk/Mcount_counter_xor<24>  (
    .CI(\hzclk/Mcount_counter_cy [23]),
    .LI(\hzclk/Mcount_counter_cy<24>_rt_266 ),
    .O(Result[24])
  );
  MUXCY   \hzclk/Mcount_counter_cy<25>  (
    .CI(\hzclk/Mcount_counter_cy [24]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<25>_rt_267 ),
    .O(\hzclk/Mcount_counter_cy [25])
  );
  XORCY   \hzclk/Mcount_counter_xor<25>  (
    .CI(\hzclk/Mcount_counter_cy [24]),
    .LI(\hzclk/Mcount_counter_cy<25>_rt_267 ),
    .O(Result[25])
  );
  MUXCY   \hzclk/Mcount_counter_cy<26>  (
    .CI(\hzclk/Mcount_counter_cy [25]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<26>_rt_268 ),
    .O(\hzclk/Mcount_counter_cy [26])
  );
  XORCY   \hzclk/Mcount_counter_xor<26>  (
    .CI(\hzclk/Mcount_counter_cy [25]),
    .LI(\hzclk/Mcount_counter_cy<26>_rt_268 ),
    .O(Result[26])
  );
  MUXCY   \hzclk/Mcount_counter_cy<27>  (
    .CI(\hzclk/Mcount_counter_cy [26]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<27>_rt_269 ),
    .O(\hzclk/Mcount_counter_cy [27])
  );
  XORCY   \hzclk/Mcount_counter_xor<27>  (
    .CI(\hzclk/Mcount_counter_cy [26]),
    .LI(\hzclk/Mcount_counter_cy<27>_rt_269 ),
    .O(Result[27])
  );
  MUXCY   \hzclk/Mcount_counter_cy<28>  (
    .CI(\hzclk/Mcount_counter_cy [27]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<28>_rt_270 ),
    .O(\hzclk/Mcount_counter_cy [28])
  );
  XORCY   \hzclk/Mcount_counter_xor<28>  (
    .CI(\hzclk/Mcount_counter_cy [27]),
    .LI(\hzclk/Mcount_counter_cy<28>_rt_270 ),
    .O(Result[28])
  );
  MUXCY   \hzclk/Mcount_counter_cy<29>  (
    .CI(\hzclk/Mcount_counter_cy [28]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<29>_rt_271 ),
    .O(\hzclk/Mcount_counter_cy [29])
  );
  XORCY   \hzclk/Mcount_counter_xor<29>  (
    .CI(\hzclk/Mcount_counter_cy [28]),
    .LI(\hzclk/Mcount_counter_cy<29>_rt_271 ),
    .O(Result[29])
  );
  MUXCY   \hzclk/Mcount_counter_cy<30>  (
    .CI(\hzclk/Mcount_counter_cy [29]),
    .DI(N1),
    .S(\hzclk/Mcount_counter_cy<30>_rt_272 ),
    .O(\hzclk/Mcount_counter_cy [30])
  );
  XORCY   \hzclk/Mcount_counter_xor<30>  (
    .CI(\hzclk/Mcount_counter_cy [29]),
    .LI(\hzclk/Mcount_counter_cy<30>_rt_272 ),
    .O(Result[30])
  );
  XORCY   \hzclk/Mcount_counter_xor<31>  (
    .CI(\hzclk/Mcount_counter_cy [30]),
    .LI(\hzclk/Mcount_counter_xor<31>_rt_289 ),
    .O(Result[31])
  );
  FDCE   \uut_fsm/cnt_3  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .CE(\uut_fsm/_n0046_inv ),
    .CLR(reset_IBUF_1),
    .D(\uut_fsm/Result [3]),
    .Q(\uut_fsm/cnt [3])
  );
  FDCE   \uut_fsm/cnt_2  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .CE(\uut_fsm/_n0046_inv ),
    .CLR(reset_IBUF_1),
    .D(\uut_fsm/Result [2]),
    .Q(\uut_fsm/cnt [2])
  );
  FDCE   \uut_fsm/cnt_1  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .CE(\uut_fsm/_n0046_inv ),
    .CLR(reset_IBUF_1),
    .D(\uut_fsm/Result [1]),
    .Q(\uut_fsm/cnt [1])
  );
  FDCE   \uut_fsm/cnt_0  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .CE(\uut_fsm/_n0046_inv ),
    .CLR(reset_IBUF_1),
    .D(\uut_fsm/Result [0]),
    .Q(\uut_fsm/cnt [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \uut_fsm/state_FSM_FFd1  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .CLR(reset_IBUF_1),
    .D(\uut_fsm/state_FSM_FFd1-In ),
    .Q(\uut_fsm/state_FSM_FFd1_166 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \uut_fsm/state_FSM_FFd2  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .CLR(reset_IBUF_1),
    .D(\uut_fsm/state_FSM_FFd2-In ),
    .Q(\uut_fsm/state_FSM_FFd2_163 )
  );
  XORCY   \uut_seven_segment/Mcount_counter_xor<17>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [16]),
    .LI(\uut_seven_segment/Mcount_counter_xor<17>_rt_290 ),
    .O(\uut_seven_segment/Result [17])
  );
  XORCY   \uut_seven_segment/Mcount_counter_xor<16>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [15]),
    .LI(\uut_seven_segment/Mcount_counter_cy<16>_rt_273 ),
    .O(\uut_seven_segment/Result [16])
  );
  MUXCY   \uut_seven_segment/Mcount_counter_cy<16>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [15]),
    .DI(N1),
    .S(\uut_seven_segment/Mcount_counter_cy<16>_rt_273 ),
    .O(\uut_seven_segment/Mcount_counter_cy [16])
  );
  XORCY   \uut_seven_segment/Mcount_counter_xor<15>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [14]),
    .LI(\uut_seven_segment/Mcount_counter_cy<15>_rt_274 ),
    .O(\uut_seven_segment/Result [15])
  );
  MUXCY   \uut_seven_segment/Mcount_counter_cy<15>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [14]),
    .DI(N1),
    .S(\uut_seven_segment/Mcount_counter_cy<15>_rt_274 ),
    .O(\uut_seven_segment/Mcount_counter_cy [15])
  );
  XORCY   \uut_seven_segment/Mcount_counter_xor<14>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [13]),
    .LI(\uut_seven_segment/Mcount_counter_cy<14>_rt_275 ),
    .O(\uut_seven_segment/Result [14])
  );
  MUXCY   \uut_seven_segment/Mcount_counter_cy<14>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [13]),
    .DI(N1),
    .S(\uut_seven_segment/Mcount_counter_cy<14>_rt_275 ),
    .O(\uut_seven_segment/Mcount_counter_cy [14])
  );
  XORCY   \uut_seven_segment/Mcount_counter_xor<13>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [12]),
    .LI(\uut_seven_segment/Mcount_counter_cy<13>_rt_276 ),
    .O(\uut_seven_segment/Result [13])
  );
  MUXCY   \uut_seven_segment/Mcount_counter_cy<13>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [12]),
    .DI(N1),
    .S(\uut_seven_segment/Mcount_counter_cy<13>_rt_276 ),
    .O(\uut_seven_segment/Mcount_counter_cy [13])
  );
  XORCY   \uut_seven_segment/Mcount_counter_xor<12>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [11]),
    .LI(\uut_seven_segment/Mcount_counter_cy<12>_rt_277 ),
    .O(\uut_seven_segment/Result [12])
  );
  MUXCY   \uut_seven_segment/Mcount_counter_cy<12>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [11]),
    .DI(N1),
    .S(\uut_seven_segment/Mcount_counter_cy<12>_rt_277 ),
    .O(\uut_seven_segment/Mcount_counter_cy [12])
  );
  XORCY   \uut_seven_segment/Mcount_counter_xor<11>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [10]),
    .LI(\uut_seven_segment/Mcount_counter_cy<11>_rt_278 ),
    .O(\uut_seven_segment/Result [11])
  );
  MUXCY   \uut_seven_segment/Mcount_counter_cy<11>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [10]),
    .DI(N1),
    .S(\uut_seven_segment/Mcount_counter_cy<11>_rt_278 ),
    .O(\uut_seven_segment/Mcount_counter_cy [11])
  );
  XORCY   \uut_seven_segment/Mcount_counter_xor<10>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [9]),
    .LI(\uut_seven_segment/Mcount_counter_cy<10>_rt_279 ),
    .O(\uut_seven_segment/Result [10])
  );
  MUXCY   \uut_seven_segment/Mcount_counter_cy<10>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [9]),
    .DI(N1),
    .S(\uut_seven_segment/Mcount_counter_cy<10>_rt_279 ),
    .O(\uut_seven_segment/Mcount_counter_cy [10])
  );
  XORCY   \uut_seven_segment/Mcount_counter_xor<9>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [8]),
    .LI(\uut_seven_segment/Mcount_counter_cy<9>_rt_280 ),
    .O(\uut_seven_segment/Result [9])
  );
  MUXCY   \uut_seven_segment/Mcount_counter_cy<9>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [8]),
    .DI(N1),
    .S(\uut_seven_segment/Mcount_counter_cy<9>_rt_280 ),
    .O(\uut_seven_segment/Mcount_counter_cy [9])
  );
  XORCY   \uut_seven_segment/Mcount_counter_xor<8>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [7]),
    .LI(\uut_seven_segment/Mcount_counter_cy<8>_rt_281 ),
    .O(\uut_seven_segment/Result [8])
  );
  MUXCY   \uut_seven_segment/Mcount_counter_cy<8>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [7]),
    .DI(N1),
    .S(\uut_seven_segment/Mcount_counter_cy<8>_rt_281 ),
    .O(\uut_seven_segment/Mcount_counter_cy [8])
  );
  XORCY   \uut_seven_segment/Mcount_counter_xor<7>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [6]),
    .LI(\uut_seven_segment/Mcount_counter_cy<7>_rt_282 ),
    .O(\uut_seven_segment/Result [7])
  );
  MUXCY   \uut_seven_segment/Mcount_counter_cy<7>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [6]),
    .DI(N1),
    .S(\uut_seven_segment/Mcount_counter_cy<7>_rt_282 ),
    .O(\uut_seven_segment/Mcount_counter_cy [7])
  );
  XORCY   \uut_seven_segment/Mcount_counter_xor<6>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [5]),
    .LI(\uut_seven_segment/Mcount_counter_cy<6>_rt_283 ),
    .O(\uut_seven_segment/Result [6])
  );
  MUXCY   \uut_seven_segment/Mcount_counter_cy<6>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [5]),
    .DI(N1),
    .S(\uut_seven_segment/Mcount_counter_cy<6>_rt_283 ),
    .O(\uut_seven_segment/Mcount_counter_cy [6])
  );
  XORCY   \uut_seven_segment/Mcount_counter_xor<5>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [4]),
    .LI(\uut_seven_segment/Mcount_counter_cy<5>_rt_284 ),
    .O(\uut_seven_segment/Result [5])
  );
  MUXCY   \uut_seven_segment/Mcount_counter_cy<5>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [4]),
    .DI(N1),
    .S(\uut_seven_segment/Mcount_counter_cy<5>_rt_284 ),
    .O(\uut_seven_segment/Mcount_counter_cy [5])
  );
  XORCY   \uut_seven_segment/Mcount_counter_xor<4>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [3]),
    .LI(\uut_seven_segment/Mcount_counter_cy<4>_rt_285 ),
    .O(\uut_seven_segment/Result [4])
  );
  MUXCY   \uut_seven_segment/Mcount_counter_cy<4>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [3]),
    .DI(N1),
    .S(\uut_seven_segment/Mcount_counter_cy<4>_rt_285 ),
    .O(\uut_seven_segment/Mcount_counter_cy [4])
  );
  XORCY   \uut_seven_segment/Mcount_counter_xor<3>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [2]),
    .LI(\uut_seven_segment/Mcount_counter_cy<3>_rt_286 ),
    .O(\uut_seven_segment/Result [3])
  );
  MUXCY   \uut_seven_segment/Mcount_counter_cy<3>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [2]),
    .DI(N1),
    .S(\uut_seven_segment/Mcount_counter_cy<3>_rt_286 ),
    .O(\uut_seven_segment/Mcount_counter_cy [3])
  );
  XORCY   \uut_seven_segment/Mcount_counter_xor<2>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [1]),
    .LI(\uut_seven_segment/Mcount_counter_cy<2>_rt_287 ),
    .O(\uut_seven_segment/Result [2])
  );
  MUXCY   \uut_seven_segment/Mcount_counter_cy<2>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [1]),
    .DI(N1),
    .S(\uut_seven_segment/Mcount_counter_cy<2>_rt_287 ),
    .O(\uut_seven_segment/Mcount_counter_cy [2])
  );
  XORCY   \uut_seven_segment/Mcount_counter_xor<1>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [0]),
    .LI(\uut_seven_segment/Mcount_counter_cy<1>_rt_288 ),
    .O(\uut_seven_segment/Result [1])
  );
  MUXCY   \uut_seven_segment/Mcount_counter_cy<1>  (
    .CI(\uut_seven_segment/Mcount_counter_cy [0]),
    .DI(N1),
    .S(\uut_seven_segment/Mcount_counter_cy<1>_rt_288 ),
    .O(\uut_seven_segment/Mcount_counter_cy [1])
  );
  XORCY   \uut_seven_segment/Mcount_counter_xor<0>  (
    .CI(N1),
    .LI(\uut_seven_segment/Mcount_counter_lut [0]),
    .O(\uut_seven_segment/Result [0])
  );
  MUXCY   \uut_seven_segment/Mcount_counter_cy<0>  (
    .CI(N1),
    .DI(seg_sel_4_OBUF_20),
    .S(\uut_seven_segment/Mcount_counter_lut [0]),
    .O(\uut_seven_segment/Mcount_counter_cy [0])
  );
  FD   \uut_seven_segment/counter_17  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .D(\uut_seven_segment/Result [17]),
    .Q(\uut_seven_segment/counter [17])
  );
  FD   \uut_seven_segment/counter_16  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .D(\uut_seven_segment/Result [16]),
    .Q(\uut_seven_segment/counter [16])
  );
  FD   \uut_seven_segment/counter_15  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .D(\uut_seven_segment/Result [15]),
    .Q(\uut_seven_segment/counter [15])
  );
  FD   \uut_seven_segment/counter_14  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .D(\uut_seven_segment/Result [14]),
    .Q(\uut_seven_segment/counter [14])
  );
  FD   \uut_seven_segment/counter_13  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .D(\uut_seven_segment/Result [13]),
    .Q(\uut_seven_segment/counter [13])
  );
  FD   \uut_seven_segment/counter_12  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .D(\uut_seven_segment/Result [12]),
    .Q(\uut_seven_segment/counter [12])
  );
  FD   \uut_seven_segment/counter_11  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .D(\uut_seven_segment/Result [11]),
    .Q(\uut_seven_segment/counter [11])
  );
  FD   \uut_seven_segment/counter_10  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .D(\uut_seven_segment/Result [10]),
    .Q(\uut_seven_segment/counter [10])
  );
  FD   \uut_seven_segment/counter_9  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .D(\uut_seven_segment/Result [9]),
    .Q(\uut_seven_segment/counter [9])
  );
  FD   \uut_seven_segment/counter_8  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .D(\uut_seven_segment/Result [8]),
    .Q(\uut_seven_segment/counter [8])
  );
  FD   \uut_seven_segment/counter_7  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .D(\uut_seven_segment/Result [7]),
    .Q(\uut_seven_segment/counter [7])
  );
  FD   \uut_seven_segment/counter_6  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .D(\uut_seven_segment/Result [6]),
    .Q(\uut_seven_segment/counter [6])
  );
  FD   \uut_seven_segment/counter_5  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .D(\uut_seven_segment/Result [5]),
    .Q(\uut_seven_segment/counter [5])
  );
  FD   \uut_seven_segment/counter_4  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .D(\uut_seven_segment/Result [4]),
    .Q(\uut_seven_segment/counter [4])
  );
  FD   \uut_seven_segment/counter_3  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .D(\uut_seven_segment/Result [3]),
    .Q(\uut_seven_segment/counter [3])
  );
  FD   \uut_seven_segment/counter_2  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .D(\uut_seven_segment/Result [2]),
    .Q(\uut_seven_segment/counter [2])
  );
  FD   \uut_seven_segment/counter_1  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .D(\uut_seven_segment/Result [1]),
    .Q(\uut_seven_segment/counter [1])
  );
  FD   \uut_seven_segment/counter_0  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .D(\uut_seven_segment/Result [0]),
    .Q(\uut_seven_segment/counter [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \uut_seven_segment/sec_1  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .D(\uut_seven_segment/counter [17]),
    .Q(\uut_seven_segment/sec [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \uut_seven_segment/sec_0  (
    .C(\hzclk/clk_out_BUFG_4 ),
    .D(\uut_seven_segment/counter [16]),
    .Q(\uut_seven_segment/sec [0])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \hzclk/Mmux_GND_7_o_GND_7_o_MUX_65_o11  (
    .I0(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .I1(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .O(\hzclk/GND_7_o_GND_7_o_MUX_65_o )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \uut_fsm/Mcount_cnt_xor<2>11  (
    .I0(\uut_fsm/cnt [2]),
    .I1(\uut_fsm/cnt [0]),
    .I2(\uut_fsm/cnt [1]),
    .O(\uut_fsm/Result [2])
  );
  LUT4 #(
    .INIT ( 16'hCA8A ))
  \uut_fsm/state_FSM_FFd1-In1  (
    .I0(\uut_fsm/state_FSM_FFd1_166 ),
    .I1(\uut_fsm/state_FSM_FFd2_163 ),
    .I2(en_IBUF_3),
    .I3(inp_IBUF_2),
    .O(\uut_fsm/state_FSM_FFd1-In )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \uut_fsm/Mcount_cnt_xor<3>11  (
    .I0(\uut_fsm/cnt [3]),
    .I1(\uut_fsm/cnt [0]),
    .I2(\uut_fsm/cnt [1]),
    .I3(\uut_fsm/cnt [2]),
    .O(\uut_fsm/Result [3])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \uut_fsm/_n0046_inv1  (
    .I0(\uut_fsm/state_FSM_FFd2_163 ),
    .I1(en_IBUF_3),
    .I2(inp_IBUF_2),
    .I3(\uut_fsm/state_FSM_FFd1_166 ),
    .O(\uut_fsm/_n0046_inv )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \uut_fsm/Mcount_cnt_xor<1>11  (
    .I0(\uut_fsm/cnt [1]),
    .I1(\uut_fsm/cnt [0]),
    .O(\uut_fsm/Result [1])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \uut_fsm/state_FSM_FFd2-In1  (
    .I0(en_IBUF_3),
    .I1(inp_IBUF_2),
    .I2(\uut_fsm/state_FSM_FFd2_163 ),
    .O(\uut_fsm/state_FSM_FFd2-In )
  );
  LUT6 #(
    .INIT ( 64'h0010100000010010 ))
  \uut_seven_segment/Mmux_segment11  (
    .I0(\uut_seven_segment/sec [0]),
    .I1(\uut_seven_segment/sec [1]),
    .I2(\uut_fsm/cnt [0]),
    .I3(\uut_fsm/cnt [1]),
    .I4(\uut_fsm/cnt [2]),
    .I5(\uut_fsm/cnt [3]),
    .O(seg_out_1_OBUF_19)
  );
  LUT6 #(
    .INIT ( 64'h0110000001010100 ))
  \uut_seven_segment/Mmux_segment61  (
    .I0(\uut_seven_segment/sec [0]),
    .I1(\uut_seven_segment/sec [1]),
    .I2(\uut_fsm/cnt [3]),
    .I3(\uut_fsm/cnt [1]),
    .I4(\uut_fsm/cnt [0]),
    .I5(\uut_fsm/cnt [2]),
    .O(seg_out_6_OBUF_14)
  );
  LUT6 #(
    .INIT ( 64'h1101000000000100 ))
  \uut_seven_segment/Mmux_segment31  (
    .I0(\uut_seven_segment/sec [0]),
    .I1(\uut_seven_segment/sec [1]),
    .I2(\uut_fsm/cnt [0]),
    .I3(\uut_fsm/cnt [1]),
    .I4(\uut_fsm/cnt [2]),
    .I5(\uut_fsm/cnt [3]),
    .O(seg_out_3_OBUF_17)
  );
  LUT6 #(
    .INIT ( 64'h1000001010010100 ))
  \uut_seven_segment/Mmux_segment41  (
    .I0(\uut_seven_segment/sec [0]),
    .I1(\uut_seven_segment/sec [1]),
    .I2(\uut_fsm/cnt [1]),
    .I3(\uut_fsm/cnt [2]),
    .I4(\uut_fsm/cnt [0]),
    .I5(\uut_fsm/cnt [3]),
    .O(seg_out_4_OBUF_16)
  );
  LUT6 #(
    .INIT ( 64'h1110001000101000 ))
  \uut_seven_segment/Mmux_segment21  (
    .I0(\uut_seven_segment/sec [0]),
    .I1(\uut_seven_segment/sec [1]),
    .I2(\uut_fsm/cnt [2]),
    .I3(\uut_fsm/cnt [0]),
    .I4(\uut_fsm/cnt [1]),
    .I5(\uut_fsm/cnt [3]),
    .O(seg_out_2_OBUF_18)
  );
  LUT6 #(
    .INIT ( 64'h0000001010111010 ))
  \uut_seven_segment/Mmux_segment51  (
    .I0(\uut_seven_segment/sec [0]),
    .I1(\uut_seven_segment/sec [1]),
    .I2(\uut_fsm/cnt [0]),
    .I3(\uut_fsm/cnt [1]),
    .I4(\uut_fsm/cnt [2]),
    .I5(\uut_fsm/cnt [3]),
    .O(seg_out_5_OBUF_15)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF0941 ))
  \uut_seven_segment/Mmux_segment71  (
    .I0(\uut_fsm/cnt [1]),
    .I1(\uut_fsm/cnt [2]),
    .I2(\uut_fsm/cnt [3]),
    .I3(\uut_fsm/cnt [0]),
    .I4(\uut_seven_segment/sec [0]),
    .I5(\uut_seven_segment/sec [1]),
    .O(seg_out_7_OBUF_13)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \uut_seven_segment/Mram_sel31  (
    .I0(\uut_seven_segment/sec [0]),
    .I1(\uut_seven_segment/sec [1]),
    .O(seg_sel_3_OBUF_9)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \uut_seven_segment/Mram_sel21  (
    .I0(\uut_seven_segment/sec [1]),
    .I1(\uut_seven_segment/sec [0]),
    .O(seg_sel_2_OBUF_10)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \uut_seven_segment/Mram_sel111  (
    .I0(\uut_seven_segment/sec [0]),
    .I1(\uut_seven_segment/sec [1]),
    .O(seg_sel_1_OBUF_11)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \uut_seven_segment/Mram_sel11  (
    .I0(\uut_seven_segment/sec [1]),
    .I1(\uut_seven_segment/sec [0]),
    .O(seg_sel_0_OBUF_12)
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_1)
  );
  IBUF   inp_IBUF (
    .I(inp),
    .O(inp_IBUF_2)
  );
  IBUF   en_IBUF (
    .I(en),
    .O(en_IBUF_3)
  );
  OBUF   seg_out_7_OBUF (
    .I(seg_out_7_OBUF_13),
    .O(seg_out[7])
  );
  OBUF   seg_out_6_OBUF (
    .I(seg_out_6_OBUF_14),
    .O(seg_out[6])
  );
  OBUF   seg_out_5_OBUF (
    .I(seg_out_5_OBUF_15),
    .O(seg_out[5])
  );
  OBUF   seg_out_4_OBUF (
    .I(seg_out_4_OBUF_16),
    .O(seg_out[4])
  );
  OBUF   seg_out_3_OBUF (
    .I(seg_out_3_OBUF_17),
    .O(seg_out[3])
  );
  OBUF   seg_out_2_OBUF (
    .I(seg_out_2_OBUF_18),
    .O(seg_out[2])
  );
  OBUF   seg_out_1_OBUF (
    .I(seg_out_1_OBUF_19),
    .O(seg_out[1])
  );
  OBUF   seg_out_0_OBUF (
    .I(seg_sel_4_OBUF_20),
    .O(seg_out[0])
  );
  OBUF   seg_sel_7_OBUF (
    .I(seg_sel_4_OBUF_20),
    .O(seg_sel[7])
  );
  OBUF   seg_sel_6_OBUF (
    .I(seg_sel_4_OBUF_20),
    .O(seg_sel[6])
  );
  OBUF   seg_sel_5_OBUF (
    .I(seg_sel_4_OBUF_20),
    .O(seg_sel[5])
  );
  OBUF   seg_sel_4_OBUF (
    .I(seg_sel_4_OBUF_20),
    .O(seg_sel[4])
  );
  OBUF   seg_sel_3_OBUF (
    .I(seg_sel_3_OBUF_9),
    .O(seg_sel[3])
  );
  OBUF   seg_sel_2_OBUF (
    .I(seg_sel_2_OBUF_10),
    .O(seg_sel[2])
  );
  OBUF   seg_sel_1_OBUF (
    .I(seg_sel_1_OBUF_11),
    .O(seg_sel[1])
  );
  OBUF   seg_sel_0_OBUF (
    .I(seg_sel_0_OBUF_12),
    .O(seg_sel[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<1>_rt  (
    .I0(\hzclk/counter [1]),
    .O(\hzclk/Mcount_counter_cy<1>_rt_243 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<2>_rt  (
    .I0(\hzclk/counter [2]),
    .O(\hzclk/Mcount_counter_cy<2>_rt_244 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<3>_rt  (
    .I0(\hzclk/counter [3]),
    .O(\hzclk/Mcount_counter_cy<3>_rt_245 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<4>_rt  (
    .I0(\hzclk/counter [4]),
    .O(\hzclk/Mcount_counter_cy<4>_rt_246 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<5>_rt  (
    .I0(\hzclk/counter [5]),
    .O(\hzclk/Mcount_counter_cy<5>_rt_247 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<6>_rt  (
    .I0(\hzclk/counter [6]),
    .O(\hzclk/Mcount_counter_cy<6>_rt_248 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<7>_rt  (
    .I0(\hzclk/counter [7]),
    .O(\hzclk/Mcount_counter_cy<7>_rt_249 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<8>_rt  (
    .I0(\hzclk/counter [8]),
    .O(\hzclk/Mcount_counter_cy<8>_rt_250 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<9>_rt  (
    .I0(\hzclk/counter [9]),
    .O(\hzclk/Mcount_counter_cy<9>_rt_251 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<10>_rt  (
    .I0(\hzclk/counter [10]),
    .O(\hzclk/Mcount_counter_cy<10>_rt_252 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<11>_rt  (
    .I0(\hzclk/counter [11]),
    .O(\hzclk/Mcount_counter_cy<11>_rt_253 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<12>_rt  (
    .I0(\hzclk/counter [12]),
    .O(\hzclk/Mcount_counter_cy<12>_rt_254 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<13>_rt  (
    .I0(\hzclk/counter [13]),
    .O(\hzclk/Mcount_counter_cy<13>_rt_255 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<14>_rt  (
    .I0(\hzclk/counter [14]),
    .O(\hzclk/Mcount_counter_cy<14>_rt_256 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<15>_rt  (
    .I0(\hzclk/counter [15]),
    .O(\hzclk/Mcount_counter_cy<15>_rt_257 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<16>_rt  (
    .I0(\hzclk/counter [16]),
    .O(\hzclk/Mcount_counter_cy<16>_rt_258 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<17>_rt  (
    .I0(\hzclk/counter [17]),
    .O(\hzclk/Mcount_counter_cy<17>_rt_259 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<18>_rt  (
    .I0(\hzclk/counter [18]),
    .O(\hzclk/Mcount_counter_cy<18>_rt_260 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<19>_rt  (
    .I0(\hzclk/counter [19]),
    .O(\hzclk/Mcount_counter_cy<19>_rt_261 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<20>_rt  (
    .I0(\hzclk/counter [20]),
    .O(\hzclk/Mcount_counter_cy<20>_rt_262 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<21>_rt  (
    .I0(\hzclk/counter [21]),
    .O(\hzclk/Mcount_counter_cy<21>_rt_263 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<22>_rt  (
    .I0(\hzclk/counter [22]),
    .O(\hzclk/Mcount_counter_cy<22>_rt_264 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<23>_rt  (
    .I0(\hzclk/counter [23]),
    .O(\hzclk/Mcount_counter_cy<23>_rt_265 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<24>_rt  (
    .I0(\hzclk/counter [24]),
    .O(\hzclk/Mcount_counter_cy<24>_rt_266 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<25>_rt  (
    .I0(\hzclk/counter [25]),
    .O(\hzclk/Mcount_counter_cy<25>_rt_267 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<26>_rt  (
    .I0(\hzclk/counter [26]),
    .O(\hzclk/Mcount_counter_cy<26>_rt_268 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<27>_rt  (
    .I0(\hzclk/counter [27]),
    .O(\hzclk/Mcount_counter_cy<27>_rt_269 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<28>_rt  (
    .I0(\hzclk/counter [28]),
    .O(\hzclk/Mcount_counter_cy<28>_rt_270 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<29>_rt  (
    .I0(\hzclk/counter [29]),
    .O(\hzclk/Mcount_counter_cy<29>_rt_271 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_cy<30>_rt  (
    .I0(\hzclk/counter [30]),
    .O(\hzclk/Mcount_counter_cy<30>_rt_272 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut_seven_segment/Mcount_counter_cy<16>_rt  (
    .I0(\uut_seven_segment/counter [16]),
    .O(\uut_seven_segment/Mcount_counter_cy<16>_rt_273 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut_seven_segment/Mcount_counter_cy<15>_rt  (
    .I0(\uut_seven_segment/counter [15]),
    .O(\uut_seven_segment/Mcount_counter_cy<15>_rt_274 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut_seven_segment/Mcount_counter_cy<14>_rt  (
    .I0(\uut_seven_segment/counter [14]),
    .O(\uut_seven_segment/Mcount_counter_cy<14>_rt_275 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut_seven_segment/Mcount_counter_cy<13>_rt  (
    .I0(\uut_seven_segment/counter [13]),
    .O(\uut_seven_segment/Mcount_counter_cy<13>_rt_276 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut_seven_segment/Mcount_counter_cy<12>_rt  (
    .I0(\uut_seven_segment/counter [12]),
    .O(\uut_seven_segment/Mcount_counter_cy<12>_rt_277 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut_seven_segment/Mcount_counter_cy<11>_rt  (
    .I0(\uut_seven_segment/counter [11]),
    .O(\uut_seven_segment/Mcount_counter_cy<11>_rt_278 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut_seven_segment/Mcount_counter_cy<10>_rt  (
    .I0(\uut_seven_segment/counter [10]),
    .O(\uut_seven_segment/Mcount_counter_cy<10>_rt_279 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut_seven_segment/Mcount_counter_cy<9>_rt  (
    .I0(\uut_seven_segment/counter [9]),
    .O(\uut_seven_segment/Mcount_counter_cy<9>_rt_280 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut_seven_segment/Mcount_counter_cy<8>_rt  (
    .I0(\uut_seven_segment/counter [8]),
    .O(\uut_seven_segment/Mcount_counter_cy<8>_rt_281 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut_seven_segment/Mcount_counter_cy<7>_rt  (
    .I0(\uut_seven_segment/counter [7]),
    .O(\uut_seven_segment/Mcount_counter_cy<7>_rt_282 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut_seven_segment/Mcount_counter_cy<6>_rt  (
    .I0(\uut_seven_segment/counter [6]),
    .O(\uut_seven_segment/Mcount_counter_cy<6>_rt_283 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut_seven_segment/Mcount_counter_cy<5>_rt  (
    .I0(\uut_seven_segment/counter [5]),
    .O(\uut_seven_segment/Mcount_counter_cy<5>_rt_284 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut_seven_segment/Mcount_counter_cy<4>_rt  (
    .I0(\uut_seven_segment/counter [4]),
    .O(\uut_seven_segment/Mcount_counter_cy<4>_rt_285 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut_seven_segment/Mcount_counter_cy<3>_rt  (
    .I0(\uut_seven_segment/counter [3]),
    .O(\uut_seven_segment/Mcount_counter_cy<3>_rt_286 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut_seven_segment/Mcount_counter_cy<2>_rt  (
    .I0(\uut_seven_segment/counter [2]),
    .O(\uut_seven_segment/Mcount_counter_cy<2>_rt_287 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut_seven_segment/Mcount_counter_cy<1>_rt  (
    .I0(\uut_seven_segment/counter [1]),
    .O(\uut_seven_segment/Mcount_counter_cy<1>_rt_288 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hzclk/Mcount_counter_xor<31>_rt  (
    .I0(\hzclk/counter [31]),
    .O(\hzclk/Mcount_counter_xor<31>_rt_289 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uut_seven_segment/Mcount_counter_xor<17>_rt  (
    .I0(\uut_seven_segment/counter [17]),
    .O(\uut_seven_segment/Mcount_counter_xor<17>_rt_290 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_0  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_0_rstpot_291 ),
    .Q(\hzclk/counter [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_1  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_1_rstpot_292 ),
    .Q(\hzclk/counter [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_2  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_2_rstpot_293 ),
    .Q(\hzclk/counter [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_3  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_3_rstpot_294 ),
    .Q(\hzclk/counter [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_4  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_4_rstpot_295 ),
    .Q(\hzclk/counter [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_5  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_5_rstpot_296 ),
    .Q(\hzclk/counter [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_6  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_6_rstpot_297 ),
    .Q(\hzclk/counter [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_7  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_7_rstpot_298 ),
    .Q(\hzclk/counter [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_8  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_8_rstpot_299 ),
    .Q(\hzclk/counter [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_9  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_9_rstpot_300 ),
    .Q(\hzclk/counter [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_10  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_10_rstpot_301 ),
    .Q(\hzclk/counter [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_11  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_11_rstpot_302 ),
    .Q(\hzclk/counter [11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_12  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_12_rstpot_303 ),
    .Q(\hzclk/counter [12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_13  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_13_rstpot_304 ),
    .Q(\hzclk/counter [13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_14  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_14_rstpot_305 ),
    .Q(\hzclk/counter [14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_15  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_15_rstpot_306 ),
    .Q(\hzclk/counter [15])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_16  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_16_rstpot_307 ),
    .Q(\hzclk/counter [16])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_17  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_17_rstpot_308 ),
    .Q(\hzclk/counter [17])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_18  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_18_rstpot_309 ),
    .Q(\hzclk/counter [18])
  );
  LUT5 #(
    .INIT ( 32'h88D8D8D8 ))
  \hzclk/counter_0_rstpot  (
    .I0(reset_IBUF_1),
    .I1(\hzclk/counter [0]),
    .I2(Result[0]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .O(\hzclk/counter_0_rstpot_291 )
  );
  LUT5 #(
    .INIT ( 32'h88D8D8D8 ))
  \hzclk/counter_1_rstpot  (
    .I0(reset_IBUF_1),
    .I1(\hzclk/counter [1]),
    .I2(Result[1]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .O(\hzclk/counter_1_rstpot_292 )
  );
  LUT5 #(
    .INIT ( 32'h88D8D8D8 ))
  \hzclk/counter_2_rstpot  (
    .I0(reset_IBUF_1),
    .I1(\hzclk/counter [2]),
    .I2(Result[2]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .O(\hzclk/counter_2_rstpot_293 )
  );
  LUT5 #(
    .INIT ( 32'h88D8D8D8 ))
  \hzclk/counter_3_rstpot  (
    .I0(reset_IBUF_1),
    .I1(\hzclk/counter [3]),
    .I2(Result[3]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .O(\hzclk/counter_3_rstpot_294 )
  );
  LUT5 #(
    .INIT ( 32'h88D8D8D8 ))
  \hzclk/counter_4_rstpot  (
    .I0(reset_IBUF_1),
    .I1(\hzclk/counter [4]),
    .I2(Result[4]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .O(\hzclk/counter_4_rstpot_295 )
  );
  LUT5 #(
    .INIT ( 32'h88D8D8D8 ))
  \hzclk/counter_5_rstpot  (
    .I0(reset_IBUF_1),
    .I1(\hzclk/counter [5]),
    .I2(Result[5]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .O(\hzclk/counter_5_rstpot_296 )
  );
  LUT5 #(
    .INIT ( 32'h88D8D8D8 ))
  \hzclk/counter_6_rstpot  (
    .I0(reset_IBUF_1),
    .I1(\hzclk/counter [6]),
    .I2(Result[6]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .O(\hzclk/counter_6_rstpot_297 )
  );
  LUT5 #(
    .INIT ( 32'h88D8D8D8 ))
  \hzclk/counter_7_rstpot  (
    .I0(reset_IBUF_1),
    .I1(\hzclk/counter [7]),
    .I2(Result[7]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .O(\hzclk/counter_7_rstpot_298 )
  );
  LUT5 #(
    .INIT ( 32'h88D8D8D8 ))
  \hzclk/counter_8_rstpot  (
    .I0(reset_IBUF_1),
    .I1(\hzclk/counter [8]),
    .I2(Result[8]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .O(\hzclk/counter_8_rstpot_299 )
  );
  LUT5 #(
    .INIT ( 32'h88D8D8D8 ))
  \hzclk/counter_9_rstpot  (
    .I0(reset_IBUF_1),
    .I1(\hzclk/counter [9]),
    .I2(Result[9]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .O(\hzclk/counter_9_rstpot_300 )
  );
  LUT5 #(
    .INIT ( 32'h88D8D8D8 ))
  \hzclk/counter_10_rstpot  (
    .I0(reset_IBUF_1),
    .I1(\hzclk/counter [10]),
    .I2(Result[10]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .O(\hzclk/counter_10_rstpot_301 )
  );
  LUT5 #(
    .INIT ( 32'h88D8D8D8 ))
  \hzclk/counter_11_rstpot  (
    .I0(reset_IBUF_1),
    .I1(\hzclk/counter [11]),
    .I2(Result[11]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .O(\hzclk/counter_11_rstpot_302 )
  );
  LUT5 #(
    .INIT ( 32'h88D8D8D8 ))
  \hzclk/counter_12_rstpot  (
    .I0(reset_IBUF_1),
    .I1(\hzclk/counter [12]),
    .I2(Result[12]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .O(\hzclk/counter_12_rstpot_303 )
  );
  LUT5 #(
    .INIT ( 32'h88D8D8D8 ))
  \hzclk/counter_13_rstpot  (
    .I0(reset_IBUF_1),
    .I1(\hzclk/counter [13]),
    .I2(Result[13]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .O(\hzclk/counter_13_rstpot_304 )
  );
  LUT5 #(
    .INIT ( 32'h88D8D8D8 ))
  \hzclk/counter_14_rstpot  (
    .I0(reset_IBUF_1),
    .I1(\hzclk/counter [14]),
    .I2(Result[14]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .O(\hzclk/counter_14_rstpot_305 )
  );
  LUT5 #(
    .INIT ( 32'h88D8D8D8 ))
  \hzclk/counter_15_rstpot  (
    .I0(reset_IBUF_1),
    .I1(\hzclk/counter [15]),
    .I2(Result[15]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .O(\hzclk/counter_15_rstpot_306 )
  );
  LUT5 #(
    .INIT ( 32'h88D8D8D8 ))
  \hzclk/counter_16_rstpot  (
    .I0(reset_IBUF_1),
    .I1(\hzclk/counter [16]),
    .I2(Result[16]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .O(\hzclk/counter_16_rstpot_307 )
  );
  LUT5 #(
    .INIT ( 32'h88D8D8D8 ))
  \hzclk/counter_17_rstpot  (
    .I0(reset_IBUF_1),
    .I1(\hzclk/counter [17]),
    .I2(Result[17]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .O(\hzclk/counter_17_rstpot_308 )
  );
  LUT5 #(
    .INIT ( 32'h88D8D8D8 ))
  \hzclk/counter_18_rstpot  (
    .I0(reset_IBUF_1),
    .I1(\hzclk/counter [18]),
    .I2(Result[18]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .O(\hzclk/counter_18_rstpot_309 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_19  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_19_rstpot_310 ),
    .Q(\hzclk/counter [19])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_20  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_20_rstpot_311 ),
    .Q(\hzclk/counter [20])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_21  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_21_rstpot_312 ),
    .Q(\hzclk/counter [21])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_22  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_22_rstpot_313 ),
    .Q(\hzclk/counter [22])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_23  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_23_rstpot_314 ),
    .Q(\hzclk/counter [23])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_24  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_24_rstpot_315 ),
    .Q(\hzclk/counter [24])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_25  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_25_rstpot_316 ),
    .Q(\hzclk/counter [25])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_26  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_26_rstpot_317 ),
    .Q(\hzclk/counter [26])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_27  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_27_rstpot_318 ),
    .Q(\hzclk/counter [27])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_28  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_28_rstpot_319 ),
    .Q(\hzclk/counter [28])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_29  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_29_rstpot_320 ),
    .Q(\hzclk/counter [29])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_30  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_30_rstpot_321 ),
    .Q(\hzclk/counter [30])
  );
  FD #(
    .INIT ( 1'b0 ))
  \hzclk/counter_31  (
    .C(clk_BUFGP_0),
    .D(\hzclk/counter_31_rstpot_322 ),
    .Q(\hzclk/counter [31])
  );
  LUT6 #(
    .INIT ( 64'hC840FA50FA50FA50 ))
  \hzclk/counter_19_rstpot  (
    .I0(reset_inv),
    .I1(reset_IBUF_1),
    .I2(\hzclk/counter [19]),
    .I3(Result[19]),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I5(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .O(\hzclk/counter_19_rstpot_310 )
  );
  LUT6 #(
    .INIT ( 64'hC840FA50FA50FA50 ))
  \hzclk/counter_20_rstpot  (
    .I0(reset_inv),
    .I1(reset_IBUF_1),
    .I2(\hzclk/counter [20]),
    .I3(Result[20]),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I5(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .O(\hzclk/counter_20_rstpot_311 )
  );
  LUT6 #(
    .INIT ( 64'hC840FA50FA50FA50 ))
  \hzclk/counter_21_rstpot  (
    .I0(reset_inv),
    .I1(reset_IBUF_1),
    .I2(\hzclk/counter [21]),
    .I3(Result[21]),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I5(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .O(\hzclk/counter_21_rstpot_312 )
  );
  LUT6 #(
    .INIT ( 64'hC840FA50FA50FA50 ))
  \hzclk/counter_22_rstpot  (
    .I0(reset_inv),
    .I1(reset_IBUF_1),
    .I2(\hzclk/counter [22]),
    .I3(Result[22]),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I5(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .O(\hzclk/counter_22_rstpot_313 )
  );
  LUT6 #(
    .INIT ( 64'hC8FAFAFA40505050 ))
  \hzclk/counter_23_rstpot  (
    .I0(reset_inv),
    .I1(reset_IBUF_1),
    .I2(\hzclk/counter [23]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .I5(Result[23]),
    .O(\hzclk/counter_23_rstpot_314 )
  );
  LUT6 #(
    .INIT ( 64'hC8FAFAFA40505050 ))
  \hzclk/counter_24_rstpot  (
    .I0(reset_inv),
    .I1(reset_IBUF_1),
    .I2(\hzclk/counter [24]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .I5(Result[24]),
    .O(\hzclk/counter_24_rstpot_315 )
  );
  LUT6 #(
    .INIT ( 64'hC8FAFAFA40505050 ))
  \hzclk/counter_25_rstpot  (
    .I0(reset_inv),
    .I1(reset_IBUF_1),
    .I2(\hzclk/counter [25]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .I5(Result[25]),
    .O(\hzclk/counter_25_rstpot_316 )
  );
  LUT6 #(
    .INIT ( 64'hC8FAFAFA40505050 ))
  \hzclk/counter_26_rstpot  (
    .I0(reset_inv),
    .I1(reset_IBUF_1),
    .I2(\hzclk/counter [26]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .I5(Result[26]),
    .O(\hzclk/counter_26_rstpot_317 )
  );
  LUT6 #(
    .INIT ( 64'hC8FAFAFA40505050 ))
  \hzclk/counter_27_rstpot  (
    .I0(reset_inv),
    .I1(reset_IBUF_1),
    .I2(\hzclk/counter [27]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .I5(Result[27]),
    .O(\hzclk/counter_27_rstpot_318 )
  );
  LUT6 #(
    .INIT ( 64'hC8FAFAFA40505050 ))
  \hzclk/counter_28_rstpot  (
    .I0(reset_inv),
    .I1(reset_IBUF_1),
    .I2(\hzclk/counter [28]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .I5(Result[28]),
    .O(\hzclk/counter_28_rstpot_319 )
  );
  LUT6 #(
    .INIT ( 64'hC8FAFAFA40505050 ))
  \hzclk/counter_29_rstpot  (
    .I0(reset_inv),
    .I1(reset_IBUF_1),
    .I2(\hzclk/counter [29]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .I5(Result[29]),
    .O(\hzclk/counter_29_rstpot_320 )
  );
  LUT6 #(
    .INIT ( 64'hC8FAFAFA40505050 ))
  \hzclk/counter_30_rstpot  (
    .I0(reset_inv),
    .I1(reset_IBUF_1),
    .I2(\hzclk/counter [30]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .I5(Result[30]),
    .O(\hzclk/counter_30_rstpot_321 )
  );
  LUT6 #(
    .INIT ( 64'hC8FAFAFA40505050 ))
  \hzclk/counter_31_rstpot  (
    .I0(reset_inv),
    .I1(reset_IBUF_1),
    .I2(\hzclk/counter [31]),
    .I3(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_1_o_cy<6>_125 ),
    .I4(\hzclk/Mcompar_GND_7_o_counter[31]_LessThan_3_o_cy<6>_106 ),
    .I5(Result[31]),
    .O(\hzclk/counter_31_rstpot_322 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  BUFG   \hzclk/clk_out_BUFG  (
    .O(\hzclk/clk_out_BUFG_4 ),
    .I(\hzclk/clk_out_323 )
  );
  INV   \hzclk/Mcount_counter_lut<0>_INV_0  (
    .I(\hzclk/counter [0]),
    .O(\hzclk/Mcount_counter_lut [0])
  );
  INV   \uut_seven_segment/Mcount_counter_lut<0>_INV_0  (
    .I(\uut_seven_segment/counter [0]),
    .O(\uut_seven_segment/Mcount_counter_lut [0])
  );
  INV   reset_inv1_INV_0 (
    .I(reset_IBUF_1),
    .O(reset_inv)
  );
  INV   \uut_fsm/Mcount_cnt_xor<0>11_INV_0  (
    .I(\uut_fsm/cnt [0]),
    .O(\uut_fsm/Result [0])
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

