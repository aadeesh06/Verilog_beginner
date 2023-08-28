`include "FA.v"
module testbench;

    reg x,y,z;
    wire s,c;
    full_adder FA(.a(x), .b(y), .c1(z), .s(s), .c2(c));
    initial begin
        $dumpfile("fulladder.vcd");  // this file will be opened using gtkwave tool.
        $dumpvars(0,testbench);
        $monitor($time, " x=%b, y=%b, z=%b, sum=%b, c=%b",x,y,z,s,c);
        x = 0;y = 0; z = 0;
        #5 x = 0;y = 1; z = 1;
        #5 x = 1;y = 0; z = 1;
        #5 x = 1;y = 1; z = 1;
        #5 $finish;
    end
endmodule