/*
   This file was generated automatically by the Mojo IDE version B1.3.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     DIGITS = 4
     DIV = 16
*/
module multi_seg_display_4 (
    input clk,
    input rst,
    input [95:0] values,
    input [3:0] decimal,
    output reg [7:0] seg,
    output reg [3:0] sel
  );
  
  localparam DIGITS = 3'h4;
  localparam DIV = 5'h10;
  
  
  localparam DIGIT_BITS = 2'h2;
  
  wire [7-1:0] M_lut_segs;
  reg [4-1:0] M_lut_value;
  digit_lut_1 lut (
    .value(M_lut_value),
    .segs(M_lut_segs)
  );
  
  wire [4-1:0] M_digit_dec_out;
  reg [2-1:0] M_digit_dec_in;
  decoder_5 digit_dec (
    .in(M_digit_dec_in),
    .out(M_digit_dec_out)
  );
  
  wire [2-1:0] M_ctr_value;
  counter_6 ctr (
    .clk(clk),
    .rst(rst),
    .value(M_ctr_value)
  );
  
  always @* begin
    M_lut_value = values[(M_ctr_value)*24+23-:24];
    seg = {decimal[(M_ctr_value)*1+0-:1], M_lut_segs};
    M_digit_dec_in = M_ctr_value;
    sel = M_digit_dec_out;
  end
endmodule
