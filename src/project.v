module tt_um_mux4to1 (
    input  [7:0] ui_in,
    output [7:0] uo_out,
    input  [7:0] uio_in,
    output [7:0] uio_out,
    output [7:0] uio_oe,
    input        ena,
    input        clk,
    input        rst_n
);

wire [3:0] d;
wire [1:0] s;
reg y;

assign d = ui_in[3:0];
assign s = ui_in[5:4];

always @(*) begin
    case (s)
        2'b00: y = d[0];
        2'b01: y = d[1];
        2'b10: y = d[2];
        2'b11: y = d[3];
        default: y = 1'b0;
    endcase
end

assign uo_out = {7'b0000000, y};
assign uio_out = 8'b00000000;
assign uio_oe  = 8'b00000000;

wire _unused = &{ena, clk, rst_n, uio_in};

endmodule
