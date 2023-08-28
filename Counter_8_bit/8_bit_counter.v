// This is a program for a 8 - bit up counter with synchronous preset and load value. 
// Note : this program is only for simulation purposes. This may or may not be synthesizable by the synthesis tool.
module eight_bit_counter(
        input clk, reset_btn, 
        input [7:0]load_value,
        input preset_btn,
        output [7:0] count
);
    reg [7:0] counter_up;
    always@(posedge clk or negedge clk)
        begin
            if(reset_btn)                // if reset is high
                counter_up <= 8'b0;
            else if(preset_btn)         // if preset is high
                counter_up <= load_value;    // load the counter with load_value
            else
                counter_up <= counter_up +1;
        end
        assign count = counter_up;
endmodule