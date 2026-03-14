module ProgCountVerilog (
    input              clk,
    input              rst,
    input              load_en,       // load next_pc when high
    input      [63:0]  next_pc,      // value to load when load_en
    output reg [63:0]  ProgCounter
);

    localparam PC_INCR = 64'd4;   // increment by 4 for word-addressed instructions

    always @(posedge clk) begin
        if (rst)
            ProgCounter <= 64'b0;
        else if (load_en)
            ProgCounter <= next_pc;
        else
            ProgCounter <= ProgCounter + PC_INCR;
    end

endmodule