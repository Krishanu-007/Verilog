module ripple_adder (A,B,SUM,COUT,CIN);
    input [3:0] A,B;
    input CIN;
    output [3:0] SUM;
    output COUT;
    
    wire c1out,c2out,c3out;

    full_adder fa0(SUM[0],c1out,A[0],B[0],CIN);
    full_adder fa1(SUM[1],c2out,A[1],B[1],c1out);
    full_adder fa2(SUM[2],c3out,A[2],B[2],c2out);
    full_adder fa3(SUM[3],COUT,A[3],B[3],c3out);
endmodule


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