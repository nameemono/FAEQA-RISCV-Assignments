# Task 13 - Machine Software Interrupt with Trap Handler

## Objective

Implement a Machine Software Interrupt (MSI) in RISC-V and handle it using a custom trap handler.

---

## Files

- interrupt.S
- interrupt.elf
- interrupt.disass

---

## What I Implemented

- Configured the Machine Trap Vector (`mtvec`) to point to a custom trap handler.
- Enabled Machine Software Interrupt (`mie.msie`).
- Enabled global machine interrupts (`mstatus.mie`).
- Triggered a software interrupt by writing `1` to the CLINT MSIP register (`0x02000000`).
- Implemented a trap handler to service the interrupt.
- Read the `mcause` register to identify the interrupt cause.
- Read the `mepc` register to identify the interrupted instruction.
- Cleared the software interrupt by writing `0` to the MSIP register.
- Returned from the trap using the `mret` instruction.

---

## Verification

- Successfully configured `mtvec`.
- Enabled machine software interrupts.
- Triggered a Machine Software Interrupt.
- Verified execution entered the trap handler.
- Read `mcause` and `mepc` inside the trap handler.
- Cleared the interrupt source.
- Returned to program execution using `mret`.

---

## Concepts Learned

- Machine Software Interrupt (MSI)
- Trap Handler
- Machine Trap Vector (`mtvec`)
- Machine Interrupt Enable (`mie`)
- Machine Status Register (`mstatus`)
- Machine Cause Register (`mcause`)
- Machine Exception Program Counter (`mepc`)
- Machine Return (`mret`)

---

## Program Flow

```
Program Start
      │
      ▼
Configure mtvec
      │
      ▼
Enable mie.msie
      │
      ▼
Enable mstatus.mie
      │
      ▼
Trigger Software Interrupt
      │
      ▼
Jump to Trap Handler
      │
      ▼
Read mcause
Read mepc
      │
      ▼
Clear MSIP
      │
      ▼
Return using mret
```

---

## Conclusion

This task demonstrates how a Machine Software Interrupt is generated, handled using a custom trap handler, and completed by reading the trap information, clearing the interrupt source, and returning to the interrupted program using `mret`.
