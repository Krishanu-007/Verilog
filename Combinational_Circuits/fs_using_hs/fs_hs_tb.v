`timescale 1ns/1ps
`include "half_sub.v"
module fs_hs_tb;
    reg a,b,bi;
    wire hs1_d,hs1_b,diff,hs2_c,borrow;

    half_sub ha1(.diff(hs1_d),.a(a),.b(b),.borrow(hs1_b));
    half_sub ha2(.diff(diff),.borrow(hs2_c),.a(hs1_d),.b(bi));
    or o1(borrow,hs1_b,hs2_c);

    initial begin
        $dumpfile("fs_hs.vcd");
        $dumpvars(0,fs_hs_tb);
        a=0;b=0;bi=0; #10
        a=0;b=0;bi=1; #10
        a=0;b=1;bi=0; #10
        a=0;b=1;bi=1; #10
        a=1;b=0;bi=0; #10
        a=1;b=0;bi=1; #10
        a=1;b=1;bi=0; #10
        a=1;b=1;bi=1; #10
        #10 $finish;
    end

endmodule