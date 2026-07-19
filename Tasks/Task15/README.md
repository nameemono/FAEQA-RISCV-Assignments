# Task 15 - Pipelined RTL Design and Verification

## Objective

Design and verify two pipelined hardware modules using Verilog and Cocotb.

## Files

### 8-bit Multiplier

- pipeline_multiplier_8bit.v
- test_pipeline_multiplier.py
- Makefile

### 128-bit Adder

- pipeline_adder_128bit.v
- test_pipeline_adder.py
- Makefile

## What I Implemented

Designed a pipelined 8-bit multiplier and a pipelined 128-bit adder using synchronous RTL design. Developed Cocotb testbenches to functionally verify both designs.

## Verification

- Simulated using Verilator
- Executed Cocotb testbenches
- Verified pipeline latency
- Validated functional correctness

## Results

- Successfully designed the RTL from scratch.
- Developed a Cocotb testbench to verify functionality.
- Verified correct operation through simulation using Verilator.
- Confirmed that all directed test cases passed successfully.

## Concepts Learned

- Pipeline Architecture
- Sequential RTL Design
- Cocotb Verification
- Verilator
- Clocked Logic

## Conclusion

This task combined RTL design and functional verification to implement and validate two pipelined hardware modules.
