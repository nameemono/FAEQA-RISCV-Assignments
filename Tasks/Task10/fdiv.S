.section .data
d1: .double 20.0
d2: .double 4.0

.section .text
.globl _start

_start:
    la x6, d1
    fld f3, 0(x6)

    la x7, d2
    fld f4, 0(x7)

    fdiv.d f5, f3, f4

end:
    j end