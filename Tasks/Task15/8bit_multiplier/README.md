# 8-bit Pipelined Multiplier

## Objective

Design and functionally verify an 8-bit pipelined multiplier using Verilog RTL and Cocotb.

## Files

| File | Description |
|------|-------------|
| pipeline_multiplier_8bit.v | Verilog RTL implementation |
| test_pipeline_multiplier.py | Cocotb testbench |
| Makefile | Build and simulation script |

## What I Implemented

Designed a two-stage pipelined multiplier that accepts two 8-bit inputs and produces a 16-bit product.

The design includes:

- Synchronous clocked operation
- Active reset
- Pipeline register for intermediate multiplication result
- Registered output for stable timing

## Verification

The RTL was verified using Cocotb and Verilator.

Verification included:

- Clock generation
- Reset sequence
- Multiple multiplication test cases
- Pipeline latency verification
- Automatic result comparison using Python assertions

## Results

- RTL compiled successfully.
- Cocotb simulation completed successfully.
- All multiplication test cases passed.
- Pipeline timing behaved as expected.

## Concepts Learned

- Verilog RTL Design
- Sequential Logic
- Pipeline Registers
- Cocotb Verification
- Verilator Simulation

## Conclusion

Successfully designed and verified an 8-bit pipelined multiplier. The design produced correct multiplication results while demonstrating the basic principles of pipelined hardware implementation.
