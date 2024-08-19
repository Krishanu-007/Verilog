`timescale 1ns/1ps
`include "full_sub.v"
module full_sub_tb;
    reg a,b,bi;
    wire diff,borrow;

    full_sub fs1(.diff(diff),.a(a),.b(b),.boin(bi),.borrow(borrow));

    initial begin
        $dumpfile("full_sub.vcd");
        $dumpvars(0,full_sub_tb);
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