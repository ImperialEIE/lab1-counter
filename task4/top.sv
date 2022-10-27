module top #(
    parameter WIDTH = 8,
    parameter DIGITS = 3
)(
    // interface signals
    input  wire             clk,
    input  wire             rst,
    input  wire             en,
    input  wire [WIDTH-1:0] v,
    output wire [11:0]      bcd
);

wire [WIDTH-1:0] count;

counter fred (
    .clk (clk),
    .rst (rst),
    .en (en),
    .count (count)
);

bin2bcd peter (
    .x (count),
    .BCD (bcd)
);

endmodule
