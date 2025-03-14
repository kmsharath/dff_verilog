
module dff (
    input logic d, clk, rst,
    output logic q
);
    always_ff @(posedge clk or posedge rst) begin
        if (rst ) //positive edge reset
            q <= 1;
        else
            q <= d;
    end
endmodule
