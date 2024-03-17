/*
   This file was generated automatically by the Mojo IDE version B1.3.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     MAX_VALUE = 50000000
     DIVISOR = 2
*/
module divBlinker_4 (
    input clk,
    input rst,
    output reg clk_out
  );
  
  localparam MAX_VALUE = 26'h2faf080;
  localparam DIVISOR = 2'h2;
  
  
  reg [25:0] M_ctr_d, M_ctr_q = 1'h0;
  
  always @* begin
    M_ctr_d = M_ctr_q;
    
    M_ctr_d = M_ctr_q + 1'h1;
    if (M_ctr_q == 2'h2) begin
      M_ctr_d = 1'h0;
    end
    if (M_ctr_q < 3'h1) begin
      clk_out = 1'h0;
    end else begin
      clk_out = 1'h1;
    end
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_ctr_q <= 1'h0;
    end else begin
      M_ctr_q <= M_ctr_d;
    end
  end
  
endmodule
