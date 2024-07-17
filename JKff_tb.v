`timescale 1ns/1ns
`include "JKff.v"
module JKff_tb;
    reg J;
    reg K;
    reg in;
    wire out;
    JKff jkFF(out,J,K,in);
    initial begin
        $dumpfile("JKff_tb.vcd");
        $dumpvars(0,JKff_tb);
        J=1;
        K=1;
        in=0;
        #5;
        J=0;
        K=1;
        in=out;
        #5;
        J=0;
        K=0;
        in=out;
        #5;
        J=1;
        K=0;
        in=out;
        #5;
        J=0;
        K=0;
        in=out;
        $display("Done");
    end
endmodule