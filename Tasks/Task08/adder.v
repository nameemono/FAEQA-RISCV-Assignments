// See LICENSE.vyoma for more details

module adder(a, b, sum);

  input  [7:0] a, b;
  output reg [8:0] sum;

  always @(*) begin
    sum = a + b;
  end

endmodule : adder
