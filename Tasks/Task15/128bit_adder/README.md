# 128-bit Pipelined Adder

## Objective

Design and functionally verify a 128-bit pipelined adder using Verilog RTL and Cocotb.

## Files

| File | Description |
|------|-------------|
| pipeline_adder_128bit.v | Verilog RTL implementation |
| test_pipeline_adder.py | Cocotb testbench |
| Makefile | Build and simulation script |

## What I Implemented

Designed a pipelined 128-bit adder capable of performing high-width arithmetic operations.

The design includes:

- Synchronous clocked operation
- Active reset
- Pipeline register for intermediate addition result
- Registered output for stable timing

## Verification

The RTL was verified using Cocotb and Verilator.

Verification included:

- Clock generation
- Reset sequence
- Multiple directed test vectors
- Pipeline latency verification
- Automatic comparison between expected and DUT outputs

## Results

- RTL compiled successfully.
- Cocotb simulation completed successfully.
- All addition test cases passed.
- Pipeline behavior matched the expected design.

## Concepts Learned

- Wide Data Path Design
- Sequential RTL
- Pipeline Architecture
- Cocotb Functional Verification
- Verilator Simulation

## Conclusion

Successfully implemented and verified a 128-bit pipelined adder. The design demonstrated correct arithmetic functionality while introducing the concepts of pipelined high-performance digital circuits.
