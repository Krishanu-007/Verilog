module full_adder(sum,cout,a,b,cin);
    output sum,cout;
    input a,b,cin;
    wire in_xor,in_and,x1_and;
    
    xor x1(in_xor,a,b);
    xor x2(sum,in_xor,cin);
    
    and a1(in_and,a,b);
    and a2(x1_and,cin,in_xor);

    or o1(cout,in_and,x1_and);

endmodule