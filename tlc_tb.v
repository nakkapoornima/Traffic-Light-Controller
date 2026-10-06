module tb;
reg clk;
reg reset
wire red;
wire yellow;
wire green;
traffic_light uut(.clk(clk),.reset(reset),.red(red),.yellow(yellow),.green(green));
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);
    clk = 0;
    reset = 1;
    #10;
    reset = 0;
    #10;
    #10;
    #10;
    #10;
    #10;
    #10;
    $finish;
end
always #5 clk = ~clk;
endmodule
