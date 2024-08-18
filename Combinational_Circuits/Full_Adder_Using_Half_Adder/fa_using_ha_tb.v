`include "half_adder.v"
module fa_using_ha_tb;
    reg a,b,cin;
    wire sum,cout;

    wire ha_1_s,ha_1_c;
    wire has_2_c;

    half_adder ha1(ha_1_s,ha_1_c,a,b);
    half_adder ha2(sum,has_2_c,cin,ha_1_s);
    or o1(cout,ha_1_c,has_2_c);

    initial begin
        $dumpfile("fa_using_ha_tb.vcd");
        $dumpvars(0,fa_using_ha_tb);
        a=0;b=0;cin=0;
        #1
        a=0;b=0;cin=1;
        #1
        a=0;b=1;cin=0;
        #1
        a=0;b=1;cin=1;
        #1
        a=1;b=0;cin=0;
        #1
        a=1;b=0;cin=1;
        #1
        a=1;b=1;cin=0;
        #1
        a=1;b=1;cin=1;
    end
endmodule