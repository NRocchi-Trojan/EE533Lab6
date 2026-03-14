///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2006 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor      : Xilinx
// \   \   \/     Version     : Jade (J.23)
//  \   \         Description : Xilinx HDL Macro Library 
//  /   /                       16-Input OR gate with Non-inverted inputs
// /___/   /\     Filename    : OR16.v
// \   \  /  \    Timestamp   : Wed Jul 19 2006
//  \___\/\___\
//
// Revision:
//    07/19/06 - Initial version.
// End Revision

`timescale  100 ps / 10 ps

module OR16 (O, I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15);
    

   output O;

   input I0;
   input I1;
   input I2;
   input I3;
   input I4;
   input I5;
   input I6;
   input I7;
   input I8;
   input I9;
   input I10;
   input I11;
   input I12;
   input I13;
   input I14;
   input I15; 

assign O = (I0 || I1 || I2 || I3 || I4 || I5 || I6 || I7 || I8 || I9 || I10 || I11 || I12 || I13 || I14 || I15 );

endmodule
