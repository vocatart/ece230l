module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

    wire [7:0] data_demux [3:0];
    wire [3:0] store_demux;
    wire [7:0] mem_out [3:0];

    demux data_demux_inst(
        .data(data),
        .sel(addr),
        .A(data_demux[0]),
        .B(data_demux[1]),
        .C(data_demux[2]),
        .D(data_demux[3])
    );

    demux1 store_demux_inst(
        .data(store),
        .sel(addr),
        .A(store_demux[0]),
        .B(store_demux[1]),
        .C(store_demux[2]),
        .D(store_demux[3])
    );

    byte_memory byte0(
        .data(data_demux[0]),
        .store(store_demux[0]),
        .memory(mem_out[0])
    );

    byte_memory byte1(
        .data(data_demux[1]),
        .store(store_demux[1]),
        .memory(mem_out[1])
    );

    byte_memory byte2(
        .data(data_demux[2]),
        .store(store_demux[2]),
        .memory(mem_out[2])
    );

    byte_memory byte3(
        .data(data_demux[3]),
        .store(store_demux[3]),
        .memory(mem_out[3])
    );

    mux mux_out(
        .A(mem_out[0]),
        .B(mem_out[1]),
        .C(mem_out[2]),
        .D(mem_out[3]),
   //     .Enable(1'b1),
        .Sel(addr),
        .Out(memory)
    );

endmodule
