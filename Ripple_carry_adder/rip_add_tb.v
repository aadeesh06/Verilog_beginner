`include "rip_add.v"
module RCA_tb;

    reg [3:0] a,b;
    reg c_in;
    wire [3:0]s;
    wire c_out;
    RCA_4bit DUT(.a(a), .b(b), .c_in(c_in), .s(s), .c_out(c_out));
    initial begin
        $dumpfile("4bit_RCA.vcd");    // this file can be opened using gtkwave tool.
        $dumpvars(0,RCA_tb); 
        $monitor($time," a=%b, b = %b, c_in = %b, s = %b, c_out = %b",a,b,c_in,s,c_out);
        a = 4'b0;
        b = 4'b0;
        c_in = 0;
        #5
        a = 4'b1011;
        b = 4'b1100;

        #5
        a    = 4'b1111;
        b    = 4'b0101;

        #5 $finish;
    end
endmodule

