//StopWatch: Modulo-60 Counter
module stopwatch(
    input clk,
    input rst,
    input en,
    output reg [5:0] state     //6-bits to represent the highest number 59
);

    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= 6'd0;
        else if (en) begin
            if (state == 6'd59)
                state <= 6'd0;
            else
                state <= state + 6'd1;
        end
        // en=0: hold current state
    end

endmodule
