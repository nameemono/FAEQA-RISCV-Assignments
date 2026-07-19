.section .text
.globl _start

_start:

    # Read important CSRs
    csrr t0, mstatus
    csrr t1, cycle
    csrr t2, instret

    # Temporary value
    li t3, 0x1234

    # Read and Write CSR
    csrrw t4, mscratch, t3

    # Read and Set Bits
    csrrs t5, mscratch, t3

    # Read and Clear Bits
    csrrc t6, mscratch, t3

    # Read and Write Immediate
    csrrwi t0, mscratch, 5

    # Read and Set Immediate
    csrrsi t1, mscratch, 3

    # Read and Clear Immediate
    csrrci t2, mscratch, 1

loop:
    j loop