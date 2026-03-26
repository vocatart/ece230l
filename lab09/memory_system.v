module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

    // demux stuff from last lab

    wire [7:0] data_demux [3:0];
    wire store_demux [3:0];
    wire [7:0] mem_out [3:0];

    assign data_demux[0] = (addr == 2'b00) ? data : 8'b0;
    assign data_demux[1] = (addr == 2'b01) ? data : 8'b0;
    assign data_demux[2] = (addr == 2'b10) ? data : 8'b0;
    assign data_demux[3] = (addr == 2'b11) ? data : 8'b0;

    assign store_demux[0] = (addr == 2'b00) ? store : 1'b0;
    assign store_demux[1] = (addr == 2'b01) ? store : 1'b0;
    assign store_demux[2] = (addr == 2'b10) ? store : 1'b0;
    assign store_demux[3] = (addr == 2'b11) ? store : 1'b0;

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

    assign memory = (addr == 2'b00) ? mem_out[0] :
                    (addr == 2'b01) ? mem_out[1] :
                    (addr == 2'b10) ? mem_out[2] :
                                      mem_out[3];

endmodule
