module adder(
    input A, B,
    output Y, output Cout
);

    assign Y = A ^ B;
    assign Cout = A & B;

endmodule