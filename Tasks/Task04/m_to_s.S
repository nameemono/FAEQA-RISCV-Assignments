.section .text
.globl _start

_start:
    # Set MPP = Supervisor (01)
    csrr t0, mstatus
    li   t1, ~(3 << 11)
    and  t0, t0, t1
    li   t1, (1 << 11)
    or   t0, t0, t1
    csrw mstatus, t0

    # Set return address
    la   t0, supervisor_mode
    csrw mepc, t0

    # Return to Supervisor Mode
    mret

supervisor_mode:
    nop

loop:
    j loop