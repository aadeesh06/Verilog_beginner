//this code is for 4 - bit ripple carry adder.
// I am instantiating full adder modules for implementation.
// Warning : This code is only for simulation purpose. It may or may not be synthesizable.
`include "Ripple_carry_adder\FA.v"
module RCA_4bit(s,c_out,a,b,c_in);
    output [3:0]s;
    output c_out;
    input [3:0]a,b;
    input c_in;
    wire c1,c2,c3;
    // instantiate fulladder
    full_adder fa1(s[0],c1,a[0],b[0],c_in);
    full_adder fa2(s[1],c2,a[1],b[1],c1);
    full_adder fa3(s[2],c3,a[2],b[2],c2);
    full_adder fa4(s[3],c_out,a[3],b[3],c3);

endmodule