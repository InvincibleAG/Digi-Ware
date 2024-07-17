`timescale 1ps/1ps
`include "SRL.v"
module SR_tb;
    reg in,S,R;
    wire out;
    SRL srl(in,S,R,out);
    initial begin
        $dumpfile("SR_tb.vcd");
        $dumpvars(0,SR_tb);
        in=1;
        S=0;
        R=0;
        #5;
        in=out;
        S=1;
        R=0;
        #5;
        in=out;
        S=0;
        R=1;
        #5;
        in=out;
        S=1;
        R=0;
        $display("Let's GO!");
    end
endmodule