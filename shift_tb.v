`timescale 1ns/1ns
`include "shift.v"
module shift_tb;
  reg clk;
  reg [3:0] val;
  reg en;
  wire [3:0] out;
  
  
  shift SFJ(clk, val, en, out);
  
  initial begin
    $dumpfile ("shift_tb.vcd");
    $dumpvars(0,shift_tb);
    clk <= 0;
    val <= 4'h01;
    en <= 0;
    repeat(10)
    #10 clk = ~clk;
    repeat (5) @ (posedge clk);
    en <= 1;
    repeat(1) @ (posedge clk);
    en <= 0;
    repeat (20) @ (posedge clk);
    $display("Come On ");
  end
endmodule