module maxterm (
    input A, B, C, D,
    output Y
);

assign Y = (~B | ~D) &
           (~A | ~D) &
           (B | C | D );

endmodule
