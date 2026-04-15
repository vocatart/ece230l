`timescale 1ns/1ps

module top (
    input btnU, btnC,
    output [6:0] led
);
    wire [2:0] ripple_out;

    ripple_counter rc (
        .clock(btnC),
        .reset(btnU),
        .out(ripple_out)
    );

    wire [2:0] mod_state;
    wire mod_out;

    modulo_counter mc (
        .clock(btnC),
        .reset(btnU),
        .count(mod_state),
        .out(mod_out)
    );

    assign led[0] = ripple_out[0];
    assign led[1] = ripple_out[1];
    assign led[2] = ripple_out[2];
    assign led[3] = mod_state[0];
    assign led[4] = mod_state[1];
    assign led[5] = mod_state[2];
    assign led[6] = mod_out;
    
endmodule
