module top(
    input  [9:0]  sw,
    output [13:0] led
);

    half_sub half_sub_inst (
        .A(sw[0]),
        .B(sw[1]),
        .Y(led[0]),
        .Borrow(led[1])
    );

    wire [9:0] ones_outputs;
    ones_compliment ones_compliment_inst (
        .sw(sw),
        .led(ones_outputs)
    );
    
    wire [13:0] twos_outputs;
    twos_compliment twos_compliment_inst (
        .sw(sw),
        .led(twos_outputs)
    );
    
    assign led[5:2] = ones_outputs[5:2];
    assign led[13:6] = twos_outputs[13:6];

endmodule