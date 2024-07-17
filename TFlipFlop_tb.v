`timescale 1ns/1ns
`include "TFlipFlop.v"

module TFlipFlop_tb;
    reg in;
    reg T;
    wire out;
    TFlipFlop TFF(out,in,T);
    initial begin
        $dumpfile("TFlipFlop_tb.vcd");
        $dumpvars(0,TFlipFlop_tb);
        T=1;
        in=0;
        #5;
        T=0;
        in=out;
        #5;
        T=0;
        in=out;
        #5;
        T=1;
        in=out;
        #5;
        T=1;
        in=out;
        #5;
        T=1;
        in=out;
        $display("Completed");
    end      
endmodule