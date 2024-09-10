/*
Arsh Bhamla
Verilog Project: D-Latch
*/

module dLatch(en,val,Q);
    input en,val; 
    output Q;

    not n1(w1, val);
    and a1(w2, w1, en);
    and a2(w3, en, val);
    nor no1(Q, w2, w4);
    nor no2(w4, Q, w3);

endmodule 