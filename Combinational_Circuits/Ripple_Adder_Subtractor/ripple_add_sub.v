module ripple_add_sub(RESULT,CARRY,A,B,Choice);
    input [3:0] A,B;
    input Choice;
    output reg [3:0] RESULT;
    output reg CARRY;
    
    always @(*) begin
        if (Choice == 1'b0) begin
            {CARRY,RESULT}= A+B;            
        end
        else begin
           {CARRY,RESULT}= A-B;
        end 
    end
endmodule