.section .data
f1: .float 5.5
f2: .float 3.5

.section .text
.globl _start

_start:
    la x4, f1
    flw f0, 0(x4)

    la x5, f2
    flw f1, 0(x5)

    fmax.s f2, f0, f1

end:
    j end