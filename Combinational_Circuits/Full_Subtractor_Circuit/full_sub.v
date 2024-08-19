module full_sub(diff,borrow,a,b,boin);
    input a,b,boin;
    output diff,borrow;
    assign diff = (a^b^boin);
    assign borrow = (boin&~(a^b))|(~a&b);
endmodule