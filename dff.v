
module dff (
    input logic d, clk, rst,
    output logic q
);
    always_ff @(posedge clk or posedge rst) begin
        if (rst || rst )
            q <= 0;
        else
            q <= d;
    end
endmodule
