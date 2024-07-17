`timescale 1ns/1ns
`include "First.v"
module First_tb;
    reg clk,A;
    wire B;
    First DFF(clk,A,B);
    integer i;
    initial begin
        clk=1'b1;

        $dumpfile("First_tb.vcd");
        $dumpvars(0,First_tb);
        for(i=1;i<5;i=i+1)begin
            #5 clk=~clk;
        end
        A=1;
        #5;
        A=0;
        #10;
        A=1;
        #20;
        A=0;
        $display("Test Complete");
    end
endmodule