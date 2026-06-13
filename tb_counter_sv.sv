module tb_counter_sv;

logic clk;
logic rst;
logic [3:0] count;

counter_sv dut(
    .clk(clk),
    .rst(rst),
    .count(count)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 1;

    #10 rst = 0;

    #100;

    $finish;
end

initial
begin
    $dumpfile("counter_sv.vcd");
    $dumpvars(0, tb_counter_sv);
end

endmodule


