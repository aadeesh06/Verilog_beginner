`include "decoder_3x8.v"
module decoder_tb;
wire [7:0] out;
reg en;
reg [2:0] in;
integer i;

decoder3_to_8 dut(in,out,en);

initial begin  
     $dumpfile("decoder.vcd");
        $dumpvars(0,decoder_tb);
 $monitor( "en=%b, in=%d, out=%b ", en, in, out);
    en = 1;
   for ( i=0; i<8; i=i+1) 
        begin
           in  = i;
            #1;
        end
end
endmodule
