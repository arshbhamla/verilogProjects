/*
TEST BENCH 
Original File: halfAdder.v
Verilog Project #1
Half Adder
TEST BENCH
*/
`include "halfAdder.v" //Execute during compile time

module halfAdderTestBench();
    reg a,b; //Short for register, values can be changed
    wire sum, carry; //Measures output, sort of a probe

    halfAdder add1(a,b,sum,carry);
        initial begin
            $dumpfile("halfAdder_results.vcd"); //Dumbs changes in regs and wires into this new file
            $dumpvars(0, halfAdderTestBench); //This takes specific variables from the module we choose

            a = 0; //Sets the values of the registers
            b = 0;
            #1 //This means wait one second
            a = 0; b = 1;
            #1
            a = 1; b = 0;
            #1
            a = 1; b = 1;
        end //Begin and end are like the {} in Java
    
endmodule
