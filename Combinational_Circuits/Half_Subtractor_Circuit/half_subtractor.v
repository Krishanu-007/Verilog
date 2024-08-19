module half_subtractor(diff,borrow,a,b);
    input a,b;
    output diff,borrow;
    wire a_not;
    xor x1(diff,a,b);
    not n1(a_not,a);
    and a1(borrow,a_not,b);
endmodule