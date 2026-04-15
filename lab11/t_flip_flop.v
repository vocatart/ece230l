`timescale 1ns/1ps

module t_flip_flop (
    input clock, reset, toggle,
    output out
);
    wire data;

    // toggle when T=1, hold when T=0
    assign data = toggle ^ out;

    d_flip_flop dff (
        .clock(clock),
        .reset(reset),
        .data(data),
        .out(out)
    );
    
endmodule
