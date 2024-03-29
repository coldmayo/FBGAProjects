/*
   This file was generated automatically by the Mojo IDE version B1.3.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module sec_to_mins_10 (
    input [15:0] secs,
    output reg [15:0] mins
  );
  
  
  
  always @* begin
    
    case (secs)
      10'h257: begin
        mins = 10'h3e8;
      end
      11'h63f: begin
        mins = 11'h7d0;
      end
      12'ha27: begin
        mins = 12'hbb8;
      end
      12'he0f: begin
        mins = 12'hfa0;
      end
      13'h11f7: begin
        mins = 13'h1388;
      end
      13'h15df: begin
        mins = 13'h1770;
      end
      13'h19c7: begin
        mins = 13'h1b58;
      end
      13'h1daf: begin
        mins = 13'h1f40;
      end
      14'h2197: begin
        mins = 14'h2328;
      end
      14'h257f: begin
        mins = 1'h0;
      end
      default: begin
        mins = secs + 1'h1;
      end
    endcase
  end
endmodule
