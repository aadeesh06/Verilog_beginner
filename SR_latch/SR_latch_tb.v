`include "SR_latch\SR_latch.v"
module SR_latch_tb;
    reg S;
    reg R;
    wire Q;
    wire Q_bar;
    integer k;
    SR_latch SR1(.S(S),.R(R),.Q(Q),.Q_bar(Q_bar));
    initial begin
         $dumpfile("SR_latch.vcd");
        $dumpvars(0,SR_latch_tb);
        $monitor($time, " S = %b, R = %b, Q = %b , Qbar = %b",S,R, Q, Q_bar);
    S = 0;
    R = 0;
    end
    initial begin
    for(k = 0; k < 4; k = k + 1)
    begin
        {S, R} = #2 k; 
    end
    
 end
endmodule