module decoder (in,y);
    input [2:0] in;
    output [7:0] y;
        ands w0(y[0],in[2],in[1],in[0]);
        ands w1(y[1],~in[2],~in[1],in[0]);
        ands w2(y[2],~in[2],in[1],~in[0]);
        ands w3(y[3],~in[2],in[1],in[0]);
        ands w4(y[4],in[2],~in[1],~in[0]);
        ands w5(y[5],in[2],~in[1],in[0]);
        ands w6(y[6],in[2],in[1],~in[0]);
        ands w7(y[7],in[2],in[1],in[0]);    
endmodule

module ands(y,a,b,c);
    input a,b,c;
    output y;
    assign y= a & b & c;    
endmodule