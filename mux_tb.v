`timescale 1ns/1ns
`include "mux.v"
module mux_tb;
    reg s1,s0,i1,i2,i3,i4;
    wire out;
    mux multi(s1,s0,i1,i2,i3,i4,out);
    initial begin
        i1=0;
        i2=1;
        i3=0;
        i4=1;
        s1=1;
        s0=0;
        #10;
        s1=1;
        s0=0;
        #10;
        s1=1;
        s0=0;
        $monitor("Output is %d",out);
    end
endmodule