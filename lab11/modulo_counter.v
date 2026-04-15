`timescale 1ns/1ps

module modulo_counter (
    input clock, reset,
    output [2:0] count,
    output out
);

    wire carry1, carry2;
    wire [2:0] sum;
    wire reset_cmp;
    assign reset_cmp = count[2] & (~count[1]) & count[0];

    full_adder fa0 (
        .a(count[0]),
        .b(1'b1),
        .cin(1'b0),
        .sum(sum[0]),
        .cout(carry1)
    );

    full_adder fa1 (
        .a(count[1]),
        .b(1'b0),
        .cin(carry1),
        .sum(sum[1]),
        .cout(carry2)
    );

    full_adder fa2 (
        .a(count[2]),
        .b(1'b0),
        .cin(carry2),
        .sum(sum[2]),
        .cout()
    );

    d_flip_flop dff0 (
        .clock(clock),
        .reset(reset),
        .data(~reset_cmp & sum[0]),
        .out(count[0])
    );

    d_flip_flop dff1 (
        .clock(clock),
        .reset(reset),
        .data(~reset_cmp & sum[1]),
        .out(count[1])
    );

    d_flip_flop dff2 (
        .clock(clock),
        .reset(reset),
        .data(~reset_cmp & sum[2]),
        .out(count[2])
    );

    d_flip_flop out_dff (
        .clock(clock),
        .reset(reset),
        .data(reset_cmp ^ out),
        .out(out)
    );
    
endmodule
