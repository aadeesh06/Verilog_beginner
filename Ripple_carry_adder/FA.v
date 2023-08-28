// This code uses dataflow modeling for full adder.

module full_adder(s,c2,a,b,c1);
    input a,b,c1;
    output s,c2;
    //for sum
    assign s = a^b^c1;
    assign c2 = (a&b) | c1&(a^b);
endmodule