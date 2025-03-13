
module dff (
    input logic d, clk, rst,
    output logic q
);
    always_ff @(posedge clk or posedge rst) begin
        if (rst ) //3 red time 
        
            q <= 0;
        else
            q <= d;
    end
endmodule
