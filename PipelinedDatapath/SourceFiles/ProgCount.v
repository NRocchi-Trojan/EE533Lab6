////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : ProgCount.vf
// /___/   /\     Timestamp : 02/23/2026 21:51:08
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w Z:/SharedXM/EE533Lab6/PipelinedDatapath/ProgCount.sch ProgCount.vf
//Design Name: ProgCount
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module ProgCount(clk, 
                 PCIn, 
                 ProgCounter, 
                 ToInst);

    input clk;
    input [63:0] PCIn;
   output [63:0] ProgCounter;
   output [63:0] ToInst;
   
   wire [63:0] Bin;
   wire [2:0] oper;
   wire XLXN_9;
   wire [63:0] ToInst_DUMMY;
   
   assign Bin = 32'h00000004;
   assign oper = 32'h00000002;
   assign ToInst[63:0] = ToInst_DUMMY[63:0];
   ALU64Bit XLXI_1 (.a(ToInst_DUMMY[63:0]), 
                    .b(Bin[63:0]), 
                    .cin(), 
                    .op(oper[2:0]), 
                    .cout(), 
                    .e7(), 
                    .res(ProgCounter[63:0]));
   reg64 XLXI_2 (.clk(clk), 
                 .data_in(PCIn[63:0]), 
                 .en(XLXN_9), 
                 .data_out(ToInst_DUMMY[63:0]));
   VCC XLXI_4 (.P(XLXN_9));
endmodule
