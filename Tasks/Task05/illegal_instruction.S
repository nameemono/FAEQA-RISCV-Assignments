.section .text
.globl _start

_start:
    # Set trap handler address
    la t0, trap_handler
    csrw mtvec, t0

    # Normal instruction
    li t1, 10

    # Trigger Illegal Instruction Exception
    .word 0xFFFFFFFF

    # This instruction should never execute
    li t2, 20

end:
    j end

# -------------------------------------------------
# Trap Handler
# -------------------------------------------------
trap_handler:

    # Read trap information
    csrr t3, mcause
    csrr t4, mepc

    # Stay here after handling the exception
trap_loop:
    j trap_loop