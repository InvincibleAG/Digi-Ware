module TFlipFlop (out,in,T);
input in,T;
output out;
reg A;
always @* begin
    if(T)
        A=~in;
    else
        A=in;
end
assign out=A;
    
endmodule