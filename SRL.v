module SRL (in,S,R,out);
    input in,S,R;
    output out;
    reg temp;
    always @* begin
        if(S==0 & R==0)
            temp=in;
        else if(S==0 & R==1)
            temp=0;
        else
            temp=1;
    end
    assign out=temp;
endmodule