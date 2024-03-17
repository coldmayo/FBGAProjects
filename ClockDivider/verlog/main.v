//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:36:16 03/16/2024 
// Design Name: 
// Module Name:    main 
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
`timescale 1ns / 1ps

module main;
 // Inputs
 reg clock_in;
 wire clock_out;

 clock_divider uut (
  .clock_in(clock_in), 
  .clock_out(clock_out)
 );
 initial begin
  clock_in = 0;
        forever #10 clock_in = ~clock_in;
 end
      
endmodule