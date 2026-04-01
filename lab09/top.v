module top(
    input [15:0] sw,
    input btnC,
    output [15:0] led
);

    d_latch dlatch(
        .D(sw[0]),
        .E(btnC),
        .Q(led[0]),
        .NotQ(led[1])
    );

    memory_system memory(
        .data(sw[15:8]),
        .addr(sw[7:6]),
        .store(btnC),
        .memory(led[15:8])
    );

endmodule
