.section .data
atomic_var: .word 1

.section .text
.globl _start

_start:
    la x8, atomic_var
    li x9, 4

    amoor.w x10, x9, (x8)

end:
    j end