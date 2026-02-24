`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:22:13 02/23/2026 
// Design Name: 
// Module Name:    Mux64bit_wide 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Mux64bit_wide(
    input [63:0] D0,
    input [63:0] D1,
    output [63:0] O,
    input Sel
    );

	assign O = (Sel)? D1 : D0;

endmodule
