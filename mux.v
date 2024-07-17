module mux (s1,s0,i1,i2,i3,i4,out);
    input s1,s0,i1,i2,i3,i4;
    output out;
    wire w1,w2,w3,w4,w5;
    andy a1(w1,~s1,~s0,i1);
    andy a2(w1,~s1,s0,i2);
    andy a3(w1,s1,~s0,i3);
    andy a4(w1,s1,s0,i4);
    ory o(w5,w1,ww2,w3,w4);
    assign out=w5;
endmodule
module andy (w,a,b,c);
input a,b,c;
output w;
assign w=a&b&c;
endmodule
module ory (w,a,b,c,d);
input a,b,c,d;
output w;
assign w=a|b|c|d;
endmodule