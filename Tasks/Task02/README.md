# Task 02 – RISC-V CSR Instructions and Register Operations

## Objective
Demonstrate the use of RISC-V Control and Status Register (CSR) instructions.

## CSR Instructions Covered
- csrrw
- csrrs
- csrrc
- csrrwi
- csrrsi
- csrrci

## CSRs Used
- mstatus
- cycle
- instret
- mscratch

## Files
- Task02.S – Assembly source code

## Learning Outcome
- Understand the difference between General Purpose Registers and CSRs.
- Learn how to read, write, set, and clear CSR bits.
- Understand the role of CSRs in processor control and verification.
# Task 02 – RISC-V CSR Instructions and Register Operations

## Objective

Implement and understand the RISC-V Control and Status Register (CSR) instructions used to access and modify processor control registers. This task demonstrates how software communicates with the processor's internal control and status registers.

---

## CSR Instructions Covered

### Read and Write
- `csrrw`

### Read and Set Bits
- `csrrs`

### Read and Clear Bits
- `csrrc`

### Read and Write Immediate
- `csrrwi`

### Read and Set Immediate
- `csrrsi`

### Read and Clear Immediate
- `csrrci`

---

## CSRs Used

- `mstatus` – Machine Status Register
- `cycle` – Cycle Counter Register
- `instret` – Instructions Retired Counter
- `mscratch` – Machine Scratch Register

---

## Files

| File | Description |
|------|-------------|
| `Task02.S` | RISC-V assembly program demonstrating CSR instructions |
| `README.md` | Documentation for Task 02 |

---

## Repository Structure

```text
Task02/
├── Task02.S
└── README.md
```

---

## Learning Outcomes

After completing this task, I am able to:

- Understand the purpose of Control and Status Registers (CSRs).
- Differentiate between General Purpose Registers (GPRs) and CSRs.
- Read, write, set, and clear CSR values using dedicated CSR instructions.
- Understand the role of CSRs in processor control, exception handling, and interrupt management.
- Gain foundational knowledge required for processor verification and privileged architecture.

---

## Development Environment

- **ISA:** RV64I
- **Language:** RISC-V Assembly
- **Architecture:** 64-bit RISC-V
- **Toolchain:** RISC-V GNU Toolchain
- **Version Control:** Git & GitHub

---

## Verification Status

- ✅ CSR instructions implemented
- ✅ Assembly source completed
- ✅ Documentation completed
- ⏳ Functional verification pending (simulation/execution)

---

## Key Concepts

This task introduces the Control and Status Register (CSR) mechanism used by the RISC-V privileged architecture. CSR instructions provide software with the ability to monitor processor state, configure machine-level settings, and support exception and interrupt handling.

The concepts learned in this task serve as the foundation for subsequent assignments involving privilege modes, exceptions, interrupts, and processor verification.
