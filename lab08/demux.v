module demux(
    input [3:0] In,
    input [1:0] Sel,
    input Enable,
    output [3:0] local_lib,
    output [3:0] FireDept,
    output [3:0] School,
    output [3:0] RibShack
);

    assign local_lib = (Enable || Sel != 2'b00) ? 4'b0 : In;
    assign FireDept = (Enable || Sel != 2'b01) ? 4'b0 : In;
    assign School = (Enable || Sel != 2'b10) ? 4'b0 : In;
    assign RibShack = (Enable || Sel != 2'b11) ? 4'b0 : In;
    
endmodule