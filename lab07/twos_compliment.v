module twos_compliment(
    input  [9:0]  sw,
    output [13:0] led
);
    // 2 -> 9 are inputs for this one
    wire [7:0] comp = ~sw[9:2];
    wire [7:0] final;
    wire c1, c2, c3, c4, c5, c6, c7;

    full_adder full_adder1(.A(comp[0]), .B(0), .Cin(1), .Y(final[0]), .Cout(c1));
    full_adder full_adder2(.A(comp[1]), .B(0), .Cin(c1),   .Y(final[1]), .Cout(c2));
    full_adder full_adder3(.A(comp[2]), .B(0), .Cin(c2),   .Y(final[2]), .Cout(c3));
    full_adder full_adder4(.A(comp[3]), .B(0), .Cin(c3),   .Y(final[3]), .Cout(c4));
    full_adder full_adder5(.A(comp[4]), .B(0), .Cin(c4),   .Y(final[4]), .Cout(c5));
    full_adder full_adder6(.A(comp[5]), .B(0), .Cin(c5),   .Y(final[5]), .Cout(c6));
    full_adder full_adder7(.A(comp[6]), .B(0), .Cin(c6),   .Y(final[6]), .Cout(c7));
    full_adder full_adder8(.A(comp[7]), .B(0), .Cin(c7),   .Y(final[7]), .Cout());

    assign led[6]  = final[0];
    assign led[7]  = final[1];
    assign led[8]  = final[2];
    assign led[9]  = final[3];
    assign led[10] = final[4];
    assign led[11] = final[5];
    assign led[12] = final[6];
    assign led[13] = final[7];
    
endmodule