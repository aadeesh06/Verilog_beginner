// The code below is for positive edge triggered d flip - flop
module dff_sync (i_d, clk, reset, o_q, o_qb);
//port declaration
   input i_d, clk, reset;
   output o_q, o_qb; 
   reg q;

   assign o_qb = ~q      ;  //  assigning qb to be complement of q
   assign o_q = q;
   always @ (posedge clk)   // sensitivity list as positive edge of clock
      begin
         if (reset)           
            q <= 1'b0    ;  //if reset is 1 then assigning q to be 0
         else                 
            q <= i_d     ;  // else assign q to the input  
      end

endmodule                  //d flip-flop 