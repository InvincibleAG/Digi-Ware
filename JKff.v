module JKff (out,J,K,in);
    input J,K,in;
    output out;
    reg place;
    always @* begin
        
        if (J==0 & K==0) 
            place = in;
        else if(J==0 & K==1)
            place = 0;
        else if(J==1 & K==1)
            place=1;
        else
            place=~in;
    end
    assign out=place;
endmodule