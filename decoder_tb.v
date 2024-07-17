`timescale 1ps/1ps
`include "decoder.v"
module decoder_tb;
    reg[2:0] in;
    wire[7:0]out;
    decoder dcd(in,out);
    initial begin   
        $dumpfile("decoder_tb.vcd");
        $dumpvars(0,decoder_tb);
        $monitor($time,"Output is %d",out);
        in=3'b010;
        #5;
        in=3'b110;
        #5;
        in=3'b101;
        #5;
        in=3'b101;
        #5;
        in=3'b101;
        #5;
        in=3'b101;
    end
    
endmodule