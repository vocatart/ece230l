module d_latch(
    input D, E,
    output Q, NotQ
);

    // change only while e is high
    always @(D, E) begin
        if (E)
            Q <= D;
    end

    assign NotQ = ~Q;

endmodule
