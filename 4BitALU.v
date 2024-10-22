/*
Verilog Project #3
4-Bit Arithmetic Logic Unit
*/

module fourBitALU(a,b,op,result);
    input [3:0] a,b;
    input [1:0] op;
    output reg [3:0] result;
    //A zero flag could be placed here but I chose not to since it's not necessary

    always @(*) begin

        case(op)
            /* 
            Operations:
                Addition: 00
                Subtraction: 01
                AND: 10
                OR: 11
            */
            2'b00: result = a + b; 
            2'b01: result = a - b;
            2'b10: result = a & b;
            2'b11: result = a | b;
            default: result = 4'b0000;
        endcase
        
    end
endmodule 