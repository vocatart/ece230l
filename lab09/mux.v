module mux(
    input [7:0] A,
    input [7:0] B,
    input [7:0] C,
    input [7:0] D,
    input [1:0] Sel,
    output [7:0] Out
);

    assign Out = (Sel == 2'b00) ? A : (Sel == 2'b01) ? B : (Sel == 2'b10) ? C : D;

endmodule
