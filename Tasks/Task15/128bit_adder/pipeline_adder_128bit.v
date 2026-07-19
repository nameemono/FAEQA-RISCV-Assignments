module pipeline_adder_128bit (
    input  wire         clk,
    input  wire         rst,
    input  wire [127:0] a,
    input  wire [127:0] b,
    output reg  [127:0] sum
);

reg [127:0] stage1;

always @(posedge clk) begin
    if (rst) begin
        stage1 <= 128'd0;
        sum    <= 128'd0;
    end
    else begin
        stage1 <= a + b;
        sum    <= stage1;
    end
end

endmodule
