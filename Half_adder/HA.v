// This code is utilizing gate level modeling for half adder.
// sum = x ^ y; (x xor y)
// carry = x & y; (x and y)
module Half_Adder(s,c,x,y);
    output s,c;
    input x,y;
    xor X(s,x,y);
    and A(c,x,y);
endmodule