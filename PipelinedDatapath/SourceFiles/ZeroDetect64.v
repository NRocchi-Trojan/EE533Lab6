////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : ZeroDetect64.vf
// /___/   /\     Timestamp : 03/13/2026 17:59:30
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w Z:/SharedXM/EE533Lab6/PipelinedDatapath/ZeroDetect64.sch ZeroDetect64.vf
//Design Name: ZeroDetect64
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module ZeroDetect64(din, 
                    rst, 
                    dout);

    input [63:0] din;
    input rst;
   output dout;
   
   wire XLXN_7;
   wire XLXN_8;
   wire XLXN_9;
   wire XLXN_10;
   wire XLXN_11;
   
   ZeroDetect16 XLXI_1 (.din(din[63:48]), 
                        .dout(XLXN_9));
   ZeroDetect16 XLXI_2 (.din(din[47:32]), 
                        .dout(XLXN_7));
   ZeroDetect16 XLXI_3 (.din(din[31:16]), 
                        .dout(XLXN_8));
   ZeroDetect16 XLXI_4 (.din(din[15:0]), 
                        .dout(XLXN_10));
   NOR4 XLXI_9 (.I0(XLXN_10), 
                .I1(XLXN_8), 
                .I2(XLXN_7), 
                .I3(XLXN_9), 
                .O(XLXN_11));
   AND2B1 XLXI_10 (.I0(rst), 
                   .I1(XLXN_11), 
                   .O(dout));
endmodule
