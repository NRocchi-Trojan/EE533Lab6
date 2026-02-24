////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : PipelinedDatapath.vf
// /___/   /\     Timestamp : 02/23/2026 22:30:16
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w Z:/SharedXM/EE533Lab6/PipelinedDatapath/PipelinedDatapath.sch PipelinedDatapath.vf
//Design Name: PipelinedDatapath
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module PipelinedDatapath(clk, 
                         InstData, 
                         wea);

    input clk;
    input [31:0] InstData;
    input wea;
   
   wire [63:0] ALUnoop;
   wire [5:0] ALUOP;
   wire [63:0] InstADDR;
   wire [31:0] InstID;
   wire [31:0] InstIF;
   wire [63:0] PCMux0;
   wire [63:0] PCMux1;
   wire [63:0] RegData1;
   wire [1:0] WBWADDR;
   wire [1:0] XLXN_3;
   wire [63:0] XLXN_5;
   wire XLXN_7;
   wire [63:0] XLXN_15;
   wire [63:0] XLXN_16;
   wire XLXN_43;
   wire XLXN_44;
   wire [1:0] XLXN_45;
   wire [63:0] XLXN_47;
   wire [63:0] XLXN_50;
   wire XLXN_65;
   wire [63:0] XLXN_82;
   wire XLXN_83;
   wire XLXN_89;
   wire [63:0] XLXN_102;
   wire [63:0] XLXN_111;
   wire [63:0] XLXN_114;
   wire [63:0] XLXN_115;
   wire [31:0] XLXN_127;
   wire [63:0] XLXN_140;
   wire [63:0] XLXN_171;
   wire [63:0] XLXN_180;
   wire XLXN_182;
   wire XLXN_183;
   wire XLXN_184;
   wire XLXN_185;
   wire XLXN_186;
   
   reg_file XLXI_13 (.clk(clk), 
                     .r0addr(InstID[22:21]), 
                     .r1addr({InstID[15], InstID[16]}), 
                     .waddr(WBWADDR[1:0]), 
                     .wdata(XLXN_140[63:0]), 
                     .wena(XLXN_44), 
                     .r0data(XLXN_16[63:0]), 
                     .r1data(XLXN_15[63:0]));
   InstructionMem XLXI_32 (.addr(InstADDR[7:0]), 
                           .clk(clk), 
                           .din(InstData[31:0]), 
                           .we(wea), 
                           .dout(InstIF[31:0]));
   DataMemory XLXI_34 (.addra(RegData1[7:0]), 
                       .addrb(RegData1[7:0]), 
                       .clka(clk), 
                       .clkb(clk), 
                       .dina(XLXN_50[63:0]), 
                       .wea(XLXN_65), 
                       .doutb(XLXN_47[63:0]));
   ProgCount XLXI_39 (.clk(clk), 
                      .PCIn(XLXN_114[63:0]), 
                      .ProgCounter(PCMux0[63:0]), 
                      .ToInst(InstADDR[63:0]));
   IFIDReg XLXI_40 (.clk(clk), 
                    .Inst(InstIF[31:0]), 
                    .PCIF(XLXN_82[63:0]), 
                    .InstOut(InstID[31:0]), 
                    .PCID(XLXN_114[63:0]));
   ZeroDetect64 XLXI_42 (.din(XLXN_16[63:0]), 
                         .dout(XLXN_83));
   ALU64Bit XLXI_44 (.a(XLXN_5[63:0]), 
                     .b(XLXN_171[63:0]), 
                     .cin(), 
                     .op(ALUOP[2:0]), 
                     .cout(), 
                     .e7(), 
                     .res(XLXN_102[63:0]));
   EXMEMReg XLXI_51 (.clk(clk), 
                     .REG1I(XLXN_102[63:0]), 
                     .REG2I(XLXN_180[63:0]), 
                     .RTypeEX(XLXN_183), 
                     .RTypeMEM(XLXN_185), 
                     .WMEI(XLXN_7), 
                     .WREG1I(XLXN_3[1:0]), 
                     .WREI(XLXN_184), 
                     .REG1O(RegData1[63:0]), 
                     .REG2O(XLXN_50[63:0]), 
                     .WMEO(XLXN_65), 
                     .WREG1O(XLXN_45[1:0]), 
                     .WREO(XLXN_43));
   signExt XLXI_56 (.short(InstID[15:0]), 
                    .long(XLXN_127[31:0]));
   IDEXReg XLXI_58 (.ALUCtrlID(InstID[5:0]), 
                    .ALUOpEX(XLXN_182), 
                    .ALUOpID(InstID[29]), 
                    .clk(clk), 
                    .PCI(XLXN_82[63:0]), 
                    .REG1I(XLXN_16[63:0]), 
                    .REG2I(XLXN_15[63:0]), 
                    .RTypeEX(XLXN_183), 
                    .RTypeID(InstID[28]), 
                    .SignExtID(XLXN_127[31:0]), 
                    .WMEI(InstID[31]), 
                    .WREG1I(InstID[29:28]), 
                    .WREI(InstID[30]), 
                    .ZeroID(XLXN_83), 
                    .ALUCtrlEX(ALUOP[5:0]), 
                    .PCO(PCMux1[63:0]), 
                    .REG1O(XLXN_5[63:0]), 
                    .REG2O(XLXN_180[63:0]), 
                    .SignExtEX(ALUnoop[31:0]), 
                    .WMEO(XLXN_7), 
                    .WREG1O(XLXN_3[1:0]), 
                    .WREO(XLXN_184), 
                    .ZeroEX(XLXN_89));
   MEMWBStageReg XLXI_60 (.clk(clk), 
                          .MemAltIn(RegData1[63:0]), 
                          .RTypeMEM(XLXN_185), 
                          .RTypeWB(XLXN_186), 
                          .WBAltOut(XLXN_115[63:0]), 
                          .WDataI(XLXN_47[63:0]), 
                          .WREG1I(XLXN_45[1:0]), 
                          .WREI(XLXN_43), 
                          .WDataO(XLXN_111[63:0]), 
                          .WREG1O(WBWADDR[1:0]), 
                          .WREO(XLXN_44));
   Mux64bit_wide XLXI_61 (.D0(PCMux1[63:0]), 
                          .D1(PCMux0[63:0]), 
                          .Sel(XLXN_89), 
                          .O(XLXN_114[63:0]));
   Mux64bit_wide XLXI_62 (.D0(XLXN_180[63:0]), 
                          .D1(ALUnoop[63:0]), 
                          .Sel(XLXN_182), 
                          .O(XLXN_171[63:0]));
   Mux64bit_wide XLXI_63 (.D0(XLXN_111[63:0]), 
                          .D1(XLXN_115[63:0]), 
                          .Sel(XLXN_186), 
                          .O(XLXN_140[63:0]));
endmodule
