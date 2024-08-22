`timescale 1ns/1ps
`include "ripple_adder.v"
module ripple_adder_tb;
    reg [3:0] in1,in2;
    reg in3;
    wire [3:0] res_sum;
    wire res_carry;

    ripple_adder ra(in1,in2,res_sum,res_carry,in3);

    initial begin
        $dumpfile("ripple_adder.vcd");
        $dumpvars(0,ripple_adder_tb);
        $monitor("A = %b , B = %b , Cin = %b -> Sum = %b , Cout = %b ",in1,in2,in3,res_sum,res_carry);

        in1 = 4'b0001;in2 = 4'b0010;in3 = 0; #10
        in1 = 4'b0011;in2 = 4'b0010;in3 = 1; #10
        in1 = 4'b0101;in2 = 4'b0010;in3 = 0; #10
        in1 = 4'b1101;in2 = 4'b0100;in3 = 1; #10
        #10 $finish;
    end
endmodule