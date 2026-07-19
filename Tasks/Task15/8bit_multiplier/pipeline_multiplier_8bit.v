module pipeline_multiplier_8bit (
    input  wire        clk,
    input  wire        rst,
    input  wire [7:0]  a,
    input  wire [7:0]  b,
    output reg  [15:0] product
);

reg [15:0] stage1;

always @(posedge clk) begin
    if (rst) begin
        stage1  <= 16'd0;
        product <= 16'd0;
    end
    else begin
        stage1  <= a * b;
        product <= stage1;
    end
end

endmodule
