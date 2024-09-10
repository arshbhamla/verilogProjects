/*
Verilog Project #1
Half Adder
*/
module halfAdder
(a,b,sum,carry);
    input a,b; //Any inputs that go into the system go here
    output sum, carry; //Any outputs that come out from the system go here
    xor x1(sum, a,b); //Gates are type of gate, gate name, perameters are final product, then two inputs
    and a1(carry, a,b);
endmodule 