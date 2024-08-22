`timescale 1ns/1ps
`include "ripple_add_sub.v"
module ripple_add_sub_tb;
    reg[3:0] a,b;
    reg ch;
    wire [3:0] result;
    wire carry;

    ripple_add_sub ras1(.A(a),.B(b),.CARRY(carry),.RESULT(result),.Choice(ch));
    initial begin
        $dumpfile("ripple_add_sub.vcd");
        $dumpvars(0,ripple_add_sub_tb);
        $display("Choice=0 for A+B, Choice=1 for A-B");
        $monitor("A= %x, B=%x, Choice= %d -> Result=%x, Carry=%x",a,b,ch,result,carry);

        a=4'b0110;b=4'b0101;ch=0;#10
        a=4'b0110;b=4'b0101;ch=1;#10
        a=4'b0100;b=4'b0001;ch=0;#10
        a=4'b0100;b=4'b0001;ch=1;#10
        a=4'b1110;b=4'b0101;ch=0;#10
        a=4'b1110;b=4'b0101;ch=1;#10
        $finish();
    end
endmodule