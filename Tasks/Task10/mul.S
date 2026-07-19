.section .text
.globl _start

_start:
    li x1, 10
    li x2, 20
    mul x3, x1, x2

end:
    j end