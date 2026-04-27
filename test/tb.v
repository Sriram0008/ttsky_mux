`timescale 1ns/1ps
module tb_mux4to1;

reg  [3:0] d;
reg  [1:0] s;
wire y;

mux4to1 dut (
    .d(d),
    .s(s),
    .y(y)
);

initial begin
    d = 4'b1010;

    s = 2'b00; #10;
    s = 2'b01; #10;
    s = 2'b10; #10;
    s = 2'b11; #10;

    d = 4'b1101;
    s = 2'b00; #10;
    s = 2'b01; #10;
    s = 2'b10; #10;
    s = 2'b11; #10;

    $finish;
end

initial begin
    $monitor("time=%0t d=%b s=%b y=%b", $time, d, s, y);
end

endmodule
