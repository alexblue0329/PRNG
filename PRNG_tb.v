module BCDtoSEVEN_tb();
reg clk_tb, set_tb;
PRNG PRNG_1(.clk(clk_tb), .set_syn(set_tb));

initial
begin
    clk_tb=1'b1;
    set_tb=1'b0;
end

always
begin
    #10 clk_tb = ~clk_tb;
end


initial
begin
    #80 set_tb=1'b1;
    #10 set_tb=1'b0;
end

initial
begin
    #400 $finish;
end

initial
begin
    $dumpfile("PRNG.vcd");
    $dumpvars(0, PRNG_1);
end
endmodule
