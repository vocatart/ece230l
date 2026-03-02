module top(
    input[7:0] sw,
    output[5:0] led
);
    wire fulladder1_cout;

    light light_inst(
        .upstairs(sw[1]),
        .downstairs(sw[0]),
        .stair_light(led[0])
    );
    
    adder adder_inst(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .Cout(led[2])
    );
    
    full_adder full_adder_inst1(
        .A(sw[4]),
        .B(sw[6]),
        .Cin(0),
        .Y(led[3]),
        .Cout(fulladder1_cout)
    );
    
    full_adder full_adder_inst2(
        .A(sw[5]),
        .B(sw[7]),
        .Cin(fulladder1_cout),
        .Y(led[4]),
        .Cout(led[5])
    );
    
endmodule