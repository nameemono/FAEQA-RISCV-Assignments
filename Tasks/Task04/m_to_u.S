.section .text
.globl _start

_start:
    # Set MPP = User (00)
    csrr t0, mstatus
    li   t1, ~(3 << 11)
    and  t0, t0, t1
    csrw mstatus, t0

    # Set return address
    la   t0, user_mode
    csrw mepc, t0

    # Return to User Mode
    mret

user_mode:
    nop

loop:
    j loop