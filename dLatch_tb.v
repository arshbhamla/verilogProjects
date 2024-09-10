/*
TEST BENCH 
Original File: dLatch.v
Verilog Project: D-Latch
TEST BENCH
*/
`include "dLatch.v"

module dLatchTestBench();
    reg en,val;
    wire Q;

    dLatch add1(en,val,Q);
        initial begin
            $dumpfile("dLatch_results.vcd"); 
            $dumpvars(0, dLatchTestBench); 

            en = 0; val = 0;
            #1 
            en = 0; val = 1;
            #1
            en = 1; val = 0;
            #1
            en = 1; val = 1;
        end
    
endmodule
