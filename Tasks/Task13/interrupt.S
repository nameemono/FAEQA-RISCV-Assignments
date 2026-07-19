.section .text
.globl _start

_start:

    # Set trap handler
    la t0, trap_handler
    csrw mtvec, t0

    # Enable Machine Software Interrupt (MSIE)
    li t0, 0x8
    csrs mie, t0

    # Enable Global Machine Interrupt (MIE)
    li t0, 0x8
    csrs mstatus, t0

    # Trigger Software Interrupt
    li t1, 0x02000000
    li t2, 1
    sw t2, 0(t1)

wait:
    j wait

# ------------------------------------
# Trap Handler
# ------------------------------------
trap_handler:

    # Read trap information
    csrr t3, mcause
    csrr t4, mepc

    # Clear MSIP
    li t1, 0x02000000
    sw zero, 0(t1)

    # Return from interrupt
    mret