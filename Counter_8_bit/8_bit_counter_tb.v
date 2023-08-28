`include "8_bit_counter.v"
module testbench_8b;
    reg clk, reset_btn,preset_btn;
    reg [7:0] load_value;
    wire [7:0] count;
    eight_bit_counter Counter1(clk,reset_btn,load_value,preset_btn,count);
    initial begin
        $dumpfile("8bitcounter.vcd");
        $dumpvars(0,testbench_8b);
        $monitor($time," clk = %b, reset = %b, preset = %b, load = %b,count = %b",
        clk,reset_btn,preset_btn,load_value,count);
        clk = 0;
        forever #1 clk = ~clk;
    end
    initial begin
      reset_btn = 1;
      preset_btn = 0;
      load_value = 0;
      #4
      reset_btn = 0;
      #20
      load_value = 8'b10101010;
      preset_btn = 1;
      #2
      preset_btn = 0;
      #360
      $finish;
    end
endmodule