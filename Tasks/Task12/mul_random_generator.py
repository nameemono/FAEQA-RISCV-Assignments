#!/usr/bin/env python3

"""
Task 12
Generate random RISC-V MUL instructions.
"""

import random

NUM_TESTS = 20

with open("mul_random.S", "w") as f:

    f.write(".section .text\n")
    f.write(".globl _start\n\n")
    f.write("_start:\n\n")

    for i in range(NUM_TESTS):

        rs1 = random.randint(1, 31)
        rs2 = random.randint(1, 31)
        rd  = random.randint(1, 31)

        value1 = random.randint(0, 100)
        value2 = random.randint(0, 100)

        f.write(f"# Test {i+1}\n")
        f.write(f"li x{rs1}, {value1}\n")
        f.write(f"li x{rs2}, {value2}\n")
        f.write(f"mul x{rd}, x{rs1}, x{rs2}\n\n")

    f.write("end:\n")
    f.write("    j end\n")

print("Generated mul_random.S successfully.")
