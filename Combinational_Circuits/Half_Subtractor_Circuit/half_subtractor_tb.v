`timescale 1ns/1ps
`include "half_subtractor.v"

module half_subtractor_tb;
    reg in1, in2;
    wire diff, borrow;

    // Instantiate the half_subtractor
    half_subtractor hs1(
        .diff(diff),
        .a(in1),
        .b(in2),
        .borrow(borrow)
    );

    initial begin
        $dumpfile("half_subtractor.vcd");
        $dumpvars(0, half_subtractor_tb);
        in1 = 0; in2 = 0; #10; // Delay of 10 ns
        in1 = 0; in2 = 1; #10; // Delay of 10 ns
        in1 = 1; in2 = 0; #10; // Delay of 10 ns
        in1 = 1; in2 = 1; #10; // Delay of 10 ns
        #10 $finish;
    end
endmodule
