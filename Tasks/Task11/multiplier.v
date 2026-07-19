// Shift-and-Add Sequential Multiplier
// 64-bit × 64-bit = 128-bit Product

module multiplier (

    input              clk,
    input              rst,
    input              start,

    input      [63:0]  multiplicand,
    input      [63:0]  multiplier_in,

    output reg [127:0] product,
    output reg         done

);
  //=========================================================
  // Internal Registers
  //=========================================================

  reg [127:0] mcand_reg;   // Shift-left multiplicand register
  reg [63:0]  mplier_reg;  // Shift-right multiplier register
  reg [127:0] product_reg; // Running product

  reg [6:0]   count;       // Counts from 0 to 64
  reg         busy;        // Multiplier is running

  //=========================================================
  // Sequential Shift-and-Add Multiplier
  //=========================================================

  always @(posedge clk) begin

    if (rst) begin

      product_reg <= 128'd0;
      mcand_reg   <= 128'd0;
      mplier_reg  <= 64'd0;

      count <= 7'd0;

      busy  <= 1'b0;
      done  <= 1'b0;

      product <= 128'd0;
          end
    else begin

      // Start multiplication
      if (start && !busy) begin
        mcand_reg   <= {64'd0, multiplicand};
        mplier_reg <= multiplier_in;
        product_reg <= 128'd0;
        product     <= 128'd0;
        count       <= 7'd0;
        busy        <= 1'b1;
        done        <= 1'b0;
      end

      // Shift-and-Add Algorithm
      else if (busy) begin

        // If LSB of multiplier is 1, add multiplicand
        if (mplier_reg[0])
          product_reg <= product_reg + mcand_reg;

        // Shift registers
        mcand_reg  <= mcand_reg << 1;
        mplier_reg <= mplier_reg >> 1;

        count <= count + 1;

        // Finished after 64 iterations
        if (count == 7'd63) begin
          busy    <= 1'b0;
          done    <= 1'b1;
          product <= product_reg;
        end

      end
      else begin
        done <= 1'b0;
      end

    end
  end

endmodule
