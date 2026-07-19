.section .text
.globl _start

_start:

    # Read mstatus CSR
    csrr t0, mstatus

    # Read cycle counter CSR
    csrr t1, cycle

    # Read instruction retired counter CSR
    csrr t2, instret

loop:
    j loop