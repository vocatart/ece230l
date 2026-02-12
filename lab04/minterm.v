module minterm (
    input A, B, C, D,
    output Y
);

assign Y = (B & ~D) |
           (C & ~D) |
           (~A & ~B & D);

endmodule
