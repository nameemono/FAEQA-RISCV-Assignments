# Task 05 - Illegal Instruction Exception with Trap Handler

## Objective

Generate an Illegal Instruction Exception and handle it using a trap handler in RISC-V.

---

## Files

- illegal_instruction.S

---

## What I Implemented

This program configures the Machine Trap Vector (`mtvec`) to point to a custom trap handler.

The program first executes a valid instruction and then intentionally executes an invalid instruction (`0xFFFFFFFF`) to generate an Illegal Instruction Exception.

When the exception occurs, the processor automatically jumps to the trap handler.

Inside the trap handler:

- `mcause` is read to determine the cause of the trap.
- `mepc` is read to identify the instruction that caused the exception.
- The processor remains inside the trap handler for observation.

---

## Verification

- Configured `mtvec` successfully.
- Triggered an Illegal Instruction Exception.
- Verified processor jumps to the trap handler.
- Read `mcause` and `mepc` CSRs inside the handler.

---

## Concepts Learned

- Illegal Instruction Exception
- Trap Handler
- Machine Trap Vector (`mtvec`)
- Machine Cause Register (`mcause`)
- Machine Exception Program Counter (`mepc`)
- Exception Handling

---

## Program Flow

```
Program Start
      │
      ▼
Configure mtvec
      │
      ▼
Execute Valid Instruction
      │
      ▼
Execute Illegal Instruction
      │
      ▼
Illegal Instruction Exception
      │
      ▼
Jump to Trap Handler
      │
      ▼
Read mcause & mepc
      │
      ▼
Trap Loop
```

---

## Conclusion

This task demonstrates how an Illegal Instruction Exception is generated and how a custom trap handler processes the exception by reading the relevant Control and Status Registers (CSRs).
