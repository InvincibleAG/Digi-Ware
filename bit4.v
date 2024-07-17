module bit4 (a,b,c,d,dig0,dig1,dig2);
    input a,b,c,d;
    output dig0,dig1,dig2;
    wire c1,c2,c3,c4,c5,c6,u1,u2,u3,u4,u5,u6;
    bit a1(c1,u1,a,b);
    bit a2(c2,u2,c,d);
    bit a3(c3,u3,u1,u2);
    bit a4(c4,u4,c1,c2);
    bit a5(c5,u5,u4,c3);
    bit a6(c6,u6,c4,c5);

    assign dig0=u3;
    assign dig1=u5;
    assign dig2=u6;
endmodule

module bit (carry, unit,num1,num2);
    input num1,num2;
    output carry,unit;

    assign unit = num1 ^ num2;
    assign carry = (num1 & num2);
endmodule