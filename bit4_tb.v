`timescale 1ns/1ns
`include "bit4.v"
module bit4_tb();
    reg a,b,c,d;
    wire dig0,dig1,dig2;
    bit4 adder(a,b,c,d,dig0,dig1,dig2);
    initial begin
        $dumpfile("Bit4_tb.vcd");
        $dumpvars(0,Bit4_tb); 
        a=1;
        b=1;
        c=1;
        d=1;
        #20;
        $display("Sum is = %d%d%d",dig2,dig1,dig0);
    end
endmodule