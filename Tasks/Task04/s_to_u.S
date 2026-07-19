.section .text
.globl _start

_start:
    # Set Supervisor Previous Privilege (SPP) = User (0)
    csrr t0, sstatus
    li   t1, ~(1 << 8)
    and  t0, t0, t1
    csrw sstatus, t0

    # Set return address
    la   t0, user_mode
    csrw sepc, t0

    # Return to User Mode
    sret

user_mode:
    nop

loop:
    j loop