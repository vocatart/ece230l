module ones_compliment(
    input  [9:0] sw,
    output [9:0] led
);

    wire c1, c2, c3, cout;
    wire [3:0] sum;
    
    // ripple carry
    full_adder adder1(.A(sw[2]), .B(sw[6]), .Cin(0), .Y(sum[0]), .Cout(c1));
    full_adder adder2(.A(sw[3]), .B(sw[7]), .Cin(c1),   .Y(sum[1]), .Cout(c2));
    full_adder adder3(.A(sw[4]), .B(sw[8]), .Cin(c2),   .Y(sum[2]), .Cout(c3));
    full_adder adder4(.A(sw[5]), .B(sw[9]), .Cin(c3),   .Y(sum[3]), .Cout(cout));
    
    wire endaround1, endaround2, endaround3;
    wire [3:0] final;
    
    // add the endarounds
    full_adder endaround_adder1(.A(sum[0]), .B(0), .Cin(cout),   .Y(final[0]), .Cout(endaround1));
    full_adder endaround_adder2(.A(sum[1]), .B(0), .Cin(endaround1), .Y(final[1]), .Cout(endaround2));
    full_adder endaround_adder3(.A(sum[2]), .B(0), .Cin(endaround2), .Y(final[2]), .Cout(endaround3));
    full_adder endaround_adder4(.A(sum[3]), .B(0), .Cin(endaround3), .Y(final[3]), .Cout());
    
    assign led[2] = final[0];
    assign led[3] = final[1];
    assign led[4] = final[2];
    assign led[5] = final[3];

endmodule