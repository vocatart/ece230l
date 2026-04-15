`timescale 1ns/1ps

module d_flip_flop (
    input clock, reset, data,
    output reg out
);
    always @(posedge clock or posedge reset) begin
        if (reset)
            out <= 1'b0;
        else
            out <= data;
    end
endmodule
