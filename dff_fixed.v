
module dff (
    input  d, clk, rst,
    output reg q
);
    always_ff @(posedge clk or posedge rst) begin
        if (rst)
            q <= 0;
        else
            q <= d;
    end
endmodule
