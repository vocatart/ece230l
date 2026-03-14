module top(
    input  [15:0] sw,
    input  btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
);
    wire [3:0] shared;
     
    mux mux_inst (
        .CEO(sw[3:0]),
        .Us(sw[7:4]),
        .Fred(sw[11:8]),
        .Jill(sw[15:12]),
        .Sel({btnU, btnL}),
        .Enable(btnC),
        .Out(shared)
    );
 
    demux demux_inst (
        .In(shared),
        .Sel({btnR, btnD}),
        .Enable(btnC),
        .local_lib(led[3:0]),
        .FireDept(led[7:4]),
        .School(led[11:8]),
        .RibShack(led[15:12])
    );
 
endmodule