module mux(
    input [3:0] CEO,
    input [3:0] Us,
    input [3:0] Fred,
    input [3:0] Jill,
    input [1:0] Sel,
    input Enable,
    output [3:0] Out
);

    assign Out = Enable ? 4'b0 : (Sel == 2'b00) ? CEO : (Sel == 2'b01) ? Us : (Sel == 2'b10) ? Fred : Jill;
    
endmodule