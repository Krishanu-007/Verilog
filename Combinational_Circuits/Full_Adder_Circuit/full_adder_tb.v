`include "full_adder.v"
module full_adder_tb;
    reg in1,in2,int3c;
    wire sum,cout;

    full_adder fadd1(sum,cout,in1,in2,int3c);
    initial begin
        $dumpfile("full_adder.vcd");
        $dumpvars(0,full_adder_tb);
        in1=0;in2=0;int3c=0;
        #1
        in1=0;in2=0;int3c=1;
        #1
        in1=0;in2=1;int3c=0;
        #1
        in1=0;in2=1;int3c=1;
        #1
        in1=1;in2=0;int3c=0;
        #1
        in1=1;in2=0;int3c=1;
        #1
        in1=1;in2=1;int3c=0;
        #1
        in1=1;in2=1;int3c=1;
    end
endmodule