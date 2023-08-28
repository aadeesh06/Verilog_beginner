`include "HA.v"
module testbench;
    reg x,y;
    wire s,c;
    Half_Adder DUT(.x(x), .y(y), .s(s), .c(c));
    initial begin
        $dumpfile("Half_Adder.vcd");
        $dumpvars(0,testbench);
        $monitor($time, " x=%b, y = %b, s = %b, c = %b",x,y,s,c); 
        #5 x = 0; y = 0;
        #5 x = 0; y = 1;
        #5 x = 1; y = 0;
        #5 x = 1; y = 1;
        #5 $finish;
    end
endmodule