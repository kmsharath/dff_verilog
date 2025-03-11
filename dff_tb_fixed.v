module dff_tb;
    logic d, clk, rst, q;

    dff uut (
        .d(d),
        .clk(clk),
        .rst(rst),
        .q(q)
    );

    always #5 clk = ~clk; // Clock generation

    initial begin
        clk = 0; rst = 1; d = 0;
        #10 rst = 0;
        #10 d = 1;
        #10 d = 0;
        #10 d = 1;
        #10 rst = 1;
        #10 $finish;
    end

    initial begin
        $dumpfile("dff.vcd");
        $dumpvars(0, dff_tb);
    end
endmodule
