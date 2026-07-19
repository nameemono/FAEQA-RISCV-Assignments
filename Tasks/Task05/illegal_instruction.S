.section .text
.globl _start

_start:
    # Execute an illegal instruction
    .word 0xFFFFFFFF

loop:
    j loop