`timescale 1ns/1ps

module ripple_counter (
    input clock, reset,
    output [2:0] out
);
    // divide clock by 2
    t_flip_flop flip1 (
        .clock(clock),
        .reset(reset),
        .toggle(1'b1),
        .out(out[0])
    );

    // divide out[0] by 2
    t_flip_flop flip2 (
        .clock(out[0]),
        .reset(reset),
        .toggle(1'b1),
        .out(out[1])
    );

    // divide out[1] by 2
    t_flip_flop flip3 (
        .clock(out[1]),
        .reset(reset),
        .toggle(1'b1),
        .out(out[2])
    );
    
endmodule
